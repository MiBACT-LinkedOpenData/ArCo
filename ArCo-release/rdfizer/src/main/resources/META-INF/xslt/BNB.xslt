<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:arco-core="https://w3id.org/arco/ontology/core/"
	xmlns:arco-arco="https://w3id.org/arco/ontology/arco/"
	xmlns:arco-fn="https://w3id.org/arco/saxon-extension"
	xmlns:arco-catalogue="https://w3id.org/arco/ontology/catalogue/"
	xmlns:arco-mp="https://w3id.org/arco/ontology/movable-property/"
	xmlns:cis="http://dati.beniculturali.it/cis/"
	xmlns:clvapit="https://w3id.org/italia/onto/CLV/"
	xmlns:smapit="https://w3id.org/italia/onto/SM/"
	xmlns:arco-dd="https://w3id.org/arco/ontology/denotative-description/"
	xmlns:arco-cd="https://w3id.org/arco/ontology/context-description/"
	xmlns:arco-ce="https://w3id.org/arco/ontology/cultural-event/"
	xmlns:dcterms="http://purl.org/dc/terms/creator"
	xmlns:fn="http://www.w3.org/2005/xpath-functions"
	xmlns:foaf="http://xmlns.com/foaf/0.1/"
	xmlns:frbr="http://purl.org/vocab/frbr/core#"
	xmlns:l0="https://w3id.org/italia/onto/l0/"
	xmlns:arco-location="https://w3id.org/arco/ontology/location/"
	xmlns:owl="http://www.w3.org/2002/07/owl#"
	xmlns:php="http://php.net/xsl"
	xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
	xmlns:rdfs="http://www.w3.org/2000/01/rdf-schema#"
	xmlns:roapit="https://w3id.org/italia/onto/RO/"
	xmlns:tiapit="https://w3id.org/italia/onto/TI/"
	xmlns:xs="http://www.w3.org/2001/XMLSchema"
	xmlns:mu="https://w3id.org/italia/onto/MU/"
	xmlns:language="https://w3id.org/italia/onto/Language/"
	xmlns:ar-agentrole="https://w3id.org/arco/resource/AgentRole/"
	xmlns:ar-agent="https://w3id.org/arco/resource/Agent/"
	xmlns:ar-role="https://w3id.org/arco/resource/Role/"
	xmlns:ar-privacyReason="https://w3id.org/arco/resource/PrivacyReason/"
	xmlns:COV="https://w3id.org/italia/onto/COV/"
	xmlns:CPV="https://w3id.org/italia/onto/CPV/"
	xmlns:ar-archeologicalProperty="https://w3id.org/arco/resource/ArchaeologicalProperty/"
	xmlns:ar-TimeInterval="https://w3id.org/arco/resource/TimeInterval/"
	xmlns:ar-city="https://w3id.org/arco/resource/City/"
	xmlns:ar-geometry="https://w3id.org/arco/resource/Geometry/"
	xmlns:ar-event="https://w3id.org/arco/resource/Event/"
	xmlns:ar-country="https://w3id.org/arco/resource/Country/"
	xmlns:ar-timeIndexedTypedLocation="https://w3id.org/arco/resource/TimeIndexedTypedLocation/"
	xmlns:ar-feature="https://w3id.org/arco/resource/Feature/"
	xmlns:ar-timeIndexedRole="https://w3id.org/arco/resource/TimeIndexedRole/"
	xmlns:ar-catalogueRecordSI="https://w3id.org/arco/resource/CatalogueRecordSI/"
	xmlns:ar-detectionMethod="https://w3id.org/arco/resource/DetectionMethod/"
	xmlns:ar-interpretationCriterion="https://w3id.org/arco/resource/InterpretationCriterion/"
	xmlns:ar-bibliography="https://w3id.org/arco/resource/Bibliography/"
	xmlns:ar-culturalPropertyDefinition="https://w3id.org/arco/resource/CulturalPropertyDefinition/"
	xmlns:ar-legalSituation="https://w3id.org/arco/resource/LegalSituation/"
	xmlns:ar-province="https://w3id.org/arco/resource/Province/"
	xmlns:ar-culturalPropertySpecification="https://w3id.org/arco/resource/CulturalPropertySpecification/"
	xmlns:ar-addressArea="https://w3id.org/arco/resource/AddressArea/"
	xmlns:ar-designationInTime="https://w3id.org/arco/resource/DesignationInTime/"
	xmlns:ar-accessProfile="https://w3id.org/arco/resource/AccessProfile/"
	xmlns:ar-documentType="https://w3id.org/arco/resource/DocumentationType/"
	xmlns:ar-address="https://w3id.org/arco/resource/Address/"
	xmlns:ar-culturalPropertyType="https://w3id.org/arco/resource/CulturalPropertyType/"
	xmlns:ar-photograpyDocumentation="https://w3id.org/arco/resource/PhotographicDocumentation/"
	xmlns:ar-docutmentationType="https://w3id.org/arco/resource/DocumentationType/"
	xmlns:ar-dating="https://w3id.org/arco/resource/Dating/"
	xmlns:ar-archeologicalFieldSurvey="https://w3id.org/arco/resource/ArchaeologicalFieldSurvey/"
	xmlns:ar-region="https://w3id.org/arco/resource/Region/"
	xmlns:ar-catalogueRecordVersion="https://w3id.org/arco/resource/CatalogueRecordVersion/"
	xmlns:ar-HistoricOrArtisticProperty="https://w3id.org/arco/resource/HistoricOrArtisticProperty/"
	xmlns:ar-CulturalPropertyCataloguingCategory="https://w3id.org/arco/resource/CulturalPropertyCataloguingCategory/"
	xmlns:ar-RelatedWorkSituation="https://w3id.org/arco/resource/RelatedWorkSituation/"
	xmlns:ar-CulturalEntityTechnicalStatus="https://w3id.org/arco/resource/CulturalEntityTechnicalStatus/"
	xmlns:ar-Value="https://w3id.org/arco/resource/Value/"
	xmlns:ar-PreferredAuthorshipAttribution="https://w3id.org/arco/resource/PreferredAuthorshipAttribution/"
	xmlns:ar-CatalogueRecordOA="https://w3id.org/arco/resource/CatalogueRecordOA/"
	xmlns:ar-TechnicalCharacteristic="https://w3id.org/arco/resource/TechnicalCharacteristic/"
	xmlns:ar-Site="https://w3id.org/arco/resource/Site/"
	xmlns:ar-SiteType="https://w3id.org/arco/resource/SiteType/"
	xmlns:ar-ConservationStatus="https://w3id.org/arco/resource/ConservationStatus/"
	xmlns:ar-Subject="https://w3id.org/arco/resource/Subject/"
	xmlns:ar-SourceAndDocument="https://w3id.org/arco/resource/SourceAndDocument/"
	xmlns:ar-cis="https://w3id.org/arco/resource/CulturalInstituteOrSite/"
	xmlns:ar-SiteDefinition="https://w3id.org/arco/resource/SiteDefinition/"
	xmlns:ar-MeasurementCollection="https://w3id.org/arco/resource/MeasurementCollection/"
	xmlns:ar-CISNameInTime="https://w3id.org/arco/resource/CISNameInTime/"
	xmlns:ar-Measurement="https://w3id.org/arco/resource/Measurement/"

	xmlns:skos="http://www.w3.org/2004/02/skos/core#" version="1.0"
	exclude-result-prefixes="xsl php">
	<xsl:output method="xml" encoding="utf-8" indent="yes" />


    <xsl:template match="@*|node()">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>
    <xsl:template match="text/text()" name="tokenize">
        <xsl:param name="text" select="."/>
        <xsl:param name="separator" select="','"/>
        <xsl:choose>
            <xsl:when test="not(contains($text, $separator))">
                <item>
                    <xsl:value-of select="normalize-space($text)"/>
                </item>
            </xsl:when>
            <xsl:otherwise>
                <item>
                    <xsl:value-of select="normalize-space(substring-before($text, $separator))"/>
                </item>
                <xsl:call-template name="tokenize">
                    <xsl:with-param name="text" select="substring-after($text, $separator)"/>
                </xsl:call-template>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
<xsl:variable name="agent">
 <xsl:choose>
 <xsl:when test="schede/BNB/LR/LRD/LRDA">
         <xsl:call-template name="tokenize">
               <xsl:with-param name="text" select="item"/>
         </xsl:call-template>
	</xsl:when>
<xsl:when test="schede/BNB/SB/TBI/TBIA">
 <xsl:variable name="text" select="."/>
        <xsl:variable name="separator" select="','"/>
	<xsl:call-template name="tokenize">
		<xsl:with-param name="text" select="substring-after($text, $separator)"/>
	</xsl:call-template>
	</xsl:when>
	
	</xsl:choose>
</xsl:variable>
	
	<xsl:variable name="sheetVersion"
		select="schede/*/@version" />
	<xsl:variable name="sheetType" select="name(schede/*)" />
	<xsl:variable name="cp-name" select="''" />
	<xsl:variable name="NS"
		select="'https://w3id.org/arco/resource/'" />
	<xsl:variable name="itemURI">
		<xsl:choose>
			<xsl:when test="schede/*/RV/RVE/RVEL">
				<xsl:value-of
					select="concat(schede/*/CD/NCT/NCTR, schede/*/CD/NCT/NCTN, schede/*/CD/NCT/NCTS, '-', arco-fn:urify(normalize-space(schede/*/RV/RVE/RVEL)))" />
			</xsl:when>
			<xsl:otherwise>
				<xsl:value-of
					select="concat(schede/*/CD/NCT/NCTR, schede/*/CD/NCT/NCTN, schede/*/CD/NCT/NCTS)" />
			</xsl:otherwise>
		</xsl:choose>
	</xsl:variable>
	<xsl:variable name="culturalProperty" select="concat($NS, arco-fn:local-name(arco-fn:getSpecificPropertyType($sheetType)), '/', $itemURI)" />	

	<xsl:variable name="BiologicalTaxon">   
		<xsl:choose>
			<xsl:when test="schede/BNB/SB/NBN/NBNA and not(lower-case(normalize-space(schede/BNB/SB/NBN/NBNA))='nr' or lower-case(normalize-space(schede/BNB/SB/NBN/NBNA))='n.r.' or lower-case(normalize-space(schede/BNB/SB/NBN/NBNA))='nr (recupero pregresso)')">
				<xsl:value-of select="concat('https://w3id.org/arco/resource/BiologicalTaxon/', arco-fn:urify(normalize-space(schede/BNB/SB/NBN/NBNA)))" />
			</xsl:when>
			<xsl:when test="schede/BNB/SB/NAA/NAAL and not(schede/BNB/SB/NAA/NAAH) and not(schede/BNB/SB/NBN/NBNA)">
				<xsl:value-of select="concat('https://w3id.org/arco/resource/BiologicalTaxon/', arco-fn:urify(concat(schede/BNB/SB/NAA/NAAA, '-', schede/BNB/SB/NAA/NAAB,  '-', schede/BNB/SB/NAA/NAAD,  '-', schede/BNB/SB/NAA/NAAF,  '-', schede/BNB/SB/NAA/NAAL)))" />                	
			</xsl:when>
			<xsl:when test="schede/BNB/SB/NAA/NAAH and not(schede/BNB/SB/NAA/NAAL) and not(schede/BNB/SB/NBN/NBNA)">
				<xsl:value-of select="concat('https://w3id.org/arco/resource/BiologicalTaxon/', arco-fn:urify(concat(schede/BNB/SB/NAA/NAAA, '-', schede/BNB/SB/NAA/NAAB,  '-', schede/BNB/SB/NAA/NAAD,  '-', schede/BNB/SB/NAA/NAAF,  '-', schede/BNB/SB/NAA/NAAH)))" />                	
			</xsl:when>
			<xsl:when test="schede/BNB/SB/NAA/NAAF and not(schede/BNB/SB/NAA/NAAH) and not(schede/BNB/SB/NAA/NAAL) and not(schede/BNB/SB/NBN/NBNA)">
				<xsl:value-of select="concat('https://w3id.org/arco/resource/BiologicalTaxon/', arco-fn:urify(concat(schede/BNB/SB/NAA/NAAA, '-', schede/BNB/SB/NAA/NAAB,  '-', schede/BNB/SB/NAA/NAAD,  '-', schede/BNB/SB/NAA/NAAF)))" />                	
			</xsl:when>
			<xsl:when test="schede/BNB/SB/NAA/NAAD and not(schede/BNB/SB/NAA/NAAF) and not(schede/BNB/SB/NAA/NAAH) and not(schede/BNB/SB/NAA/NAAL) and not(schede/BNB/SB/NBN/NBNA)">
				<xsl:value-of select="concat('https://w3id.org/arco/resource/BiologicalTaxon/', arco-fn:urify(concat(schede/BNB/SB/NAA/NAAA, '-', schede/BNB/SB/NAA/NAAB,  '-', schede/BNB/SB/NAA/NAAD)))" />                	
			</xsl:when>		                	
			<xsl:when test="schede/BNB/SB/NAA/NAAB and not(schede/BNB/SB/NAA/NAAF) and not(schede/BNB/SB/NAA/NAAH) and not(schede/BNB/SB/NAA/NAAL)  and not(schede/BNB/SB/NAA/NAAD) and not(schede/BNB/SB/NBN/NBNA)">
				<xsl:value-of select="concat('https://w3id.org/arco/resource/BiologicalTaxon/', arco-fn:urify(concat(schede/BNB/SB/NAA/NAAA, '-', schede/BNB/SB/NAA/NAAB)))" />		                		
			</xsl:when>
		</xsl:choose>
	</xsl:variable>
	<xsl:variable name="TypespecimenTaxon">   
		<xsl:choose>
			<xsl:when test="schede/BNB/SB/TBI/TBIN and not(lower-case(normalize-space(schede/BNB/SB/TBI/TBIN))='nr' or lower-case(normalize-space(schede/BNB/SB/TBI/TBIN))='n.r.' or lower-case(normalize-space(schede/BNB/SB/TBI/TBIN))='nr (recupero pregresso)')">
				<xsl:value-of select="concat('https://w3id.org/arco/resource/BiologicalTaxon/', arco-fn:urify(normalize-space(schede/BNB/SB/TBI/TBIN)))" />
			</xsl:when>
			<xsl:when test="schede/BNB/SB/NAT/NATL and not(schede/BNB/SB/NAT/NATH) and not(schede/BNB/SB/TBI/TBIN)">
				<xsl:value-of select="concat('https://w3id.org/arco/resource/BiologicalTaxon/', arco-fn:urify(concat(schede/BNB/SB/NAT/NATA, '-', schede/BNB/SB/NAT/NATB,  '-', schede/BNB/SB/NAT/NATD,  '-', schede/BNB/SB/NAT/NATF,  '-', schede/BNB/SB/NAT/NATL)))" />                	
			</xsl:when>
			<xsl:when test="schede/BNB/SB/NAT/NATH and not(schede/BNB/SB/NAT/NATL) and not(schede/BNB/SB/TBI/TBIN)">
				<xsl:value-of select="concat('https://w3id.org/arco/resource/BiologicalTaxon/', arco-fn:urify(concat(schede/BNB/SB/NAT/NATA, '-', schede/BNB/SB/NAT/NATB,  '-', schede/BNB/SB/NAT/NATD,  '-', schede/BNB/SB/NAT/NATF,  '-', schede/BNB/SB/NAT/NATH)))" />                	
			</xsl:when>
			<xsl:when test="schede/BNB/SB/NAT/NATF and not(schede/BNB/SB/NAT/NATH) and not(schede/BNB/SB/NAT/NATL) and not(schede/BNB/SB/TBI/TBIN)">
				<xsl:value-of select="concat('https://w3id.org/arco/resource/BiologicalTaxon/', arco-fn:urify(concat(schede/BNB/SB/NAT/NATA, '-', schede/BNB/SB/NAT/NATB,  '-', schede/BNB/SB/NAT/NATD,  '-', schede/BNB/SB/NAT/NATF)))" />                	
			</xsl:when>
			<xsl:when test="schede/BNB/SB/NAT/NATD and not(schede/BNB/SB/NAT/NATF) and not(schede/BNB/SB/NAT/NATH) and not(schede/BNB/SB/NAT/NATL) and not(schede/BNB/SB/TBI/TBIN)">
				<xsl:value-of select="concat('https://w3id.org/arco/resource/BiologicalTaxon/', arco-fn:urify(concat(schede/BNB/SB/NAT/NATA, '-', schede/BNB/SB/NAT/NATB,  '-', schede/BNB/SB/NAT/NATD)))" />                	
			</xsl:when>		                	
			<xsl:when test="schede/BNB/SB/NAT/NATB and not(schede/BNB/SB/NAT/NATF) and not(schede/BNB/SB/NAT/NATH) and not(schede/BNB/SB/NAT/NATL)  and not(schede/BNB/SB/NAT/NATD) and not(schede/BNB/SB/TBI/TBIN)">
				<xsl:value-of select="concat('https://w3id.org/arco/resource/BiologicalTaxon/', arco-fn:urify(concat(schede/BNB/SB/NAT/NATA, '-', schede/BNB/SB/NAT/NATB)))" />		                		
			</xsl:when>
		</xsl:choose>
	</xsl:variable>
	<xsl:variable name="RevisedTaxon">   
		<xsl:choose>
			<xsl:when test="schede/BNB/RB/RBR/RBRN and not(lower-case(normalize-space(schede/BNB/RB/RBR/RBRN))='nr' or lower-case(normalize-space(schede/BNB/RB/RBR/RBRN))='n.r.' or lower-case(normalize-space(schede/BNB/RB/RBR/RBRN))='nr (recupero pregresso)')">
				<xsl:value-of select="concat('https://w3id.org/arco/resource/BiologicalTaxon/', arco-fn:urify(normalize-space(schede/BNB/RB/RBR/RBRN)))" />
			</xsl:when>
			<xsl:when test="schede/BNB/RB/RBN/RBNL and not(schede/BNB/RB/RBN/RBNH) and not(schede/BNB/RB/RBR/RBRN)">
				<xsl:value-of select="concat('https://w3id.org/arco/resource/BiologicalTaxon/', arco-fn:urify(concat(schede/BNB/RB/RBN/RBNA, '-', schede/BNB/RB/RBN/RBNB,  '-', schede/BNB/RB/RBN/RBND,  '-', schede/BNB/RB/RBN/RBNF,  '-', schede/BNB/RB/RBN/RBNL)))" />                	
			</xsl:when>
			<xsl:when test="schede/BNB/RB/RBN/RBNH and not(schede/BNB/RB/RBN/RBNL) and not(schede/BNB/RB/RBR/RBRN)">
				<xsl:value-of select="concat('https://w3id.org/arco/resource/BiologicalTaxon/', arco-fn:urify(concat(schede/BNB/RB/RBN/RBNA, '-', schede/BNB/RB/RBN/RBNB,  '-', schede/BNB/RB/RBN/RBND,  '-', schede/BNB/RB/RBN/RBNF,  '-', schede/BNB/RB/RBN/RBNH)))" />                	
			</xsl:when>
			<xsl:when test="schede/BNB/RB/RBN/RBNF and not(schede/BNB/RB/RBN/RBNH) and not(schede/BNB/RB/RBN/RBNL) and not(schede/BNB/RB/RBR/RBRN)">
				<xsl:value-of select="concat('https://w3id.org/arco/resource/BiologicalTaxon/', arco-fn:urify(concat(schede/BNB/RB/RBN/RBNA, '-', schede/BNB/RB/RBN/RBNB,  '-', schede/BNB/RB/RBN/RBND,  '-', schede/BNB/RB/RBN/RBNF)))" />                	
			</xsl:when>
			<xsl:when test="schede/BNB/RB/RBN/RBND and not(schede/BNB/RB/RBN/RBNF) and not(schede/BNB/RB/RBN/RBNH) and not(schede/BNB/RB/RBN/RBNL) and not(schede/BNB/RB/RBR/RBRN)">
				<xsl:value-of select="concat('https://w3id.org/arco/resource/BiologicalTaxon/', arco-fn:urify(concat(schede/BNB/RB/RBN/RBNA, '-', schede/BNB/RB/RBN/RBNB,  '-', schede/BNB/RB/RBN/RBND)))" />                	
			</xsl:when>		                	
			<xsl:when test="schede/BNB/RB/RBN/RBNB and not(schede/BNB/RB/RBN/RBNF) and not(schede/BNB/RB/RBN/RBNH) and not(schede/BNB/RB/RBN/RBNL)  and not(schede/BNB/RB/RBN/RBND) and not(schede/BNB/RB/RBR/RBRN)">
				<xsl:value-of select="concat('https://w3id.org/arco/resource/BiologicalTaxon/', arco-fn:urify(concat(schede/BNB/RB/RBN/RBNA, '-', schede/BNB/RB/RBN/RBNB)))" />		                		
			</xsl:when>
		</xsl:choose>
	</xsl:variable>
	<xsl:variable name="BiologicalTaxonType">	
		<xsl:choose>
			<xsl:when test="schede/BNB/SB/NBN/NBNA" >
				<xsl:value-of select="'https://w3id.org/arco/ontology/context-description/BiologicalTaxon'" />
			</xsl:when>
			<xsl:otherwise>
				<xsl:choose>
					<xsl:when test="schede/BNB/SB/NAA/NAAL and not(schede/BNB/SB/NAA/NAAH)" >                	
		    	     	<xsl:value-of select="'https://w3id.org/arco/ontology/context-description/Cultivar'" />
		    		</xsl:when>
				    <xsl:when test="schede/BNB/SB/NAA/NAAH and not(schede/BNB/SB/NAA/NAAL)" >                	
			         	<xsl:value-of select="'https://w3id.org/arco/ontology/context-description/BotanicalForm'" />     	
				    </xsl:when>
				    <xsl:when test="schede/BNB/SB/NAA/NAAF and not(schede/BNB/SB/NAA/NAAH) and not(schede/BNB/SB/NAA/NAAL)" >                	
		        	 	<xsl:value-of select="'https://w3id.org/arco/ontology/context-description/Variety'" />       	
			    	</xsl:when>
				    <xsl:when test="schede/BNB/SB/NAA/NAAD and not(schede/BNB/SB/NAA/NAAF) and not(schede/BNB/SB/NAA/NAAH) and not(schede/BNB/SB/NAA/NAAL)" >                	
			         	<xsl:value-of select="'https://w3id.org/arco/ontology/context-description/Subspecies'" />    	
				    </xsl:when>
			    	<xsl:when test="schede/BNB/SB/NAA/NAAB and not(schede/BNB/SB/NAA/NAAF) and not(schede/BNB/SB/NAA/NAAH) and not(schede/BNB/SB/NAA/NAAL) and not(schede/BNB/SB/NAA/NAAD)" >                	
			         	<xsl:value-of select="'https://w3id.org/arco/ontology/context-description/Species'" />     	
			    	</xsl:when>
				</xsl:choose>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:variable>   
	<xsl:variable name="TypespecimenTaxonType">	
		<xsl:choose>
			<xsl:when test="schede/BNB/SB/TBI/TBIN" >
				<xsl:value-of select="'https://w3id.org/arco/ontology/context-description/BiologicalTaxon'" />
			</xsl:when>
			<xsl:otherwise>
				<xsl:choose>
					<xsl:when test="schede/BNB/SB/NAT/NATL and not(schede/BNB/SB/NAT/NATH)" >                	
		         		<xsl:value-of select="'https://w3id.org/arco/ontology/context-description/Cultivar'" />
				    </xsl:when>
				    <xsl:when test="schede/BNB/SB/NAT/NATH and not(schede/BNB/SB/NAT/NATL)" >                	
		        	 	<xsl:value-of select="'https://w3id.org/arco/ontology/context-description/BotanicalForm'" />     	
				    </xsl:when >
				    <xsl:when test="schede/BNB/SB/NAT/NATF and not(schede/BNB/SB/NAT/NATH) and not(schede/BNB/SB/NAT/NATL)" >                	
		        	 	<xsl:value-of select="'https://w3id.org/arco/ontology/context-description/Variety'" />       	
				    </xsl:when>
				    <xsl:when test="schede/BNB/SB/NAT/NATD and not(schede/BNB/SB/NAT/NATF) and not(schede/BNB/SB/NAT/NATH) and not(schede/BNB/SB/NAT/NATL)" >                	
		        	 	<xsl:value-of select="'https://w3id.org/arco/ontology/context-description/Subspecies'" />    	
				    </xsl:when>
				    <xsl:when test="schede/BNB/SB/NAT/NATB and not(schede/BNB/SB/NAT/NATF) and not(schede/BNB/SB/NAT/NATH) and not(schede/BNB/SB/NAT/NATL) and not(schede/BNB/SB/NAT/NATD)" >                	
		        	 	<xsl:value-of select="'https://w3id.org/arco/ontology/context-description/Species'" />     	
				    </xsl:when>
				</xsl:choose>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:variable>  
	<xsl:variable name="RevisedTaxonType">	
		<xsl:choose>
			<xsl:when test="schede/BNB/RB/RBR/RBRN" >
				<xsl:value-of select="'https://w3id.org/arco/ontology/context-description/BiologicalTaxon'" />
			</xsl:when>
			<xsl:otherwise>
				<xsl:choose>
					<xsl:when test="schede/BNB/RB/RBN/RBNL and not(schede/BNB/RB/RBN/RBNH)" >                	
		         		<xsl:value-of select="'https://w3id.org/arco/ontology/context-description/Cultivar'" />
				    </xsl:when>
				    <xsl:when test="schede/BNB/RB/RBN/RBNH and not(schede/BNB/RB/RBN/RBNL)" >                	
		        	 	<xsl:value-of select="'https://w3id.org/arco/ontology/context-description/BotanicalForm'" />     	
				    </xsl:when >
				    <xsl:when test="schede/BNB/RB/RBN/RBNF and not(schede/BNB/RB/RBN/RBNH) and not(schede/BNB/RB/RBN/RBNL)" >                	
		        	 	<xsl:value-of select="'https://w3id.org/arco/ontology/context-description/Variety'" />       	
				    </xsl:when>
				    <xsl:when test="schede/BNB/RB/RBN/RBND and not(schede/BNB/RB/RBN/RBNF) and not(schede/BNB/RB/RBN/RBNH) and not(schede/BNB/RB/RBN/RBNL)" >                	
		        	 	<xsl:value-of select="'https://w3id.org/arco/ontology/context-description/Subspecies'" />    	
				    </xsl:when>
				    <xsl:when test="schede/BNB/RB/RBN/RBNB and not(schede/BNB/RB/RBN/RBNF) and not(schede/BNB/RB/RBN/RBNH) and not(schede/BNB/RB/RBN/RBNL) and not(schede/BNB/RB/RBN/RBND)" >                	
		        	 	<xsl:value-of select="'https://w3id.org/arco/ontology/context-description/Species'" />     	
				    </xsl:when>
				</xsl:choose>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:variable>		             


		
	
		
