<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0"
    xpath-default-namespace="http://www.tei-c.org/ns/1.0"
    xmlns="http://www.w3.org/1999/xhtml">
    <xsl:output method="xhtml" indent="yes"/>
    <xsl:template match="/">
        <html>
            <head>
                <title>Hamlet</title>
            </head>
            <body>
                <h1>Hamlet</h1>
                <ul><xsl:apply-templates select=".//body/div"/></ul>
                <!-- If you want an oredered list, use this instead: -->
                <!-- <ol><xsl:apply-templates select=".//body/div"/></ol> -->
            </body>
        </html>
    </xsl:template>

    <xsl:template match="body/div"> 
            
                <li>
                    <xsl:apply-templates select="./head"/>
                    <ul>
                        <xsl:apply-templates select=".//div"/>
                    </ul>
                </li>

    </xsl:template>
    
    <xsl:template match="div/div">
        <li><xsl:apply-templates select="head"/></li>
     </xsl:template >
</xsl:stylesheet>

<!--    
    You never need to begin the value of a @match attribute with a double slash. The
    value of the @match attribute is an "XPath pattern," which isn't exactly the same thing
    as an "XPath expression." The difference is that the expression has to go hunting for 
    elements, so you may need a full path to ensure that you find them. The pattern, though,
    just needs a minimal match. If you specify only "body/div" as the value of the @match
    attribute, that will match every <div> that is a child of <body>. That is, it will match
    what you want. The double slash doesn't get the wrong results, but it's the wrong answer
    because it complicates the path without serving an informational purpose.
    
    The value of the the @select attribute in <xsl:apply-templates> *is* an XPath *expression*,
    and it has to find the nodes to process. But the value of the @match attribute in a template
    rule doesn't have to find, for example, the <div> elements that are children of <body>. It
    just has to be ready in case a <div> element that is a child of <body> happens to need 
    processing. The template rule doesn't have to hunt down the elements to process, since they
    will get sent out for processing by the appropriate <xsl:apply-templates> rule, which is 
    what does the hunting).

-->