<?xml version="1.0" encoding="UTF-8"?>
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
            border: 1px solid #dddddd;
            text-align: left;
            padding: 8px;
          }
          th {
            background-color: #f2f2f2;
          }
        </style>
      </head>
      <body>
        <h2>Biblioteca de Libros</h2>
        <table>
          <tr>
            <th>Código de Libro</th>
            <th>Título</th>
            <th>Editorial</th>
            <th>Edición</th>
            <th>ISBN</th>
            <th>Número de Páginas</th>
            <th>Autor</th>
            <th>Fecha de Nacimiento</th>
            <th>Nacionalidad</th>
          </tr>
          <xsl:for-each select="Libros/libro">
            <tr>
              <td><xsl:value-of select="Cod_Libro"/></td>
              <td><xsl:value-of select="Titulo"/></td>
              <td><xsl:value-of select="Editorial"/></td>
              <td><xsl:value-of select="Edicion"/></td>
              <td><xsl:value-of select="ISBN"/></td>
              <td><xsl:value-of select="NumPaginas"/></td>
              <td>
                <xsl:for-each select="Autores/autor">
                  <xsl:value-of select="Nombre"/>
                  <xsl:text> </xsl:text>
                  <xsl:value-of select="Apellidos"/>
                  <xsl:if test="position() != last()">
                    <xsl:text>, </xsl:text>
                  </xsl:if>
                </xsl:for-each>
              </td>
              <td><xsl:value-of select="Autores/autor/FechaNacimiento"/></td>
              <td><xsl:value-of select="Autores/autor/Nacionalidad"/></td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>
