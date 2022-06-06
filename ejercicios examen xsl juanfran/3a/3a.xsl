<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:template match="/">
  <html>
  <head>
  <link rel="stylesheet" href="3a.css"/>
  </head>
  <table border="1">
  <tr>
  <th class="green">Title</th>
  <th class="green">Company</th>
  </tr>
   <xsl:apply-templates select="catalog/cd[company!='Polydor' and title!='Empire Burlesque']"/>
  </table>
  </html>
  </xsl:template>
  
  <xsl:template match="cd">
  <tr>
  <td><xsl:value-of select="title"/></td>
  <td><xsl:value-of select="company"/></td>
  </tr>
  </xsl:template>
  
  
  
  
</xsl:stylesheet>
