<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" indent="yes"/>

  <xsl:template match="/employees">
    <html>
      <head>
        <title>Employee Information</title>
        <style>
          table {
            font-family: Arial, sans-serif;
            border-collapse: collapse;
            width: 100%;
          }
          th, td {
            border: 1px solid #dddddd;
            text-align: left;
            padding: 8px;
          }
          th {
            background-color: #f2f2f2;
          }
          .full-time {
            background-color: yellow;
          }
        </style>
      </head>
      <body>
        <h1>Employee Information</h1>
        <table>
          <tr>
            <th>Name</th>
            <th>Age</th>
            <th>Title</th>
            <th>Department</th>
            <th>Salary</th>
            <th>Status</th>
          </tr>
          <xsl:apply-templates select="employee"/>
        </table>
      </body>
    </html>
  </xsl:template>

  <xsl:template match="employee">
    <tr>
      <xsl:if test="status = 'part-time'">
        <xsl:attribute name="class">Full-time</xsl:attribute>
      </xsl:if>
      <td><xsl:value-of select="name"/></td>
      <td><xsl:value-of select="age"/></td>
      <td><xsl:value-of select="title"/></td>
      <td><xsl:value-of select="department"/></td>
      <td><xsl:value-of select="salary"/></td>
      <td><xsl:value-of select="status"/></td>
    </tr>
  </xsl:template>
</xsl:stylesheet>
