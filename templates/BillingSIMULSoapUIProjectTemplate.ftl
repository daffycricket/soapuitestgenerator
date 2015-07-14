<?xml version="1.0" encoding="UTF-8"?>
<con:soapui-project activeEnvironment="Default" name="${ProjectName}" resourceRoot="" soapui-version="4.6.3" xmlns:con="http://eviware.com/soapui/config">
	<con:settings/>
	<con:interface xsi:type="con:WsdlInterface" wsaVersion="NONE" name="BasicHttpBinding_IBillingSimulationServices" type="wsdl" bindingName="{http://services.axa.fr/OSE/BILLING/1}BasicHttpBinding_IBillingSimulationServices" soapVersion="1_1" anonymous="optional" definition="http://eip-mediator-wsint-tstenv-sedc.applications.services.axa-tech.intraxa/ws/ose-billing-simul-1-billingsimulationservices?wsdl" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
		<con:settings/>
		<con:definitionCache type="TEXT" rootPart="${Endpoint}?wsdl">
			<con:part>
				<con:url>${Endpoint}?wsdl</con:url>
				<con:content>
					<![CDATA[<wsdl:definitions name="ose-billing-simul-1-billingsimulationservices" targetNamespace="http://services.axa.fr/OSE/BILLING/1" xmlns:wsp="http://schemas.xmlsoap.org/ws/2004/09/policy" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:q3="http://schemas.axa.fr/OSE/BILLING/1" xmlns:wsx="http://schemas.xmlsoap.org/ws/2004/09/mex" xmlns:wsa10="http://www.w3.org/2005/08/addressing" xmlns:wsap="http://schemas.xmlsoap.org/ws/2004/08/addressing/policy" xmlns:wsam="http://www.w3.org/2007/05/addressing/metadata" xmlns:wsu="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd" xmlns:soapenc="http://schemas.xmlsoap.org/soap/encoding/" xmlns:wsa="http://schemas.xmlsoap.org/ws/2004/08/addressing" xmlns:wsaw="http://www.w3.org/2006/05/addressing/wsdl" xmlns:tns="http://services.axa.fr/OSE/BILLING/1" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:soap12="http://schemas.xmlsoap.org/wsdl/soap12/" xmlns:msc="http://schemas.microsoft.com/ws/2005/12/wsdl/contract">
  <wsdl:types>
    <xsd:schema elementFormDefault="qualified" targetNamespace="http://services.axa.fr/OSE/BILLING/1">
      <xsd:element name="ComputeBilling">
        <xsd:complexType>
          <xsd:sequence>
            <xsd:element minOccurs="0" name="ContextOfBilling" nillable="true" type="q1:ContextOfBilling" xmlns:q1="http://schemas.axa.fr/OSE/BILLING/1"/>
            <xsd:element minOccurs="0" name="User" nillable="true" type="xsd:string"/>
          </xsd:sequence>
        </xsd:complexType>
      </xsd:element>
      <xsd:element name="BillingResult" nillable="true" type="q2:BillingResult" xmlns:q2="http://schemas.axa.fr/OSE/BILLING/1"/>
    </xsd:schema>
    <xsd:schema elementFormDefault="qualified" targetNamespace="http://schemas.axa.fr/OSE/BILLING/1" xmlns:ser="http://schemas.microsoft.com/2003/10/Serialization/" xmlns:tns="http://schemas.axa.fr/OSE/BILLING/1">
      <xsd:complexType name="ContextOfBilling">
        <xsd:sequence>
          <xsd:element minOccurs="0" name="OperationCode" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="SubscriptionAction" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="Contract" nillable="true" type="tns:Contract"/>
        </xsd:sequence>
      </xsd:complexType>
      <xsd:element name="ContextOfBilling" nillable="true" type="tns:ContextOfBilling"/>
      <xsd:complexType name="Contract">
        <xsd:sequence>
          <xsd:element minOccurs="0" name="PortFolio" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="ProductCode" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="DurationCode" type="xsd:int"/>
          <xsd:element minOccurs="0" name="EffectiveDate" type="xsd:dateTime"/>
          <xsd:element minOccurs="0" name="EndDate" type="xsd:dateTime"/>
          <xsd:element minOccurs="0" name="TermDay" type="xsd:int"/>
          <xsd:element minOccurs="0" name="TermMonth" type="xsd:int"/>
          <xsd:element minOccurs="0" name="FractioningCode" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="Notice" type="xsd:int"/>
          <xsd:element minOccurs="0" name="ContractNumber" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="BillingElementsCollection" nillable="true" type="tns:BillingElementsCollection"/>
          <xsd:element minOccurs="0" name="IsCashForced" type="xsd:boolean"/>
          <xsd:element minOccurs="0" name="ForcedCashAmount" nillable="true" type="xsd:decimal"/>
          <xsd:element minOccurs="0" name="TaxCode" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="AreManagmentExpensesToReceive" type="xsd:boolean"/>
          <xsd:element name="CashPremiumOption" type="xsd:boolean"/>
          <xsd:element name="RiskPlaces" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="Derogation" nillable="true" type="tns:Derogation"/>
          <xsd:element minOccurs="0" name="CreditCommercial" nillable="true" type="tns:CreditCommercial"/>
          <xsd:element minOccurs="0" name="SuppressionFraisRepertoireAuTerme" type="xsd:boolean"/>
          <xsd:element minOccurs="0" name="ApplicationInfotmatique" nillable="true" type="xsd:string"/>
        </xsd:sequence>
      </xsd:complexType>
      <xsd:element name="Contract" nillable="true" type="tns:Contract"/>
      <xsd:complexType name="BillingElementsCollection">
        <xsd:sequence>
          <xsd:element maxOccurs="unbounded" minOccurs="0" name="BillingElement" nillable="true" type="tns:BillingElement"/>
        </xsd:sequence>
      </xsd:complexType>
      <xsd:element name="BillingElementsCollection" nillable="true" type="tns:BillingElementsCollection"/>
      <xsd:complexType name="BillingElement">
        <xsd:sequence>
          <xsd:element minOccurs="0" name="UTCode" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="VATExclPremium" type="xsd:decimal"/>
          <xsd:element minOccurs="0" name="IndexCode" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="PremiumNature" nillable="true" type="xsd:string"/>
        </xsd:sequence>
      </xsd:complexType>
      <xsd:element name="BillingElement" nillable="true" type="tns:BillingElement"/>
      <xsd:complexType name="Derogation">
        <xsd:sequence>
          <xsd:element minOccurs="0" name="DerogatedSign" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="DerogatedPoints" type="xsd:decimal"/>
        </xsd:sequence>
      </xsd:complexType>
      <xsd:element name="Derogation" nillable="true" type="tns:Derogation"/>
      <xsd:complexType name="CreditCommercial">
        <xsd:sequence>
          <xsd:element minOccurs="0" name="MontantCreditCommercialAnnuel" type="xsd:int"/>
        </xsd:sequence>
      </xsd:complexType>
      <xsd:element name="CreditCommercial" nillable="true" type="tns:CreditCommercial"/>
      <xsd:complexType name="BillingResult">
        <xsd:sequence>
          <xsd:element minOccurs="0" name="Anomaly" nillable="true" type="tns:Anomaly"/>
          <xsd:element minOccurs="0" name="Billing" nillable="true" type="tns:Billing"/>
          <xsd:element minOccurs="0" name="ResultBillingElementsCollection" nillable="true" type="tns:ResultBillingElementsCollection"/>
        </xsd:sequence>
      </xsd:complexType>
      <xsd:element name="BillingResult" nillable="true" type="tns:BillingResult"/>
      <xsd:complexType name="Anomaly">
        <xsd:sequence>
          <xsd:element minOccurs="0" name="Code" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="Label" nillable="true" type="xsd:string"/>
        </xsd:sequence>
      </xsd:complexType>
      <xsd:element name="Anomaly" nillable="true" type="tns:Anomaly"/>
      <xsd:complexType name="Billing">
        <xsd:sequence>
          <xsd:element minOccurs="0" name="AnnualContribution" type="xsd:decimal"/>
          <xsd:element minOccurs="0" name="VATExclCashContribution" type="xsd:decimal"/>
          <xsd:element minOccurs="0" name="CashContribution" type="xsd:decimal"/>
          <xsd:element minOccurs="0" name="DirectoryTermAmount" type="xsd:decimal"/>
          <xsd:element minOccurs="0" name="VATExclDirectoryCharges" type="xsd:decimal"/>
          <xsd:element minOccurs="0" name="DirectoryCharges" type="xsd:decimal"/>
          <xsd:element minOccurs="0" name="TotalCommissionAmount" type="xsd:decimal"/>
          <xsd:element minOccurs="0" name="QuittanceStartDate" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="QuittanceEndDate" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="AttemptTax" type="xsd:decimal"/>
          <xsd:element minOccurs="0" name="ContributionAmount" type="xsd:decimal"/>
          <xsd:element minOccurs="0" name="TaxResultsCollection" nillable="true" type="tns:TaxResultsCollection"/>
          <xsd:element minOccurs="0" name="AnnualMinusTotalCommission" type="xsd:decimal"/>
          <xsd:element minOccurs="0" name="IntermediateTerm1" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="IntermediateTerm2" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="IntermediateTerm3" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="FeeTaxRate" type="xsd:decimal"/>
          <xsd:element minOccurs="0" name="CatNatEditique" nillable="true" type="xsd:decimal"/>
          <xsd:element minOccurs="0" name="AssistanceVATAmount" nillable="true" type="xsd:decimal"/>
          <xsd:element minOccurs="0" name="AssistanceVATRate" nillable="true" type="xsd:decimal"/>
          <xsd:element minOccurs="0" name="AssistanceAmount" nillable="true" type="xsd:decimal"/>
          <xsd:element minOccurs="0" name="GareatTaxRate" nillable="true" type="xsd:decimal"/>
          <xsd:element minOccurs="0" name="GareatAmount" nillable="true" type="xsd:decimal"/>
          <xsd:element minOccurs="0" name="GareatTaxAmount" nillable="true" type="xsd:decimal"/>
          <xsd:element minOccurs="0" name="ProtectionJuridiqueAnnualAmount" nillable="true" type="xsd:decimal"/>
          <xsd:element minOccurs="0" name="AssistanceAnnualAmount" nillable="true" type="xsd:decimal"/>
        </xsd:sequence>
      </xsd:complexType>
      <xsd:element name="Billing" nillable="true" type="tns:Billing"/>
      <xsd:complexType name="TaxResultsCollection">
        <xsd:sequence>
          <xsd:element maxOccurs="unbounded" minOccurs="0" name="TaxResult" nillable="true" type="tns:TaxResult"/>
        </xsd:sequence>
      </xsd:complexType>
      <xsd:element name="TaxResultsCollection" nillable="true" type="tns:TaxResultsCollection"/>
      <xsd:complexType name="TaxResult">
        <xsd:sequence>
          <xsd:element minOccurs="0" name="TaxRate" type="xsd:decimal"/>
          <xsd:element minOccurs="0" name="TotalAmount" type="xsd:decimal"/>
          <xsd:element minOccurs="0" name="TotalTaxAmountByTaxRate" type="xsd:decimal"/>
        </xsd:sequence>
      </xsd:complexType>
      <xsd:element name="TaxResult" nillable="true" type="tns:TaxResult"/>
      <xsd:complexType name="ResultBillingElementsCollection">
        <xsd:sequence>
          <xsd:element maxOccurs="unbounded" minOccurs="0" name="ResultBillingElement" nillable="true" type="tns:ResultBillingElement"/>
        </xsd:sequence>
      </xsd:complexType>
      <xsd:element name="ResultBillingElementsCollection" nillable="true" type="tns:ResultBillingElementsCollection"/>
      <xsd:complexType name="ResultBillingElement">
        <xsd:sequence>
          <xsd:element minOccurs="0" name="UTCode" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="VATExclPremium" type="xsd:decimal"/>
        </xsd:sequence>
      </xsd:complexType>
      <xsd:element name="ResultBillingElement" nillable="true" type="tns:ResultBillingElement"/>
      <xsd:complexType name="AccesNonAutorise">
        <xsd:sequence>
          <xsd:element minOccurs="0" name="Message" nillable="true" type="xsd:string"/>
        </xsd:sequence>
      </xsd:complexType>
      <xsd:element name="AccesNonAutorise" nillable="true" type="tns:AccesNonAutorise"/>
      <xsd:complexType name="ArgumentInvalide">
        <xsd:sequence>
          <xsd:element minOccurs="0" name="Message" nillable="true" type="xsd:string"/>
        </xsd:sequence>
      </xsd:complexType>
      <xsd:element name="ArgumentInvalide" nillable="true" type="tns:ArgumentInvalide"/>
      <xsd:complexType name="ErreurInterne">
        <xsd:sequence>
          <xsd:element minOccurs="0" name="HandlingInstanceId" type="ser:guid"/>
        </xsd:sequence>
      </xsd:complexType>
      <xsd:element name="ErreurInterne" nillable="true" type="tns:ErreurInterne"/>
      <xsd:complexType name="ErreurAcces">
        <xsd:sequence>
          <xsd:element minOccurs="0" name="Message" nillable="true" type="xsd:string"/>
        </xsd:sequence>
      </xsd:complexType>
      <xsd:element name="ErreurAcces" nillable="true" type="tns:ErreurAcces"/>
      <xsd:complexType name="ErreurTech">
        <xsd:sequence>
          <xsd:element minOccurs="0" name="ErrorCode" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="Message" nillable="true" type="xsd:string"/>
        </xsd:sequence>
      </xsd:complexType>
      <xsd:element name="ErreurTech" nillable="true" type="tns:ErreurTech"/>
    </xsd:schema>
    <xs:schema attributeFormDefault="qualified" elementFormDefault="qualified" targetNamespace="http://schemas.microsoft.com/2003/10/Serialization/" xmlns:tns="http://schemas.microsoft.com/2003/10/Serialization/" xmlns:xs="http://www.w3.org/2001/XMLSchema">
      <xs:element name="anyType" nillable="true" type="xs:anyType"/>
      <xs:element name="anyURI" nillable="true" type="xs:anyURI"/>
      <xs:element name="base64Binary" nillable="true" type="xs:base64Binary"/>
      <xs:element name="boolean" nillable="true" type="xs:boolean"/>
      <xs:element name="byte" nillable="true" type="xs:byte"/>
      <xs:element name="dateTime" nillable="true" type="xs:dateTime"/>
      <xs:element name="decimal" nillable="true" type="xs:decimal"/>
      <xs:element name="double" nillable="true" type="xs:double"/>
      <xs:element name="float" nillable="true" type="xs:float"/>
      <xs:element name="int" nillable="true" type="xs:int"/>
      <xs:element name="long" nillable="true" type="xs:long"/>
      <xs:element name="QName" nillable="true" type="xs:QName"/>
      <xs:element name="short" nillable="true" type="xs:short"/>
      <xs:element name="string" nillable="true" type="xs:string"/>
      <xs:element name="unsignedByte" nillable="true" type="xs:unsignedByte"/>
      <xs:element name="unsignedInt" nillable="true" type="xs:unsignedInt"/>
      <xs:element name="unsignedLong" nillable="true" type="xs:unsignedLong"/>
      <xs:element name="unsignedShort" nillable="true" type="xs:unsignedShort"/>
      <xs:element name="char" nillable="true" type="tns:char"/>
      <xs:simpleType name="char">
        <xs:restriction base="xs:int"/>
      </xs:simpleType>
      <xs:element name="duration" nillable="true" type="tns:duration"/>
      <xs:simpleType name="duration">
        <xs:restriction base="xs:duration">
          <xs:pattern value="\-?P(\d*D)?(T(\d*H)?(\d*M)?(\d*(\.\d*)?S)?)?"/>
          <xs:minInclusive value="-P10675199DT2H48M5.4775808S"/>
          <xs:maxInclusive value="P10675199DT2H48M5.4775807S"/>
        </xs:restriction>
      </xs:simpleType>
      <xs:element name="guid" nillable="true" type="tns:guid"/>
      <xs:simpleType name="guid">
        <xs:restriction base="xs:string">
          <xs:pattern value="[\da-fA-F]{8}-[\da-fA-F]{4}-[\da-fA-F]{4}-[\da-fA-F]{4}-[\da-fA-F]{12}"/>
        </xs:restriction>
      </xs:simpleType>
      <xs:attribute name="FactoryType" type="xs:QName"/>
      <xs:attribute name="Id" type="xs:ID"/>
      <xs:attribute name="Ref" type="xs:IDREF"/>
    </xs:schema>
  </wsdl:types>
  <wsdl:message name="IBillingSimulationServices_ComputeBilling_ArgumentInvalideFault_FaultMessage">
    <wsdl:part name="detail" element="q3:ArgumentInvalide"></wsdl:part>
  </wsdl:message>
  <wsdl:message name="ComputeBilling">
    <wsdl:part name="parameters" element="tns:ComputeBilling"></wsdl:part>
  </wsdl:message>
  <wsdl:message name="ComputeBillingResponse">
    <wsdl:part name="BillingResult" element="tns:BillingResult"></wsdl:part>
  </wsdl:message>
  <wsdl:message name="IBillingSimulationServices_ComputeBilling_ErreurInterneFault_FaultMessage">
    <wsdl:part name="detail" element="q3:ErreurInterne"></wsdl:part>
  </wsdl:message>
  <wsdl:message name="IBillingSimulationServices_ComputeBilling_ErreurAccesFault_FaultMessage">
    <wsdl:part name="detail" element="q3:ErreurAcces"></wsdl:part>
  </wsdl:message>
  <wsdl:message name="IBillingSimulationServices_ComputeBilling_AccesNonAutoriseFault_FaultMessage">
    <wsdl:part name="detail" element="q3:AccesNonAutorise"></wsdl:part>
  </wsdl:message>
  <wsdl:message name="IBillingSimulationServices_ComputeBilling_ErreurTechFault_FaultMessage">
    <wsdl:part name="detail" element="q3:ErreurTech"></wsdl:part>
  </wsdl:message>
  <wsdl:portType name="IBillingSimulationServices">
    <wsdl:operation name="ComputeBilling">
      <wsdl:input name="ComputeBilling" message="tns:ComputeBilling" wsaw:Action="http://services.axa.fr/OSE/BILLING/1/IBillingSimulationServices/ComputeBilling"></wsdl:input>
      <wsdl:output name="ComputeBillingResponse" message="tns:ComputeBillingResponse" wsaw:Action="http://services.axa.fr/OSE/BILLING/1/IBillingSimulationServices/ComputeBillingResponse"></wsdl:output>
      <wsdl:fault name="ErreurInterneFault" message="tns:IBillingSimulationServices_ComputeBilling_ErreurInterneFault_FaultMessage" wsaw:Action="http://services.axa.fr/OSE/BILLING/1/IBillingSimulationServices/ComputeBillingErreurInterneFault"></wsdl:fault>
      <wsdl:fault name="AccesNonAutoriseFault" message="tns:IBillingSimulationServices_ComputeBilling_AccesNonAutoriseFault_FaultMessage" wsaw:Action="http://services.axa.fr/OSE/BILLING/1/IBillingSimulationServices/ComputeBillingAccesNonAutoriseFault"></wsdl:fault>
      <wsdl:fault name="ArgumentInvalideFault" message="tns:IBillingSimulationServices_ComputeBilling_ArgumentInvalideFault_FaultMessage" wsaw:Action="http://services.axa.fr/OSE/BILLING/1/IBillingSimulationServices/ComputeBillingArgumentInvalideFault"></wsdl:fault>
      <wsdl:fault name="ErreurAccesFault" message="tns:IBillingSimulationServices_ComputeBilling_ErreurAccesFault_FaultMessage" wsaw:Action="http://services.axa.fr/OSE/BILLING/1/IBillingSimulationServices/ComputeBillingErreurAccesFault"></wsdl:fault>
      <wsdl:fault name="ErreurTechFault" message="tns:IBillingSimulationServices_ComputeBilling_ErreurTechFault_FaultMessage" wsaw:Action="http://services.axa.fr/OSE/BILLING/1/IBillingSimulationServices/ComputeBillingErreurTechFault"></wsdl:fault>
    </wsdl:operation>
  </wsdl:portType>
  <wsdl:binding name="BasicHttpBinding_IBillingSimulationServices" type="tns:IBillingSimulationServices">
    <soap:binding transport="http://schemas.xmlsoap.org/soap/http"/>
    <wsdl:operation name="ComputeBilling">
      <soap:operation soapAction="http://services.axa.fr/OSE/BILLING/1/IBillingSimulationServices/ComputeBilling" style="document"/>
      <wsdl:input name="ComputeBilling">
        <soap:body use="literal"/>
      </wsdl:input>
      <wsdl:output name="ComputeBillingResponse">
        <soap:body use="literal"/>
      </wsdl:output>
      <wsdl:fault name="ErreurInterneFault">
        <soap:fault name="ErreurInterneFault" use="literal"/>
      </wsdl:fault>
      <wsdl:fault name="AccesNonAutoriseFault">
        <soap:fault name="AccesNonAutoriseFault" use="literal"/>
      </wsdl:fault>
      <wsdl:fault name="ArgumentInvalideFault">
        <soap:fault name="ArgumentInvalideFault" use="literal"/>
      </wsdl:fault>
      <wsdl:fault name="ErreurAccesFault">
        <soap:fault name="ErreurAccesFault" use="literal"/>
      </wsdl:fault>
      <wsdl:fault name="ErreurTechFault">
        <soap:fault name="ErreurTechFault" use="literal"/>
      </wsdl:fault>
    </wsdl:operation>
  </wsdl:binding>
  <wsdl:service name="ose-billing-simul-1-billingsimulationservices">
    <wsdl:port name="ose-billing-simul-1-billingsimulationservicessoaphttp" binding="tns:BasicHttpBinding_IBillingSimulationServices">
      <soap:address location="${Endpoint}"/>
    </wsdl:port>
  </wsdl:service>
</wsdl:definitions>]]></con:content>
				<con:type>http://schemas.xmlsoap.org/wsdl/</con:type>
			</con:part>
		</con:definitionCache>
		<con:endpoints>
			<con:endpoint>${Endpoint}</con:endpoint>
		</con:endpoints>
		<con:operation isOneWay="false" action="http://services.axa.fr/OSE/BILLING/1/IBillingSimulationServices/ComputeBilling" name="ComputeBilling" bindingOperationName="ComputeBilling" type="Request-Response" outputName="ComputeBillingResponse" inputName="ComputeBilling" receivesAttachments="false" sendsAttachments="false" anonymous="optional">
			<con:settings/>
