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
					<xsl:sort select="@num"/>
					<h2>#<xsl:value-of select="@num"/> - <xsl:value-of select="nombre"/></h2>
					<ul>
						<li><xsl:apply-templates select="tipo|categoria|habilidad"/></li>
						<li><xsl:apply-templates select="peso|altura"/></li>
						<xsl:if test="peso &gt; 7">
							<li>El peso de <xsl:value-of select="nombre"/> es mayor de 7!</li>
						</xsl:if>
					</ul>
				</xsl:for-each>
			</body>
		</html>
	</xsl:template>
	<xsl:template match="nombre">
  		Nombre: <xsl:value-of select="."/>
	</xsl:template>
	<xsl:template match="tipo">
  		Tipo: <xsl:value-of select="."/>
	</xsl:template>
	<xsl:template match="color">
  		Color: <xsl:value-of select="."/>
	</xsl:template>
	<xsl:template match="categoria">
  		Categoría: <xsl:value-of select="."/>
	</xsl:template>
	<xsl:template match="habilidad">
		Habilidad: <xsl:value-of select="."/>
	</xsl:template>
	<xsl:template match="grupoHuevo">
		Grupo Huevo: <xsl:value-of select="."/>	
	</xsl:template>
	<xsl:template match="ratioCaptura">
		Ratio de Captura: <xsl:value-of select="."/>
	</xsl:template>
	<xsl:template match="altura">
  		Altura: <xsl:value-of select="."/>
	</xsl:template>
	<xsl:template match="peso">
  		Peso: <xsl:value-of select="."/>
	</xsl:template>
	
</xsl:stylesheet>