<xsl:template match="/">
	<rdf:RDF>

							<!-- Properties of BotanicalHeritage -->
	
	<rdf:Description>
		<xsl:attribute name="rdf:about">
        	<xsl:value-of select="$culturalProperty" />
		</xsl:attribute>
		<xsl:if test="schede/BNB/SB/NBN/NBNA or schede/BNB/SB/NAA">
			<arco-mp:isClassifiedByOriginalTaxon>
		    	<xsl:value-of select="$BiologicalTaxon" />
			</arco-mp:isClassifiedByOriginalTaxon>
		</xsl:if>
		<xsl:if test="schede/BNB/OG/OGT/OGTS">
			<arco-cd:historicalInformation>
				<xsl:value-of select="normalize-space(schede/BNB/OG/OGT/OGTS)" />
			</arco-cd:historicalInformation>
		</xsl:if>	

				<xsl:if test="schede/BNB/SB/NBN/NBNA">
			<arco-core:isClassifiedBy>
		    	<xsl:value-of select="$BiologicalTaxon" />
			</arco-core:isClassifiedBy>
		</xsl:if>
		<xsl:if test="schede/BNB/SB/NAA">
			<arco-core:isClassifiedBy>
		    	<xsl:value-of select="$BiologicalTaxon" />
			</arco-core:isClassifiedBy>
		</xsl:if>
		<xsl:for-each select="schede/BNB/RB/RBR/RBRN">
			<arco-core:isClassifiedBy>
		    	<xsl:value-of select="$RevisedTaxon" />
			</arco-core:isClassifiedBy>
		</xsl:for-each>
		<xsl:for-each select="schede/BNB/RB/RBN">
			<arco-core:isClassifiedBy>
		    	<xsl:value-of select="$RevisedTaxon" />
			</arco-core:isClassifiedBy>
		</xsl:for-each>
		<xsl:if test="schede/BNB/SB/TBI/TBIN or schede/BNB/SB/NAT">
				<arco-core:isClassifiedBy>
		             <xsl:value-of select="$TypespecimenTaxon" />
				</arco-core:isClassifiedBy>
			</xsl:if>	
			
		<xsl:if test="schede/BNB/SB/NBN or schede/BNB/SB/NAA">
			<arco-core:hasClassificationInTime>
		    	<xsl:value-of select="concat('https://w3id.org/arco/resource/ClassificationInTime/',$itemURI, '-original-classification')" />
			</arco-core:hasClassificationInTime>
		</xsl:if>
		<xsl:for-each select="schede/BNB/RB">
			<xsl:if test="schede/BNB/RB/RBR/RBRN or schede/BNB/RB/RBN">
			<arco-core:hasClassificationInTime>
		    	<xsl:value-of select="concat('https://w3id.org/arco/resource/ClassificationInTime/',$itemURI, '-revised-classification-', position())" />
			</arco-core:hasClassificationInTime>
			</xsl:if>
		</xsl:for-each>
		<xsl:if test="schede/BNB/SB/TBI/TBIN or schede/BNB/SB/NAT">
				<arco-core:hasClassificationInTime>
		             <xsl:value-of select="concat('https://w3id.org/arco/resource/ClassificationInTime/',$itemURI, '-typespecimen-classification')" />
				</arco-core:hasClassificationInTime>
			</xsl:if>
			<xsl:if test="schede/BNB/SB/ABC">				
				<arco-mp:hasAccession>
					<xsl:value-of select="concat('https://w3id.org/arco/resource/Accession/', $itemURI)" />
				</arco-mp:hasAccession>
			</xsl:if>
			<xsl:if test="schede/BNB/SB/CBP/CBPF">
				<arco-arco:numberOfElements>
					<xsl:value-of select="schede/BNB/SB/CBP/CBPF" />			
				</arco-arco:numberOfElements>
			</xsl:if>
			<xsl:if test="schede/BNB/SB/CBP/CBPE">
				<arco-mp:numberOfLabels>
					<xsl:value-of select="schede/BNB/SB/CBP/CBPE" />			
				</arco-mp:numberOfLabels>
			</xsl:if>
			<xsl:if test="schede/BNB/SB/CBP/CBPB">
				<arco-mp:numberOfEnvelopes>
					<xsl:value-of select="schede/BNB/SB/CBP/CBPB" />			
				</arco-mp:numberOfEnvelopes>
			</xsl:if>
			<xsl:for-each select="schede/BNB/SB/SBE">
				<arco-mp:hasLabel>
					<xsl:value-of select="concat('https://w3id.org/arco/resource/Label/', $itemURI, '-', position())" />
				</arco-mp:hasLabel>			
			</xsl:for-each>
			<xsl:if test="schede/BNB/LR">
				<arco-mp:hasSpecimenHarvesting>
					<xsl:value-of select="concat('https://w3id.org/arco/resource/SpecimenHarvesting/', $itemURI)" />
				</arco-mp:hasSpecimenHarvesting>
			</xsl:if>				
			<xsl:for-each select="schede/BNB/RB">
				<arco-cd:hasSurvey>
					<xsl:value-of select="concat('https://w3id.org/arco/resource/BotanicalRevision/', $itemURI, '-', position())" />
				</arco-cd:hasSurvey>
			</xsl:for-each>
			<xsl:for-each select="schede/BNB/DB/DBR">
				<arco-mp:hasAssociatedPreparation>
					<xsl:value-of select="concat('https://w3id.org/arco/resource/Preparation/', $itemURI, '-', position())" />
				</arco-mp:hasAssociatedPreparation>
			</xsl:for-each>				
			<xsl:for-each select="schede/BNB/DB/DBC">
				<arco-mp:hasRelatedSample>
					<xsl:value-of select="concat('https://w3id.org/arco/resource/FruitSample/', $itemURI, '-', position())" />
				</arco-mp:hasRelatedSample>
			</xsl:for-each>
			<xsl:for-each select="schede/BNB/DB/DBX">
				<arco-mp:hasRelatedSample>
					<xsl:value-of select="concat('https://w3id.org/arco/resource/WoodSample/', $itemURI, '-', position())" />
				</arco-mp:hasRelatedSample>
			</xsl:for-each>	
			<xsl:for-each select="schede/BNB/DB/DBS">
				<arco-mp:hasRelatedSample>
					<xsl:value-of select="concat('https://w3id.org/arco/resource/SeedSample/', $itemURI, '-', position())" />
				</arco-mp:hasRelatedSample>
			</xsl:for-each>	
			<xsl:for-each select="schede/BNB/DB/DBP">
				<arco-mp:hasRelatedSample>
					<xsl:value-of select="concat('https://w3id.org/arco/resource/PollenSample/', $itemURI, '-', position())" />
				</arco-mp:hasRelatedSample>
			</xsl:for-each>
			<xsl:if test="schede/BNB/LR/LRI/LRIM">
				<arco-mp:hasHostIndividual>
					<xsl:value-of select="concat('https://w3id.org/arco/resource/HostIndividual/', arco-fn:arcofy(schede/BNB/LR/LRI/LRIM))" />
				</arco-mp:hasHostIndividual>
			</xsl:if>
			<xsl:if test="schede/BNB/LR/LRI/LRIV">
				<arco-mp:hasCloseIndividual>
					<xsl:value-of select="concat('https://w3id.org/arco/resource/CloseIndividual/', arco-fn:arcofy(schede/BNB/LR/LRI/LRIV))" />
				</arco-mp:hasCloseIndividual>
			</xsl:if>
			<xsl:if test="schede/BNB/SB/TBI">
				<arco-mp:hasTypeSpecimenIdentification>
					<xsl:value-of select="concat('https://w3id.org/arco/resource/TypeSpecimenIdentification/', $itemURI)" />
				</arco-mp:hasTypeSpecimenIdentification>
			</xsl:if>	
	</rdf:Description>
	
	

							<!-- ClassificationInTime as individual --> 	
	<xsl:if test="schede/BNB/SB/NBN or schede/BNB/SB/NAA">
		<rdf:Description>
		<xsl:attribute name="rdf:about">
        	<xsl:value-of select="concat('https://w3id.org/arco/resource/ClassificationInTime/',$itemURI, '-original-classification')" />
        </xsl:attribute>
       	<rdf:type>
			<xsl:attribute name="rdf:resource">
                <xsl:value-of select="'https://w3id.org/arco/ontology/core/ClassificationInTime'" />
            	</xsl:attribute>
			</rdf:type>
			<rdfs:label xml:lang="it">
            	 <xsl:value-of select="concat('Classificazione nel tempo  del bene culturale ', $itemURI)" />
            </rdfs:label>
            <l0:name xml:lang="it">
            	<xsl:value-of select="concat('Classificazione nel tempo del bene culturale ', $itemURI)" />
            </l0:name>
			<rdfs:label xml:lang="en">
            	 <xsl:value-of select="concat('Classification in time of cultural property ', $itemURI)" />
            </rdfs:label>
            <l0:name xml:lang="en">
            	<xsl:value-of select="concat('Classification in time of cultural property ', $itemURI)" />
            </l0:name>
            <arco-mp:originalClassification>
            	<xsl:value-of select="true()" />
            </arco-mp:originalClassification>
			<xsl:if test="schede/BNB/SB/DBV/DBVB">
			<xsl:variable name="startDate">
				<xsl:choose>
					<xsl:when test="schede/BNB/SB/DBV/DBVC">
						<xsl:value-of select="concat(normalize-space(schede/BNB/SB/DBV/DBVC), ' ', normalize-space(schede/BNB/SB/DBV/DBVB))" />
					</xsl:when>
					<xsl:otherwise>
						<xsl:value-of select="normalize-space(schede/BNB/SB/DBV/DBVB)" />
					</xsl:otherwise>
				</xsl:choose>
			</xsl:variable>
			<xsl:variable name="endDate">
				<xsl:choose>
					<xsl:when test="schede/BNB/SB/DBV/DBVE">
						<xsl:value-of 	select="concat(normalize-space(schede/BNB/SB/DBV/DBVE), ' ', normalize-space(schede/BNB/SB/DBV/DBVD))" />
					</xsl:when>
					<xsl:otherwise>
						<xsl:value-of select="normalize-space(schede/BNB/SB/DBV/DBVD)" />
					</xsl:otherwise>
				</xsl:choose>
			</xsl:variable>
			<tiapit:atTime>
				<xsl:attribute name="rdf:resource">
		        	<xsl:value-of select="concat($NS, 'TimeInterval/', arco-fn:urify(concat($startDate, '-',  $endDate)))" />
				</xsl:attribute>
			</tiapit:atTime>
		</xsl:if>
		<xsl:if test="schede/BNB/SB/DBV/DBVF">
			<tiapit:atTime>
				<xsl:attribute name="rdf:resource">
		        	<xsl:value-of 	select="concat($NS, 'TimeInterval/', arco-fn:urify(concat(schede/BNB/SB/DBV/DBVF, '-',  schede/BNB/SB/DBV/DBVF)))" />
				</xsl:attribute>
			</tiapit:atTime>
		</xsl:if>
		<xsl:if test="schede/BNB/SB/SBS/SBSC">
			<arco-cd:hasBibliography>
				<xsl:value-of select="concat($NS, 'Bibliography/', $itemURI, 'bibliography-1-', position())" />
			</arco-cd:hasBibliography>
		</xsl:if>
		<xsl:if test="schede/BNB/SB/DBV/DBVA">
			<arco-core:involvesAgent>
				<xsl:attribute name="rdf:resource">
		        	<xsl:value-of select="concat($NS, 'Agent/', arco-fn:arcofy(schede/BNB/SB/DBV/DBVA))" />
				</xsl:attribute>
			</arco-core:involvesAgent>
		</xsl:if>
		<xsl:if test="schede/BNB/SB/NBN/NBNA">
			<arco-mp:hasTaxon>
				<xsl:attribute name="rdf:resource">
		        	<xsl:value-of select="$BiologicalTaxon" />
				</xsl:attribute>
			</arco-mp:hasTaxon>
		</xsl:if>
				<xsl:if test="schede/BNB/SB/NAA">
			<arco-mp:hasTaxon>
				<xsl:attribute name="rdf:resource">
		        	<xsl:value-of select="$BiologicalTaxon" />
				</xsl:attribute>
			</arco-mp:hasTaxon>
		</xsl:if>
	</rdf:Description>
