<?xml version="1.0"?>
<xsl:stylesheet
	version="1.1"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" />

  <xsl:template match="/">
    <xsl:apply-templates/>
  </xsl:template>

  <xsl:template match="modello_3d-xml">
    <html>
      <head>
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <link rel="stylesheet" type="text/css" href="http://kumailht.com/gridforms/gridforms/gridforms.css"/>
          <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
          <script type="text/javascript" src="http://kumailht.com/gridforms/gridforms/gridforms.js"></script>
          <meta name="viewport" content="initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no"/>
            <style type="text/css">
              body {font-family:arial, sans-serif}
            </style>
          <style type="text/css">
          #f3d-container { width: 100%; position: relative; }

          #f3d { font-family: sans-serif; margin-left: auto; margin-right: auto; max-width: 1280px; min-width: 930px; padding: 0; }
          #f3d .versione { font-size: 9pt; float:right; color: #777777; }
          #f3d h1 { padding: 20px 0 0 0; margin: 0; font-size: 20pt; }
          #f3d h2 { padding: 20px 0 0 0; margin: 0; font-size: 16pt; }
          #f3d h3 { padding: 20px 0 0 0; margin: 0; font-size: 14pt; }
          #f3d h4 { padding: 20px 0 0 0; margin: 0; font-size: 12pt; }
          #f3d h5 { padding: 10px 0 0 0; margin: 0;	font-size: 10pt; font-style: italic; }
          #f3d ul { list-style-type: none; margin: 0 !important; padding: 15px 0 0 40px !important; }
          #f3d ul li { font-size: 9pt; }
          #f3d ul li span { font-weight: bold; }
          #f3d div { padding: 0; margin: 0; }

          #f3d
          div.page {
          background-color: #fff !important;
          position: relative;

          margin: 20px 0
          50px 0;
          padding: 60px;

          background: -moz-linear-gradient(0% 0 360deg, #FFFFFF, #F2F2F2 20%, #FFFFFF) repeat scroll 0 0 transparent;
          border: 1px solid #CCCCCC; -webkitbox-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
          -mozbox-shadow: 0
          0 10px rgba(0, 0, 0, 0.3);
          box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
          }
          #f3d div.footer { padding: 50px 0 0 0; margin: 0; font-size: 9pt; text-align: center; color: #777777; }
        </style>
      </head>
      <body>
        <div id="f3d-container">
          <div id="f3d">
            <ul>
              <xsl:apply-templates/>
            </ul>
          </div>
        </div>
      </body>
    </html>
  </xsl:template>

  <xsl:template match="cognome">
    <li>
      Cognome:
      <span>
        <xsl:value-of select="."/>
      </span>
    </li>
  </xsl:template>

  <xsl:template match="nome">
    <li>
      Nome:
      <span>
        <xsl:value-of select="."/>
      </span>
    </li>
  </xsl:template>

  <xsl:template match="cod_fisc">
    <li>
      CF:
      <span>
        <xsl:value-of select="."/>
        <xsl:choose>
          <xsl:when test="cod_fisc_validato='Vero'">
            VALIDATO
          </xsl:when>
          <xsl:otherwise>
            NON VALIDATO
          </xsl:otherwise>
        </xsl:choose>
      </span>
    </li>
  </xsl:template>

  <xsl:template match="cod_fisc_validato"/>

  <xsl:template match="sesso">
    <li>
      Sesso:
      <span>
        <xsl:value-of select="."/>
      </span>
    </li>
  </xsl:template>

  <xsl:template match="numero_tessera_elettorale">
    <li>
      Tessera numero:
      <span>
        <xsl:value-of select="."/>
        <xsl:choose>
          <xsl:when test="tessera_elettorale_consegnata='Vero'">
            CONSEGNATA
          </xsl:when>
          <xsl:otherwise>
            NON CONSEGNATA
          </xsl:otherwise>
        </xsl:choose>
      </span>
    </li>
  </xsl:template>

  <xsl:template match="tessera_elettorale_consegnata"/>

  <xsl:template match="data_nascita">
    <li>
      Data di nascita: <xsl:value-of select="giorno"/>/<xsl:value-of select="mese"/>/<xsl:value-of select="anno"/>
    </li>
  </xsl:template>

  <xsl:template match="data_cancellazione_liste_elettorali">
    <li>
      Data di cancellazione dalle liste elettorali: <xsl:value-of select="giorno"/>/<xsl:value-of select="mese"/>/<xsl:value-of select="anno"/>
    </li>
  </xsl:template>

  <xsl:template match="data_documento">
    <li>
      Data del documento: <xsl:value-of select="giorno"/>/<xsl:value-of select="mese"/>/<xsl:value-of select="anno"/>
    </li>
  </xsl:template>

  <xsl:template match="possesso_elettorato_attivo">
    <li>
      Elettorato attivo: <xsl:value-of select="."/>
    </li>
  </xsl:template>

  <xsl:template match="stato_civile">
    <li>
      Stato civile: <xsl:value-of select="."/>
    </li>
  </xsl:template>

  <xsl:template match="dati_comune_nascita">
    <li>
      Comune di nascita: <xsl:value-of select="cod_ISTAT_comune_nascita"/>, <xsl:value-of select="descr_com_nascita"/> (<xsl:value-of select="sigla_prov_nascita"/>)
    </li>
  </xsl:template>

  <xsl:template match="cod_ISTAT_comune_nascita"/>

  <xsl:template match="descr_com_nascita"/>

  <xsl:template match="sigla_prov_nascita"/>

  <xsl:template match="atto_di_nascita">
    <li>
      Atto di nascita<br/>
      Anno: <xsl:value-of select="anno"/>
      Numero: <xsl:value-of select="numero"/>
      Parte: <xsl:value-of select="parte"/>
      Serie: <xsl:value-of select="serie"/>
      Volume: <xsl:value-of select="volume"/>
    </li>
  </xsl:template>

  <xsl:template match="cod_ISTAT_Comune_di_emigrazione">
    <li>
      Comune di emigrazione: <xsl:value-of select="."/>
    </li>
  </xsl:template>

  <xsl:template match="cod_ISTAT_Comune_destinatario">
    <li>
      Comune destinatario: <xsl:value-of select="."/>
    </li>
  </xsl:template>

  <xsl:template match="anno"/>
  <xsl:template match="numero"/>
  <xsl:template match="parte"/>
  <xsl:template match="serie"/>
  <xsl:template match="volume"/>
  <xsl:template match="giorno"/>
  <xsl:template match="mese"/>
  <xsl:template match="anno"/>
</xsl:stylesheet>