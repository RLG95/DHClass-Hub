<?xml version="1.0" encoding="UTF-8"?>
<schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2"
    xmlns:sqf="http://www.schematron-quickfix.com/validator/process"
    xmlns="http://purl.oclc.org/dsdl/schematron">
    <ns uri="http://www.tei-c.org/ns/1.0" prefix="tei"/>
    
    <pattern id="personElement">
        <!--The @id attribute doesn't "do" anything; it just informs you-->
        <rule context="tei:person">
            <assert test="contains(@xml:id,current()/descendant::tei:surname[1])" role="information">The xml:id attribute on person elements needs to start with the surname of the person.</assert>
            
        </rule>
        
    </pattern>
</schema>