</xsl:if>
	<xsl:if test="schede/BNB/SB/TBI/TBIN or schede/BNB/SB/NAT">
		<rdf:Description>
		<xsl:attribute name="rdf:about">
        	<xsl:value-of select="concat('https://w3id.org/arco/resource/ClassificationInTime/',$itemURI, '-typespecimen-classification')" />
        </xsl:attribute>
       	<rdf:type>
			<xsl:attribute name="rdf:resource">
                <xsl:value-of select="'https://w3id.org/arco/ontology/core/ClassificationInTime'" />
            	</xsl:attribute>
			</rdf:type>
			<rdfs:label xml:lang="it">
            	 <xsl:value-of select="concat('Classificazione nel tempo del bene culturale ', $itemURI)" />
            </rdfs:label>
            <l0:name xml:lang="it">
            	<xsl:value-of select="concat('Classificazione nel tempo del bene culturale ', $itemURI)" />
            </l0:name>
			<rdfs:label xml:lang="en">
            	 <xsl:value-of select="concat('Classification in time of cultural property ', $itemURI)" />
            </rdfs:label>
            <l0:name xml:lang="en">
            	<xsl:value-of select="concat('Classification in time of cultural property ', $itemURI)" />
            </l0:name>
            <arco-mp:originalClassification>
            	<xsl:value-of select="false()" />
            </arco-mp:originalClassification>
			<xsl:if test="schede/BNB/SB/TBI/TBIB">
			<xsl:variable name="startDate">
				<xsl:choose>
					<xsl:when test="schede/BNB/SB/TBI/TBIC">
						<xsl:value-of select="concat(normalize-space(schede/BNB/SB/TBI/TBIC), ' ', normalize-space(schede/BNB/SB/TBI/TBIB))" />
					</xsl:when>
					<xsl:otherwise>
						<xsl:value-of select="normalize-space(schede/BNB/SB/TBI/TBIB)" />
					</xsl:otherwise>
				</xsl:choose>
			</xsl:variable>
			<xsl:variable name="endDate">
				<xsl:choose>
					<xsl:when test="schede/BNB/SB/TBI/TBIE">
						<xsl:value-of 	select="concat(normalize-space(schede/BNB/SB/TBI/TBIE), ' ', normalize-space(schede/BNB/SB/TBI/TBID))" />
					</xsl:when>
					<xsl:otherwise>
						<xsl:value-of select="normalize-space(schede/BNB/SB/TBI/TBID)" />
					</xsl:otherwise>
				</xsl:choose>
			</xsl:variable>
			<tiapit:atTime>
				<xsl:attribute name="rdf:resource">
		        	<xsl:value-of select="concat($NS, 'TimeInterval/', arco-fn:urify(concat($startDate, '-',  $endDate)))" />
				</xsl:attribute>
			</tiapit:atTime>
		</xsl:if>
		<xsl:if test="schede/BNB/SB/TBI/TBIF">
			<tiapit:atTime>
				<xsl:attribute name="rdf:resource">
		        	<xsl:value-of 	select="concat($NS, 'TimeInterval/', arco-fn:urify(concat(schede/BNB/SB/TBI/TBIF, '-',  schede/BNB/SB/TBI/TBIF)))" />
				</xsl:attribute>
			</tiapit:atTime>
		</xsl:if>
		<xsl:if test="schede/BNB/SB/TBI/TBIL">
			<arco-cd:hasBibliography>
				<xsl:value-of select="concat($NS, 'Bibliography/', $itemURI, 'bibliography-2-', position())" />
			</arco-cd:hasBibliography>
		</xsl:if>
		<xsl:if test="schede/BNB/SB/TBI/TBIA">
			<arco-core:involvesAgent>
				<xsl:attribute name="rdf:resource">
		        	<xsl:value-of select="concat($NS, 'Agent/', arco-fn:arcofy(schede/BNB/SB/TBI/TBIA))" />
				</xsl:attribute>
			</arco-core:involvesAgent>
		</xsl:if>
		<xsl:if test="schede/BNB/SB/TBI/TBIN">
			<arco-mp:hasTaxon>
				<xsl:attribute name="rdf:resource">
		        	<xsl:value-of select="$TypespecimenTaxon" />
				</xsl:attribute>
			</arco-mp:hasTaxon>
		</xsl:if>
				<xsl:if test="schede/BNB/SB/NAT">
			<arco-mp:hasTaxon>
				<xsl:attribute name="rdf:resource">
		        	<xsl:value-of select="$TypespecimenTaxon" />
				</xsl:attribute>
			</arco-mp:hasTaxon>
		</xsl:if>
	</rdf:Description>
</xsl:if>
	<xsl:if test="schede/BNB/RB/RBR/RBRN or schede/BNB/RB/RBN">
		<rdf:Description>
		<xsl:attribute name="rdf:about">
        	<xsl:value-of select="concat('https://w3id.org/arco/resource/ClassificationInTime/',$itemURI, '-revised-classification-', position())" />
        </xsl:attribute>
       	<rdf:type>
			<xsl:attribute name="rdf:resource">
                <xsl:value-of select="'https://w3id.org/arco/ontology/core/ClassificationInTime'" />
            	</xsl:attribute>
			</rdf:type>
			<rdfs:label xml:lang="it">
            	 <xsl:value-of select="concat('Classificazione nel tempo del bene culturale ', $itemURI)" />
            </rdfs:label>
            <l0:name xml:lang="it">
            	<xsl:value-of select="concat('Classificazione nel tempo del bene culturale ', $itemURI)" />
            </l0:name>
			<rdfs:label xml:lang="en">
            	 <xsl:value-of select="concat('Classification in time of cultural property ', $itemURI)" />
            </rdfs:label>
            <l0:name xml:lang="en">
            	<xsl:value-of select="concat('Classification in time of cultural property ', $itemURI)" />
            </l0:name>
            <arco-mp:originalClassification>
            	<xsl:value-of select="false()" />
            </arco-mp:originalClassification>
			<xsl:if test="schede/BNB/RB/RBD/RBDB">
			<xsl:variable name="startDate">
				<xsl:choose>
					<xsl:when test="schede/BNB/RB/RBD/RBDC">
						<xsl:value-of select="concat(normalize-space(schede/BNB/RB/RBD/RBDC), ' ', normalize-space(schede/BNB/RB/RBD/RBDB))" />
					</xsl:when>
					<xsl:otherwise>
						<xsl:value-of select="normalize-space(schede/BNB/RB/RBD/RBDB)" />
					</xsl:otherwise>
				</xsl:choose>
			</xsl:variable>
			<xsl:variable name="endDate">
				<xsl:choose>
					<xsl:when test="schede/BNB/RB/RBD/RBDE">
						<xsl:value-of 	select="concat(normalize-space(schede/BNB/RB/RBD/RBDE), ' ', normalize-space(schede/BNB/RB/RBD/RBDD))" />
					</xsl:when>
					<xsl:otherwise>
						<xsl:value-of select="normalize-space(schede/BNB/RB/RBD/RBDD)" />
					</xsl:otherwise>
				</xsl:choose>
			</xsl:variable>
			<tiapit:atTime>
				<xsl:attribute name="rdf:resource">
		        	<xsl:value-of select="concat($NS, 'TimeInterval/', arco-fn:urify(concat($startDate, '-',  $endDate)))" />
				</xsl:attribute>
			</tiapit:atTime>
		</xsl:if>
		<xsl:if test="schede/BNB/RB/RBD/RBDF">
			<tiapit:atTime>
				<xsl:attribute name="rdf:resource">
		        	<xsl:value-of 	select="concat($NS, 'TimeInterval/', arco-fn:urify(concat(schede/BNB/RB/RBD/RBDF, '-',  schede/BNB/RB/RBD/RBDF)))" />
				</xsl:attribute>
			</tiapit:atTime>
		</xsl:if>
		<xsl:if test="schede/BNB/RB/RBR/RBRB">
			<arco-cd:hasBibliography>
				<xsl:value-of select="concat($NS, 'Bibliography/', $itemURI, 'bibliography-2-', position())" />
			</arco-cd:hasBibliography>
		</xsl:if>
		<xsl:if test="schede/BNB/RB/RBR/RBRA">
			<arco-core:involvesAgent>
				<xsl:attribute name="rdf:resource">
		        	<xsl:value-of select="concat($NS, 'Agent/', arco-fn:arcofy(schede/BNB/RB/RBR/RBRA))" />
				</xsl:attribute>
			</arco-core:involvesAgent>
		</xsl:if>
		<xsl:if test="schede/BNB/RB/RBR/RBRN">
			<arco-mp:hasTaxon>
				<xsl:attribute name="rdf:resource">
		        	<xsl:value-of select="$RevisedTaxon" />
				</xsl:attribute>
			</arco-mp:hasTaxon>
		</xsl:if>
				<xsl:if test="schede/BNB/RB/RBN">
			<arco-mp:hasTaxon>
				<xsl:attribute name="rdf:resource">
		        	<xsl:value-of select="$RevisedTaxon" />
				</xsl:attribute>
			</arco-mp:hasTaxon>
		</xsl:if>
	</rdf:Description>
</xsl:if>



							<!-- BiologicalTaxon as individual --> 
	<xsl:if test="schede/BNB/SB/NBN/NBNA">
	<rdf:Description>
		<xsl:attribute name="rdf:about">
        	<xsl:value-of select="$BiologicalTaxon" />
        </xsl:attribute>    
			<rdf:type>
				<xsl:attribute name="rdf:resource">
                	<xsl:value-of select="'https://w3id.org/arco/ontology/movable-property/BiologicalTaxon'" />
            	</xsl:attribute>
			</rdf:type>
			<rdfs:label>
            	 <xsl:value-of select="schede/BNB/SB/NBN/NBNA" />
            </rdfs:label>
            <l0:name>
            	<xsl:value-of select="schede/BNB/SB/NBN/NBNA" />
            </l0:name>
		<xsl:if test="schede/BNB/SB/SBS/SBSC and (not(starts-with(lower-case(normalize-space(schede/BNB/SB/SBS/SBSC)), 'nr')) and not(starts-with(lower-case(normalize-space(schede/BNB/SB/SBS/SBSC)), 'n.r')))">
			<arco-cd:hasBibliography>
	        	<xsl:value-of select="concat($NS, 'Bibliography/', $itemURI, '-biological-taxon-bibliography')" />	
			</arco-cd:hasBibliography>
		</xsl:if>
		<xsl:if test="schede/BNB/SB/SBS/SBSG">
			<arco-mp:taxonomicNumber>
				<xsl:value-of select="schede/BNB/SB/SBS/SBSG" />		
			</arco-mp:taxonomicNumber>
		</xsl:if>
	</rdf:Description>
	</xsl:if>															
	<xsl:if test="schede/BNB/SB/NAA/NAAL">
		<rdf:Description>
			<xsl:attribute name="rdf:about">
               <xsl:value-of select="concat('https://w3id.org/arco/resource/BiologicalTaxon/', arco-fn:urify(concat(schede/BNB/SB/NAA/NAAA, '-', schede/BNB/SB/NAA/NAAB,  '-', schede/BNB/SB/NAA/NAAD,  '-', schede/BNB/SB/NAA/NAAL)))" />
            </xsl:attribute>
            <arco-mp:hasDirectHigherRank>
            		 <xsl:value-of select="concat('https://w3id.org/arco/resource/BiologicalTaxon/', arco-fn:urify(concat(schede/BNB/SB/NAA/NAAA, '-', schede/BNB/SB/NAA/NAAB,  '-', schede/BNB/SB/NAA/NAAD)))" />
            </arco-mp:hasDirectHigherRank>
            <rdf:type>
            	<xsl:value-of select="'https://w3id.org/arco/ontology/movable-property/Cultivar'" />      
            </rdf:type>
            <rdfs:label>
            	 <xsl:value-of select="concat(schede/BNB/SB/NAA/NAAA, ' ', schede/BNB/SB/NAA/NAAB,  ' ', schede/BNB/SB/NAA/NAAD,  ' ', schede/BNB/SB/NAA/NAAL)" />
            </rdfs:label>
            <l0:name>
            	<xsl:value-of select="concat(schede/BNB/SB/NAA/NAAA, ' ', schede/BNB/SB/NAA/NAAB,  ' ', schede/BNB/SB/NAA/NAAD,  ' ', schede/BNB/SB/NAA/NAAL)" />
            </l0:name>
  		</rdf:Description>
	</xsl:if>
	<xsl:if test="schede/BNB/SB/NAA/NAAH">
		<rdf:Description>
			<xsl:attribute name="rdf:about">
               <xsl:value-of select="concat('https://w3id.org/arco/resource/BiologicalTaxon/', arco-fn:urify(concat(schede/BNB/SB/NAA/NAAA, '-', schede/BNB/SB/NAA/NAAB,  '-', schede/BNB/SB/NAA/NAAD,  '-', schede/BNB/SB/NAA/NAAH)))" />
            </xsl:attribute>
            <arco-mp:hasDirectHigherRank>
            		 <xsl:value-of select="concat('https://w3id.org/arco/resource/BiologicalTaxon/', arco-fn:urify(concat(schede/BNB/SB/NAA/NAAA, '-', schede/BNB/SB/NAA/NAAB,  '-', schede/BNB/SB/NAA/NAAD)))" />
            </arco-mp:hasDirectHigherRank>
            <rdf:type>
            	<xsl:value-of select="'https://w3id.org/arco/ontology/movable-property/BotanicalForm'" />      
            </rdf:type>
            <rdfs:label>
            	 <xsl:value-of select="concat(schede/BNB/SB/NAA/NAAA, ' ', schede/BNB/SB/NAA/NAAB,  ' ', schede/BNB/SB/NAA/NAAD,  ' ', schede/BNB/SB/NAA/NAAH)" />
            </rdfs:label>
            <l0:name>
            	<xsl:value-of select="concat(schede/BNB/SB/NAA/NAAA, ' ', schede/BNB/SB/NAA/NAAB,  ' ', schede/BNB/SB/NAA/NAAD,  ' ', schede/BNB/SB/NAA/NAAH)" />
            </l0:name>
            <xsl:if test="schede/BNB/SB/NAA/NAAI">
            	<arco-cd:hasAuthor>
            		<xsl:value-of select="concat($NS, 'Agent/', arco-fn:arcofy(schede/BNB/SB/NAA/NAAI))" />
            	</arco-cd:hasAuthor>
            </xsl:if>	           
  		</rdf:Description>
	</xsl:if>
	<xsl:if test="schede/BNB/SB/NAA/NAAF">
		<rdf:Description>
			<xsl:attribute name="rdf:about">
               <xsl:value-of select="concat('https://w3id.org/arco/resource/BiologicalTaxon/', arco-fn:urify(concat(schede/BNB/SB/NAA/NAAA, '-', schede/BNB/SB/NAA/NAAB,  '-', schede/BNB/SB/NAA/NAAD,  '-', schede/BNB/SB/NAA/NAAF)))" />
            </xsl:attribute>
            <arco-mp:hasDirectHigherRank>
            		 <xsl:value-of select="concat('https://w3id.org/arco/resource/BiologicalTaxon/', arco-fn:urify(concat(schede/BNB/SB/NAA/NAAA, '-', schede/BNB/SB/NAA/NAAB,  '-', schede/BNB/SB/NAA/NAAD)))" />
            </arco-mp:hasDirectHigherRank>
            <rdf:type>
            	<xsl:value-of select="'https://w3id.org/arco/ontology/movable-property/Variety'" />      
            </rdf:type>
            <rdfs:label>
            	 <xsl:value-of select="concat(schede/BNB/SB/NAA/NAAA, ' ', schede/BNB/SB/NAA/NAAB,  ' ', schede/BNB/SB/NAA/NAAD,  ' ', schede/BNB/SB/NAA/NAAF)" />
            </rdfs:label>
            <l0:name>
            	<xsl:value-of select="concat(schede/BNB/SB/NAA/NAAA, ' ', schede/BNB/SB/NAA/NAAB,  ' ', schede/BNB/SB/NAA/NAAD,  ' ', schede/BNB/SB/NAA/NAAF)" />
            </l0:name>
            <xsl:if test="schede/BNB/SB/NAA/NAAG">
            	<arco-cd:hasAuthor>
            		<xsl:value-of select="concat($NS, 'Agent/', arco-fn:arcofy(schede/BNB/SB/NAA/NAAG))" />
            	</arco-cd:hasAuthor>
            </xsl:if>	           
  		</rdf:Description>
	</xsl:if>	
	<xsl:if test="schede/BNB/SB/NAA/NAAD">
		<rdf:Description>
			<xsl:attribute name="rdf:about">
               <xsl:value-of select="concat('https://w3id.org/arco/resource/BiologicalTaxon/', arco-fn:urify(concat(schede/BNB/SB/NAA/NAAA, '-', schede/BNB/SB/NAA/NAAB,  '-', schede/BNB/SB/NAA/NAAD)))" />
            </xsl:attribute>
            <arco-mp:hasDirectHigherRank>
            		 <xsl:value-of select="concat('https://w3id.org/arco/resource/BiologicalTaxon/', arco-fn:urify(concat(schede/BNB/SB/NAA/NAAA, '-', schede/BNB/SB/NAA/NAAB)))" />
            </arco-mp:hasDirectHigherRank>
            <rdf:type>
            	<xsl:value-of select="'https://w3id.org/arco/ontology/movable-property/Subspecies'" />      
            </rdf:type>
            <rdfs:label>
            	 <xsl:value-of select="concat(schede/BNB/SB/NAA/NAAA, ' ', schede/BNB/SB/NAA/NAAB,  ' ', schede/BNB/SB/NAA/NAAD)" />
            </rdfs:label>
            <l0:name>
            	<xsl:value-of select="concat(schede/BNB/SB/NAA/NAAA, ' ', schede/BNB/SB/NAA/NAAB,  ' ', schede/BNB/SB/NAA/NAAD)" />
            </l0:name>	
            <xsl:if test="schede/BNB/SB/NAA/NAAE">
            	<arco-cd:hasAuthor>
            		<xsl:value-of select="concat($NS, 'Agent/', arco-fn:arcofy(schede/BNB/SB/NAA/NAAE))" />
            	</arco-cd:hasAuthor> 
            </xsl:if>                       
    	</rdf:Description>
	</xsl:if>	
	<xsl:if test="schede/BNB/SB/NAA/NAAB">
		<rdf:Description>
			<xsl:attribute name="rdf:about">
               <xsl:value-of select="concat('https://w3id.org/arco/resource/BiologicalTaxon/', arco-fn:urify(concat(schede/BNB/SB/NAA/NAAA, '-', schede/BNB/SB/NAA/NAAB)))" />
            </xsl:attribute>
            <arco-mp:hasDirectHigherRank>
            		 <xsl:value-of select="concat('https://w3id.org/arco/resource/BiologicalTaxon/', arco-fn:urify(schede/BNB/SB/NAA/NAAA))" />
            </arco-mp:hasDirectHigherRank>
            <rdf:type>
            	<xsl:value-of select="'https://w3id.org/arco/ontology/movable-property/Species'" />      
            </rdf:type>
            <rdfs:label>
            	 <xsl:value-of select="concat(schede/BNB/SB/NAA/NAAA, ' ', schede/BNB/SB/NAA/NAAB)" />
            </rdfs:label>
            <l0:name>
            	<xsl:value-of select="concat(schede/BNB/SB/NAA/NAAA, ' ', schede/BNB/SB/NAA/NAAB)" />
            </l0:name>
            <xsl:if test="schede/BNB/SB/NAA/NAAC">
            	<arco-cd:hasAuthor>
            		<xsl:value-of select="concat($NS, 'Agent/', arco-fn:arcofy(schede/BNB/SB/NAA/NAAC))" />
            	</arco-cd:hasAuthor> 
            </xsl:if>           	           
    	</rdf:Description>
	</xsl:if>	
	<xsl:if test="schede/BNB/SB/NAA/NAAA">
		<rdf:Description>
			<xsl:attribute name="rdf:about">
               <xsl:value-of select="concat('https://w3id.org/arco/resource/BiologicalTaxon/', arco-fn:urify(schede/BNB/SB/NAA/NAAA))" />
            </xsl:attribute>
            <arco-mp:hasDirectHigherRank>
            		 <xsl:value-of select="concat('https://w3id.org/arco/resource/BiologicalTaxon/', arco-fn:urify(schede/BNB/SB/SBS/SBSF))" />
            </arco-mp:hasDirectHigherRank>
            <rdf:type>
            	<xsl:value-of select="'https://w3id.org/arco/ontology/movable-property/Genus'" />      
            </rdf:type>
            <rdfs:label>
            	 <xsl:value-of select="schede/BNB/SB/NAA/NAAA" />
            </rdfs:label>
            <l0:name>
            	<xsl:value-of select="schede/BNB/SB/NAA/NAAA" />
            </l0:name>
            <xsl:if test="schede/BNB/SB/SBS/SBSN">
            	<arco-cd:genusNumber>
            		<xsl:value-of select="schede/BNB/SB/SBS/SBSN" />
            	</arco-cd:genusNumber>
            </xsl:if>
    	</rdf:Description>
	</xsl:if>	
	<xsl:if test="schede/BNB/SB/SBS/SBSF">
		<rdf:Description>
			<xsl:attribute name="rdf:about">
               <xsl:value-of select="concat('https://w3id.org/arco/resource/BiologicalTaxon/', arco-fn:urify(schede/BNB/SB/SBS/SBSF))" />
            </xsl:attribute>
           <xsl:if test="schede/BNB/SB/NAA/NAAA">
            <arco-cd:hasDirectLowerRank>
            	<xsl:value-of select="concat('https://w3id.org/arco/resource/BiologicalTaxon/', arco-fn:urify(schede/BNB/SB/NAA/NAAA))" />
            </arco-cd:hasDirectLowerRank>
            </xsl:if>
            <xsl:if test="schede/BNB/SB/NBN/NBNA">
            <arco-cd:hasLowerRank>
            	<xsl:value-of select="concat('https://w3id.org/arco/resource/BiologicalTaxon/', arco-fn:urify(schede/BNB/SB/NBN/NBNA))" />
            </arco-cd:hasLowerRank>
            </xsl:if>
            <rdf:type>
            	<xsl:value-of select="'https://w3id.org/arco/ontology/context-description/Family'" />      
            </rdf:type>
            <rdfs:label>
            	 <xsl:value-of select="schede/BNB/SB/SBS/SBSF" />
            </rdfs:label>
            <l0:name>
            	<xsl:value-of select="schede/BNB/SB/SBS/SBSF" />
            </l0:name>	           
    	</rdf:Description>
	</xsl:if>	

									<!-- Revised BiologicalTaxon as individual --> 
