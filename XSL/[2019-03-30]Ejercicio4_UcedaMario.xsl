<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<html>
			<body>
				<h1>Ciclos formativos del <xsl:value-of select="ies/nombre"/></h1>
				<ul>
					<xsl:for-each select="ies/ciclos/ciclo">
						<li>
							<xsl:value-of select="id"/><br/>
							<xsl:value-of select="nombre"/>,
							Ciclo Formativo de Grado <xsl:value-of select="grado"/>
							creado en <xsl:value-of select="decretoTítulo"/>
						</li>
					</xsl:for-each>
				</ul>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>