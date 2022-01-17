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
						<xsl:apply-templates select="tipo|categoria|habilidad"/>
					</ul>
				</xsl:for-each>
			</body>
		</html>
	</xsl:template>
	<xsl:template match="nombre">
  		<li>Nombre: <xsl:value-of select="."/></li>
	</xsl:template>
	<xsl:template match="tipo">
  		<li>Tipo: <xsl:value-of select="."/></li>
	</xsl:template>
	<xsl:template match="color">
  		<li>Color: <xsl:value-of select="."/></li>
	</xsl:template>
	<xsl:template match="categoria">
  		<li>Categoría: <xsl:value-of select="."/></li>
	</xsl:template>
	<xsl:template match="habilidad">
		<li>Habilidad: <xsl:value-of select="."/></li>	
	</xsl:template>
	<xsl:template match="grupoHuevo">
		<li>Grupo Huevo: <xsl:value-of select="."/></li>	
	</xsl:template>
	<xsl:template match="ratioCaptura">
		<li>Ratio de Captura: <xsl:value-of select="."/></li>
	</xsl:template>
	<xsl:template match="altura">
  		<li>Altura: <xsl:value-of select="."/></li>
	</xsl:template>
	<xsl:template match="peso">
  		<li>Peso: <xsl:value-of select="."/></li>
	</xsl:template>
	
</xsl:stylesheet>