<xsl:for-each select="schede/BNB/RB">
	<xsl:if test="./RBR/RBRN">
	<rdf:Description>
		<xsl:attribute name="rdf:about">
    		<xsl:value-of select="$RevisedTaxon" />
		</xsl:attribute>
			<rdf:type>
				<xsl:attribute name="rdf:resource">
                	<xsl:value-of select="'https://w3id.org/arco/ontology/movable-property/BiologicalTaxon'" />
            	</xsl:attribute>
			</rdf:type>
			<rdfs:label>
				<xsl:value-of select="./RBR/RBRN" />
			</rdfs:label>
			<l0:name>
				<xsl:value-of select="./RBR/RBRN" />
			</l0:name>
	</rdf:Description>
	</xsl:if>
</xsl:for-each>
<xsl:for-each select="schede/BNB/RB">	   
	<xsl:if test="./RBN/RBNL">
		<rdf:Description>
			<xsl:attribute name="rdf:about">
               <xsl:value-of select="concat('https://w3id.org/arco/resource/BiologicalTaxon/', arco-fn:urify(concat(./RBN/RBNA, '-', ./RBN/RBNB,  '-', ./RBN/RBND,  '-', ./RBN/RBNL)))" />
            </xsl:attribute>
            <arco-mp:hasDirectHigherRank>
            		 <xsl:value-of select="concat('https://w3id.org/arco/resource/BiologicalTaxon/', arco-fn:urify(concat(./RBN/RBNA, '-', ./RBN/RBNB,  '-', ./RBN/RBND)))" />
            </arco-mp:hasDirectHigherRank>
            <rdf:type>
            	<xsl:value-of select="'https://w3id.org/arco/ontology/movable-property/Cultivar'" />      
            </rdf:type>
            <rdfs:label>
            	 <xsl:value-of select="concat(./RBN/RBNA, ' ', ./RBN/RBNB,  ' ', ./RBN/RBND,  ' ', ./RBN/RBNL)" />
            </rdfs:label>
            <l0:name>
            	<xsl:value-of select="concat(./RBN/RBNA, ' ', ./RBN/RBNB,  ' ', ./RBN/RBND,  ' ', ./RBN/RBNL)" />
            </l0:name>
    	</rdf:Description>
	</xsl:if>
</xsl:for-each>
<xsl:for-each select="schede/BNB/RB">
	<xsl:if test="./RBN/RBNH">
		<rdf:Description>
			<xsl:attribute name="rdf:about">
               <xsl:value-of select="concat('https://w3id.org/arco/resource/BiologicalTaxon/', arco-fn:urify(concat(./RBN/RBNA, '-', ./RBN/RBNB,  '-', ./RBN/RBND,  '-', ./RBN/RBNH)))" />
            </xsl:attribute>
            <arco-mp:hasDirectHigherRank>
            		 <xsl:value-of select="concat('https://w3id.org/arco/resource/BiologicalTaxon/', arco-fn:urify(concat(./RBN/RBNA, '-', ./RBN/RBNB,  '-', ./RBN/RBND)))" />
            </arco-mp:hasDirectHigherRank>
            <rdf:type>
            	<xsl:value-of select="'https://w3id.org/arco/ontology/movable-property/BotanicalForm'" />      
            </rdf:type>
            <rdfs:label>
            	 <xsl:value-of select="concat(./RBN/RBNA, '-', ./RBN/RBNB,  '-', ./RBN/RBND,  '-', ./RBN/RBNH)" />
            </rdfs:label>
            <l0:name>
            	<xsl:value-of select="concat(./RBN/RBNA, '-', ./RBN/RBNB,  '-', ./RBN/RBND,  '-', ./RBN/RBNH)" />
            </l0:name>           
            <xsl:if test="./RBN/RBNI">
            	<arco-cd:hasAuthor>
            		<xsl:value-of select="concat($NS, 'Agent/', arco-fn:arcofy(./RBN/RBNI))" />
            	</arco-cd:hasAuthor>
            </xsl:if>	           
    	</rdf:Description>
	</xsl:if>
	</xsl:for-each>
	<xsl:for-each select="schede/BNB/RB">
	<xsl:if test="./RBN/RBNF">
		<rdf:Description>
			<xsl:attribute name="rdf:about">
               <xsl:value-of select="concat('https://w3id.org/arco/resource/BiologicalTaxon/', arco-fn:urify(concat(./RBN/RBNA, '-', ./RBN/RBNB,  '-', ./RBN/RBND,  '-', ./RBN/RBNF)))" />
            </xsl:attribute>
            <arco-mp:hasDirectHigherRank>
            		 <xsl:value-of select="concat('https://w3id.org/arco/resource/BiologicalTaxon/', arco-fn:urify(concat(./RBN/RBNA, '-', ./RBN/RBNB,  '-', ./RBN/RBND)))" />
            </arco-mp:hasDirectHigherRank>
            <rdf:type>
            	<xsl:value-of select="'https://w3id.org/arco/ontology/movable-property/Variety'" />      
            </rdf:type>
            <rdfs:label>
            	 <xsl:value-of select="concat(./RBN/RBNA, ' ', ./RBN/RBNB,  ' ', ./RBN/RBND,  ' ', ./RBN/RBNF)" />
            </rdfs:label>
            <l0:name>
            	<xsl:value-of select="concat(./RBN/RBNA, ' ', ./RBN/RBNB,  ' ', ./RBN/RBND,  ' ', ./RBN/RBNF)" />
            </l0:name>
            <xsl:if test="./RBN/RBNG">
            	<arco-cd:hasAuthor>
            		<xsl:value-of select="concat($NS, 'Agent/', arco-fn:arcofy(./RBN/RBNG))" />
            	</arco-cd:hasAuthor>
            </xsl:if>	           
    </rdf:Description>
	</xsl:if>	
	</xsl:for-each>
	<xsl:for-each select="schede/BNB/RB">	
	<xsl:if test="./RBN/RBND">
	<rdf:Description>
			<xsl:attribute name="rdf:about">
               <xsl:value-of select="concat('https://w3id.org/arco/resource/BiologicalTaxon/', arco-fn:urify(concat(./RBN/RBNA, '-', ./RBN/RBNB,  '-', ./RBN/RBND)))" />
            </xsl:attribute>
            <arco-mp:hasDirectHigherRank>
            		 <xsl:value-of select="concat('https://w3id.org/arco/resource/BiologicalTaxon/', arco-fn:urify(concat(./RBN/RBNA, '-', ./RBN/RBNB)))" />
            </arco-mp:hasDirectHigherRank>
            <rdf:type>
            	<xsl:value-of select="'https://w3id.org/arco/ontology/movable-property/Subspecies'" />      
            </rdf:type>
            <rdfs:label>
            	 <xsl:value-of select="concat(./RBN/RBNA, ' ', ./RBN/RBNB,  ' ', ./RBN/RBND)" />
            </rdfs:label>
            <l0:name>
            	<xsl:value-of select="concat(./RBN/RBNA, ' ', ./RBN/RBNB,  ' ', ./RBN/RBND)" />
            </l0:name>	
            <xsl:if test="./RBN/RBNE">
            	<arco-cd:hasAuthor>
            		<xsl:value-of select="concat($NS, 'Agent/', arco-fn:arcofy(./RBN/RBNE))" />
            	</arco-cd:hasAuthor> 
            </xsl:if>                       
    </rdf:Description>
	</xsl:if>	     
	</xsl:for-each>
	<xsl:for-each select="schede/BNB/RB">	
		<xsl:if test="./RBN/RBNB">
		<rdf:Description>
			<xsl:attribute name="rdf:about">
               <xsl:value-of select="concat('https://w3id.org/arco/resource/BiologicalTaxon/', arco-fn:urify(concat(./RBN/RBNA, '-', ./RBN/RBNB)))" />
            </xsl:attribute>
            <arco-mp:hasDirectHigherRank>
            		 <xsl:value-of select="concat('https://w3id.org/arco/resource/BiologicalTaxon/', arco-fn:urify(./RBN/RBNA))" />
            </arco-mp:hasDirectHigherRank>
            <rdf:type>
            	<xsl:value-of select="'https://w3id.org/arco/ontology/movable-property/Species'" />      
            </rdf:type>
            <rdfs:label>
            	 <xsl:value-of select="concat(./RBN/RBNA, ' ', ./RBN/RBNB)" />
            </rdfs:label>
            <l0:name>
            	<xsl:value-of select="concat(./RBN/RBNA, ' ', ./RBN/RBNB)" />
            </l0:name>
            <xsl:if test="./RBN/RBNC">
            	<arco-cd:hasAuthor>
            		<xsl:value-of select="concat($NS, 'Agent/', arco-fn:arcofy(./RBN/RBNC))" />
            	</arco-cd:hasAuthor> 
            </xsl:if>           	           
    	</rdf:Description>
	</xsl:if>
	</xsl:for-each>
	<xsl:for-each select="schede/BNB/RB">	
	<xsl:if test="./RBN/RBNA">
		<rdf:Description>
			<xsl:attribute name="rdf:about">
               <xsl:value-of select="concat('https://w3id.org/arco/resource/BiologicalTaxon/', arco-fn:urify(./RBN/RBNA))" />
            </xsl:attribute>
            <rdf:type>
            	<xsl:value-of select="'https://w3id.org/arco/ontology/movable-property/Genus'" />      
            </rdf:type>
            <rdfs:label>
            	 <xsl:value-of select="./RBN/RBNA" />
            </rdfs:label>
            <l0:name>
            	<xsl:value-of select="./RBN/RBNA" />
            </l0:name>
		</rdf:Description>
	</xsl:if>
