using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using System.Xml;
using System.Xml.Xsl;
using System.IO;
using System.Reflection;
using System.Text.RegularExpressions;
using System.Net;
using System.Linq;
using System.CodeDom.Compiler;
using System.Diagnostics;
using CsvHelper;
using Fonet;
using Fonet.Render.Pdf;

namespace vF3D
{
    public partial class vF3DForm : Form
    {
        private List<Comune> comuni;
        private string xmlFilename;

        public vF3DForm()
        {
            InitializeComponent();
            toolStripStatusLabel2.Text = Application.ProductVersion;
            this.Text = Application.ProductName + " " + Application.ProductVersion;
            try
            {
                using (WebClient Client = new WebClient())
                {
                    Client.DownloadFile(vF3D.Properties.Resources.ISTATPermalink, "elenco-comuni-italiani.csv");
                }
                using (var reader = new CsvReader(new StreamReader("elenco-comuni-italiani.csv")))
                {
                    reader.Configuration.RegisterClassMap<ComuneMapping>();
                    reader.Configuration.Delimiter = ";";
                    reader.Configuration.IgnoreReadingExceptions = true;
                    comuni = reader.GetRecords<Comune>().ToList();
                    toolStripStatusLabel3.Text = "Comuni: " + comuni.Count();
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Errore", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        public string getComune(string codiceIstat)
        {
            Comune c = comuni.Find(comune => comune.CodiceIstat == codiceIstat.PadLeft(6, '0'));
            if (c != null)
            {
                return c.Denominazione + " (" + codiceIstat + ")";
            }
            else
            {
                return codiceIstat;
            }

        }

        public string doOpenDocument(string filename, bool forPDF = false)
        {
            try
            {
                xmlFilename = filename;
                XsltArgumentList xslArg = new XsltArgumentList();
                xslArg.AddExtensionObject("urn:vf3d", this);

                XslCompiledTransform transform = new XslCompiledTransform();

                // Hack per consentire la trasformazione di file XML 1.1 che
                // non sono supportati da .NET
                // Read the file as one string.
                string xmlHackFind = "version=\"1\\.1\"";
                string xmlHackReplace = "version=\"1.0\"";
                Regex rgx = new Regex(xmlHackFind);

                System.IO.StreamReader xmlFile = new System.IO.StreamReader(filename);
                string xmlString = xmlFile.ReadToEnd();
                xmlFile.Close();
                string xmlHacked = rgx.Replace(xmlString, xmlHackReplace);

                if (forPDF)
                {
                    transform.Load(XmlReader.Create(new StringReader(vF3D.Properties.Resources.F3D_FO)));
                }
                else
                {
                    transform.Load(XmlReader.Create(new StringReader(vF3D.Properties.Resources.F3D_1_0)));
                }

                using (StringReader sr = new StringReader(xmlHacked))
                {
                    using (XmlReader xr = XmlReader.Create(sr))
                    {
                        using (StringWriter sw = new StringWriter())
                        {
                            transform.Transform(xr, xslArg, sw);

                            if (!forPDF)
                            {
                                // http://stackoverflow.com/questions/5362591/how-to-display-the-string-html-contents-into-webbrowser-control
                                webBrowser1.Navigate("about:blank");
                                try
                                {
                                    if (webBrowser1.Document != null)
                                    {
                                        webBrowser1.Document.Write(string.Empty);
                                    }
                                }
#pragma warning disable 0168
                                catch (Exception e)
#pragma warning restore 0168
                                { } // do nothing with this
                                webBrowser1.DocumentText = sw.ToString();
                                this.Text = Application.ProductName + " " + Application.ProductVersion + " - " + filename;
                            }
                            else
                            {
                                return sw.ToString();
                            }
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Errore", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
            return string.Empty;

        }

        private void openDocument_Click(object sender, EventArgs e)
        {
            try
            {
                FileDialog dialog = new OpenFileDialog();
                dialog.Filter = "XML files (*.xml)|*.xml|Tutti i file (*.*)|*.*";
                dialog.FilterIndex = 1;
                if (dialog.ShowDialog() == DialogResult.OK)
                {
                    doOpenDocument(dialog.FileName);
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Errore", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }

        }

        private void printDocument_Click(object sender, EventArgs e)
        {
            webBrowser1.ShowPrintDialog();
        }

        private void closeWindow_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void infoButton_Click(object sender, EventArgs e)
        {
            AboutBox aboutBox = new AboutBox();
            aboutBox.Show();
        }

        private void convertXmlToPDF(string xmlFilename, bool preview = true)
        {
            string filename = Path.ChangeExtension(xmlFilename, ".pdf");

            var options = new PdfRendererOptions();
            options.Author = Application.ProductName + " " + Application.ProductVersion;
            options.EnableModify = false;
            options.EnableAdd = false;
            options.EnableCopy = false;
            options.EnablePrinting = true;
            FonetDriver driver = FonetDriver.Make();
            driver.Options = options;
            try
            {
                string s = doOpenDocument(xmlFilename, true);
                using (StringReader sr = new StringReader(s))
                {
                    using (FileStream fs = File.Create(filename))
                    {
                        driver.Render(sr, fs);
                    }
                }
                if (preview)
                {
                    Process.Start(filename);
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Errore", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void convertToPDF_Click(object sender, EventArgs e)
        {
            convertXmlToPDF(xmlFilename);
        }

        private IEnumerable<string> xmlFiles;
        private Alert alert;

        private void convertMultiToPDF_Click(object sender, EventArgs e)
        {
            // Show the FolderBrowserDialog.
            DialogResult result = folderBrowserDialog1.ShowDialog();
            if (result == DialogResult.OK)
            {
                string folderName = folderBrowserDialog1.SelectedPath;
                xmlFiles = Directory.EnumerateFiles(folderName, "*.xml");
                alert = new Alert();
                alert.Show();
                backgroundWorker1.RunWorkerAsync();
            }

        }

        private void backgroundWorker1_DoWork(object sender, DoWorkEventArgs e)
        {
            foreach (string currentFile in xmlFiles)
            {
                convertXmlToPDF(currentFile, false);
            }
        }

        private void backgroundWorker1_RunWorkerCompleted(object sender, RunWorkerCompletedEventArgs e)
        {
            alert.Dispose();
            MessageBox.Show("Operazione completata", "Conversione in PDF", MessageBoxButtons.OK, MessageBoxIcon.Information);
        }
    }
}
