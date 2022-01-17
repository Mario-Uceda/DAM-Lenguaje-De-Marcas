<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<html>
			<body>
				<h1>Alumnos</h1>
				<xsl:for-each select="alumnos/persona">
					<p>
						Nombre: <xsl:value-of select="datosPersonales/nombre"/>
						-
						Apellido:<xsl:value-of select="datosPersonales/apellido"/>
					</p>
				</xsl:for-each>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>