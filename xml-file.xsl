<?xml version="1.0" encoding="UTF-8"?><!-- DWXMLSource="xml-file.xml" -->

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    
<xsl:template match="/">
  <html>
  <head>
  <style>
table {
    border-collapse: collapse;
    width: 100%;
}

th, td {
    text-align: left;
    padding: 8px;
}

tr:nth-child(even){background-color: #f2f2f2}

th {
    background-color: #4CAF50;
    color: white;
}
h2{
    text-align:center;
	color:#CCC;
	margin-top:15px;
}
tr:hover{background-color:#A6EAA8}
</style>
</head> 
  <body>
  <h2>Yayınevleri Genel Bilgiler</h2>
  <table>
    <tr>
      <th>YAYINEVİ ID</th>
      <th>YAYIN EVİ ADI </th>
      <th>YAYINEVİ KURULUŞ YILI</th>
    </tr>
    <xsl:for-each select="publishers/publisher">
    <tr>
      <td><xsl:value-of select="publisherID"/></td>
      <td><xsl:value-of select="publisherName"/></td>
      <td><xsl:value-of select="publisherYear"/></td>
    </tr>
    </xsl:for-each>
  </table>
  </body>
  </html>
</xsl:template>

</xsl:stylesheet>