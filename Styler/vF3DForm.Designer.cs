namespace vF3D
{
    partial class vF3DForm
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(vF3DForm));
            this.btnView = new System.Windows.Forms.Button();
            this.btnReset = new System.Windows.Forms.Button();
            this.toolStrip1 = new System.Windows.Forms.ToolStrip();
            this.openDocument = new System.Windows.Forms.ToolStripButton();
            this.printDocument = new System.Windows.Forms.ToolStripButton();
            this.convertToPDF = new System.Windows.Forms.ToolStripButton();
            this.closeWindow = new System.Windows.Forms.ToolStripButton();
            this.infoButton = new System.Windows.Forms.ToolStripButton();
            this.webBrowser1 = new System.Windows.Forms.WebBrowser();
            this.statusStrip1 = new System.Windows.Forms.StatusStrip();
            this.toolStripStatusLabel1 = new System.Windows.Forms.ToolStripStatusLabel();
            this.toolStripStatusLabel3 = new System.Windows.Forms.ToolStripStatusLabel();
            this.toolStripStatusLabel2 = new System.Windows.Forms.ToolStripStatusLabel();
            this.convertMultiToPDF = new System.Windows.Forms.ToolStripButton();
            this.toolStripSeparator1 = new System.Windows.Forms.ToolStripSeparator();
            this.toolStripSeparator2 = new System.Windows.Forms.ToolStripSeparator();
            this.folderBrowserDialog1 = new System.Windows.Forms.FolderBrowserDialog();
            this.backgroundWorker1 = new System.ComponentModel.BackgroundWorker();
            this.toolStrip1.SuspendLayout();
            this.statusStrip1.SuspendLayout();
            this.SuspendLayout();
            // 
            // btnView
            // 
            this.btnView.Location = new System.Drawing.Point(0, 0);
            this.btnView.Name = "btnView";
            this.btnView.Size = new System.Drawing.Size(75, 23);
            this.btnView.TabIndex = 11;
            // 
            // btnReset
            // 
            this.btnReset.Location = new System.Drawing.Point(0, 0);
            this.btnReset.Name = "btnReset";
            this.btnReset.Size = new System.Drawing.Size(75, 23);
            this.btnReset.TabIndex = 10;
            // 
            // toolStrip1
            // 
            this.toolStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.openDocument,
            this.printDocument,
            this.toolStripSeparator1,
            this.convertToPDF,
            this.convertMultiToPDF,
            this.toolStripSeparator2,
            this.closeWindow,
            this.infoButton});
            this.toolStrip1.Location = new System.Drawing.Point(0, 0);
            this.toolStrip1.Name = "toolStrip1";
            this.toolStrip1.Size = new System.Drawing.Size(980, 25);
            this.toolStrip1.TabIndex = 9;
            this.toolStrip1.Text = "toolStrip1";
            // 
            // openDocument
            // 
            this.openDocument.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
            this.openDocument.Image = ((System.Drawing.Image)(resources.GetObject("openDocument.Image")));
            this.openDocument.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.openDocument.Name = "openDocument";
            this.openDocument.Size = new System.Drawing.Size(23, 22);
            this.openDocument.Text = "Apri 3D XML";
            this.openDocument.ToolTipText = "Apri 3D XML";
            this.openDocument.Click += new System.EventHandler(this.openDocument_Click);
            // 
            // printDocument
            // 
            this.printDocument.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
            this.printDocument.Image = ((System.Drawing.Image)(resources.GetObject("printDocument.Image")));
            this.printDocument.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.printDocument.Name = "printDocument";
            this.printDocument.Size = new System.Drawing.Size(23, 22);
            this.printDocument.Text = "Stampa";
            this.printDocument.Click += new System.EventHandler(this.printDocument_Click);
            // 
            // convertToPDF
            // 
            this.convertToPDF.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
            this.convertToPDF.Image = ((System.Drawing.Image)(resources.GetObject("convertToPDF.Image")));
            this.convertToPDF.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.convertToPDF.Name = "convertToPDF";
            this.convertToPDF.Size = new System.Drawing.Size(23, 22);
            this.convertToPDF.Text = "Genera PDF";
            this.convertToPDF.Click += new System.EventHandler(this.convertToPDF_Click);
            // 
            // closeWindow
            // 
            this.closeWindow.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
            this.closeWindow.Image = ((System.Drawing.Image)(resources.GetObject("closeWindow.Image")));
            this.closeWindow.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.closeWindow.Name = "closeWindow";
            this.closeWindow.Size = new System.Drawing.Size(23, 22);
            this.closeWindow.Text = "Esci";
            this.closeWindow.Click += new System.EventHandler(this.closeWindow_Click);
            // 
            // infoButton
            // 
            this.infoButton.Alignment = System.Windows.Forms.ToolStripItemAlignment.Right;
            this.infoButton.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
            this.infoButton.Image = ((System.Drawing.Image)(resources.GetObject("infoButton.Image")));
            this.infoButton.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.infoButton.Name = "infoButton";
            this.infoButton.Size = new System.Drawing.Size(23, 22);
            this.infoButton.Text = "Informazioni";
            this.infoButton.Click += new System.EventHandler(this.infoButton_Click);
            // 
            // webBrowser1
            // 
            this.webBrowser1.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.webBrowser1.Location = new System.Drawing.Point(0, 29);
            this.webBrowser1.MinimumSize = new System.Drawing.Size(20, 20);
            this.webBrowser1.Name = "webBrowser1";
            this.webBrowser1.Size = new System.Drawing.Size(980, 390);
            this.webBrowser1.TabIndex = 12;
            // 
            // statusStrip1
            // 
            this.statusStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.toolStripStatusLabel1,
            this.toolStripStatusLabel3,
            this.toolStripStatusLabel2});
            this.statusStrip1.Location = new System.Drawing.Point(0, 422);
            this.statusStrip1.Name = "statusStrip1";
            this.statusStrip1.Size = new System.Drawing.Size(980, 22);
            this.statusStrip1.TabIndex = 13;
            this.statusStrip1.Text = "statusStrip1";
            // 
            // toolStripStatusLabel1
            // 
            this.toolStripStatusLabel1.Name = "toolStripStatusLabel1";
            this.toolStripStatusLabel1.Size = new System.Drawing.Size(847, 17);
            this.toolStripStatusLabel1.Spring = true;
            this.toolStripStatusLabel1.Text = "URF - Servizio Informatica - AB 2015";
            this.toolStripStatusLabel1.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            // 
            // toolStripStatusLabel3
            // 
            this.toolStripStatusLabel3.Name = "toolStripStatusLabel3";
            this.toolStripStatusLabel3.Size = new System.Drawing.Size(0, 17);
            // 
            // toolStripStatusLabel2
            // 
            this.toolStripStatusLabel2.Name = "toolStripStatusLabel2";
            this.toolStripStatusLabel2.Size = new System.Drawing.Size(118, 17);
            this.toolStripStatusLabel2.Text = "toolStripStatusLabel2";
            // 
            // convertMultiToPDF
            // 
            this.convertMultiToPDF.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
            this.convertMultiToPDF.Image = ((System.Drawing.Image)(resources.GetObject("convertMultiToPDF.Image")));
            this.convertMultiToPDF.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.convertMultiToPDF.Name = "convertMultiToPDF";
            this.convertMultiToPDF.Size = new System.Drawing.Size(23, 22);
            this.convertMultiToPDF.Text = "Genera PDF da cartella";
            this.convertMultiToPDF.Click += new System.EventHandler(this.convertMultiToPDF_Click);
            // 
            // toolStripSeparator1
            // 
            this.toolStripSeparator1.Name = "toolStripSeparator1";
            this.toolStripSeparator1.Size = new System.Drawing.Size(6, 25);
            // 
            // toolStripSeparator2
            // 
            this.toolStripSeparator2.Name = "toolStripSeparator2";
            this.toolStripSeparator2.Size = new System.Drawing.Size(6, 25);
            // 
            // backgroundWorker1
            // 
            this.backgroundWorker1.DoWork += new System.ComponentModel.DoWorkEventHandler(this.backgroundWorker1_DoWork);
            this.backgroundWorker1.RunWorkerCompleted += new System.ComponentModel.RunWorkerCompletedEventHandler(this.backgroundWorker1_RunWorkerCompleted);
            // 
            // vF3DForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(980, 444);
            this.Controls.Add(this.statusStrip1);
            this.Controls.Add(this.webBrowser1);
            this.Controls.Add(this.toolStrip1);
            this.Controls.Add(this.btnReset);
            this.Controls.Add(this.btnView);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Name = "vF3DForm";
            this.Text = "vF3D";
            this.toolStrip1.ResumeLayout(false);
            this.toolStrip1.PerformLayout();
            this.statusStrip1.ResumeLayout(false);
            this.statusStrip1.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button btnView;
        private System.Windows.Forms.Button btnReset;
        private System.Windows.Forms.ToolStrip toolStrip1;
        private System.Windows.Forms.ToolStripButton openDocument;
        private System.Windows.Forms.ToolStripButton printDocument;
        private System.Windows.Forms.WebBrowser webBrowser1;
        private System.Windows.Forms.StatusStrip statusStrip1;
        private System.Windows.Forms.ToolStripStatusLabel toolStripStatusLabel1;
        private System.Windows.Forms.ToolStripButton closeWindow;
        private System.Windows.Forms.ToolStripStatusLabel toolStripStatusLabel2;
        private System.Windows.Forms.ToolStripStatusLabel toolStripStatusLabel3;
        private System.Windows.Forms.ToolStripButton infoButton;
        private System.Windows.Forms.ToolStripButton convertToPDF;
        private System.Windows.Forms.ToolStripSeparator toolStripSeparator1;
        private System.Windows.Forms.ToolStripButton convertMultiToPDF;
        private System.Windows.Forms.ToolStripSeparator toolStripSeparator2;
        private System.Windows.Forms.FolderBrowserDialog folderBrowserDialog1;
        private System.ComponentModel.BackgroundWorker backgroundWorker1;
    }
}

