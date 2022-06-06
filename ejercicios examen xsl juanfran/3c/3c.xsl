<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:template match="/">
  <html>
  <head>
  <link rel="stylesheet" href="3c.css"/>
  </head>
  <table border="1">
  <tr>
  <th class="green">Title</th>
  <th class="green">Company</th>
  <th class="green">Year</th>
  </tr>
   <xsl:apply-templates select="catalog/cd[country!='UK' and price >= '9']"/>
  </table>
  </html>
  </xsl:template>
  
  <xsl:template match="cd">
  <tr>
  
  <td><xsl:value-of select="title"/></td>
  <td><xsl:value-of select="company"/></td>
  <xsl:choose>
  <xsl:when test="year &gt; '1979' and year &lt; '1990' ">
  <td class="red"><xsl:value-of select="year"/></td>
  </xsl:when>
  <xsl:when test="year &gt; '1989' and year &lt; '2000' ">
  <td class="blue"><xsl:value-of select="year"/></td>
  </xsl:when>
  <xsl:otherwise>
  <td class="grey"><xsl:value-of select="year"/></td>
  </xsl:otherwise>
  </xsl:choose>
  </tr>
  </xsl:template>
  
  
  
  
</xsl:stylesheet>

