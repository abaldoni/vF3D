<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:vf3d="urn:vf3d">
  <xsl:template match="/">
    <fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
      <fo:layout-master-set>
        <fo:simple-page-master master-name="A4"
                      page-height="29.7cm"
                      page-width="21cm"
                      margin-top="1cm"
                      margin-bottom="2cm"
                      margin-left="2cm"
                      margin-right="2cm">
          <fo:region-body margin-top="2cm"/>
          <fo:region-before extent="2cm"/>
        </fo:simple-page-master>
      </fo:layout-master-set>
      <fo:page-sequence master-reference="A4">
        <fo:static-content flow-name="xsl-region-before">
          <fo:block font-size="7pt" font-family="Tahoma" font-weight="bold">
            Documento generato con vF3D - Unione della Romagna Faentina 2015 - AB
          </fo:block>
        </fo:static-content>

        <fo:flow flow-name="xsl-region-body">
          <fo:block>
            <fo:table border-collapse="collapse" width="100%" table-layout="fixed">
              <fo:table-column column-width="proportional-column-width(16,667)" column-number="1"/>
              <fo:table-column column-width="proportional-column-width(16,667)" column-number="2"/>
              <fo:table-column column-width="proportional-column-width(16,667)" column-number="3"/>
              <fo:table-column column-width="proportional-column-width(16,667)" column-number="4"/>
              <fo:table-column column-width="proportional-column-width(16,667)" column-number="5"/>
              <fo:table-column column-width="proportional-column-width(16,667)" column-number="6"/>
              <fo:table-body>
                <fo:table-row>
                  <fo:table-cell number-columns-spanned="6" border-left-color="rgb(0, 0, 0)" border-left-width="1.75pt" border-right-color="rgb(0, 0, 0)" border-right-width="1.75pt" border-top-color="rgb(0, 0, 0)" border-top-width="1.75pt" border-bottom-color="rgb(0, 0, 0)" border-bottom-style="solid" border-bottom-width="1.75pt" padding-left="2pt" padding-right="2pt" padding-top="2pt" padding-bottom="2pt">
                    <fo:block border-bottom-color="black" border-bottom-width="1px">
                      <fo:inline font-family="Tahoma" font-size="14pt" font-weight="bold">Modello 3D</fo:inline>
                    </fo:block>
                  </fo:table-cell>
                </fo:table-row>
                <fo:table-row font-family="Tahoma">
                  <fo:table-cell number-columns-spanned="2" border-left-color="black" border-left-style="solid" border-left-width="1pt" border-right-color="black" border-right-style="solid" border-right-width="1pt" border-top-color="black" border-top-width="1pt" border-bottom-color="black" border-bottom-style="solid" border-bottom-width="1pt" padding-left="2pt" padding-right="2pt" padding-top="2pt" padding-bottom="2pt">
                    <fo:block>
                      <fo:inline font-size="7pt">DATA DEL DOCUMENTO</fo:inline>
                    </fo:block>
                    <fo:block>
                      <xsl:value-of select="/modello_3d-xml/data_documento/giorno"/>/<xsl:value-of select="/modello_3d-xml/data_documento/mese"/>/<xsl:value-of select="/modello_3d-xml/data_documento/anno"/>
                    </fo:block>
                  </fo:table-cell>
                  <fo:table-cell number-columns-spanned="2" border-left-color="black" border-left-style="solid" border-left-width="1pt" border-right-color="black" border-right-style="solid" border-right-width="1pt" border-top-color="black" border-top-width="1pt" border-bottom-color="black" border-bottom-style="solid" border-bottom-width="1pt" padding-left="2pt" padding-right="2pt" padding-top="2pt" padding-bottom="2pt">
                    <fo:block>
                      <fo:inline font-size="7pt">COMUNE DI EMIGRAZIONE</fo:inline>
                    </fo:block>
                    <fo:block>
                      <xsl:value-of select="vf3d:getComune(/modello_3d-xml/cod_ISTAT_Comune_di_emigrazione)"/>
                    </fo:block>
                  </fo:table-cell>
                  <fo:table-cell number-columns-spanned="2" border-left-color="black" border-left-style="solid" border-left-width="1pt" border-right-color="black" border-right-style="solid" border-right-width="1pt" border-top-color="black" border-top-width="1pt" border-bottom-color="black" border-bottom-style="solid" border-bottom-width="1pt" padding-left="2pt" padding-right="2pt" padding-top="2pt" padding-bottom="2pt">
                    <fo:block>
                      <fo:inline font-size="7pt">COMUNE DESTINATARIO</fo:inline>
                    </fo:block>
                    <fo:block>
                      <xsl:value-of select="vf3d:getComune(/modello_3d-xml/cod_ISTAT_Comune_destinatario)"/>
                    </fo:block>
                  </fo:table-cell>
                </fo:table-row>
                <fo:table-row font-family="Tahoma">
                  <fo:table-cell number-columns-spanned="3" border-left-color="black" border-left-style="solid" border-left-width="1pt" border-right-color="black" border-right-style="solid" border-right-width="1pt" border-top-color="black" border-top-style="solid" border-top-width="1pt" border-bottom-color="black" border-bottom-style="solid" border-bottom-width="1pt" padding-left="2pt" padding-right="2pt" padding-top="2pt" padding-bottom="2pt">
                    <fo:block>
                      <fo:inline font-size="7pt">COGNOME</fo:inline>
                    </fo:block>
                    <fo:block>
                      <xsl:value-of select="/modello_3d-xml/cognome"/>
                    </fo:block>
                  </fo:table-cell>
                  <fo:table-cell number-columns-spanned="3" border-left-color="black" border-left-style="solid" border-left-width="1pt" border-right-color="black" border-right-style="solid" border-right-width="1pt" border-top-color="black" border-top-style="solid" border-top-width="1pt" border-bottom-color="black" border-bottom-style="solid" border-bottom-width="1pt" padding-left="2pt" padding-right="2pt" padding-top="2pt" padding-bottom="2pt">
                    <fo:block>
                      <fo:inline font-size="7pt">NOME</fo:inline>
                    </fo:block>
                    <fo:block>
                      <xsl:value-of select="/modello_3d-xml/nome"/>
                    </fo:block>
                  </fo:table-cell>
                </fo:table-row>
                <fo:table-row font-family="Tahoma">
                  <fo:table-cell number-columns-spanned="3" border-left-color="black" border-left-style="solid" border-left-width="1pt" border-right-color="black" border-right-style="solid" border-right-width="1pt" border-top-color="black" border-top-style="solid" border-top-width="1pt" border-bottom-color="black" border-bottom-style="solid" border-bottom-width="1pt" padding-left="2pt" padding-right="2pt" padding-top="2pt" padding-bottom="2pt">
                    <fo:block>
                      <fo:inline font-size="7pt">DATA DI NASCITA</fo:inline>
                    </fo:block>
                    <fo:block>
                      <xsl:value-of select="/modello_3d-xml/data_nascita/giorno"/>/<xsl:value-of select="/modello_3d-xml/data_nascita/mese"/>/<xsl:value-of select="/modello_3d-xml/data_nascita/anno"/>
                    </fo:block>
                  </fo:table-cell>
                  <xsl:if test="/modello_3d-xml/dati_comune_nascita">
                    <fo:table-cell number-columns-spanned="3" border-left-color="black" border-left-style="solid" border-left-width="1pt" border-right-color="black" border-right-style="solid" border-right-width="1pt" border-top-color="black" border-top-style="solid" border-top-width="1pt" border-bottom-color="black" border-bottom-style="solid" border-bottom-width="1pt" padding-left="2pt" padding-right="2pt" padding-top="2pt" padding-bottom="2pt">
                      <fo:block>
                        <fo:inline font-size="7pt">COMUNE DI NASCITA</fo:inline>
                      </fo:block>
                      <fo:block>
                        <xsl:value-of select="/modello_3d-xml/dati_comune_nascita/cod_ISTAT_comune_nascita"/>, <xsl:value-of select="/modello_3d-xml/dati_comune_nascita/descr_com_nascita"/> (<xsl:value-of select="/modello_3d-xml/dati_comune_nascita/sigla_prov_nascita"/>)
                      </fo:block>
                    </fo:table-cell>
                  </xsl:if>
                  <xsl:if test="/modello_3d-xml/dati_stato_nascita">
                    <fo:table-cell number-columns-spanned="3" border-left-color="black" border-left-style="solid" border-left-width="1pt" border-right-color="black" border-right-style="solid" border-right-width="1pt" border-top-color="black" border-top-style="solid" border-top-width="1pt" border-bottom-color="black" border-bottom-style="solid" border-bottom-width="1pt" padding-left="2pt" padding-right="2pt" padding-top="2pt" padding-bottom="2pt">
                      <fo:block>
                        <fo:inline font-size="7pt">STATO DI NASCITA</fo:inline>
                      </fo:block>
                      <fo:block>
                        <xsl:value-of select="/modello_3d-xml/dati_stato_nascita/cod_ISTAT_stato_nascita"/>, <xsl:value-of select="/modello_3d-xml/dati_stato_nascita/descr_com_estero_nascita"/> (<xsl:value-of select="/modello_3d-xml/dati_stato_nascita/descr_stato_nascita"/>)
                      </fo:block>
                    </fo:table-cell>
                  </xsl:if>
                </fo:table-row>
                <fo:table-row>
                  <fo:table-cell number-columns-spanned="2" border-left-color="black" border-left-style="solid" border-left-width="1pt" border-right-color="black" border-right-style="solid" border-right-width="1pt" border-top-color="black" border-top-style="solid" border-top-width="1pt" border-bottom-color="black" border-bottom-style="solid" border-bottom-width="1pt" padding-left="2pt" padding-right="2pt" padding-top="2pt" padding-bottom="2pt">
                    <fo:block>
                      <fo:inline font-size="7pt">CODICE FISCALE</fo:inline>
                    </fo:block>
                    <fo:block>
                      <xsl:value-of select="/modello_3d-xml/cod_fisc"/>
                    </fo:block>
                  </fo:table-cell>
                  <fo:table-cell border-left-color="black" border-left-style="solid" border-left-width="1pt" border-right-color="black" border-right-style="solid" border-right-width="1pt" border-top-color="black" border-top-style="solid" border-top-width="1pt" border-bottom-color="black" border-bottom-style="solid" border-bottom-width="1pt" padding-left="2pt" padding-right="2pt" padding-top="2pt" padding-bottom="2pt">
                    <fo:block>
                      <fo:inline font-size="7pt">VALIDATO</fo:inline>
                    </fo:block>
                    <fo:block>
                      <xsl:choose>
                        <xsl:when test="/modello_3d-xml/cod_fisc_validato='Vero'">
                          SI
                        </xsl:when>
                        <xsl:otherwise>
                          NO
                        </xsl:otherwise>
                      </xsl:choose>
                    </fo:block>
                  </fo:table-cell>
                  <fo:table-cell border-left-color="black" border-left-style="solid" border-left-width="1pt" border-right-color="black" border-right-style="solid" border-right-width="1pt" border-top-color="black" border-top-style="solid" border-top-width="1pt" border-bottom-color="black" border-bottom-style="solid" border-bottom-width="1pt" padding-left="2pt" padding-right="2pt" padding-top="2pt" padding-bottom="2pt">
                    <fo:block>
                      <fo:inline font-size="7pt">SESSO</fo:inline>
                    </fo:block>
                    <fo:block>
                      <xsl:value-of select="/modello_3d-xml/sesso"/>
                    </fo:block>
                  </fo:table-cell>
                  <fo:table-cell number-columns-spanned="2" border-left-color="black" border-left-style="solid" border-left-width="1pt" border-right-color="black" border-right-style="solid" border-right-width="1pt" border-top-color="black" border-top-style="solid" border-top-width="1pt" border-bottom-color="black" border-bottom-style="solid" border-bottom-width="1pt" padding-left="2pt" padding-right="2pt" padding-top="2pt" padding-bottom="2pt">
                    <fo:block>
                      <fo:inline font-size="7pt">POSSESSO ELETTORATO ATTIVO</fo:inline>
                    </fo:block>
                    <fo:block>
                      <xsl:choose>
                        <xsl:when test="/modello_3d-xml/possesso_elettorato_attivo='Vero'">
                          SI
                        </xsl:when>
                        <xsl:otherwise>
                          NO
                        </xsl:otherwise>
                      </xsl:choose>
                    </fo:block>
                  </fo:table-cell>
                </fo:table-row>
                <fo:table-row font-family="Tahoma">
                  <fo:table-cell number-columns-spanned="6" border-width="1pt 1pt thick 1pt" border="solid black" padding="2pt">
                    <fo:block>
                      <fo:inline font-weight="bold" font-size="14pt">Atto di nascita</fo:inline>
                    </fo:block>
                  </fo:table-cell>
                </fo:table-row>
                <fo:table-row font-family="Tahoma">
                  <fo:table-cell border-left-color="black" border-left-style="solid" border-left-width="1pt" border-right-color="black" border-right-style="solid" border-right-width="1pt" border-top-color="black" border-top-style="solid" border-top-width="1pt" border-bottom-color="black" border-bottom-style="solid" border-bottom-width="1pt" padding-left="2pt" padding-right="2pt" padding-top="2pt" padding-bottom="2pt">
                    <fo:block>
                      <fo:inline font-size="7pt">ANNO</fo:inline>
                    </fo:block>
                    <fo:block>
                      <xsl:value-of select="/modello_3d-xml/atto_di_nascita/anno"/>
                    </fo:block>
                  </fo:table-cell>
                  <fo:table-cell border-left-color="black" border-left-style="solid" border-left-width="1pt" border-right-color="black" border-right-style="solid" border-right-width="1pt" border-top-color="black" border-top-style="solid" border-top-width="1pt" border-bottom-color="black" border-bottom-style="solid" border-bottom-width="1pt" padding-left="2pt" padding-right="2pt" padding-top="2pt" padding-bottom="2pt">
                    <fo:block>
                      <fo:inline font-size="7pt">NUMERO</fo:inline>
                    </fo:block>
                    <fo:block>
                      <xsl:value-of select="/modello_3d-xml/atto_di_nascita/numero"/>
                    </fo:block>
                  </fo:table-cell>
                  <fo:table-cell border-left-color="black" border-left-style="solid" border-left-width="1pt" border-right-color="black" border-right-style="solid" border-right-width="1pt" border-top-color="black" border-top-style="solid" border-top-width="1pt" border-bottom-color="black" border-bottom-style="solid" border-bottom-width="1pt" padding-left="2pt" padding-right="2pt" padding-top="2pt" padding-bottom="2pt">
                    <fo:block>
                      <fo:inline font-size="7pt">PARTE</fo:inline>
                    </fo:block>
                    <fo:block>
                      <xsl:value-of select="/modello_3d-xml/atto_di_nascita/parte"/>
                    </fo:block>
                  </fo:table-cell>
                  <fo:table-cell border-left-color="black" border-left-style="solid" border-left-width="1pt" border-right-color="black" border-right-style="solid" border-right-width="1pt" border-top-color="black" border-top-style="solid" border-top-width="1pt" border-bottom-color="black" border-bottom-style="solid" border-bottom-width="1pt" padding-left="2pt" padding-right="2pt" padding-top="2pt" padding-bottom="2pt">
                    <fo:block>
                      <fo:inline font-size="7pt">SERIE</fo:inline>
                    </fo:block>
                    <fo:block>
                      <xsl:value-of select="/modello_3d-xml/atto_di_nascita/serie"/>
                    </fo:block>
                  </fo:table-cell>
                  <fo:table-cell number-columns-spanned="2" border-left-color="black" border-left-style="solid" border-left-width="1pt" border-right-color="black" border-right-style="solid" border-right-width="1pt" border-top-color="black" border-top-style="solid" border-top-width="1pt" border-bottom-color="black" border-bottom-style="solid" border-bottom-width="1pt" padding-left="2pt" padding-right="2pt" padding-top="2pt" padding-bottom="2pt">
                    <fo:block>
                      <fo:inline font-size="7pt">VOLUME</fo:inline>
                    </fo:block>
                    <fo:block>
                      <xsl:value-of select="/modello_3d-xml/atto_di_nascita/volume"/>
                    </fo:block>
                  </fo:table-cell>
                </fo:table-row>
                <fo:table-row font-family="Tahoma">
                  <fo:table-cell number-columns-spanned="6" border-width="1pt 1pt thick 1pt" border="solid black" padding="2pt">
                    <fo:block>
                      <fo:inline font-family="Tahoma" font-weight="bold" font-size="14pt">Dati elettorali</fo:inline>
                    </fo:block>
                  </fo:table-cell>
                </fo:table-row>
                <fo:table-row font-family="Tahoma">
                  <fo:table-cell number-columns-spanned="2" border-left-color="black" border-left-style="solid" border-left-width="1pt" border-right-color="black" border-right-style="solid" border-right-width="1pt" border-top-color="black" border-top-style="solid" border-top-width="1pt" border-bottom-color="black" border-bottom-style="solid" border-bottom-width="1pt" padding-left="2pt" padding-right="2pt" padding-top="2pt" padding-bottom="2pt">
                    <fo:block>
                      <fo:inline font-size="7pt">NUMERO TESSERA ELETTORALE</fo:inline>
                    </fo:block>
                    <fo:block>
                      <xsl:value-of select="/modello_3d-xml/numero_tessera_elettorale"/>
                    </fo:block>
                  </fo:table-cell>
                  <fo:table-cell border-left-color="black" border-left-style="solid" border-left-width="1pt" border-right-color="black" border-right-style="solid" border-right-width="1pt" border-top-color="black" border-top-style="solid" border-top-width="1pt" border-bottom-color="black" border-bottom-style="solid" border-bottom-width="1pt" padding-left="2pt" padding-right="2pt" padding-top="2pt" padding-bottom="2pt">
                    <fo:block>
                      <fo:inline font-size="7pt">TESSERA CONSEGNATA</fo:inline>
                    </fo:block>
                    <fo:block>
                      <xsl:choose>
                        <xsl:when test="/modello_3d-xml/tessera_elettorale_consegnata='Vero'">
                          SI
                        </xsl:when>
                        <xsl:otherwise>
                          NO
                        </xsl:otherwise>
                      </xsl:choose>
                    </fo:block>
                  </fo:table-cell>
                  <fo:table-cell number-columns-spanned="3" border-left-color="black" border-left-style="solid" border-left-width="1pt" border-right-color="black" border-right-style="solid" border-right-width="1pt" border-top-color="black" border-top-style="solid" border-top-width="1pt" border-bottom-color="black" border-bottom-style="solid" border-bottom-width="1pt" padding-left="2pt" padding-right="2pt" padding-top="2pt" padding-bottom="2pt">
                    <fo:block>
                      <fo:inline font-size="7pt">DATA DI CANCELLAZIONE DALLE LISTE ELETTORALI</fo:inline>
                    </fo:block>
                    <fo:block>
                      <xsl:value-of select="/modello_3d-xml/data_cancellazione_liste_elettorali/giorno"/>/<xsl:value-of select="/modello_3d-xml/data_cancellazione_liste_elettorali/mese"/>/<xsl:value-of select="/modello_3d-xml/data_cancellazione_liste_elettorali/anno"/>
                    </fo:block>
                  </fo:table-cell>
                </fo:table-row>
              </fo:table-body>
            </fo:table>&#x00A0;
          </fo:block>
        </fo:flow>
      </fo:page-sequence>
    </fo:root>
  </xsl:template>
</xsl:stylesheet>
