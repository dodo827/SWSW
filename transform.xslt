<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <html>
            <head>
                <title>Device Parameters</title>
                <style>
                    table {
                        width: 100%;
                        border-collapse: collapse;
                    }
                    th, td {
                        padding: 8px;
                        text-align: left;
                        border-bottom: 1px solid #ddd;
                    }
                    th {
                        background-color: #f2f2f2;
                    }
                </style>
            </head>
            <body>
                <h2>Device Parameters</h2>
                <table>
                    <tr>
                        <th>Device Category</th>
                        <th>Device Type</th>
                        <th>Device Name</th>
                        <th>Parameter Name</th>
                        <th>Parameter Value</th>
                    </tr>
                    <xsl:for-each select="ListOfDevices/Device">
                        <xsl:for-each select="ParameterSet/Parameters/Parameter">
                            <tr>
                                <td><xsl:value-of select="../../@DeviceCategory"/></td>
                                <td><xsl:value-of select="../../@DeviceType"/></td>
                                <td><xsl:value-of select="../../@DeviceName"/></td>
                                <td><xsl:value-of select="@ParameterName"/></td>
                                <td><xsl:value-of select="text()"/></td>
                            </tr>
                        </xsl:for-each>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
