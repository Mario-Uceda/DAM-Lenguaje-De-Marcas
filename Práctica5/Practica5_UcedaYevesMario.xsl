<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<html>
            <link rel="stylesheet" type="text/css" href="Practica5_UcedaYevesMario.css"/>
			<head>
				<title>Práctica Pokemon XSLT</title>
			</head>
			<body>
                <!--Inicio Contenedor -->
                <div id="Contenedor">
                    <h1>PokéApp</h1>  
                    <div id="FondoTranslucido"/>
                    <!--Inicio Menú -->
                    <div id="Menu">
                        <!--Inicio Ficha Entrenador -->
                        <div id="FichaEntrenador">
                            <h2>Ficha Entrenador</h2>
                            <p id="nombre"><xsl:value-of select="jugador/nombre"/></p>
                            <xsl:if test="jugador/chico">
                                <p id="chico">chico</p>
                                <img src="files/chico.jpg" height="70" width="58"/>
                            </xsl:if>
                            <xsl:if test="jugador/chica">
                                <p id="chica">chica</p>
                                <img src="files/chica.jpg" height="70" width="58"/>
                            </xsl:if>
                            <p id="fechaNacimiento"><xsl:value-of select="jugador/fechaNacimiento"/></p>
                            <p id="ficha">ver ficha de entrenador</p>
                        </div>
                        <!--Fin Ficha Entrenador -->
                        <!--Inicio Estadisticas -->
                        <div id="Estadisticas">
                            <h2>Estadísticas</h2>
                            <p>Pokécuartos: <xsl:value-of select="jugador/pokecuartos"/></p>
                            <p>Pokéballs: <xsl:value-of select="jugador/mochila/pokeball"/></p>
                            <p>Pokémons: <xsl:value-of select="count(/jugador/mochila/pokemon)"/></p>
                            <p>Su nombre tiene <xsl:value-of select="string-length(jugador/nombre)"/> letras</p>
                            <p>Pkmn de mayor nivel: 
                                <xsl:for-each select="jugador/mochila/pokemon/nivel">
                                    <xsl:sort select="." data-type="number" order="descending"/>
                                    <xsl:if test="position()=1">
                                        <xsl:value-of select="../@especie"/>
                                    </xsl:if>
                                </xsl:for-each>
                            </p>
                            <p>Pokémons de tipo Fuego: <xsl:value-of select="count(jugador/mochila/pokemon[contains(tipo, 'Fuego')])"/></p>
                            <p>Pokémons de tipo Agua: <xsl:value-of select="count(jugador/mochila/pokemon[contains(tipo, 'Agua')])"/></p>
                            <p>Pokémons de tipo Planta: <xsl:value-of select="count(jugador/mochila/pokemon[contains(tipo, 'Planta')])"/></p>
                            <p>Pokémons de tipo Bicho: <xsl:value-of select="count(jugador/mochila/pokemon[contains(tipo, 'Bicho')])"/></p>
                            <p>Pokémons de tipo Siniestro: <xsl:value-of select="count(jugador/mochila/pokemon[contains(tipo, 'Siniestro')])"/></p>
                            <p>Pokémons de tipo Dragón: <xsl:value-of select="count(jugador/mochila/pokemon[contains(tipo, 'Dragón')])"/></p>
                            <p>Pokémons de tipo Eléctrico: <xsl:value-of select="count(jugador/mochila/pokemon[contains(tipo, 'Eléctrico')])"/></p>
                            <p>Pokémons de tipo Hada: <xsl:value-of select="count(jugador/mochila/pokemon[contains(tipo, 'Hada')])"/></p>
                            <p>Pokémons de tipo Lucha: <xsl:value-of select="count(jugador/mochila/pokemon[contains(tipo, 'Lucha')])"/></p>
                            <p>Pokémons de tipo Volador: <xsl:value-of select="count(jugador/mochila/pokemon[contains(tipo, 'Volador')])"/></p>
                            <p>Pokémons de tipo Fantasma: <xsl:value-of select="count(jugador/mochila/pokemon[contains(tipo, 'Fantasma')])"/></p>
                            <p>Pokémons de tipo Tierra: <xsl:value-of select="count(jugador/mochila/pokemon[contains(tipo, 'Tierra')])"/></p>
                            <p>Pokémons de tipo Hielo: <xsl:value-of select="count(jugador/mochila/pokemon[contains(tipo, 'Hielo')])"/></p>
                            <p>Pokémons de tipo Normal: <xsl:value-of select="count(jugador/mochila/pokemon[contains(tipo, 'Normal')])"/></p>
                            <p>Pokémons de tipo Veneno: <xsl:value-of select="count(jugador/mochila/pokemon[contains(tipo, 'Veneno')])"/></p>
                            <p>Pokémons de tipo Psíquico: <xsl:value-of select="count(jugador/mochila/pokemon[contains(tipo, 'Psíquico')])"/></p>
                            <p>Pokémons de tipo Roca: <xsl:value-of select="count(jugador/mochila/pokemon[contains(tipo, 'Roca')])"/></p>
                            <p>Pokémons de tipo Acero: <xsl:value-of select="count(jugador/mochila/pokemon[contains(tipo, 'Acero')])"/></p>
                        </div>
                        <!--Fin Estadisticas -->
                        <!--Inicio Pokémon -->
                        <div id="ListaPokemon">
                            <h2>Pokémon</h2>
                            <xsl:for-each select="jugador/mochila/pokemon">
                                <xsl:sort select="@especie" order="ascending"/>
                                <p><img src="files/pokeball.png" height="15" width="15"/>
                                <a href="#{@especie}"><xsl:value-of select="@especie"/></a></p>
                            </xsl:for-each>
                        </div>
                        <!--Fin Pokémon -->
                    </div>
                    <!--Fin Menú -->
                    <!--Inicio Pokémons -->
                    <div id="Pokemons">
                        <xsl:for-each select="jugador/mochila/pokemon">
                            <div id="Tarjetas">
                                <h2 id="{@especie}"># <xsl:value-of select="@especie"/></h2>
                                <img src="pokesprites/{@especie}.png" height="55" width="55"/>                                
                                <p id="PokeStats"><xsl:value-of select="tipo"/></p>
                                <p>PS: <xsl:value-of select="ps"/> ATK: <xsl:value-of select="ataque"/> DEF: <xsl:value-of select="defensa"/><br/></p>
                                <p><xsl:apply-templates select="pokemontura"/></p>
                                <!--
                                <p>
                                    <xsl:if test="pokemontura">
                                        <p id="pokemontura">Pokemontura</p>
                                    </xsl:if>
                                </p>
                                -->
                                <xsl:choose>
                                    <xsl:when test="mote!=@especie">
                                        <p  id="texto">Este <xsl:value-of select="@especie"/> fue capturado el <b><xsl:value-of select="fecha_captura"/></b> y fue llamado 
                                            <b><xsl:value-of select="mote"/></b> por su entrenador. Un mote único que refleja el inicio de una amistad llena de
                                            un cariño mutuo. Actualmente <xsl:value-of select="mote"/> se encuentra en el nivel <b><xsl:value-of select="nivel"/></b>.
                                        </p>
                                    </xsl:when>
                                    <xsl:otherwise>
                                        <p  id="texto">Este <xsl:value-of select="@especie"/> fue capturado el <b><xsl:value-of select="fecha_captura"/></b> y fue llamado 
                                            <b><xsl:value-of select="mote"/></b> por su entrenador. El mote refleja la originalidad del entrenador. Actualmente 
                                            <xsl:value-of select="mote"/> se encuentra en el nivel <b><xsl:value-of select="nivel"/></b>.
                                        </p>
                                    </xsl:otherwise>
                                </xsl:choose>
                            </div>
                        </xsl:for-each>
                    </div>
                    <!--Fin Pokémons -->
                </div>
                <!--Fin Contenedor -->
			</body>
        </html>
    </xsl:template>
    <xsl:template match="pokemontura">
  		<xsl:if test="pokemontura">
            <p id="pokemontura">Pokemontura</p>
        </xsl:if>
	</xsl:template>
</xsl:stylesheet>