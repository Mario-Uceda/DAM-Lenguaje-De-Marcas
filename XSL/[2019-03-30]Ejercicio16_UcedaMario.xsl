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
				<p>Total de pokemon en la Pokedam <xsl:value-of select="count(/pokedex/pokemon)"/></p>
				<ol>
					<li>El primer pokemon es: <xsl:value-of select="pokedex/pokemon[1]/nombre"/></li>
					<li>El segundo pokemon es: <xsl:value-of select="pokedex/pokemon[2]/nombre"/></li>
					<li>El tercer pokemon es: <xsl:value-of select="pokedex/pokemon[3]/nombre"/></li>
				</ol>
				<h1>Pokedam</h1>
				<xsl:for-each select="pokedex/pokemon">
					<xsl:sort select="@num"/>
					<xsl:variable name="i" select="position()" />
					<h2>#<xsl:value-of select="@num"/> (<xsl:value-of select="concat('', $i)"/> de <xsl:value-of select="count(/pokedex/pokemon)"/>) - <xsl:value-of select="nombre"/></h2>
					<ul>
						<li><xsl:apply-templates select="categoria|habilidad"/></li>
						<li><xsl:apply-templates select="tipo"/></li>
						<li><xsl:apply-templates select="peso|altura"/></li>
						<xsl:if test="peso &gt; 7">
							<li>El peso de <xsl:value-of select="nombre"/> es mayor de 7!</li>
						</xsl:if>
						<xsl:if test="contains(translate(grupoHuevo, 'ABCDEFGHIJKLMNOPQRSTUVWXYZ','abcdefghijklmnopqrstuvwxyz'), 'monstruo')">
							<li>Es monstruo</li>
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
		<xsl:choose>
			<xsl:when test=".=' Planta '">
				 , no olvides regarlo!
			</xsl:when>
			<xsl:when test=".=' Fuego '">
				 , cuidado que quema!
			</xsl:when>
			<xsl:when test=".=' Agua '">
				 , llevalo contigo cuando vayas a la piscina!
			</xsl:when>
			<xsl:otherwise>
				Nada que añadir
			</xsl:otherwise>
		</xsl:choose>
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
