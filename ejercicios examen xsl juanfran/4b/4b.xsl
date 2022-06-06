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
  <xsl:choose>
  <xsl:when test="year &gt; '1979' and year &lt; '1990'">
  <any>la publicació fou <xsl:value-of select="year" />. Bona dècada del 80!</any>
  </xsl:when>
  <xsl:when test=" year &gt; '1989' and year &lt; '2000'  ">
  <any>la publicació fou <xsl:value-of select="year" />. Bona dècada del 90!</any>
  </xsl:when>
  <xsl:otherwise>
  <any>la publicació fou <xsl:value-of select="year" />. Bona dècada</any>
  </xsl:otherwise>
  </xsl:choose>
  </disc>
  </xsl:template>
  
  
</xsl:stylesheet>

