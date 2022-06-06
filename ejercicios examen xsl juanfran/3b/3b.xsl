<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:template match="/">
  <html>
  <head>
  <link rel="stylesheet" href="3b.css"/>
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
  <td><xsl:value-of select="year"/></td>
  </tr>
  </xsl:template>
  
  
  
  
</xsl:stylesheet>