</xsl:for-each>	



								<!-- Time Interval as individual -->
	<xsl:if test="schede/BNB/SB/DBV/DBVB">
		<xsl:variable name="startDate">
			<xsl:choose>
				<xsl:when test="schede/BNB/SB/DBV/DBVC">
					<xsl:value-of select="concat(normalize-space(schede/BNB/SB/DBV/DBVC), ' ', normalize-space(schede/BNB/SB/DBV/DBVB))" />
				</xsl:when>
				<xsl:otherwise>
					<xsl:value-of select="normalize-space(schede/BNB/SB/DBV/DBVB)" />
				</xsl:otherwise>
			</xsl:choose>
		</xsl:variable>
		<xsl:variable name="endDate">
			<xsl:choose>
				<xsl:when test="schede/BNB/SB/DBV/DBVE">
					<xsl:value-of select="concat(normalize-space(schede/BNB/SB/DBV/DBVE), ' ', normalize-space(schede/BNB/SB/DBV/DBVD))" />
				</xsl:when>
				<xsl:otherwise>
					<xsl:value-of select="normalize-space(schede/BNB/SB/DBV/DBVD)" />
				</xsl:otherwise>
			</xsl:choose>
		</xsl:variable>
		<rdf:Description>
			<xsl:attribute name="rdf:about">
		    	<xsl:value-of select="concat($NS, 'TimeInterval/', arco-fn:urify(concat($startDate, '-',  $endDate)))" />
			</xsl:attribute>
			<rdf:type>
				<xsl:attribute name="rdf:resource">
		        	<xsl:value-of select="'https://w3id.org/italia/onto/TI/TimeInterval'" />
		        </xsl:attribute>
			</rdf:type>
			<rdfs:label>
				<xsl:value-of select="concat($startDate, ' - ', $endDate)" />
			</rdfs:label>
			<l0:name>
				<xsl:value-of select="concat($startDate, ' - ', $endDate)" />
			</l0:name>
			<arco-arco:startTime>
				<xsl:value-of select="$startDate" />
			</arco-arco:startTime>
			<arco-arco:endTime>
				<xsl:value-of select="$endDate" />
			</arco-arco:endTime>
		</rdf:Description>
	</xsl:if>
	<xsl:if test="schede/BNB/SB/DBV/DBVF">
		<rdf:Description>
			<xsl:attribute name="rdf:about">
		    	<xsl:value-of select="concat($NS, 'TimeInterval/', arco-fn:urify(concat(schede/BNB/SB/DBV/DBVF, '-',  schede/BNB/SB/DBV/DBVF)))" />
			</xsl:attribute>
			<rdf:type>
				<xsl:attribute name="rdf:resource">
		        	<xsl:value-of select="'https://w3id.org/italia/onto/TI/TimeInterval'" />
				</xsl:attribute>
			</rdf:type>
			<rdfs:label>
				<xsl:value-of select="concat(schede/BNB/SB/DBV/DBVF, ' - ', schede/BNB/SB/DBV/DBVF)" />
			</rdfs:label>
			<l0:name>
				<xsl:value-of select="concat(schede/BNB/SB/DBV/DBVF, ' - ', schede/BNB/SB/DBV/DBVF)" />
			</l0:name>
			<arco-arco:startTime>
				<xsl:value-of select="schede/BNB/SB/DBV/DBVF" />
			</arco-arco:startTime>
			<arco-arco:endTime>
				<xsl:value-of select="schede/BNB/SB/DBV/DBVF" />
			</arco-arco:endTime>
		</rdf:Description>
	</xsl:if>

									<!-- accession as individual  -->
 	<xsl:if test="schede/BNB/SB/ABC">
		<rdf:Description>
			<xsl:attribute name="rdf:about">
		    	<xsl:value-of select="concat('https://w3id.org/arco/resource/Accession/', $itemURI)" />
			</xsl:attribute>
	        <rdf:type>
				<xsl:attribute name="rdf:resource">
	        		<xsl:value-of select="'https://w3id.org/arco/ontology/movable-property/Accession'" />
				</xsl:attribute>
			</rdf:type>
			<rdfs:label xml:lang="it">
				<xsl:value-of select="concat('Accessione del bene ', $itemURI)" />
			</rdfs:label>
			<l0:name xml:lang="it">
				<xsl:value-of select="concat('Accessione del bene ', $itemURI)" />
			</l0:name>
			<rdfs:label xml:lang="en">
				<xsl:value-of select="concat('Accession of cultural property ', $itemURI)" />
			</rdfs:label>
			<l0:name xml:lang="en">
				<xsl:value-of select="concat('Accession of cultural property ', $itemURI)" />
			</l0:name>
			<xsl:if test="schede/BNB/SB/ABC/ABCA">
				<arco-core:involvesAgent>
            		<xsl:value-of select="concat($NS, 'Agent/', arco-fn:arcofy(schede/BNB/SB/ABC/ABCA))" />					
				</arco-core:involvesAgent>	
			</xsl:if>
			<xsl:if test="schede/BNB/SB/ABC/ABCB">
				<xsl:variable name="startDate">
					<xsl:choose>
						<xsl:when test="schede/BNB/SB/ABC/ABCC">
							<xsl:value-of	select="concat(normalize-space(schede/BNB/SB/ABC/ABCC), ' ', normalize-space(schede/BNB/SB/ABC/ABCB))" />
						</xsl:when>
						<xsl:otherwise>
							<xsl:value-of select="normalize-space(schede/BNB/SB/ABC/ABCB)" />
						</xsl:otherwise>
					</xsl:choose>
				</xsl:variable>
				<xsl:variable name="endDate">
					<xsl:choose>
						<xsl:when test="schede/BNB/SB/ABC/ABCE">
							<xsl:value-of select="concat(normalize-space(schede/BNB/SB/ABC/ABCE), ' ', normalize-space(schede/BNB/SB/ABC/ABCD))" />
						</xsl:when>
						<xsl:otherwise>
							<xsl:value-of select="normalize-space(schede/BNB/SB/ABC/ABCD)" />
						</xsl:otherwise>
					</xsl:choose>
				</xsl:variable>
				<tiapit:atTime>
					<xsl:attribute name="rdf:resource">
		            	<xsl:value-of select="concat($NS, 'TimeInterval/', arco-fn:urify(concat($startDate, '-',  $endDate)))" />
					</xsl:attribute>
				</tiapit:atTime>
			</xsl:if>
			<xsl:if test="schede/BNB/SB/ABC/ABCF">
				<tiapit:atTime>
					<xsl:attribute name="rdf:resource">
		            	<xsl:value-of 	select="concat($NS, 'TimeInterval/', arco-fn:urify(concat(schede/BNB/SB/ABC/ABCF, '-',  schede/BNB/SB/ABC/ABCF)))" />
					</xsl:attribute>
				</tiapit:atTime>
			</xsl:if>
		</rdf:Description>
	</xsl:if>			
							<!-- Time Interval as individual -->
	<xsl:if test="schede/BNB/SB/ABC/ABCB">
		<xsl:variable name="startDate">
			<xsl:choose>
				<xsl:when test="schede/BNB/SB/ABC/ABCC">
					<xsl:value-of select="concat(normalize-space(schede/BNB/SB/ABC/ABCC), ' ', normalize-space(schede/BNB/SB/ABC/ABCB))" />
				</xsl:when>
				<xsl:otherwise>
					<xsl:value-of select="normalize-space(schede/BNB/SB/ABC/ABCB)" />
				</xsl:otherwise>
			</xsl:choose>
		</xsl:variable>
		<xsl:variable name="endDate">
			<xsl:choose>
				<xsl:when test="schede/BNB/SB/ABC/ABCE">
					<xsl:value-of select="concat(normalize-space(schede/BNB/SB/ABC/ABCE), ' ', normalize-space(schede/BNB/SB/ABC/ABCD))" />
				</xsl:when>
				<xsl:otherwise>
					<xsl:value-of select="normalize-space(schede/BNB/SB/ABC/ABCD)" />
				</xsl:otherwise>
			</xsl:choose>
		</xsl:variable>
		<rdf:Description>
			<xsl:attribute name="rdf:about">
		    	<xsl:value-of select="concat($NS, 'TimeInterval/', arco-fn:urify(concat($startDate, '-',  $endDate)))" />
			</xsl:attribute>
			<rdf:type>
				<xsl:attribute name="rdf:resource">
		        	<xsl:value-of select="'https://w3id.org/italia/onto/TI/TimeInterval'" />
		        </xsl:attribute>
			</rdf:type>
			<rdfs:label>
				<xsl:value-of select="concat($startDate, ' - ', $endDate)" />
			</rdfs:label>
			<l0:name>
				<xsl:value-of select="concat($startDate, ' - ', $endDate)" />
			</l0:name>
			<arco-arco:startTime>
				<xsl:value-of select="$startDate" />
			</arco-arco:startTime>
			<arco-arco:endTime>
				<xsl:value-of select="$endDate" />
			</arco-arco:endTime>
		</rdf:Description>
	</xsl:if>
	<xsl:if test="schede/BNB/SB/ABC/ABCF">
		<rdf:Description>
			<xsl:attribute name="rdf:about">
		    	<xsl:value-of select="concat($NS, 'TimeInterval/', arco-fn:urify(concat(schede/BNB/SB/ABC/ABCF, '-',  schede/BNB/SB/ABC/ABCF)))" />
			</xsl:attribute>
			<rdf:type>
				<xsl:attribute name="rdf:resource">
		    		<xsl:value-of select="'https://w3id.org/italia/onto/TI/TimeInterval'" />
				</xsl:attribute>
			</rdf:type>
			<rdfs:label>
				<xsl:value-of select="concat(schede/BNB/SB/ABC/ABCF, ' - ', schede/BNB/SB/ABC/ABCF)" />
			</rdfs:label>
			<l0:name>
				<xsl:value-of select="concat(schede/BNB/SB/ABC/ABCF, ' - ', schede/BNB/SB/ABC/ABCF)" />
			</l0:name>
			<arco-arco:startTime>
				<xsl:value-of select="schede/BNB/SB/ABC/ABCF" />
			</arco-arco:startTime>
			<arco-arco:endTime>
				<xsl:value-of select="schede/BNB/SB/ABC/ABCF" />
			</arco-arco:endTime>
		</rdf:Description>
	</xsl:if>
			
									<!-- Label as individual  -->
	<xsl:for-each select="schede/BNB/SB/SBE">
		<rdf:Description>
			<xsl:attribute name="rdf:about">
		    	<xsl:value-of select="concat('https://w3id.org/arco/resource/Label/', $itemURI, '-', position())" />
			</xsl:attribute>
			<rdf:type>
				<xsl:attribute name="rdf:resource">
	            	<xsl:value-of select="'https://w3id.org/arco/ontology/movable-property/Label'" />
	            </xsl:attribute>
			</rdf:type>
			<rdfs:label xml:lang="it">
				<xsl:value-of select="concat('Etichetta ',  position(), ' del bene ', $itemURI)" />
			</rdfs:label>
			<l0:name xml:lang="it">
				<xsl:value-of select="concat('Etichetta ',  position(), ' del bene ', $itemURI)" />
			</l0:name>
			<rdfs:label xml:lang="en">
				<xsl:value-of select="concat('Label ', position(), ' of cultural property ', $itemURI)" />
			</rdfs:label>
			<l0:name xml:lang="en">
				<xsl:value-of	select="concat('Label ', position(), ' of cultural property ', $itemURI)" />
			</l0:name>
			<xsl:if test="./SBEC">
				<arco-dd:hasFontStyle>
					<xsl:attribute name="rdf:resource">
						<xsl:value-of select="concat($NS, 'FontStyle/', arco-fn:urify(normalize-space(./SBEC)))" />
					</xsl:attribute>
				</arco-dd:hasFontStyle>
			</xsl:if>
			<xsl:if test="./SBET">
				<arco-mp:bodyTranscript>
					<xsl:value-of select="normalize-space(./SBET)" />
				</arco-mp:bodyTranscript>
			</xsl:if>
			<xsl:if test="./SBEG">
				<arco-mp:graphicSymbols>
					<xsl:value-of select="normalize-space(./SBEG)" />
				</arco-mp:graphicSymbols>
			</xsl:if>
			<xsl:if test="./SBEI">
				<arco-mp:headingTranscript>
					<xsl:value-of select="normalize-space(./SBEI)" />
				</arco-mp:headingTranscript>
			</xsl:if>		
		</rdf:Description>
	</xsl:for-each>
									<!-- Font style as individual -->
	<xsl:if test="schede/BNB/SB/SBE/SBEC and (not(starts-with(lower-case(normalize-space(schede/BNB/SB/SBE/SBEC)), 'nr')) and not(starts-with(lower-case(normalize-space(schede/BNB/SB/SBE/SBEC)), 'n.r')))">
		<rdf:Description>
			<xsl:attribute name="rdf:about">
	           	<xsl:value-of select="concat($NS, 'FontStyle/', arco-fn:urify(normalize-space(schede/BNB/SB/SBE/SBEC)))" />
			</xsl:attribute>
			<rdf:type rdf:resource="https://w3id.org/arco/ontology/denotative-description/FontStyle" />
			<rdfs:label>
				<xsl:value-of select="normalize-space(schede/BNB/SB/SBE/SBEC)" />
			</rdfs:label>
			<l0:name>
				<xsl:value-of select="normalize-space(schede/BNB/SB/SBE/SBEC)" />
			</l0:name>
		</rdf:Description>
	</xsl:if>


						<!-- Specimen Harvesting as individual -->
	<xsl:if test="schede/BNB/LR">
		<rdf:Description>
			<xsl:attribute name="rdf:about">
				<xsl:value-of select="concat('https://w3id.org/arco/resource/SpecimenHarvesting/', $itemURI)" />
			</xsl:attribute>
			<rdf:type>
				<xsl:attribute name="rdf:resource">
		        	<xsl:value-of select="'https://w3id.org/arco/ontology/movable-property/SpecimenHarvesting'" />
				</xsl:attribute>
			</rdf:type>
			<rdfs:label xml:lang="it">
				<xsl:value-of select="concat('Raccolta del bene ', $itemURI)" />
			</rdfs:label>
			<l0:name xml:lang="it">
				<xsl:value-of select="concat('Raccolta del bene ', $itemURI)" />
			</l0:name>
			<rdfs:label xml:lang="en">
				<xsl:value-of select="concat('Harvesting of cultural property ', $itemURI)" />
			</rdfs:label>
			<l0:name xml:lang="en">
				<xsl:value-of select="concat('Harvesting of cultural property ', $itemURI)" />
			</l0:name>
			<xsl:if test="schede/BNB/LR/LRD/LRDA">
				<arco-core:involvesAgent>
          				<xsl:value-of select="concat($NS, 'Agent/', arco-fn:urify(schede/BNB/LR/LRD/LRDA))" />					
				</arco-core:involvesAgent>	
			</xsl:if>
			<xsl:if test="schede/BNB/LR/LRD/LRDB">
						<xsl:variable name="startDate">
							<xsl:choose>
								<xsl:when test="schede/BNB/LR/LRD/LRDC">
									<xsl:value-of
											select="concat(normalize-space(schede/BNB/LR/LRD/LRDC), ' ', normalize-space(schede/BNB/LR/LRD/LRDB))" />
								</xsl:when>
								<xsl:otherwise>
									<xsl:value-of select="normalize-space(schede/BNB/LR/LRD/LRDB)" />
								</xsl:otherwise>
							</xsl:choose>
						</xsl:variable>
						<xsl:variable name="endDate">
							<xsl:choose>
								<xsl:when test="schede/BNB/LR/LRD/LRDE">
									<xsl:value-of
										select="concat(normalize-space(schede/BNB/LR/LRD/LRDE), ' ', normalize-space(schede/BNB/LR/LRD/LRDD))" />
								</xsl:when>
								<xsl:otherwise>
									<xsl:value-of select="normalize-space(schede/BNB/LR/LRD/LRDD)" />
								</xsl:otherwise>
							</xsl:choose>
						</xsl:variable>
						<tiapit:atTime>
							<xsl:attribute name="rdf:resource">
		                		<xsl:value-of select="concat($NS, 'TimeInterval/', arco-fn:urify(concat($startDate, '-',  $endDate)))" />
							</xsl:attribute>
						</tiapit:atTime>
					</xsl:if>
					<xsl:if test="schede/BNB/LR/LRD/LRDF">
						<tiapit:atTime>
							<xsl:attribute name="rdf:resource">
		                         <xsl:value-of
										select="concat($NS, 'TimeInterval/', arco-fn:urify(concat(schede/BNB/LR/LRD/LRDF, '-',  schede/BNB/LR/LRD/LRDF)))" />
		                    </xsl:attribute>
						</tiapit:atTime>
					</xsl:if>
					<xsl:if test="schede/BNB/LR/LRI">
						<arco-mp:hasCollectingSite>
							<xsl:value-of select="concat('https://w3id.org/arco/resource/CollectingSite/', $itemURI)" />
						</arco-mp:hasCollectingSite>
					</xsl:if>
				</rdf:Description>
			</xsl:if>
										<!-- Time Interval as individual -->
	<xsl:if test="schede/BNB/LR/LRD/LRDB">
				<xsl:variable name="startDate">
					<xsl:choose>
						<xsl:when test="schede/BNB/LR/LRD/LRDC">
							<xsl:value-of select="concat(normalize-space(schede/BNB/LR/LRD/LRDC), ' ', normalize-space(schede/BNB/LR/LRD/LRDB))" />
						</xsl:when>
						<xsl:otherwise>
							<xsl:value-of select="normalize-space(schede/BNB/LR/LRD/LRDB)" />
						</xsl:otherwise>
					</xsl:choose>
				</xsl:variable>
				<xsl:variable name="endDate">
					<xsl:choose>
						<xsl:when test="schede/BNB/LR/LRD/LRDE">
							<xsl:value-of select="concat(normalize-space(schede/BNB/LR/LRD/LRDE), ' ', normalize-space(schede/BNB/LR/LRD/LRDD))" />
						</xsl:when>
						<xsl:otherwise>
							<xsl:value-of select="normalize-space(schede/BNB/LR/LRD/LRDD)" />
						</xsl:otherwise>
					</xsl:choose>
				</xsl:variable>
				<rdf:Description>
					<xsl:attribute name="rdf:about">
		        		<xsl:value-of select="concat($NS, 'TimeInterval/', arco-fn:urify(concat($startDate, '-',  $endDate)))" />
					</xsl:attribute>
					<rdf:type>
						<xsl:attribute name="rdf:resource">
		                    <xsl:value-of select="'https://w3id.org/italia/onto/TI/TimeInterval'" />
		                </xsl:attribute>
					</rdf:type>
					<rdfs:label>
						<xsl:value-of select="concat($startDate, ' - ', $endDate)" />
					</rdfs:label>
					<l0:name>
						<xsl:value-of select="concat($startDate, ' - ', $endDate)" />
					</l0:name>
					<arco-arco:startTime>
						<xsl:value-of select="$startDate" />
					</arco-arco:startTime>
					<arco-arco:endTime>
						<xsl:value-of select="$endDate" />
					</arco-arco:endTime>
				</rdf:Description>
			</xsl:if>
	<xsl:if test="schede/BNB/LR/LRD/LRDF">
				<rdf:Description>
					<xsl:attribute name="rdf:about">
		        		<xsl:value-of select="concat($NS, 'TimeInterval/', arco-fn:urify(concat(schede/BNB/LR/LRD/LRDF, '-',  schede/BNB/LR/LRD/LRDF)))" />
					</xsl:attribute>
					<rdf:type>
						<xsl:attribute name="rdf:resource">
		                    <xsl:value-of select="'https://w3id.org/italia/onto/TI/TimeInterval'" />
		                </xsl:attribute>
					</rdf:type>
					<rdfs:label>
						<xsl:value-of select="concat(schede/BNB/LR/LRD/LRDF, ' - ', schede/BNB/LR/LRD/LRDF)" />
					</rdfs:label>
					<l0:name>
						<xsl:value-of select="concat(schede/BNB/LR/LRD/LRDF, ' - ', schede/BNB/LR/LRD/LRDF)" />
					</l0:name>
					<arco-arco:startTime>
						<xsl:value-of select="schede/BNB/LR/LRD/LRDF" />
					</arco-arco:startTime>
					<arco-arco:endTime>
						<xsl:value-of select="schede/BNB/LR/LRD/LRDF" />
					</arco-arco:endTime>
				</rdf:Description>
			</xsl:if>	
				
										<!-- Collecting Site as individual -->
	<xsl:if test="schede/BNB/LR/LRI">
		<rdf:Description>
			<xsl:attribute name="rdf:about">
				<xsl:value-of select="concat('https://w3id.org/arco/resource/CollectingSite/', $itemURI)" />
			</xsl:attribute>
			<rdf:type>
				<xsl:attribute name="rdf:resource">
		        	<xsl:value-of select="'https://w3id.org/arco/ontology/movable-property/CollectingSite'" />
				</xsl:attribute>
			</rdf:type>
			<rdfs:label xml:lang="it">
				<xsl:value-of select="concat('Luogo di raccolta del bene ', $itemURI)" />
			</rdfs:label>
			<l0:name xml:lang="it">
				<xsl:value-of select="concat('Luogo di raccolta del bene ', $itemURI)" />
			</l0:name>
			<rdfs:label xml:lang="en">
				<xsl:value-of select="concat('Collecting site of cultural property ', $itemURI)" />
			</rdfs:label>
			<l0:name xml:lang="en">
				<xsl:value-of select="concat('Collecting site of cultural property ', $itemURI)" />
			</l0:name>
			<xsl:if test="schede/BNB/LR/LRI/LRIP">
				<arco-dd:hasOrientation>
					<xsl:value-of select="concat('https://w3id.org/arco/resource/Orientation/', arco-fn:urify(normalize-space(schede/BNB/LR/LRI/LRIP)))" />
				</arco-dd:hasOrientation>
			</xsl:if>
			<xsl:if test="schede/BNB/LR/LRI/LRID">
				<arco-mp:hasFluidDynamism>
					<xsl:value-of select="concat('https://w3id.org/arco/resource/FluidDynamism/', arco-fn:urify(normalize-space(schede/BNB/LR/LRI/LRID)))" />
				</arco-mp:hasFluidDynamism>
			</xsl:if>
			<xsl:if test="schede/BNB/LR/LRI/LRIS">
				<arco-mp:hasShadeTolerance>
					<xsl:value-of select="concat('https://w3id.org/arco/resource/ShadeTolerance/', arco-fn:urify(normalize-space(schede/BNB/LR/LRI/LRIS)))" />
				</arco-mp:hasShadeTolerance>
			</xsl:if>
			<xsl:if test="schede/BNB/LR/LRI/LRIE">
				<arco-core:note>
					<xsl:value-of select="normalize-space(schede/BNB/LR/LRI/LRIE)" />
				</arco-core:note>
			</xsl:if>
			<xsl:if test="schede/BNB/LR/LRI/LRIH or schede/BNB/LR/LRI/LRIT or schede/BNB/LR/LRI/LRIA or schede/BNB/LR/LRI/LRIO">
				<arco-dd:hasMeasurementCollection>
					<xsl:value-of select="concat($NS, 'MeasurementCollection/', $itemURI, 'collecting-site-measurement-collection')" />
				</arco-dd:hasMeasurementCollection>
			</xsl:if>
			<xsl:if test="schede/BNB/LR/LRI/LRIR">
				<arco-mp:hasSubstrate>
					<xsl:value-of select="concat($NS, 'Substrate/', arco-fn:urify(normalize-space(schede/BNB/LR/LRI/LRIR)))" />
				</arco-mp:hasSubstrate>
			</xsl:if>
			<xsl:for-each select="schede/BNB/LR/LRV">
				<arco-location:atLocation>
					<xsl:attribute name="rdf:resource">
	            		<xsl:value-of 	select="concat($NS, 'Feature/', arco-fn:arcofy(normalize-space(schede/BNB/LR/LRV)))" />
	                </xsl:attribute>
				</arco-location:atLocation>
			</xsl:for-each>
		</rdf:Description>
	</xsl:if>
										<!-- use location LRV as an individual -->
	<xsl:for-each select="schede/BNB/LR/LRV">
		<rdf:Description>
			<xsl:attribute name="rdf:about">
		    	<xsl:value-of 	select="concat($NS, 'Feature/', arco-fn:arcofy(normalize-space(schede/BNB/LR/LRV)))" />
			</xsl:attribute>
			<rdf:type>
				<xsl:attribute name="rdf:resource">
					<xsl:value-of select="'https://w3id.org/italia/onto/CLV/Feature'" />
				</xsl:attribute>
			</rdf:type>
			<rdfs:label>
				<xsl:value-of select="concat(normalize-space(./LRVS), ' - ', normalize-space(./LRVP),  ' - ', normalize-space(./LRVC))" />
			</rdfs:label>
			<l0:name>
				<xsl:value-of select="concat(normalize-space(./LRVS), ' - ', normalize-space(./LRVP),  ' - ', normalize-space(./LRVC))" />
			</l0:name>			
		</rdf:Description>
	</xsl:for-each>
								<!-- Measurement collection as individual -->
	<xsl:if test="schede/BNB/LR/LRI/LRIH or schede/BNB/LR/LRI/LRIT or schede/BNB/LR/LRI/LRIA">
				<rdf:Description>
					<xsl:attribute name="rdf:about">
		                <xsl:value-of select="concat($NS, 'MeasurementCollection/', $itemURI, 'collecting-site-measurement-collection')" />
	                </xsl:attribute>
					<rdf:type>
						<xsl:attribute name="rdf:resource">
	                		<xsl:value-of select="'https://w3id.org/arco/ontology/context-description/MeasurementCollection'" />
	                	</xsl:attribute>
					</rdf:type>
					<rdfs:label xml:lang="it">
								<xsl:value-of
									select="'Misure del luogo di raccolta'" />
					</rdfs:label>
					<l0:name xml:lang="it">
						<xsl:value-of
							select="'Misure del luogo di raccolta'" />
					</l0:name>
					<rdfs:label xml:lang="en">
						<xsl:value-of select="'Measuerements of collecting site'" />
					</rdfs:label>
					<l0:name xml:lang="en">
						<xsl:value-of select="'Measuerements of collecting site'" />
					</l0:name>
					<xsl:if test="schede/BNB/LR/LRI/LRIT">
						<arco-dd:hasMeasurement>
							<xsl:attribute name="rdf:resource">
								<xsl:value-of select="concat($NS, 'Measurement/CollectingSite/', $itemURI, '-temperature')" />
							</xsl:attribute>
						</arco-dd:hasMeasurement>
					</xsl:if>
					<xsl:if test="schede/BNB/LR/LRI/LRIH">
						<arco-dd:hasMeasurement>
							<xsl:attribute name="rdf:resource">
								<xsl:value-of select="concat($NS, 'Measurement/CollectingSite/', $itemURI, '-ph')" />
							</xsl:attribute>
						</arco-dd:hasMeasurement>
					</xsl:if>
					<xsl:if test="schede/BNB/LR/LRI/LRIO">
						<arco-dd:hasMeasurement>
							<xsl:attribute name="rdf:resource">
								<xsl:value-of select="concat($NS, 'Measurement/CollectingSite/', $itemURI, '-depth')" />
							</xsl:attribute>
						</arco-dd:hasMeasurement>
					</xsl:if>
					<xsl:if test="schede/BNB/LR/LRI/LRIA">
						<arco-dd:hasMeasurement>
							<xsl:attribute name="rdf:resource">
								<xsl:value-of select="concat($NS, 'Measurement/CollectingSite/', $itemURI, '-altitude')" />
							</xsl:attribute>
						</arco-dd:hasMeasurement>
					</xsl:if>		
				</rdf:Description>
		</xsl:if>	
						<!-- measurement as individual -->
	<xsl:if test="schede/BNB/LR/LRI/LRIO">
		<rdf:Description>
			<xsl:attribute name="rdf:about"
				select="concat($NS, 'Measurement/CollectingSite/', $itemURI, '-depth')" />
			<rdf:type rdf:resource="https://w3id.org/arco/ontology/denotative-description/Measurement" />
			<rdfs:label xml:lang="en">
				<xsl:value-of select="concat('Measurement of collecting site of ', $itemURI, ': ', schede/BNB/LR/LRI/LRIO)" />
			</rdfs:label>
			<l0:name xml:lang="en">
				<xsl:value-of select="concat('Measurement of collecting site of ', $itemURI, ': ', schede/BNB/LR/LRI/LRIO)" />
			</l0:name>
			<rdfs:label xml:lang="it">
				<xsl:value-of select="concat('Misura del luogo di raccolta di ', $itemURI, ': ', schede/BNB/LR/LRI/LRIO)" />
			</rdfs:label>
			<l0:name xml:lang="it">
				<xsl:value-of select="concat('Misura del luogo di raccolta di ', $itemURI, ': ', schede/BNB/LR/LRI/LRIO)" />
			</l0:name>
			<arco-dd:hasMeasurementType>
				<xsl:attribute name="rdf:resource"
					select="concat('https://w3id.org/arco/ontology/denotative-description/', 'Depth')" />
			</arco-dd:hasMeasurementType>
		</rdf:Description>
	</xsl:if>
	<xsl:if test="schede/BNB/LR/LRI/LRIT">
		<rdf:Description>
			<xsl:attribute name="rdf:about"
				select="concat($NS, 'Measurement/CollectingSite/', $itemURI, '-temperature')" />
			<rdf:type rdf:resource="https://w3id.org/arco/ontology/denotative-description/Measurement" />
			<rdfs:label xml:lang="en">
				<xsl:value-of select="concat('Measurement of collecting site of ', $itemURI, ': ', schede/BNB/LR/LRI/LRIT)" />
			</rdfs:label>
			<l0:name xml:lang="en">
				<xsl:value-of select="concat('Measurement of collecting site of ', $itemURI, ': ', schede/BNB/LR/LRI/LRIT)" />
			</l0:name>
			<rdfs:label xml:lang="it">
				<xsl:value-of select="concat('Misura del luogo di raccolta di ', $itemURI, ': ', schede/BNB/LR/LRI/LRIT)" />
			</rdfs:label>
			<l0:name xml:lang="it">
				<xsl:value-of select="concat('Misura del luogo di raccolta di ', $itemURI, ': ', schede/BNB/LR/LRI/LRIT)" />
			</l0:name>
			<arco-dd:hasMeasurementType>
				<xsl:attribute name="rdf:resource"
					select="concat('https://w3id.org/arco/ontology/denotative-description/', 'Temperature')" />
			</arco-dd:hasMeasurementType>
		</rdf:Description>
	</xsl:if>	
	<xsl:if test="schede/BNB/LR/LRI/LRIH">
		<rdf:Description>
			<xsl:attribute name="rdf:about"
				select="concat($NS, 'Measurement/CollectingSite/', $itemURI, '-ph')" />
			<rdf:type rdf:resource="https://w3id.org/arco/ontology/denotative-description/Measurement" />
			<rdfs:label xml:lang="en">
				<xsl:value-of select="concat('Measurement of collecting site of ', $itemURI, ': ', schede/BNB/LR/LRI/LRIH)" />
			</rdfs:label>
			<l0:name xml:lang="en">
				<xsl:value-of select="concat('Measurement of collecting site of ', $itemURI, ': ', schede/BNB/LR/LRI/LRIH)" />
			</l0:name>
			<rdfs:label xml:lang="it">
				<xsl:value-of select="concat('Misura del luogo di raccolta di ', $itemURI, ': ', schede/BNB/LR/LRI/LRIH)" />
			</rdfs:label>
			<l0:name xml:lang="it">
				<xsl:value-of select="concat('Misura del luogo di raccolta di ', $itemURI, ': ', schede/BNB/LR/LRI/LRIH)" />
			</l0:name>
			<arco-dd:hasMeasurementType>
				<xsl:attribute name="rdf:resource"
					select="concat('https://w3id.org/arco/ontology/denotative-description/', 'Temperature')" />
			</arco-dd:hasMeasurementType>			
		</rdf:Description>
	</xsl:if>				
	<xsl:if test="schede/BNB/LR/LRI/LRIA">
		<rdf:Description>
			<xsl:attribute name="rdf:about"
				select="concat($NS, 'Measurement/CollectingSite/', $itemURI, '-altitude')" />
			<rdf:type rdf:resource="https://w3id.org/arco/ontology/denotative-description/Measurement" />
			<rdfs:label xml:lang="en">
				<xsl:value-of select="concat('Measurement of collecting site of ', $itemURI, ': ', schede/BNB/LR/LRI/LRIA)" />
			</rdfs:label>
			<l0:name xml:lang="en">
				<xsl:value-of select="concat('Measurement of collecting site of ', $itemURI, ': ', schede/BNB/LR/LRI/LRIA)" />
			</l0:name>
			<rdfs:label xml:lang="it">
				<xsl:value-of select="concat('Misura del luogo di raccolta di ', $itemURI, ': ', schede/BNB/LR/LRI/LRIA)" />
			</rdfs:label>
			<l0:name xml:lang="it">
				<xsl:value-of select="concat('Misura del luogo di raccolta di ', $itemURI, ': ', schede/BNB/LR/LRI/LRIA)" />
			</l0:name>
			<arco-dd:hasMeasurementType>
				<xsl:attribute name="rdf:resource"
					select="concat('https://w3id.org/arco/ontology/denotative-description/', 'Altitude')" />
			</arco-dd:hasMeasurementType>
		</rdf:Description>
	</xsl:if>		
										<!-- Substrate as individual -->	
	<xsl:if test="schede/BNB/LR/LRI/LRIR">
				<rdf:Description>
					<xsl:attribute name="rdf:about">
		        		<xsl:value-of select="concat($NS, 'Substrate/', arco-fn:urify(normalize-space(schede/BNB/LR/LRI/LRIR)))" />
					</xsl:attribute>
					<rdf:type>
						<xsl:attribute name="rdf:resource">
		                    <xsl:value-of select="'https://w3id.org/arco/ontology/movable-property/Substrate'" />
		                </xsl:attribute>
					</rdf:type>
					<rdfs:label>
							<xsl:value-of select="schede/BNB/LR/LRI/LRIR" />
					</rdfs:label>
					<l0:name>
						<xsl:value-of select="schede/BNB/LR/LRI/LRIR" />
					</l0:name>
					<xsl:if test="schede/BNB/LR/LRI/LRII">
					<arco-mp:hasIncline>
						<xsl:value-of select="concat($NS, 'Incline/', arco-fn:urify(normalize-space(schede/BNB/LR/LRI/LRII)))" />
					</arco-mp:hasIncline>
					</xsl:if>
					<xsl:if test="schede/BNB/LR/LRI/LRIB">
						<arco-mp:hasNaturalEnvironment>
							<xsl:value-of select="concat($NS, 'NaturalEnvironment/', arco-fn:urify(normalize-space(schede/BNB/LR/LRI/LRIB)))" />
						</arco-mp:hasNaturalEnvironment>
					</xsl:if>
					<xsl:if test="schede/BNB/LR/LRI/LRIJ">
						<arco-mp:hasSubstrateType>
							<xsl:value-of select="concat($NS, 'SubstrateType/', arco-fn:urify(normalize-space(schede/BNB/LR/LRI/LRIJ)))" />
						</arco-mp:hasSubstrateType>
					</xsl:if>	
				</rdf:Description>
			</xsl:if>
							<!-- Substrate type as individual -->	
	<xsl:if test="schede/BNB/LR/LRI/LRIJ">
				<rdf:Description>
					<xsl:attribute name="rdf:about">
		        		<xsl:value-of select="concat($NS, 'SubstrateType/', arco-fn:urify(normalize-space(schede/BNB/LR/LRI/LRIJ)))" />
					</xsl:attribute>
					<rdf:type>
						<xsl:attribute name="rdf:resource">
		                    <xsl:value-of select="'https://w3id.org/arco/ontology/movable-property/SubstrateType'" />
		                </xsl:attribute>
					</rdf:type>
					<rdfs:label>
								<xsl:value-of select="schede/BNB/LR/LRI/LRIJ" />
					</rdfs:label>
					<l0:name>
						<xsl:value-of select="schede/BNB/LR/LRI/LRIJ" />
					</l0:name>
				</rdf:Description>
			</xsl:if>
										<!-- NaturalEnvironment as individual -->	
	<xsl:if test="schede/BNB/LR/LRI/LRIB">
				<rdf:Description>
					<xsl:attribute name="rdf:about">
		        		<xsl:value-of select="concat($NS, 'NaturalEnvironment/', arco-fn:urify(normalize-space(schede/BNB/LR/LRI/LRIB)))" />
					</xsl:attribute>
					<rdf:type>
						<xsl:attribute name="rdf:resource">
		                    <xsl:value-of select="'https://w3id.org/arco/ontology/movable-property/NaturalEnvironment'" />
		                </xsl:attribute>
					</rdf:type>
					<rdfs:label>
								<xsl:value-of select="schede/BNB/LR/LRI/LRIB" />
					</rdfs:label>
					<l0:name>
						<xsl:value-of select="schede/BNB/LR/LRI/LRIB" />
					</l0:name>
				</rdf:Description>
			</xsl:if>
							<!-- Incline as individual -->	
	<xsl:if test="schede/BNB/LR/LRI/LRII">
				<rdf:Description>
					<xsl:attribute name="rdf:about">
		        		<xsl:value-of select="concat($NS, 'Incline/', arco-fn:urify(normalize-space(schede/BNB/LR/LRI/LRII)))" />
					</xsl:attribute>
					<rdf:type>
						<xsl:attribute name="rdf:resource">
		                    <xsl:value-of select="'https://w3id.org/arco/ontology/movable-property/Incline'" />
		                </xsl:attribute>
					</rdf:type>
					<rdfs:label>
								<xsl:value-of select="schede/BNB/LR/LRI/LRII" />
					</rdfs:label>
					<l0:name>
						<xsl:value-of select="schede/BNB/LR/LRI/LRII" />
					</l0:name>
				</rdf:Description>
			</xsl:if>
										<!-- Orientation as individual -->	
	<xsl:if test="schede/BNB/LR/LRI/LRIP">
				<rdf:Description>
					<xsl:attribute name="rdf:about">
		        		<xsl:value-of select="concat('https://w3id.org/arco/resource/Orientation/', arco-fn:urify(normalize-space(schede/BNB/LR/LRI/LRIP)))" />
					</xsl:attribute>
					<rdf:type>
						<xsl:attribute name="rdf:resource">
		                    <xsl:value-of select="'https://w3id.org/arco/ontology/denotative-description/Orientation'" />
		                </xsl:attribute>
					</rdf:type>
					<rdfs:label>
								<xsl:value-of select="schede/BNB/LR/LRI/LRIP" />
					</rdfs:label>
					<l0:name>
						<xsl:value-of select="schede/BNB/LR/LRI/LRIP" />
					</l0:name>
				</rdf:Description>
			</xsl:if>
									<!-- Fluid dynamism as individual  -->
	<xsl:if test="schede/BNB/LR/LRI/LRID">
				<rdf:Description>
					<xsl:attribute name="rdf:about">
		        		<xsl:value-of select="concat('https://w3id.org/arco/resource/FluidDynamism/', arco-fn:urify(normalize-space(schede/BNB/LR/LRI/LRID)))" />
					</xsl:attribute>
					<rdf:type>
						<xsl:attribute name="rdf:resource">
		                    <xsl:value-of select="'https://w3id.org/arco/ontology/movable-property/FluidDynamism'" />
		                </xsl:attribute>
					</rdf:type>
					<rdfs:label>
								<xsl:value-of select="schede/BNB/LR/LRI/LRID" />
					</rdfs:label>
					<l0:name>
						<xsl:value-of select="schede/BNB/LR/LRI/LRID" />
					</l0:name>
				</rdf:Description>
			</xsl:if>	
							<!-- Shade tolerance as individual  -->
	<xsl:if test="schede/BNB/LR/LRI/LRIS">
				<rdf:Description>
					<xsl:attribute name="rdf:about">
		        		<xsl:value-of select="concat('https://w3id.org/arco/resource/ShadeTolerance/', arco-fn:urify(normalize-space(schede/BNB/LR/LRI/LRIS)))" />
					</xsl:attribute>
					<rdf:type>
						<xsl:attribute name="rdf:resource">
		                    <xsl:value-of select="'https://w3id.org/arco/ontology/movable-property/ShadeTolerance'" />
		                </xsl:attribute>
					</rdf:type>
					<rdfs:label>
								<xsl:value-of select="schede/BNB/LR/LRI/LRIS" />
					</rdfs:label>
					<l0:name>
						<xsl:value-of select="schede/BNB/LR/LRI/LRIS" />
					</l0:name>
				</rdf:Description>
			</xsl:if>

								
				
								<!-- Botanical Revision as individual  -->
 	<xsl:for-each select="schede/BNB/RB">
		<rdf:Description>
			<xsl:attribute name="rdf:about">
				<xsl:value-of select="concat('https://w3id.org/arco/resource/BotanicalRevision/', $itemURI, '-', position())" />
			</xsl:attribute>
	        <rdf:type>
				<xsl:attribute name="rdf:resource">
					<xsl:value-of select="'https://w3id.org/arco/ontology/movable-property/BotanicalRevision'" />
	            </xsl:attribute>
			</rdf:type>
			<rdfs:label xml:lang="it">
				<xsl:value-of 	select="concat('Revisione botanica del bene ', $itemURI)" />
			</rdfs:label>
			<l0:name xml:lang="it">
				<xsl:value-of select="concat('Revisione botanica del bene ', $itemURI)" />
			</l0:name>
			<rdfs:label xml:lang="en">
				<xsl:value-of select="concat('Botanical revision of cultural property ', $itemURI)" />
			</rdfs:label>
			<l0:name xml:lang="en">
				<xsl:value-of 	select="concat('Botanical revision of cultural property ', $itemURI)" />
			</l0:name>
			<xsl:if test="./RBR/RBRA">
				<arco-core:involvesAgent>
            		<xsl:value-of select="concat($NS, 'Agent/', arco-fn:arcofy(./RBRA))" />					
				</arco-core:involvesAgent>	
			</xsl:if>
			<xsl:if test="./RBR/RBRB">	
				<arco-cd:hasBibliography>
					<xsl:value-of select="concat($NS, 'Bibliography/', $itemURI, '-botanical-revision-bibliography-', position())" />
				</arco-cd:hasBibliography>
			</xsl:if>
			<xsl:if test="./RBR/RBRT">	
				<arco-core:hasType>
					<xsl:value-of select="concat($NS, 'BotanicalRevisionType/', arco-fn:urify(./RBR/RBRT))" />
				</arco-core:hasType>
			</xsl:if>
			<xsl:if test="./RBA">
				<arco-core:note>
					<xsl:value-of select="normalize-space(./RBA)" />
				</arco-core:note>
			</xsl:if>					
			<xsl:if test="./RBR/RBRN or ./RBN">
				<arco-core:hasConsequence>
		        	<xsl:value-of select="concat('https://w3id.org/arco/resource/ClassificationInTime/',$itemURI, '-revised-classification-', position())" />
				</arco-core:hasConsequence>
			</xsl:if>	
			<xsl:if test="./RBD/RBDB">
				<xsl:variable name="startDate">
					<xsl:choose>
						<xsl:when test="./RBD/RBDC">
							<xsl:value-of 	select="concat(normalize-space(./RBD/RBDC), ' ', normalize-space(./RBD/RBDB))" />
						</xsl:when>
						<xsl:otherwise>
							<xsl:value-of select="normalize-space(./RBD/RBDB)" />
						</xsl:otherwise>
					</xsl:choose>
				</xsl:variable>
				<xsl:variable name="endDate">
					<xsl:choose>
						<xsl:when test="./RBD/RBDE">
							<xsl:value-of select="concat(normalize-space(./RBD/RBDE), ' ', normalize-space(./RBD/RBDD))" />
						</xsl:when>
						<xsl:otherwise>
							<xsl:value-of select="normalize-space(./RBD/RBDD)" />
						</xsl:otherwise>
					</xsl:choose>
				</xsl:variable>
				<tiapit:atTime>
					<xsl:attribute name="rdf:resource">
		            	<xsl:value-of select="concat($NS, 'TimeInterval/', arco-fn:urify(concat($startDate, '-',  $endDate)))" />
					</xsl:attribute>
				</tiapit:atTime>
			</xsl:if>
			<xsl:if test="./RBD/RBDF">
				<tiapit:atTime>
					<xsl:attribute name="rdf:resource">
		        		<xsl:value-of 	select="concat($NS, 'TimeInterval/', arco-fn:urify(concat(./RBD/RBDF, '-',  ./RBD/RBDF)))" />
					</xsl:attribute>
				</tiapit:atTime>
			</xsl:if>
		</rdf:Description>
	</xsl:for-each>
				
							<!-- Time Interval as individual -->
	<xsl:if test="schede/BNB/RB/RBD/RBDB">
		<xsl:variable name="startDate">
			<xsl:choose>
				<xsl:when test="schede/BNB/RB/RBD/RBDC">
					<xsl:value-of select="concat(normalize-space(schede/BNB/RB/RBD/RBDC), ' ', normalize-space(schede/BNB/RB/RBD/RBDB))" />
				</xsl:when>
				<xsl:otherwise>
					<xsl:value-of select="normalize-space(schede/BNB/RB/RBD/RBDB)" />
				</xsl:otherwise>
			</xsl:choose>
		</xsl:variable>
		<xsl:variable name="endDate">
			<xsl:choose>
				<xsl:when test="schede/BNB/RB/RBD/RBDE">
					<xsl:value-of select="concat(normalize-space(schede/BNB/RB/RBD/RBDE), ' ', normalize-space(schede/BNB/RB/RBD/RBDD))" />
				</xsl:when>
				<xsl:otherwise>
					<xsl:value-of select="normalize-space(schede/BNB/RB/RBD/RBDD)" />
				</xsl:otherwise>
			</xsl:choose>
		</xsl:variable>
		<rdf:Description>
			<xsl:attribute name="rdf:about">
		    	<xsl:value-of select="concat($NS, 'TimeInterval/', arco-fn:urify(concat($startDate, '-',  $endDate)))" />
			</xsl:attribute>
			<rdf:type>
				<xsl:attribute name="rdf:resource">
		        	<xsl:value-of select="'https://w3id.org/italia/onto/TI/TimeInterval'" />
				</xsl:attribute>
			</rdf:type>
			<rdfs:label>
				<xsl:value-of select="concat($startDate, ' - ', $endDate)" />
			</rdfs:label>
			<l0:name>
				<xsl:value-of select="concat($startDate, ' - ', $endDate)" />
			</l0:name>
			<arco-arco:startTime>
				<xsl:value-of select="$startDate" />
			</arco-arco:startTime>
			<arco-arco:endTime>
				<xsl:value-of select="$endDate" />
			</arco-arco:endTime>
		</rdf:Description>
	</xsl:if>

	<xsl:if test="schede/BNB/RB/RBD/RBDF">
		<rdf:Description>
			<xsl:attribute name="rdf:about">
				<xsl:value-of select="concat($NS, 'TimeInterval/', arco-fn:urify(concat(schede/BNB/RB/RBD/RBDF, '-',  schede/BNB/RB/RBD/RBDF)))" />
			</xsl:attribute>
			<rdf:type>
				<xsl:attribute name="rdf:resource">
		        	<xsl:value-of select="'https://w3id.org/italia/onto/TI/TimeInterval'" />
				</xsl:attribute>
			</rdf:type>
			<rdfs:label>
				<xsl:value-of select="concat(schede/BNB/RB/RBD/RBDF, ' - ', schede/BNB/RB/RBD/RBDF)" />
			</rdfs:label>
			<l0:name>
				<xsl:value-of select="concat(schede/BNB/RB/RBD/RBDF, ' - ', schede/BNB/RB/RBD/RBDF)" />
			</l0:name>
			<arco-arco:startTime>
				<xsl:value-of select="schede/BNB/RB/RBD/RBDF" />
			</arco-arco:startTime>
			<arco-arco:endTime>
				<xsl:value-of select="schede/BNB/RB/RBD/RBDF" />
			</arco-arco:endTime>
		</rdf:Description>
	</xsl:if>

							<!--Botanical Revision Bibliography as individual -->
	<xsl:for-each select="schede/BNB/RB/RBR/RBRB">
		<rdf:Description>
			<xsl:attribute name="rdf:about">
				<xsl:value-of select="concat($NS, 'Bibliography/', $itemURI, '-botanical-revision-bibliography-', position())" />
	        </xsl:attribute>
			<rdf:type>
				<xsl:attribute name="rdf:resource">
	            	<xsl:value-of select="'https://w3id.org/arco/ontology/context-description/Bibliography'" />
	            </xsl:attribute>
			</rdf:type>
					<rdfs:label xml:lang="it">
								<xsl:value-of
									select="concat('Bibliografia relativa alla revisione botanica del bene ', $itemURI)" />
					</rdfs:label>
					<l0:name xml:lang="it">
						<xsl:value-of
							select="concat('Bibliografia relativa alla revisione botanica del bene ', $itemURI)" />
					</l0:name>
					<rdfs:label xml:lang="en">
								<xsl:value-of
									select="concat('Bibliography about botanical revision of cultural property ', $itemURI)" />
					</rdfs:label>
					<l0:name xml:lang="en">
						<xsl:value-of
								select="concat('Bibliography about botanical revision of cultural property ', $itemURI)" />
					</l0:name>
					<arco-cd:completeBibliographicReference>
						<xsl:value-of select="normalize-space(.)" />
					</arco-cd:completeBibliographicReference>			
				</rdf:Description>
	</xsl:for-each>
								<!--TypeSpecimen Bibliography as individual -->
	<xsl:if test="schede/BNB/SB/TBI/TBIL">
		<rdf:Description>
			<xsl:attribute name="rdf:about">
				<xsl:value-of select="concat($NS, 'Bibliography/', $itemURI, '-TypeSpecimen-bibliography')" />
	        </xsl:attribute>
					<rdf:type>
						<xsl:attribute name="rdf:resource">
	                		<xsl:value-of select="'https://w3id.org/arco/ontology/context-description/Bibliography'" />
	                	</xsl:attribute>
					</rdf:type>
					<rdfs:label xml:lang="it">
								<xsl:value-of
									select="concat('Bibliografia relativa al tipo nomenclaturale del bene ', $itemURI)" />
					</rdfs:label>
					<l0:name xml:lang="it">
						<xsl:value-of
							select="concat('Bibliografia relativa al tipo nomenclaturale del bene ', $itemURI)" />
					</l0:name>
					<rdfs:label xml:lang="en">
								<xsl:value-of
									select="concat('Bibliography about type specimen of cultural property ', $itemURI)" />
					</rdfs:label>
					<l0:name xml:lang="en">
						<xsl:value-of
								select="concat('Bibliography about type specime of cultural property ', $itemURI)" />
					</l0:name>
					<arco-cd:completeBibliographicReference>
						<xsl:value-of select="normalize-space(schede/BNB/SB/TBI/TBIL)" />
					</arco-cd:completeBibliographicReference>			
				</rdf:Description>
	</xsl:if>
							<!-- biological-taxon-bibliography as individual  -->
		<xsl:if test="schede/BNB/SB/SBS/SBSC and (not(starts-with(lower-case(normalize-space(schede/BNB/SB/SBS/SBSC)), 'nr')) and not(starts-with(lower-case(normalize-space(schede/BNB/SB/SBS/SBSC)), 'n.r')))">
				<rdf:Description>
					<xsl:attribute name="rdf:about">
		                <xsl:value-of select="concat($NS, 'Bibliography/', $itemURI, '-biological-taxon-bibliography')" />
	                </xsl:attribute>
					<rdf:type>
						<xsl:attribute name="rdf:resource">
	                		<xsl:value-of select="'https://w3id.org/arco/ontology/context-description/Bibliography'" />
	                	</xsl:attribute>
					</rdf:type>
					<rdfs:label xml:lang="it">
								<xsl:value-of
									select="concat('Bibliografia relativa al taxon biologico del bene ', $itemURI)" />
					</rdfs:label>
					<l0:name xml:lang="it">
						<xsl:value-of
							select="concat('Bibliografia relativa al taxon biologico del bene ', $itemURI)" />
					</l0:name>
					<rdfs:label xml:lang="en">
								<xsl:value-of
									select="concat('Bibliography about biological taxon of cultural property ', $itemURI)" />
					</rdfs:label>
					<l0:name xml:lang="en">
						<xsl:value-of
								select="concat('Bibliography about biological taxon of cultural property ', $itemURI)" />
					</l0:name>
					<arco-cd:completeBibliographicReference>
						<xsl:value-of select="normalize-space(schede/BNB/SB/SBS/SBSC)" />
					</arco-cd:completeBibliographicReference>			
				</rdf:Description>
		</xsl:if>

							
								<!-- Botanical Revision type as individual  -->
	<xsl:for-each select="schede/BNB/RB/RBR/RBRT">	
		<rdf:Description>
			<xsl:attribute name="rdf:about">
				<xsl:value-of select="concat($NS, 'BotanicalRevisionType/', arco-fn:urify(.))" />
			</xsl:attribute>
	        <rdf:type>
				<xsl:attribute name="rdf:resource">
	            	<xsl:value-of select="'https://w3id.org/arco/ontology/movable-property/BotanicalRevisionType'" />
				</xsl:attribute>
			</rdf:type>
			<rdfs:label xml:lang="it">
				<xsl:value-of select="schede/BNB/RB/RBR/RBRT" />
			</rdfs:label>
			<l0:name xml:lang="it">
				<xsl:value-of select="schede/BNB/RB/RBR/RBRT" />
			</l0:name>	
		</rdf:Description>
	</xsl:for-each>				
										
							<!-- Preparation as individual  -->
	<xsl:for-each select="schede/BNB/DB/DBR">
				<rdf:Description>
					<xsl:attribute name="rdf:about">
		                <xsl:value-of select="concat('https://w3id.org/arco/resource/Preparation/', $itemURI, '-', position())" />
	                </xsl:attribute>
					<rdf:type>
						<xsl:attribute name="rdf:resource">
	                		<xsl:value-of select="'https://w3id.org/arco/ontology/movable-property/Preparation'" />
	                	</xsl:attribute>
					</rdf:type>
					<rdfs:label xml:lang="it">
								<xsl:value-of
									select="concat('Preparato ', position(), ' relativo al bene ', $itemURI)" />
					</rdfs:label>
					<l0:name xml:lang="it">
						<xsl:value-of
							select="concat('Preparato ', position(), ' relativo al bene ', $itemURI)" />
					</l0:name>
					<rdfs:label xml:lang="en">
								<xsl:value-of
									select="concat('Preparation ', position(), ' related to cultural property ', $itemURI)" />
					</rdfs:label>
					<l0:name xml:lang="en">
						<xsl:value-of
								select="concat('Preparation ', position(), ' related to cultural property ', $itemURI)" />
					</l0:name>
					<xsl:if test="./DBRA">
						<arco-cd:hasAuthor>
							<xsl:value-of select="concat($NS, 'Agent/', arco-fn:arcofy(./DBRA))" />
						</arco-cd:hasAuthor>
					</xsl:if>
					<xsl:if test="./DBRT">	
						<arco-core:hasType>
							<xsl:value-of select="concat($NS, 'PreparationType/', arco-fn:urify(./DBRT))" />
						</arco-core:hasType>
					</xsl:if>
					<xsl:if test="./DBRD">
						<arco-mp:manufacturingDate>
							<xsl:value-of select="normalize-space(./DBRD)" />
						</arco-mp:manufacturingDate>
					</xsl:if>
					<xsl:if test="./DBRS">
						<arco-core:description>
							<xsl:value-of select="normalize-space(./DBRS)" />
						</arco-core:description>
					</xsl:if>				
				</rdf:Description>
		</xsl:for-each>
							
							<!-- Preparation type as individual  -->
	<xsl:for-each select="schede/BNB/DB/DBR/DBRT">
				<rdf:Description>
					<xsl:attribute name="rdf:about">
		                <xsl:value-of select="concat($NS, 'PreparationType/', arco-fn:urify(.))" />
	                </xsl:attribute>
					<rdf:type>
						<xsl:attribute name="rdf:resource">
	                		<xsl:value-of select="'https://w3id.org/arco/ontology/movable-property/PreparationType'" />
	                	</xsl:attribute>
					</rdf:type>
					<rdfs:label>
						<xsl:value-of select="." />
					</rdfs:label>
					<l0:name>
						<xsl:value-of select="." />
					</l0:name>		
				</rdf:Description>
		</xsl:for-each>						
							
									<!-- Fruit sample as individual -->
	<xsl:for-each select="schede/BNB/DB/DBC">
		<rdf:Description>
			<xsl:attribute name="rdf:about">
		    	<xsl:value-of select="concat('https://w3id.org/arco/resource/FruitSample/', $itemURI, '-', position())" />
			</xsl:attribute>
			<rdf:type>
				<xsl:attribute name="rdf:resource">
	        		<xsl:value-of select="'https://w3id.org/arco/ontology/movable-property/FruitSample'" />
	            </xsl:attribute>
			</rdf:type>
			<rdfs:label xml:lang="it">
				<xsl:value-of select="concat('Reperto carpologico relativo al bene ', $itemURI)" />
			</rdfs:label>
			<l0:name xml:lang="it">
				<xsl:value-of select="concat('Reperto carpologico relativo al bene ', $itemURI)" />
			</l0:name>
			<rdfs:label xml:lang="en">
				<xsl:value-of select="concat('Fruit sample related to cultural property ', $itemURI)" />
			</rdfs:label>
			<l0:name xml:lang="en">
				<xsl:value-of select="concat('Fruit sample related to cultural property ', $itemURI)" />
			</l0:name>
			<xsl:if test="./DBCA">
				<arco-cd:hasAuthor>
					<xsl:value-of select="concat($NS, 'Agent/', arco-fn:arcofy(./DBCA))" />
				</arco-cd:hasAuthor>
			</xsl:if>
			<xsl:if test="./DBCC">	
				<arco-mp:sampleLocation>
					<xsl:value-of select="normalize-space(./DBCC)" />
				</arco-mp:sampleLocation>
			</xsl:if>
			<xsl:if test="./DBCD">
				<arco-mp:manufacturingDate>
					<xsl:value-of select="normalize-space(./DBCD)" />
				</arco-mp:manufacturingDate>
			</xsl:if>
			<xsl:if test="./DBCE">
				<arco-mp:dateOfLastChangePreservative>
					<xsl:value-of select="normalize-space(./DBCE)" />
				</arco-mp:dateOfLastChangePreservative>
			</xsl:if>
			<xsl:if test="./DBCX">
				<arco-mp:hasPreservationType>
					<xsl:value-of select="concat($NS, 'PreservationType/', arco-fn:urify(./DBCX))" />
				</arco-mp:hasPreservationType>
			</xsl:if>			
		</rdf:Description>
	</xsl:for-each>
							<!-- Preservation Type as individual -->
	<xsl:for-each select="schede/BNB/DB/DBC/DBCX">
				<rdf:Description>
					<xsl:attribute name="rdf:about">
		                <xsl:value-of select="concat($NS, 'PreservationType/', arco-fn:urify(.))" />
	                </xsl:attribute>
					<rdf:type>
						<xsl:attribute name="rdf:resource">
	                		<xsl:value-of select="'https://w3id.org/arco/ontology/movable-property/PreservationType'" />
	                	</xsl:attribute>
					</rdf:type>
					<rdfs:label>
						<xsl:value-of select="." />
					</rdfs:label>
					<l0:name>
						<xsl:value-of select="." />
					</l0:name>
				</rdf:Description>
			</xsl:for-each>
							<!--Wood Sample as individual -->
	<xsl:for-each select="schede/BNB/DB/DBX">
				<rdf:Description>
					<xsl:attribute name="rdf:about">
		                <xsl:value-of select="concat('https://w3id.org/arco/resource/WoodSample/', $itemURI, '-', position())" />
	                </xsl:attribute>
					<rdf:type>
						<xsl:attribute name="rdf:resource">
	                		<xsl:value-of select="'https://w3id.org/arco/ontology/movable-property/WoodSample'" />
	                	</xsl:attribute>
					</rdf:type>
					<rdfs:label xml:lang="it">
						<xsl:value-of select="concat('Reperto xilologico relativo al bene ', $itemURI)" />
					</rdfs:label>
					<l0:name xml:lang="it">
						<xsl:value-of
							select="concat('Reperto xilologico relativo al bene ', $itemURI)" />
					</l0:name>
					<rdfs:label xml:lang="en">
						<xsl:value-of select="concat('Wood sample related to cultural property ', $itemURI)" />
					</rdfs:label>
					<l0:name xml:lang="en">
						<xsl:value-of select="concat('Wood sample related to cultural property ', $itemURI)" />
					</l0:name>
					<xsl:if test="./DBXT">
						<arco-cd:hasAuthor>
							<xsl:value-of select="concat($NS, 'Agent/', arco-fn:arcofy(./DBXT))" />
						</arco-cd:hasAuthor>
					</xsl:if>
					<xsl:if test="./DBXC">	
						<arco-mp:sampleLocation>
							<xsl:value-of select="normalize-space(./DBXC)" />
						</arco-mp:sampleLocation>
					</xsl:if>
					<xsl:if test="./DBXO">
						<arco-mp:manufacturingDate>
							<xsl:value-of select="normalize-space(./DBXO)" />
						</arco-mp:manufacturingDate>
					</xsl:if>
					<xsl:if test="./DBXX">
						<arco-mp:hasSampleForm>
							<xsl:value-of select="concat($NS, 'SampleForm/', arco-fn:urify(./DBXX))" />
						</arco-mp:hasSampleForm>
					</xsl:if>
					<xsl:if test="./DBXA or ./DBXL or ./DBXN or ./DBXD or ./DBXP">
						<arco-cd:hasMeasurementCollection>
							<xsl:value-of select="concat($NS, 'MeasurementCollection/', 'WoodSample', '-', position(), '-related-sample-measurement-collection')" />
						</arco-cd:hasMeasurementCollection>
					</xsl:if>
				</rdf:Description>
		</xsl:for-each>

										<!-- Measurement collection as individual -->
		<xsl:for-each select="schede/BNB/DB/DBX">
				<rdf:Description>
					<xsl:attribute name="rdf:about">
		                <xsl:value-of select="concat($NS, 'MeasurementCollection/', 'WoodSample', '-', position(), '-related-sample-measurement-collection')" />
	                </xsl:attribute>
					<rdf:type>
						<xsl:attribute name="rdf:resource">
	                		<xsl:value-of select="'https://w3id.org/arco/ontology/context-description/MeasurementCollection'" />
	                	</xsl:attribute>
					</rdf:type>
					<rdfs:label xml:lang="it">
								<xsl:value-of select="'Misure del reperto di collezione di xiloteca'" />
					</rdfs:label>
					<l0:name xml:lang="it">
						<xsl:value-of
							select="'Misure del reperto di collezione di xiloteca'" />
					</l0:name>
					<rdfs:label xml:lang="en">
						<xsl:value-of select="'Measuerements of wood sample'" />
					</rdfs:label>
					<l0:name xml:lang="en">
						<xsl:value-of select="'Measuerements of wood sample'" />
					</l0:name>
					<xsl:if test="./DBXA">
						<arco-dd:hasMeasurement>
							<xsl:attribute name="rdf:resource">
								<xsl:value-of select="concat($NS, 'Measurement/WoodSample/', '-', position(), '-height')" />
							</xsl:attribute>
						</arco-dd:hasMeasurement>
					</xsl:if>
					<xsl:if test="./DBXL">
						<arco-dd:hasMeasurement>
							<xsl:attribute name="rdf:resource">
								<xsl:value-of select="concat($NS, 'Measurement/WoodSample/', '-', position(), '-width')" />
							</xsl:attribute>
						</arco-dd:hasMeasurement>
					</xsl:if>
					<xsl:if test="./DBXN">
						<arco-dd:hasMeasurement>
							<xsl:attribute name="rdf:resource">
								<xsl:value-of select="concat($NS, 'Measurement/WoodSample/', '-', position(), '-length')" />
							</xsl:attribute>
						</arco-dd:hasMeasurement>
					</xsl:if>
					<xsl:if test="./DBXD">
						<arco-dd:hasMeasurement>
							<xsl:attribute name="rdf:resource">
								<xsl:value-of select="concat($NS, 'Measurement/WoodSample/', '-', position(), '-diameter')" />
							</xsl:attribute>
						</arco-dd:hasMeasurement>
					</xsl:if>
					<xsl:if test="./DBXP">
						<arco-dd:hasMeasurement>
							<xsl:attribute name="rdf:resource">
								<xsl:value-of select="concat($NS, 'Measurement/WoodSample/', '-', position(), '-weight')" />
							</xsl:attribute>
						</arco-dd:hasMeasurement>
					</xsl:if>					
				</rdf:Description>
		</xsl:for-each>							
							<!-- Sample form as individual -->
		<xsl:for-each select="schede/BNB/DB/DBX/DBXX">
				<rdf:Description>
					<xsl:attribute name="rdf:about">
		                <xsl:value-of select="concat($NS, 'SampleForm/', arco-fn:urify(.))" />
	                </xsl:attribute>
					<rdf:type>
						<xsl:attribute name="rdf:resource">
	                		<xsl:value-of select="'https://w3id.org/arco/ontology/movable-property/SampleForm'" />
	                	</xsl:attribute>
					</rdf:type>
					<rdfs:label xml:lang="it">
						<xsl:value-of select="." />
					</rdfs:label>
					<l0:name xml:lang="it">
						<xsl:value-of
							select="." />
					</l0:name>		
				</rdf:Description>
		</xsl:for-each>
							<!-- Pollen Sample as individual -->
		<xsl:for-each select="schede/BNB/DB/DBP">
				<rdf:Description>
					<xsl:attribute name="rdf:about">
		                <xsl:value-of select="concat('https://w3id.org/arco/resource/PollenSample/', $itemURI, '-', position())" />
	                </xsl:attribute>
					<rdf:type>
						<xsl:attribute name="rdf:resource">
	                		<xsl:value-of select="'https://w3id.org/arco/ontology/movable-property/PollenSample'" />
	                	</xsl:attribute>
					</rdf:type>
					<rdfs:label xml:lang="it">
						<xsl:value-of select="concat('Reperto palinologico relativo al bene ', $itemURI)" />
					</rdfs:label>
					<l0:name xml:lang="it">
						<xsl:value-of
							select="concat('Reperto palinologico relativo al bene ', $itemURI)" />
					</l0:name>
					<rdfs:label xml:lang="en">
						<xsl:value-of select="concat('Pollen sample related to cultural property ', $itemURI)" />
					</rdfs:label>
					<l0:name xml:lang="en">
						<xsl:value-of select="concat('Pollen sample related to cultural property ', $itemURI)" />
					</l0:name>
					<xsl:if test="./DBPA">
						<arco-cd:hasAuthor>
							<xsl:value-of select="concat($NS, 'Agent/', arco-fn:arcofy(./DBPA))" />
						</arco-cd:hasAuthor>
					</xsl:if>
					<xsl:if test="./DBPC">	
						<arco-mp:sampleLocation>
							<xsl:value-of select="normalize-space(./DBPC)" />
						</arco-mp:sampleLocation>
					</xsl:if>
					<xsl:if test="./DBPD">
						<arco-mp:manufacturingDate>
							<xsl:value-of select="normalize-space(./DBPD)" />
						</arco-mp:manufacturingDate>
					</xsl:if>			
				</rdf:Description>
		</xsl:for-each>
							<!-- Seed sample as individual -->
		<xsl:for-each select="schede/BNB/DB/DBS">
				<rdf:Description>
					<xsl:attribute name="rdf:about">
		                <xsl:value-of select="concat('https://w3id.org/arco/resource/SeedSample/', $itemURI, '-', position())" />
	                </xsl:attribute>
					<rdf:type>
						<xsl:attribute name="rdf:resource">
	                		<xsl:value-of select="'https://w3id.org/arco/ontology/movable-property/SeedSample'" />
	                	</xsl:attribute>
					</rdf:type>
					<rdfs:label xml:lang="it">
						<xsl:value-of select="concat('Reperto spermologico relativo al bene ', $itemURI)" />
					</rdfs:label>
					<l0:name xml:lang="it">
						<xsl:value-of select="concat('Reperto spermologico relativo al bene ', $itemURI)" />
					</l0:name>
					<rdfs:label xml:lang="en">
						<xsl:value-of select="concat('Seed sample related to cultural property ', $itemURI)" />
					</rdfs:label>
					<l0:name xml:lang="en">
						<xsl:value-of select="concat('Seed sample related to cultural property ', $itemURI)" />
					</l0:name>
					<xsl:if test="./DBSR">
						<arco-cd:hasAuthor>
							<xsl:value-of select="concat($NS, 'Agent/', arco-fn:arcofy(./DBSR))" />
						</arco-cd:hasAuthor>
					</xsl:if>
					<xsl:if test="./DBSC">	
						<arco-mp:sampleLocation>
							<xsl:value-of select="normalize-space(./DBSC)" />
						</arco-mp:sampleLocation>
					</xsl:if>
					<xsl:if test="./DBSD">
						<arco-mp:manufacturingDate>
							<xsl:value-of select="normalize-space(./DBSD)" />
						</arco-mp:manufacturingDate>
					</xsl:if>			
				</rdf:Description>
		</xsl:for-each>
								

									<!-- Type Specimen Identification as individual -->								
 	<xsl:if test="schede/BNB/SB/TBI">
		<rdf:Description>
			<xsl:attribute name="rdf:about">
				<xsl:value-of select="concat('https://w3id.org/arco/resource/TypeSpecimenIdentification/', $itemURI)" />
			</xsl:attribute>
			<rdf:type>
				<xsl:attribute name="rdf:resource">
					<xsl:value-of select="'https://w3id.org/arco/ontology/movable-property/TypeSpecimenIdentification'" />
				</xsl:attribute>
			</rdf:type>
			<rdfs:label xml:lang="it">
				<xsl:value-of 	select="concat('Identificazione del tipo nomenclaturale del bene ', $itemURI)" />
			</rdfs:label>
			<l0:name xml:lang="it">
				<xsl:value-of 	select="concat('Identificazione del tipo nomenclaturale del bene ', $itemURI)" />
			</l0:name>
			<rdfs:label xml:lang="en">
				<xsl:value-of 	select="concat('Identification of type specimen of cultural property ', $itemURI)" />
			</rdfs:label>
			<l0:name xml:lang="en">
				<xsl:value-of 	select="concat('Identification of type specimen of cultural property ', $itemURI)" />
			</l0:name>
			<xsl:if test="schede/BNB/SB/TBI/TBIA">
				<arco-cd:hasAuthor>
            		<xsl:value-of select="concat($NS, 'Agent/', arco-fn:arcofy(schede/BNB/SB/TBI/TBIA))" />					
				</arco-cd:hasAuthor>	
			</xsl:if>
			<xsl:if test="schede/BNB/SB/TBI/TBIL">	
				<arco-cd:hasBibliography>
					<xsl:value-of select="concat($NS, 'Bibliography/', $itemURI, '-TypeSpecimen-bibliography')" />
				</arco-cd:hasBibliography>
			</xsl:if>
			<xsl:if test="schede/BNB/SB/TBI/TBIT">	
				<arco-core:hasType>
					<xsl:value-of select="concat($NS, 'TypeOfTypeSpecimen/', arco-fn:urify(schede/BNB/SB/TBI/TBIT))" />
				</arco-core:hasType>
			</xsl:if>								
			<arco-core:hasConsequence>
				<xsl:choose>
				<xsl:when test="schede/BNB/SB/TBI/TBIN or schede/BNB/SB/NAT">
					<xsl:value-of select="concat('https://w3id.org/arco/resource/ClassificationInTime/',$itemURI, '-typespecimen-classification')" />
				</xsl:when>
				<xsl:otherwise>
					<xsl:value-of select="concat('https://w3id.org/arco/resource/ClassificationInTime/',$itemURI, '-original-classification')" />
				</xsl:otherwise>	
				</xsl:choose>
			</arco-core:hasConsequence>
			<xsl:if test="schede/BNB/SB/TBI/TBIB">
				<xsl:variable name="startDate">
					<xsl:choose>
						<xsl:when test="schede/BNB/SB/TBI/TBIC">
							<xsl:value-of	select="concat(normalize-space(schede/BNB/SB/TBI/TBIC), ' ', normalize-space(schede/BNB/SB/TBI/TBIB))" />
						</xsl:when>
						<xsl:otherwise>
							<xsl:value-of select="normalize-space(schede/BNB/SB/TBI/TBIB)" />
						</xsl:otherwise>
					</xsl:choose>
				</xsl:variable>
				<xsl:variable name="endDate">
					<xsl:choose>
						<xsl:when test="schede/BNB/SB/TBI/TBIE">
							<xsl:value-of 	select="concat(normalize-space(schede/BNB/SB/TBI/TBIE), ' ', normalize-space(schede/BNB/SB/TBI/TBID))" />
						</xsl:when>
						<xsl:otherwise>
							<xsl:value-of select="normalize-space(schede/BNB/SB/TBI/TBID)" />
						</xsl:otherwise>
					</xsl:choose>
				</xsl:variable>
				<tiapit:atTime>
					<xsl:attribute name="rdf:resource">
		        		<xsl:value-of select="concat($NS, 'TimeInterval/', arco-fn:urify(concat($startDate, '-',  $endDate)))" />
					</xsl:attribute>
				</tiapit:atTime>
			</xsl:if>
			<xsl:if test="schede/BNB/SB/TBI/TBIF">
				<tiapit:atTime>
					<xsl:attribute name="rdf:resource">
		            	<xsl:value-of	select="concat($NS, 'TimeInterval/', arco-fn:urify(concat(schede/BNB/SB/TBI/TBIF, '-',  schede/BNB/SB/TBI/TBIF)))" />
					</xsl:attribute>
				</tiapit:atTime>
			</xsl:if>
		</rdf:Description>
			</xsl:if>					

								<!--TypeSpecimen Type as individual -->
	<xsl:if test="schede/BNB/SB/TBI/TBIT">
		<rdf:Description>
			<xsl:attribute name="rdf:about">
				<xsl:value-of select="concat($NS, 'TypeSpecimenType/', arco-fn:urify(schede/BNB/SB/TBI/TBIT))" />
	        </xsl:attribute>
			<rdf:type>
				<xsl:attribute name="rdf:resource">
	            	<xsl:value-of select="'https://w3id.org/arco/ontology/movable-property/TypeOfTypeSpecimen'" />
	            </xsl:attribute>
			</rdf:type>
			<rdfs:label>
				<xsl:value-of select="schede/BNB/SB/TBI/TBIT" />
			</rdfs:label>
			<l0:name>
				<xsl:value-of select="schede/BNB/SB/TBI/TBIT" />
			</l0:name>
		</rdf:Description>
	</xsl:if>




							
							<!-- TypespecimenTaxon as individual --> 
	<xsl:if test="schede/BNB/SB/NAT or schede/BNB/SB/TBI/TBIN">
	<rdf:Description>
		<xsl:attribute name="rdf:about">
			<xsl:value-of select="$TypespecimenTaxon" />
		</xsl:attribute>
		<rdf:type>
			<xsl:choose>
				<xsl:when test="schede/BNB/SB/NAT">
					<xsl:attribute name="rdf:resource">
                 		<xsl:value-of select="$TypespecimenTaxonType" />
            		</xsl:attribute>
				</xsl:when>
				<xsl:when test="schede/BNB/SB/TBI/TBIN">
					<xsl:attribute name="rdf:resource">
						<xsl:value-of select="'https://w3id.org/arco/ontology/context-description/BiologicalTaxon'" />
					</xsl:attribute>
				</xsl:when>
			</xsl:choose>
		</rdf:type>
		<rdfs:label>
			<xsl:choose>
				<xsl:when test="schede/BNB/SB/TBI/TBIN and not(lower-case(normalize-space(schede/BNB/SB/TBI/TBIN))='nr' or lower-case(normalize-space(schede/BNB/SB/TBI/TBIN))='n.r.' or lower-case(normalize-space(schede/BNB/SB/TBI/TBIN))='nr (recupero pregresso)')">
					<xsl:value-of select="normalize-space(schede/BNB/SB/TBI/TBIN)" />
				</xsl:when>
				<xsl:when test="schede/BNB/SB/NAT">
					<xsl:value-of select="normalize-space(schede/BNB/SB/NAT/*)" />
				</xsl:when>
			</xsl:choose>
		</rdfs:label>
		<l0:name>
			<xsl:choose>
				<xsl:when test="schede/BNB/SB/TBI/TBIN and not(lower-case(normalize-space(schede/BNB/SB/TBI/TBIN))='nr' or lower-case(normalize-space(schede/BNB/SB/TBI/TBIN))='n.r.' or lower-case(normalize-space(schede/BNB/SB/TBI/TBIN))='nr (recupero pregresso)')">
					<xsl:value-of select="normalize-space(schede/BNB/SB/TBI/TBIN)" />
				</xsl:when>
				<xsl:when test="schede/BNB/SB/NAT">
					<xsl:value-of select="normalize-space(schede/BNB/SB/NAT/*)" />
				</xsl:when>
			</xsl:choose>
		</l0:name>
	  </rdf:Description>								
	</xsl:if>							

								<!-- Time Interval as individual for TypeSpecimen -->
	<xsl:if test="schede/BNB/SB/TBI/TBIB">
		<xsl:variable name="startDate">
			<xsl:choose>
				<xsl:when test="schede/BNB/SB/TBI/TBIC">
					<xsl:value-of select="concat(normalize-space(schede/BNB/SB/TBI/TBIC), ' ', normalize-space(schede/BNB/SB/TBI/TBIB))" />
				</xsl:when>
				<xsl:otherwise>
					<xsl:value-of select="normalize-space(schede/BNB/SB/TBI/TBIB)" />
				</xsl:otherwise>
			</xsl:choose>
		</xsl:variable>
		<xsl:variable name="endDate">
			<xsl:choose>
				<xsl:when test="schede/BNB/SB/TBI/TBIE">
					<xsl:value-of select="concat(normalize-space(schede/BNB/SB/TBI/TBIE), ' ', normalize-space(schede/BNB/SB/TBI/TBID))" />
				</xsl:when>
				<xsl:otherwise>
					<xsl:value-of select="normalize-space(schede/BNB/SB/TBI/TBID)" />
				</xsl:otherwise>
			</xsl:choose>
		</xsl:variable>
		<rdf:Description>
			<xsl:attribute name="rdf:about">
		    	<xsl:value-of select="concat($NS, 'TimeInterval/', arco-fn:urify(concat($startDate, '-',  $endDate)))" />
			</xsl:attribute>
			<rdf:type>
				<xsl:attribute name="rdf:resource">
		        	<xsl:value-of select="'https://w3id.org/italia/onto/TI/TimeInterval'" />
				</xsl:attribute>
			</rdf:type>
			<rdfs:label>
				<xsl:value-of select="concat($startDate, ' - ', $endDate)" />
			</rdfs:label>
			<l0:name>
				<xsl:value-of select="concat($startDate, ' - ', $endDate)" />
			</l0:name>
			<arco-arco:startTime>
				<xsl:value-of select="$startDate" />
			</arco-arco:startTime>
			<arco-arco:endTime>
				<xsl:value-of select="$endDate" />
			</arco-arco:endTime>
		</rdf:Description>
	</xsl:if>
	<xsl:if test="schede/BNB/SB/TBI/TBIF">
		<rdf:Description>
			<xsl:attribute name="rdf:about">
		    	<xsl:value-of select="concat($NS, 'TimeInterval/', arco-fn:urify(concat(schede/BNB/SB/TBI/TBIF, '-',  schede/BNB/SB/TBI/TBIF)))" />
			</xsl:attribute>
		<rdf:type>
			<xsl:attribute name="rdf:resource">
		    	<xsl:value-of select="'https://w3id.org/italia/onto/TI/TimeInterval'" />
			</xsl:attribute>
			</rdf:type>
			<rdfs:label>
				<xsl:value-of select="concat(schede/BNB/SB/TBI/TBIF, ' - ', schede/BNB/SB/TBI/TBIF)" />
			</rdfs:label>
			<l0:name>
				<xsl:value-of select="concat(schede/BNB/SB/TBI/TBIF, ' - ', schede/BNB/SB/TBI/TBIF)" />
			</l0:name>
			<arco-arco:startTime>
				<xsl:value-of select="schede/BNB/SB/TBI/TBIF" />
			</arco-arco:startTime>
			<arco-arco:endTime>
				<xsl:value-of select="schede/BNB/SB/TBI/TBIF" />
			</arco-arco:endTime>
		</rdf:Description>														
	</xsl:if>								
								
								<!--Host Individual as individual -->
	<xsl:if test="schede/BNB/LR/LRI/LRIM">
		<rdf:Description>
			<xsl:attribute name="rdf:about">
				<xsl:value-of select="concat('https://w3id.org/arco/resource/HostIndividual/', arco-fn:arcofy(schede/BNB/LR/LRI/LRIM))" />
	        </xsl:attribute>
			<rdf:type>
				<xsl:attribute name="rdf:resource">
	            	<xsl:value-of select="'https://w3id.org/arco/ontology/movable-property/HostIndividual'" />
	            </xsl:attribute>
			</rdf:type>
			<rdfs:label>
				<xsl:value-of select="schede/BNB/LR/LRI/LRIM" />
			</rdfs:label>
			<l0:name>
				<xsl:value-of select="schede/BNB/LR/LRI/LRIM" />
			</l0:name>
		</rdf:Description>
	</xsl:if>		
	
									<!--Close Individual as individual -->
	<xsl:if test="schede/BNB/LR/LRI/LRIV">
		<rdf:Description>
			<xsl:attribute name="rdf:about">
				<xsl:value-of select="concat('https://w3id.org/arco/resource/CloseIndividual/', arco-fn:arcofy(schede/BNB/LR/LRI/LRIV))" />
	        </xsl:attribute>
			<rdf:type>
				<xsl:attribute name="rdf:resource">
	            	<xsl:value-of select="'https://w3id.org/arco/ontology/movable-property/CloseIndividual'" />
	            </xsl:attribute>
			</rdf:type>
			<rdfs:label>
				<xsl:value-of select="schede/BNB/LR/LRI/LRIV" />
			</rdfs:label>
			<l0:name>
				<xsl:value-of select="schede/BNB/LR/LRI/LRIV" />
			</l0:name>
		</rdf:Description>
	</xsl:if>						
							
	
					
										<!-- measurement as individual -->
	<xsl:variable name="parent-id" select="position()" />
	<xsl:for-each select="schede/BNB/DB/DBX/DBXA">
		<rdf:Description>
			<xsl:attribute name="rdf:about"
				select="concat($NS, 'Measurement/WoodSample/', '-', position(), '-height')" />
			<rdf:type rdf:resource="https://w3id.org/arco/ontology/denotative-description/Measurement" />
			<rdfs:label xml:lang="en">
				<xsl:value-of select="concat('Measurement of wood sample ', position(), ': ', (.))" />
			</rdfs:label>
			<l0:name xml:lang="en">
				<xsl:value-of select="concat('Measurement of wood sample ', position(), ': ', (.))" />
			</l0:name>
			<rdfs:label xml:lang="it">
				<xsl:value-of select="concat('Misura del reperto xilologico ',  position(), ': ', (.))" />
			</rdfs:label>
			<l0:name xml:lang="it">
				<xsl:value-of select="concat('Misura del reperto xilologico ',  position(), ': ', (.))" />
			</l0:name>
			<arco-dd:hasMeasurementType>
				<xsl:attribute name="rdf:resource"
					select="concat('https://w3id.org/arco/ontology/denotative-description/', 'Height')" />
			</arco-dd:hasMeasurementType>
		</rdf:Description>
	</xsl:for-each>			
	<xsl:for-each select="schede/BNB/DB/DBX/DBXL">
		<rdf:Description>
			<xsl:attribute name="rdf:about"
				select="concat($NS, 'Measurement/WoodSample/', '-', position(), '-width')" />
			<rdf:type rdf:resource="https://w3id.org/arco/ontology/denotative-description/Measurement" />
			<rdfs:label xml:lang="en">
				<xsl:value-of select="concat('Measurement of wood sample ', position(), ': ', (.))" />
			</rdfs:label>
			<l0:name xml:lang="en">
				<xsl:value-of select="concat('Measurement of wood sample ', position(), ': ', (.))" />
			</l0:name>
			<rdfs:label xml:lang="it">
				<xsl:value-of select="concat('Misura del reperto xilologico ',  position(), ': ', (.))" />
			</rdfs:label>
			<l0:name xml:lang="it">
				<xsl:value-of select="concat('Misura del reperto xilologico ',  position(), ': ', (.))" />
			</l0:name>
			<arco-dd:hasMeasurementType>
				<xsl:attribute name="rdf:resource"
					select="concat('https://w3id.org/arco/ontology/denotative-description/', 'Width')" />
			</arco-dd:hasMeasurementType>
		</rdf:Description>
	</xsl:for-each>
