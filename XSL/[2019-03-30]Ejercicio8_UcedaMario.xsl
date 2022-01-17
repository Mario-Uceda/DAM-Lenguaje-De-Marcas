<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<html>
			<head>
				<title>Pokedam</title>
			</head>
			<body>
				<h1>The DAM Pokedex</h1>
				<xsl:for-each select="pokedex/pokemon">
					<h2>#<xsl:value-of select="@num"/> - <xsl:value-of select="nombre"/></h2>
					<ul>
						<li>Tipo: <xsl:value-of select="tipo"/></li>
						<li>Habilidad: <xsl:value-of select="habilidad"/></li>
						<li>Color: <xsl:value-of select="color"/></li>
					</ul>
				</xsl:for-each>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>