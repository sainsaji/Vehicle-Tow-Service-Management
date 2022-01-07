<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
  <html>
  <body>
    <h2>Our Services</h2>
    <table border="1">
      <tr bgcolor="#9acd32">
        <th>Services</th>
        <th>Availability</th>
<th>State</th>
<th>Fee</th>
<th>Offer Price</th>
      </tr>
      <xsl:for-each select="services/cd">
      <tr>
        <td><xsl:value-of select="title" /></td>
        <td><xsl:value-of select="availability" /></td>
        <td><xsl:value-of select="state" /></td>
        <td><xsl:value-of select="fee" /></td>
        <td><xsl:value-of select="offer" /></td>

      </tr>
      </xsl:for-each>
    </table>

<h2>Our Services sorted by fee</h2>
    <table border="1">
      <tr bgcolor="#9acd32">
        <th>Services</th>
        <th>Availability</th>
<th>State</th>
<th>Fee</th>
<th>Offer Price</th>
      </tr>
      <xsl:for-each select="services/cd">
<xsl:sort select="offer"/>
      <tr>
        <td><xsl:value-of select="title" /></td>
        <td><xsl:value-of select="availability" /></td>
        <td><xsl:value-of select="state" /></td>
        <td><xsl:value-of select="fee" /></td>
        <td><xsl:value-of select="offer" /></td>

      </tr>
      </xsl:for-each>
    </table>
<h2>Our service with fee above 5000</h2>
  <table border="1">
    <tr bgcolor="#9acd32">
      <th>Services</th>
      <th>Fee</th>
      <th>Offer</th>
    </tr>
    <xsl:for-each select="services/cd">
      <xsl:if test="fee &gt; 5000">
        <tr>
          <td><xsl:value-of select="title"/></td>
          <td><xsl:value-of select="fee"/></td>
          <td><xsl:value-of select="offer"/></td>
        </tr>
      </xsl:if>
    </xsl:for-each>
  </table>
<h2>Best Valued Offer</h2>
  <table border="1">
    <tr bgcolor="#9acd32">
      <th>Service</th>
      <th>Offer</th>
    </tr>
    <xsl:for-each select="services/cd">
    <tr>
      <td><xsl:value-of select="title"/></td>
      <xsl:choose>
      <xsl:when test="fee > 10000">
         <td bgcolor="#ff00ff">
         <xsl:value-of select="offer"/>
         </td>
      </xsl:when>
      <xsl:otherwise>
         <td><xsl:value-of select="offer"/></td>
      </xsl:otherwise>
      </xsl:choose>
    </tr>
    </xsl:for-each>
  </table>
  </body>
  </html>
</xsl:template>
</xsl:stylesheet>

