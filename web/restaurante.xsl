<?xml version="1.0" encoding='utf-8'?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" doctype-system="about:legacy-compat" />
<xsl:template match='/reservaeventos'>
<html lang="es">

	<head>
		<link href="../css/estilo.css" rel="stylesheet" type="text/css" />
		<meta charset="utf-8"/>
		<meta name="description" content="Página principal" />
		<title>titulo de la web</title>
	</head>

	<body>
		<header>
			<img src= "../img/logotipo.png" alt= "Reservas" />
			<a href="teatro.xml">Teatro</a>
			<a href="restaurante.xml">Restaurante</a>
			<a href="festival.xml">Festival</a>
		</header>
		
		<main>
        <!-- Seleccionamos los restaurantes -->
            <xsl:for-each select="restaurante">
            <xsl:variable name="nr" select="nombrerestaurante"/>
        <!-- Seleccionamos el primero de los restaurantes -->
              <xsl:if test="nombrerestaurante='El Clarete'"> 
			  	<a href="{informacion}">
                <h1> <xsl:value-of select='$nr'/> - <xsl:value-of select='ciudad'/>
				</h1>
				</a>
               
                <article class="restaurante">               
                     <xsl:for-each select="menu/@tipo">                      
                        <h3><xsl:value-of select='.'/></h3> 
                        <xsl:for-each select='../plato'>
                        <p><xsl:value-of select='.'/></p>
                         </xsl:for-each> 
                    </xsl:for-each>                
                </article>

               </xsl:if>
            </xsl:for-each>
		</main>
        

		<footer>
			<address>&#169; 2020 desarrollado por info@birt.eus</address>			
		</footer>
	</body>
</html>

</xsl:template>
</xsl:stylesheet>