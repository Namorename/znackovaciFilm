<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:json="http://www.json.org">
    <xsl:output method="text"/>
    
    <!-- Šablona pro zpracování kořenového elementu -->
    <xsl:template match="/">
        <xsl:text>{"movies": [</xsl:text>
        <xsl:apply-templates select="//movie"/>
        <xsl:text>]}</xsl:text>
    </xsl:template>
    
    <!-- Šablona pro zpracování jednotlivých filmů -->
    <xsl:template match="movie">
        <xsl:text>{"title":"</xsl:text><xsl:value-of select="title"/><xsl:text>",</xsl:text>
        <xsl:text>"genre":"</xsl:text><xsl:value-of select="genre"/><xsl:text>",</xsl:text>
        <xsl:text>"year":"</xsl:text><xsl:value-of select="year"/><xsl:text>",</xsl:text>
        <xsl:text>"director":"</xsl:text><xsl:value-of select="director"/><xsl:text>",</xsl:text>
        <xsl:text>"description":"</xsl:text><xsl:value-of select="description"/><xsl:text>"}</xsl:text>
        <xsl:if test="position() != last()">
            <xsl:text>,</xsl:text>
        </xsl:if>
    </xsl:template>
</xsl:stylesheet>