<#list Requests as Request>
			<con:call name="${Request.RequestName}">
				<con:settings>
					<con:setting id="com.eviware.soapui.impl.wsdl.WsdlRequest@request-headers">&lt;xml-fragment/></con:setting>
		</con:settings>
		<con:encoding>UTF-8</con:encoding>
		<con:endpoint>${Endpoint}</con:endpoint>
		<con:request><![CDATA[${Request.RequestPayload}]]></con:request>
		<con:credentials>
			<con:username>${Token}</con:username>
			<con:password>${Password}</con:password>
			<con:authType>Preemptive</con:authType>
		</con:credentials>
		<con:jmsConfig JMSDeliveryMode="PERSISTENT"/>
		<con:jmsPropertyConfig/>
		<con:wsaConfig mustUnderstand="NONE" version="200508" action="http://services.axa.fr/OSE/BILLING/1/IBillingSimulationServices/ComputeBilling"/>
		<con:wsrmConfig version="1.2"/>
	</con:call>
</#list>
</con:operation>
</con:interface>
<con:testSuite name="TestSuite 1">
	<con:settings/>
	<con:runType>SEQUENTIAL</con:runType>
	<con:testCase failOnError="false" failTestCaseOnErrors="true" keepSession="false" maxResults="0" name="TestCase 1" searchProperties="true" id="d165a2d4-ca97-4cd1-8124-cfb2168a452d">
		<con:settings/>
		