<xsl:for-each select="schede/BNB/DB/DBX/DBXN">
		<rdf:Description>
			<xsl:attribute name="rdf:about"
				select="concat($NS, 'Measurement/WoodSample/', '-', position(), '-length')" />
			<rdf:type rdf:resource="https://w3id.org/arco/ontology/denotative-description/Measurement" />
			<rdfs:label xml:lang="en">
				<xsl:value-of select="concat('Measurement of wood sample ', position(), ': ', (.))" />
			</rdfs:label>
			<l0:name xml:lang="en">
				<xsl:value-of select="concat('Measurement of wood sample ', position(), ': ', (.))" />
			</l0:name>
			<rdfs:label xml:lang="it">
				<xsl:value-of select="concat('Misura del reperto xilologico ',  position(), ': ', (.))" />
			</rdfs:label>
			<l0:name xml:lang="it">
				<xsl:value-of select="concat('Misura del reperto xilologico ',  position(), ': ', (.))" />
			</l0:name>
			<arco-dd:hasMeasurementType>
				<xsl:attribute name="rdf:resource"
					select="concat('https://w3id.org/arco/ontology/denotative-description/', 'Length')" />
			</arco-dd:hasMeasurementType>
		</rdf:Description>
	</xsl:for-each>
	<xsl:for-each select="schede/BNB/DB/DBX/DBXD">
		<rdf:Description>
			<xsl:attribute name="rdf:about"
				select="concat($NS, 'Measurement/WoodSample/', '-', position(), '-diameter')" />
			<rdf:type rdf:resource="https://w3id.org/arco/ontology/denotative-description/Measurement" />
			<rdfs:label xml:lang="en">
				<xsl:value-of select="concat('Measurement of wood sample ', position(), ': ', (.))" />
			</rdfs:label>
			<l0:name xml:lang="en">
				<xsl:value-of select="concat('Measurement of wood sample ', position(), ': ', (.))" />
			</l0:name>
			<rdfs:label xml:lang="it">
				<xsl:value-of select="concat('Misura del reperto xilologico ',  position(), ': ', (.))" />
			</rdfs:label>
			<l0:name xml:lang="it">
				<xsl:value-of select="concat('Misura del reperto xilologico ',  position(), ': ', (.))" />
			</l0:name>
			<arco-dd:hasMeasurementType>
				<xsl:attribute name="rdf:resource"
					select="concat('https://w3id.org/arco/ontology/denotative-description/', 'Diameter')" />
			</arco-dd:hasMeasurementType>
		</rdf:Description>
	</xsl:for-each>
	<xsl:for-each select="schede/BNB/DB/DBX/DBXP">
		<rdf:Description>
			<xsl:attribute name="rdf:about"
				select="concat($NS, 'Measurement/WoodSample/', '-', position(), '-weight')" />
			<rdf:type rdf:resource="https://w3id.org/arco/ontology/denotative-description/Measurement" />
			<rdfs:label xml:lang="en">
				<xsl:value-of select="concat('Measurement of wood sample ', position(), ': ', (.))" />
			</rdfs:label>
			<l0:name xml:lang="en">
				<xsl:value-of select="concat('Measurement of wood sample ', position(), ': ', (.))" />
			</l0:name>
			<rdfs:label xml:lang="it">
				<xsl:value-of select="concat('Misura del reperto xilologico ',  position(), ': ', (.))" />
			</rdfs:label>
			<l0:name xml:lang="it">
				<xsl:value-of select="concat('Misura del reperto xilologico ',  position(), ': ', (.))" />
			</l0:name>
			<arco-dd:hasMeasurementType>
				<xsl:attribute name="rdf:resource"
					select="concat('https://w3id.org/arco/ontology/denotative-description/', 'Weight')" />
			</arco-dd:hasMeasurementType>
		</rdf:Description>
	</xsl:for-each>
				
	</rdf:RDF>
</xsl:template>								
</xsl:stylesheet>