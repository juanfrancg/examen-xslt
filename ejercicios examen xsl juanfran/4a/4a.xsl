<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:template match="/">
  <cataleg>
     <xsl:apply-templates select="catalog/cd[year &lt; '1990']">
     <xsl:sort select="price" data-type="number" order="ascending"/>
</xsl:apply-templates>
  </cataleg>
  
  </xsl:template>
  
  <xsl:template match="cd">
  <disc>
  <titol>
  <xsl:attribute name="precio">
  <xsl:value-of select="price" />
  </xsl:attribute>
  <xsl:value-of select="title"/></titol>
  <any><xsl:value-of select="year"/></any>
  </disc>
  </xsl:template>
  
  
</xsl:stylesheet>