<#list Requests as Request>
		<con:testStep type="request" name="ComputeBilling - ${Request.RequestName}">
			<con:settings/>
			<con:config xsi:type="con:RequestStep" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
				<con:interface>BasicHttpBinding_IBillingSimulationServices</con:interface>
				<con:operation>ComputeBilling</con:operation>
				<con:request name="ComputeBilling - ${Request.RequestName}" outgoingWss="" incomingWss="" timeout="" sslKeystore="" useWsAddressing="false" useWsReliableMessaging="false" wssPasswordType="">
					<con:settings>
						<con:setting id="com.eviware.soapui.impl.wsdl.WsdlRequest@request-headers">&lt;xml-fragment/></con:setting>
					</con:settings>
					<con:encoding>UTF-8</con:encoding>
					<con:endpoint>${Endpoint}</con:endpoint>
					<con:request><![CDATA[${Request.RequestPayload}]]></con:request>
					<con:assertion type="SOAP Response" name="SOAP Response"/>
					<con:assertion type="XPath Match" name="Match content of [s:Body]">
						<con:configuration>
							<path>declare namespace s='http://schemas.xmlsoap.org/soap/envelope/';
//s:Body[1]</path>
							<content><![CDATA[${Request.ResponseBodyPayload}]]></content>
							<allowWildcards>false</allowWildcards>
							<ignoreNamspaceDifferences>true</ignoreNamspaceDifferences>
							<ignoreComments>true</ignoreComments>
						</con:configuration>
					</con:assertion>
					<con:credentials>
						<con:username>${Token}</con:username>
						<con:password>${Password}</con:password>
						<con:authType>Preemptive</con:authType>
					</con:credentials>
					<con:jmsConfig JMSDeliveryMode="PERSISTENT"/>
					<con:jmsPropertyConfig/>
					<con:wsaConfig mustUnderstand="NONE" version="200508" action="http://services.axa.fr/OSE/BILLING/1/IBillingSimulationServices/ComputeBilling"/>
					<con:wsrmConfig version="1.2"/>
				</con:request>
			</con:config>
		</con:testStep>
</#list>
<con:properties/>
<con:reportParameters/>
</con:testCase>
<con:properties/>
<con:reportParameters/>
</con:testSuite>
<con:requirements/>
<con:properties/>
<con:wssContainer/>
<con:databaseConnectionContainer/>
<con:reporting>
	<con:reportTemplates/>
	<con:xmlTemplates/>
	<con:parameters/>
</con:reporting>
</con:soapui-project>