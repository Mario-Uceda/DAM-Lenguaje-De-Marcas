<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<html>
			<body>
				<h1><xsl:value-of select="ies/nombre"/></h1>
				<xsl:variable name="enlace" select="ies/web"/>
				<p>Página Web:Forma1 <a href="{$enlace}"><xsl:value-of select="ies/web"/></a></p>
				<p>Página Web:Forma2 <a><xsl:attribute name="href"><xsl:value-of select="ies/web"/></xsl:attribute></a></p>
				<ul>
					<xsl:for-each select="ies/ciclos/ciclo">
						<li>
							<xsl:value-of select="nombre"/>
						</li>
					</xsl:for-each>
				</ul>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>