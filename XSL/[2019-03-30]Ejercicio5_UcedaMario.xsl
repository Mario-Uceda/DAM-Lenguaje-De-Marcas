<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<html>
			<body>
				<h1><xsl:value-of select="ies/nombre"/></h1>
				<table border="1">
					<tr>
						<th>Nombre del ciclo</th>
						<th>Grado</th>
						<th>Año del titulo</th>
					</tr>
					<xsl:for-each select="ies/ciclos/ciclo">
						<tr>
							<td><xsl:value-of select="id"/></td>
							<td><xsl:value-of select="grado"/></td>
							<td><xsl:value-of select="decretoTítulo"/></td>
						</tr>
					</xsl:for-each>
				</table>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>