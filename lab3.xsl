<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html> 

  <body style="font-family:Century Gothic;margin:0;" class="backg">
  <div style="color: white; background-color: black ;border-radius: 5px;"><h1 align="center">ROADMASTER</h1></div>
  <center>
  <h1>Dashboard</h1>
  <h2>HONDA MODELS</h2>
  <table>
    <tr bgcolor="yellow">
      <th style="text-align:left">model</th>
      <th style="text-align:left">type</th>
      <th style="text-align:left">capacity</th>
    </tr>
    <xsl:for-each select="Bikes/Honda">
    <tr>
      <td><xsl:value-of select="model"/></td>
      <td><xsl:value-of select="type"/></td>
      <td><xsl:value-of select="capacity"/></td>
    </tr>
    </xsl:for-each>
  </table>

    <h2>RIDES(sort distance)</h2>
  <table>
    <tr bgcolor="yellow">
      <th style="text-align:left">Ride no.</th>
      <th style="text-align:left">Start</th>
      <th style="text-align:left">Destination</th>
      <th style="text-align:left">Distance</th>
    </tr>
    <xsl:for-each select="Bikes/RIDES">
    <xsl:sort select="distance"/>
    <tr>
      <td><xsl:value-of select="Rideno"/></td>
      <td><xsl:value-of select="start"/></td>
      <td><xsl:value-of select="destination"/></td>
      <td><xsl:value-of select="distance"/></td>
    </tr>
    </xsl:for-each>
  </table>
    <h2>RIDES(if dist > 250)</h2>
  <table>
    <tr bgcolor="yellow">
      <th style="text-align:left">Ride no.</th>
      <th style="text-align:left">Start</th>
      <th style="text-align:left">Destination</th>
      <th style="text-align:left">Distance</th>
    </tr>
    <xsl:for-each select="Bikes/RIDES">
    <xsl:if test="distance &gt; 250">
    <tr>
      <td><xsl:value-of select="Rideno"/></td>
      <td><xsl:value-of select="start"/></td>
      <td><xsl:value-of select="destination"/></td>
      <td><xsl:value-of select="distance"/></td>
    </tr>
    </xsl:if>
    </xsl:for-each>
  </table>
  </center>

</body>
</html>
</xsl:template>
</xsl:stylesheet>