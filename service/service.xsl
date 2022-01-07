<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
            </head>
            <body>
                <h1 style="text-align:center">Service Details Table</h1>
                
                <table border="2" align="center">
                    <tr >
                        
                        <th>name</th>
                        <th>fee</th>
                        <th>offer</th>
                        <th>location</th>
                    </tr>
                    <xsl:for-each select="towservice/services/service">
                            <tr>
                                <td>
                                    <xsl:value-of select="name"/>
                                </td>
                                <td>
                                    <xsl:value-of select="fee"/>
                                </td>
                                <td>
                                    <xsl:value-of select="offer"/>
                                </td>
                                <td>
                                    <xsl:value-of select="location"/>
                                </td>
                            </tr>
                        </xsl:for-each>
                    </table>
                <h1 style="text-align:center">Service Detail Sorted By Name</h1>
                <table border="1" align="center">
                    <tr bgcolor="#9acd32">
                        <th>name</th>
                        <th>fee</th>
                        <th>offer</th>
                        <th>location</th>
                    </tr>
                    <xsl:for-each select="towservice/services/service">
                        <xsl:sort select="name"/>
                        <tr>
                            <td>
                                <xsl:value-of select="name"/>
                            </td>
                            <td>
                                <xsl:value-of select="fee"/>
                            </td>
                            <td>
                                <xsl:value-of select="offer"/>
                            </td>
                            <td>
                                <xsl:value-of select="location"/>
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
                <h1 style="text-align:center">Mega Offer</h1>
                <table border="1" align="center">
                    <tr bgcolor="#9acd32">
                        <th>Name</th>
                        <th>Offer</th>
                        <th>Fee</th>
                    </tr>
                    <xsl:for-each select="towservice/services/service">
                        <xsl:if test="offer &gt; 10">
                            <tr>
                                <td>
                                    <xsl:value-of select="name"/>
                                </td>
                                <td>
                                    <xsl:value-of select="offer"/>
                                </td>
                                <td>
                                    <xsl:value-of select="fee"/>
                                </td>
                            </tr>
                        </xsl:if>
                    </xsl:for-each>
                </table>
                <h1 style="text-align:center">Best Offers</h1>
                
                <table border="1" align="center">
                    <tr bgcolor="#9acd32">
                        <th>Name</th>
                        <th>Offer</th>
                    </tr>
                    <xsl:for-each select="towservice/services/service">
                        <tr>
                            <td>
                                <xsl:value-of select="name"/>
                            </td>
                            <xsl:choose>
                                <xsl:when test="offer &gt; 10">
                                    <td bgcolor="#ff00ff">
                                        <xsl:value-of select="offer"/>
                                    </td>
                                </xsl:when>
                                <xsl:otherwise>
                                    <td>
                                        <xsl:value-of select="offer"/>
                                    </td>
                                </xsl:otherwise>
                            </xsl:choose>
                        </tr>
                    </xsl:for-each>
                </table>
                        <br>
                            <br>
                            </br>
                        </br>
                        <h1 style="text-align:center">All Services</h1>
                        <xsl:apply-templates/>
                    </body>
                    </html>

                    </xsl:template>

                        <xsl:template match="cd">
                            <p>
                                <xsl:apply-templates select="name"/>
                                <xsl:apply-templates select="fee"/>
                                <xsl:apply-templates select="offer"/>
                                <xsl:apply-templates select="location"/>
                            </p>
                        </xsl:template>

                        <xsl:template match="name">
                            Name: <span style="color:#ff0000">
                                <xsl:value-of select="."/>
                            </span>
                            <br />
                        </xsl:template>


                        <xsl:template match="fee">
                            Ratings: <span style="color:#00ff00">
                                <xsl:value-of select="."/>
                            </span>
                            <br />
                        </xsl:template>
                        <xsl:template match="offer">
                            Price: <span style="color:#ff0000">
                                <xsl:value-of select="."/>
                            </span>
                            <br />
                        </xsl:template>

                        <xsl:template match="location">
                            Offer: <span style="color:#00ff00">
                                <xsl:value-of select="."/>
                            </span>
                            <br />
                        </xsl:template>
                    </xsl:stylesheet>