<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:output method="text"/>
		<xsl:template match="/">
			
			[
			<xsl:for-each select="aplikace">
				{
				"nazev":"<xsl:value-of select="nazev"/>",
				}</xsl:for-each>			
			
			<xsl:for-each select="aplikace/zakladni_konfigurace/uzivatel">
			<xsl:sort select="prijmeni"/>
				{
				"jmeno":"<xsl:value-of select="jmeno"/>",
				"prijmeni":"<xsl:value-of select="prijmeni"/>",
				"heslo":"<xsl:value-of select="heslo"/>",
				"ulice":"<xsl:value-of select="ulice"/>",
				"mesto":"<xsl:value-of select="mesto"/>",
				"CP":"<xsl:value-of select="CP"/>",
				"PSC":"<xsl:value-of select="PSC"/>",
				"nastaveni":"<xsl:value-of select="nastaveni"/>",
				}<xsl:if test="position() != last()">,</xsl:if>
			</xsl:for-each>
      ]

		</xsl:template> 
</xsl:stylesheet>