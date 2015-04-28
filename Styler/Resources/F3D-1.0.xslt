<xsl:stylesheet
	version="1.1"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:vf3d="urn:vf3d">
  <xsl:output method="html" />

  <xsl:template match="/">
    <xsl:apply-templates/>
  </xsl:template>

  <xsl:template match="modello_3d-xml">
    <html>
      <head>
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <link rel="stylesheet" type="text/css" href="http://kumailht.com/gridforms/gridforms/gridforms.css"/>
        <script type="text/javascript" src="https://code.jquery.com/jquery-1.11.2.min.js"></script>
        <script type="text/javascript" src="http://kumailht.com/gridforms/gridforms/gridforms.js"></script>
        <meta name="viewport" content="initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no"/>
        <style type="text/css">
          body {font-family:arial, sans-serif}
        </style>
      </head>
      <body>
        <form class="grid-form">
          <fieldset>
            <legend>Modello 3D</legend>
            <div data-row-span="3">
              <xsl:apply-templates select="data_documento"/>
              <xsl:apply-templates select="cod_ISTAT_Comune_di_emigrazione"/>
              <xsl:apply-templates select="cod_ISTAT_Comune_destinatario"/>
            </div>
          </fieldset>
          <fieldset>
            <div data-row-span="2">
              <xsl:apply-templates select="cognome"/>
              <xsl:apply-templates select="nome"/>
            </div>
            <div data-row-span="2">
              <xsl:apply-templates select="data_nascita"/>
              <xsl:apply-templates select="dati_comune_nascita"/>
            </div>
            <div data-row-span="4">
              <xsl:apply-templates select="cod_fisc"/>
              <xsl:apply-templates select="sesso"/>
              <xsl:apply-templates select="possesso_elettorato_attivo"/>
            </div>
          </fieldset>
          <xsl:apply-templates select="atto_di_nascita"/>
          <fieldset>
            <legend>Dati elettorali</legend>
            <div data-row-span="3">
              <xsl:apply-templates select="numero_tessera_elettorale"/>
              <xsl:apply-templates select="data_cancellazione_liste_elettorali"/>
            </div>
          </fieldset>
        </form>
      </body>
    </html>
  </xsl:template>

  <xsl:template match="cognome">
    <div data-field-span="1">
      <label>Cognome</label>
      <xsl:element name="input">
        <xsl:attribute name="type">text</xsl:attribute>
        <xsl:attribute name="autofocus"/>
        <xsl:attribute name="disabled"/>
        <xsl:attribute name="value">
          <xsl:value-of select="."/>
        </xsl:attribute>
      </xsl:element>
    </div>
  </xsl:template>

  <xsl:template match="nome">
    <div data-field-span="1">
      <label>Nome</label>
      <xsl:element name="input">
        <xsl:attribute name="type">text</xsl:attribute>
        <xsl:attribute name="autofocus"/>
        <xsl:attribute name="disabled"/>
        <xsl:attribute name="value">
          <xsl:value-of select="."/>
        </xsl:attribute>
      </xsl:element>
    </div>
  </xsl:template>

  <xsl:template match="cod_fisc">
    <div data-field-span="1">
      <label>Codice Fiscale</label>
      <xsl:element name="input">
        <xsl:attribute name="type">text</xsl:attribute>
        <xsl:attribute name="autofocus"/>
        <xsl:attribute name="disabled"/>
        <xsl:attribute name="value">
          <xsl:value-of select="."/>
        </xsl:attribute>
      </xsl:element>
    </div>
    <div data-field-span="1">
      <label>Validato</label>
      <xsl:element name="input">
        <xsl:attribute name="type">text</xsl:attribute>
        <xsl:attribute name="autofocus"/>
        <xsl:attribute name="disabled"/>
        <xsl:attribute name="value">
          <xsl:choose>
            <xsl:when test="../cod_fisc_validato='Vero'">
              SI
            </xsl:when>
            <xsl:otherwise>
              NO
            </xsl:otherwise>
          </xsl:choose>
        </xsl:attribute>
      </xsl:element>
    </div>
  </xsl:template>

  <xsl:template match="sesso">
    <div data-field-span="1">
      <label>Sesso</label>
      <xsl:element name="input">
        <xsl:attribute name="type">text</xsl:attribute>
        <xsl:attribute name="autofocus"/>
        <xsl:attribute name="disabled"/>
        <xsl:attribute name="value">
          <xsl:value-of select="."/>
        </xsl:attribute>
      </xsl:element>
    </div>
  </xsl:template>

  <xsl:template match="numero_tessera_elettorale">
    <div data-field-span="1">
      <label>Tessera Elettorale</label>
      <xsl:element name="input">
        <xsl:attribute name="type">text</xsl:attribute>
        <xsl:attribute name="autofocus"/>
        <xsl:attribute name="disabled"/>
        <xsl:attribute name="value">
          <xsl:value-of select="."/>
        </xsl:attribute>
      </xsl:element>
    </div>
    <div data-field-span="1">
      <label>Consegnata</label>
      <xsl:element name="input">
        <xsl:attribute name="type">text</xsl:attribute>
        <xsl:attribute name="autofocus"/>
        <xsl:attribute name="disabled"/>
        <xsl:attribute name="value">
          <xsl:choose>
            <xsl:when test="../tessera_elettorale_consegnata='Vero'">
              SI
            </xsl:when>
            <xsl:otherwise>
              NO
            </xsl:otherwise>
          </xsl:choose>
        </xsl:attribute>
      </xsl:element>
    </div>
  </xsl:template>

  <xsl:template match="data_nascita">
    <div data-field-span="1">
      <label>Data di nascita</label>
      <xsl:element name="input">
        <xsl:attribute name="type">text</xsl:attribute>
        <xsl:attribute name="autofocus"/>
        <xsl:attribute name="disabled"/>
        <xsl:attribute name="value">
          <xsl:value-of select="giorno"/>/<xsl:value-of select="mese"/>/<xsl:value-of select="anno"/>
        </xsl:attribute>
      </xsl:element>
    </div>
  </xsl:template>

  <xsl:template match="data_cancellazione_liste_elettorali">
    <div data-field-span="1">
      <label>Data di cancellazione dalle liste elettorali</label>
      <xsl:element name="input">
        <xsl:attribute name="type">text</xsl:attribute>
        <xsl:attribute name="autofocus"/>
        <xsl:attribute name="disabled"/>
        <xsl:attribute name="value">
          <xsl:value-of select="giorno"/>/<xsl:value-of select="mese"/>/<xsl:value-of select="anno"/>
        </xsl:attribute>
      </xsl:element>
    </div>
  </xsl:template>

  <xsl:template match="data_documento">
    <div data-field-span="1">
      <label>Data del documento</label>
      <xsl:element name="input">
        <xsl:attribute name="type">text</xsl:attribute>
        <xsl:attribute name="autofocus"/>
        <xsl:attribute name="disabled"/>
        <xsl:attribute name="value">
          <xsl:value-of select="giorno"/>/<xsl:value-of select="mese"/>/<xsl:value-of select="anno"/>
        </xsl:attribute>
      </xsl:element>
    </div>
  </xsl:template>

  <xsl:template match="possesso_elettorato_attivo">
    <div data-field-span="1">
      <label>Possesso Elettorato Attivo</label>
      <xsl:element name="input">
        <xsl:attribute name="type">text</xsl:attribute>
        <xsl:attribute name="autofocus"/>
        <xsl:attribute name="disabled"/>
        <xsl:attribute name="value">
          <xsl:choose>
            <xsl:when test=".='Vero'">
              SI
            </xsl:when>
            <xsl:otherwise>
              NO
            </xsl:otherwise>
          </xsl:choose>
        </xsl:attribute>
      </xsl:element>
    </div>
  </xsl:template>

  <xsl:template match="stato_civile">
    <div data-field-span="1">
      <label>Stato Civile</label>
      <xsl:element name="input">
        <xsl:attribute name="type">text</xsl:attribute>
        <xsl:attribute name="autofocus"/>
        <xsl:attribute name="disabled"/>
        <xsl:attribute name="value">
          <xsl:value-of select="."/>
        </xsl:attribute>
      </xsl:element>
    </div>
  </xsl:template>

  <xsl:template match="dati_comune_nascita">
    <div data-field-span="1">
      <label>Comune di nascita</label>
      <xsl:element name="input">
        <xsl:attribute name="type">text</xsl:attribute>
        <xsl:attribute name="autofocus"/>
        <xsl:attribute name="disabled"/>
        <xsl:attribute name="value">
          <xsl:value-of select="cod_ISTAT_comune_nascita"/>, <xsl:value-of select="descr_com_nascita"/> (<xsl:value-of select="sigla_prov_nascita"/>)
        </xsl:attribute>
      </xsl:element>
    </div>
  </xsl:template>

  <xsl:template match="atto_di_nascita">
    <fieldset>
      <legend>Atto di nascita</legend>
      <div data-row-span="5">
        <div data-field-span="1">
          <label>Anno</label>
          <xsl:element name="input">
            <xsl:attribute name="type">text</xsl:attribute>
            <xsl:attribute name="autofocus"/>
            <xsl:attribute name="disabled"/>
            <xsl:attribute name="value">
              <xsl:value-of select="anno"/>
            </xsl:attribute>
          </xsl:element>
        </div>
        <div data-field-span="1">
          <label>Numero</label>
          <xsl:element name="input">
            <xsl:attribute name="type">text</xsl:attribute>
            <xsl:attribute name="autofocus"/>
            <xsl:attribute name="disabled"/>
            <xsl:attribute name="value">
              <xsl:value-of select="numero"/>
            </xsl:attribute>
          </xsl:element>
        </div>
        <div data-field-span="1">
          <label>Parte</label>
          <xsl:element name="input">
            <xsl:attribute name="type">text</xsl:attribute>
            <xsl:attribute name="autofocus"/>
            <xsl:attribute name="disabled"/>
            <xsl:attribute name="value">
              <xsl:value-of select="parte"/>
            </xsl:attribute>
          </xsl:element>
        </div>
        <div data-field-span="1">
          <label>Serie</label>
          <xsl:element name="input">
            <xsl:attribute name="type">text</xsl:attribute>
            <xsl:attribute name="autofocus"/>
            <xsl:attribute name="disabled"/>
            <xsl:attribute name="value">
              <xsl:value-of select="serie"/>
            </xsl:attribute>
          </xsl:element>
        </div>
        <div data-field-span="1">
          <label>Volume</label>
          <xsl:element name="input">
            <xsl:attribute name="type">text</xsl:attribute>
            <xsl:attribute name="autofocus"/>
            <xsl:attribute name="disabled"/>
            <xsl:attribute name="value">
              <xsl:value-of select="volume"/>
            </xsl:attribute>
          </xsl:element>
        </div>
      </div>
    </fieldset>
  </xsl:template>

  <xsl:template match="cod_ISTAT_Comune_di_emigrazione">
    <div data-field-span="1">
      <label>Comune di emigrazione</label>
      <xsl:element name="input">
        <xsl:attribute name="type">text</xsl:attribute>
        <xsl:attribute name="autofocus"/>
        <xsl:attribute name="disabled"/>
        <xsl:attribute name="value">
          <xsl:value-of select="vf3d:getComune(.)"/>
        </xsl:attribute>
      </xsl:element>
    </div>
  </xsl:template>

  <xsl:template match="cod_ISTAT_Comune_destinatario">
    <div data-field-span="1">
      <label>Comune destinatario</label>
      <xsl:element name="input">
        <xsl:attribute name="type">text</xsl:attribute>
        <xsl:attribute name="autofocus"/>
        <xsl:attribute name="disabled"/>
        <xsl:attribute name="value">
          <xsl:value-of select="vf3d:getComune(.)"/>
        </xsl:attribute>
      </xsl:element>
    </div>
  </xsl:template>
</xsl:stylesheet>