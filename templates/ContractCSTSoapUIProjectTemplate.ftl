<?xml version="1.0" encoding="UTF-8"?>
<con:soapui-project activeEnvironment="Default" name="${ProjectName}" resourceRoot="" soapui-version="4.5.1" abortOnError="false" runType="SEQUENTIAL" xmlns:con="http://eviware.com/soapui/config">
	<con:settings/>
	<con:interface xsi:type="con:WsdlInterface" wsaVersion="NONE" name="BasicHttpBinding_ContractServices" type="wsdl" bindingName="{http://services.axa.fr/OSE/Contract/1}BasicHttpBinding_ContractServices" soapVersion="1_1" anonymous="optional" definition="http://ws-ose-contract-cst-1-rec.ose-rec.axa-fr.intraxa/IMA6/ContractServices.svc?wsdl" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
		<con:settings/>
		<con:definitionCache type="TEXT" rootPart="${Endpoint}?wsdl">
			<con:part>
				<con:url>${Endpoint}?wsdl</con:url>
				<con:content>
					<![CDATA[<wsdl:definitions name="ContractServices" targetNamespace="http://services.axa.fr/OSE/Contract/1" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:wsx="http://schemas.xmlsoap.org/ws/2004/09/mex" xmlns:wsa10="http://www.w3.org/2005/08/addressing" xmlns:tns="http://services.axa.fr/OSE/Contract/1" xmlns:soap12="http://schemas.xmlsoap.org/wsdl/soap12/" xmlns:wsu="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd" xmlns:wsp="http://schemas.xmlsoap.org/ws/2004/09/policy" xmlns:wsap="http://schemas.xmlsoap.org/ws/2004/08/addressing/policy" xmlns:msc="http://schemas.microsoft.com/ws/2005/12/wsdl/contract" xmlns:wsa="http://schemas.xmlsoap.org/ws/2004/08/addressing" xmlns:wsam="http://www.w3.org/2007/05/addressing/metadata" xmlns:wsaw="http://www.w3.org/2006/05/addressing/wsdl" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:soapenc="http://schemas.xmlsoap.org/soap/encoding/">
  <wsp:Policy wsu:Id="BasicHttpBinding_ContractServices_policy">
    <wsp:ExactlyOne>
      <wsp:All>
        <http:BasicAuthentication xmlns:http="http://schemas.microsoft.com/ws/06/2004/policy/http"/>
      </wsp:All>
    </wsp:ExactlyOne>
  </wsp:Policy>
  <wsdl:types>
    <xsd:schema elementFormDefault="qualified" targetNamespace="http://services.axa.fr/OSE/Contract/1">
      <xsd:element name="GetContract">
        <xsd:complexType>
          <xsd:sequence>
            <xsd:element minOccurs="0" name="ContractNumber" nillable="true" type="xsd:string"/>
            <xsd:element minOccurs="0" name="User" nillable="true" type="xsd:string"/>
          </xsd:sequence>
        </xsd:complexType>
      </xsd:element>
      <xsd:element name="GetContractResult" nillable="true" type="q1:GetContractResult" xmlns:q1="http://schemas.axa.fr/OSE/Contract/1"/>
    </xsd:schema>
    <xsd:schema elementFormDefault="qualified" targetNamespace="http://schemas.axa.fr/OSE/Contract/1" xmlns:tns="http://schemas.axa.fr/OSE/Contract/1">
      <xsd:complexType name="GetContractResult">
        <xsd:sequence>
          <xsd:element minOccurs="0" name="Anomaly" nillable="true" type="tns:Anomaly"/>
          <xsd:element minOccurs="0" name="Contract" nillable="true" type="tns:Contract"/>
        </xsd:sequence>
      </xsd:complexType>
      <xsd:element name="GetContractResult" nillable="true" type="tns:GetContractResult"/>
      <xsd:complexType name="Anomaly">
        <xsd:sequence>
          <xsd:element minOccurs="0" name="Code" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="Label" nillable="true" type="xsd:string"/>
        </xsd:sequence>
      </xsd:complexType>
      <xsd:element name="Anomaly" nillable="true" type="tns:Anomaly"/>
      <xsd:complexType name="Contract">
        <xsd:sequence>
          <xsd:element minOccurs="0" name="PortFolio" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="ProductCode" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="FormulaCode" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="CGCode" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="CGVersion" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="TogetherTag1" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="TogetherTag2" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="TogetherTag3" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="TaxCode" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="MarketCode" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="DurationCode" type="xsd:int"/>
          <xsd:element minOccurs="0" name="EffectiveDate" nillable="true" type="xsd:dateTime"/>
          <xsd:element minOccurs="0" name="EndDate" nillable="true" type="xsd:dateTime"/>
          <xsd:element minOccurs="0" name="TermDay" type="xsd:int"/>
          <xsd:element minOccurs="0" name="TermMonth" type="xsd:int"/>
          <xsd:element minOccurs="0" name="FractioningCode" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="Notice" type="xsd:int"/>
          <xsd:element minOccurs="0" name="ContractNumber" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="IsCoInsurance" type="xsd:boolean"/>
          <xsd:element minOccurs="0" name="DerogatedPoints" type="xsd:decimal"/>
          <xsd:element minOccurs="0" name="DerogatedSign" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="ManagerId" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="CustomerRelationshipId" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="IsCashForced" type="xsd:boolean"/>
          <xsd:element minOccurs="0" name="ForcedCashAmount" nillable="true" type="xsd:decimal"/>
          <xsd:element minOccurs="0" name="IndexValue" nillable="true" type="xsd:int"/>
          <xsd:element minOccurs="0" name="IndexLetter" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="AreFeesIncludedToCash" type="xsd:boolean"/>
          <xsd:element minOccurs="0" name="SecondaryBrokerage" nillable="true" type="tns:SecondaryBrokerage"/>
          <xsd:element minOccurs="0" name="MainRevisionData" nillable="true" type="tns:MainRevisionData"/>
          <xsd:element minOccurs="0" name="Subscriptor" nillable="true" type="tns:Subscriptor"/>
          <xsd:element minOccurs="0" name="CommissionsCollection" nillable="true" type="tns:CommissionsCollection"/>
          <xsd:element minOccurs="0" name="BillingElementsCollection" nillable="true" type="tns:BillingElementsCollection"/>
          <xsd:element minOccurs="0" name="RiskNature" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="State" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="OrderNumber" type="xsd:int"/>
          <xsd:element minOccurs="0" name="SpecialTagsCollection" nillable="true" type="tns:SpecialTagsCollection"/>
          <xsd:element minOccurs="0" name="AnnexTagsCollection" nillable="true" type="tns:AnnexTagsCollection"/>
          <xsd:element minOccurs="0" name="NafCode" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="CompanyCodeProvider" type="xsd:int"/>
          <xsd:element minOccurs="0" name="ProviderType" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="AgencyProvider" type="xsd:int"/>
          <xsd:element minOccurs="0" name="EffectiveDateHour" type="xsd:int"/>
          <xsd:element minOccurs="0" name="EffectiveDateMinute" type="xsd:int"/>
          <xsd:element minOccurs="0" name="IsImmediateWarranty" type="xsd:boolean"/>
          <xsd:element minOccurs="0" name="SubmissionNumber" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="EmissionDate" nillable="true" type="xsd:dateTime"/>
          <xsd:element minOccurs="0" name="CashPremiumOption" type="xsd:boolean"/>
          <xsd:element minOccurs="0" name="RiskCategoryCollection" nillable="true" type="q2:RiskCategoryCollection" xmlns:q2="http://schemas.axa.fr/ose/contract/1"/>
          <xsd:element minOccurs="0" name="RiskAdress" nillable="true" type="tns:RiskAdress"/>
          <xsd:element minOccurs="0" name="InitialEffectiveDate" nillable="true" type="xsd:dateTime"/>
          <xsd:element minOccurs="0" name="TermRate" type="xsd:decimal"/>
          <xsd:element minOccurs="0" name="DIRate" type="xsd:decimal"/>
          <xsd:element minOccurs="0" name="IsDirectDebit" type="xsd:boolean"/>
          <xsd:element minOccurs="0" name="TargetType" type="q3:TargetType" xmlns:q3="http://schemas.axa.fr/ose/contract/1"/>
          <xsd:element minOccurs="0" name="CoefTechAssistance" type="xsd:decimal"/>
        </xsd:sequence>
      </xsd:complexType>
      <xsd:element name="Contract" nillable="true" type="tns:Contract"/>
      <xsd:complexType name="SecondaryBrokerage">
        <xsd:sequence>
          <xsd:element minOccurs="0" name="PortFolio" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="BrokerageRate" type="xsd:decimal"/>
          <xsd:element minOccurs="0" name="BrokerageBase" type="xsd:int"/>
        </xsd:sequence>
      </xsd:complexType>
      <xsd:element name="SecondaryBrokerage" nillable="true" type="tns:SecondaryBrokerage"/>
      <xsd:complexType name="MainRevisionData">
        <xsd:sequence>
          <xsd:element minOccurs="0" name="RevisionType" type="xsd:int"/>
          <xsd:element minOccurs="0" name="DeclarationSendDate" nillable="true" type="xsd:dateTime"/>
          <xsd:element minOccurs="0" name="DeclarationBeginDate" nillable="true" type="xsd:dateTime"/>
          <xsd:element minOccurs="0" name="DeclarationEndDate" nillable="true" type="xsd:dateTime"/>
          <xsd:element minOccurs="0" name="MinimumAmount" type="xsd:int"/>
          <xsd:element minOccurs="0" name="MaximumRefundRate" type="xsd:decimal"/>
          <xsd:element minOccurs="0" name="BalanceDay" type="xsd:int"/>
          <xsd:element minOccurs="0" name="BalanceMonth" type="xsd:int"/>
          <xsd:element minOccurs="0" name="ActualisationRate" type="xsd:decimal"/>
          <xsd:element minOccurs="0" name="IsReturnedToService" type="xsd:boolean"/>
          <xsd:element minOccurs="0" name="RevisionFrequencyCode" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="PeRevisionType" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="FreeRevisionCriteria" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="FreeRevisionCriteriaFull" nillable="true" type="xsd:string"/>
        </xsd:sequence>
      </xsd:complexType>
      <xsd:element name="MainRevisionData" nillable="true" type="tns:MainRevisionData"/>
      <xsd:complexType name="Subscriptor">
        <xsd:sequence>
          <xsd:element minOccurs="0" name="CustomerCode" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="SIRETCode" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="Title" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="Name" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="ShortName" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="AddressLine1" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="AddressLine2" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="AddressLine3" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="Country" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="PostalCode" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="City" nillable="true" type="xsd:string"/>
        </xsd:sequence>
      </xsd:complexType>
      <xsd:element name="Subscriptor" nillable="true" type="tns:Subscriptor"/>
      <xsd:complexType name="CommissionsCollection">
        <xsd:sequence>
          <xsd:element minOccurs="0" maxOccurs="unbounded" name="Commission" nillable="true" type="tns:Commission"/>
        </xsd:sequence>
      </xsd:complexType>
      <xsd:element name="CommissionsCollection" nillable="true" type="tns:CommissionsCollection"/>
      <xsd:complexType name="Commission">
        <xsd:sequence>
          <xsd:element minOccurs="0" name="CommissionType" nillable="true" type="xsd:string"/>
        </xsd:sequence>
      </xsd:complexType>
      <xsd:element name="Commission" nillable="true" type="tns:Commission"/>
      <xsd:complexType name="BillingElementsCollection">
        <xsd:sequence>
          <xsd:element minOccurs="0" maxOccurs="unbounded" name="BillingElement" nillable="true" type="tns:BillingElement"/>
        </xsd:sequence>
      </xsd:complexType>
      <xsd:element name="BillingElementsCollection" nillable="true" type="tns:BillingElementsCollection"/>
      <xsd:complexType name="BillingElement">
        <xsd:sequence>
          <xsd:element minOccurs="0" name="UTCode" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="VATExclPremium" type="xsd:decimal"/>
          <xsd:element minOccurs="0" name="PremiumNature" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="RevisionCriteriaCollection" nillable="true" type="tns:RevisionCriteriaCollection"/>
        </xsd:sequence>
      </xsd:complexType>
      <xsd:element name="BillingElement" nillable="true" type="tns:BillingElement"/>
      <xsd:complexType name="RevisionCriteriaCollection">
        <xsd:sequence>
          <xsd:element minOccurs="0" maxOccurs="unbounded" name="RevisionCriteria" nillable="true" type="tns:RevisionCriteria"/>
        </xsd:sequence>
      </xsd:complexType>
      <xsd:element name="RevisionCriteriaCollection" nillable="true" type="tns:RevisionCriteriaCollection"/>
      <xsd:complexType name="RevisionCriteria">
        <xsd:sequence>
          <xsd:element minOccurs="0" name="RevisionCriteriaCode" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="RevisionCriteriaUnityCode" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="RevisionCriteriaRateOrAmount" type="xsd:decimal"/>
          <xsd:element minOccurs="0" name="RevisionCriteriaFloor" type="xsd:int"/>
          <xsd:element minOccurs="0" name="RevisionCriteriaBase" type="xsd:int"/>
          <xsd:element minOccurs="0" name="RevisionCriteriaTrendRate" nillable="true" type="xsd:decimal"/>
          <xsd:element minOccurs="0" name="RevisionCriteriaType" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="RevisionCriteriaInsuredCount" type="xsd:int"/>
        </xsd:sequence>
      </xsd:complexType>
      <xsd:element name="RevisionCriteria" nillable="true" type="tns:RevisionCriteria"/>
      <xsd:complexType name="SpecialTagsCollection">
        <xsd:sequence>
          <xsd:element minOccurs="0" maxOccurs="unbounded" name="SpecialTag" nillable="true" type="tns:SpecialTag"/>
        </xsd:sequence>
      </xsd:complexType>
      <xsd:element name="SpecialTagsCollection" nillable="true" type="tns:SpecialTagsCollection"/>
      <xsd:complexType name="SpecialTag">
        <xsd:sequence>
          <xsd:element minOccurs="0" name="TagValue" nillable="true" type="xsd:string"/>
        </xsd:sequence>
      </xsd:complexType>
      <xsd:element name="SpecialTag" nillable="true" type="tns:SpecialTag"/>
      <xsd:complexType name="AnnexTagsCollection">
        <xsd:sequence>
          <xsd:element minOccurs="0" maxOccurs="unbounded" name="AnnexTag" nillable="true" type="tns:AnnexTag"/>
        </xsd:sequence>
      </xsd:complexType>
      <xsd:element name="AnnexTagsCollection" nillable="true" type="tns:AnnexTagsCollection"/>
      <xsd:complexType name="AnnexTag">
        <xsd:sequence>
          <xsd:element minOccurs="0" name="TagValue" nillable="true" type="xsd:string"/>
        </xsd:sequence>
      </xsd:complexType>
      <xsd:element name="AnnexTag" nillable="true" type="tns:AnnexTag"/>
      <xsd:complexType name="RiskAdress">
        <xsd:sequence>
          <xsd:element minOccurs="0" name="Title" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="Name" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="ShortName" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="AddressLine1" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="AddressLine2" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="AddressLine3" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="Country" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="PostalCode" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="City" nillable="true" type="xsd:string"/>
        </xsd:sequence>
      </xsd:complexType>
      <xsd:element name="RiskAdress" nillable="true" type="tns:RiskAdress"/>
      <xsd:simpleType name="TypeDENombre">
        <xsd:restriction base="xsd:string">
          <xsd:enumeration value="Unknown"/>
          <xsd:enumeration value="NbreTotalVeh"/>
          <xsd:enumeration value="NbreVehParCategorie"/>
        </xsd:restriction>
      </xsd:simpleType>
      <xsd:element name="TypeDENombre" nillable="true" type="tns:TypeDENombre"/>
    </xsd:schema>
    <xsd:schema elementFormDefault="qualified" targetNamespace="http://schemas.axa.fr/ose/contract/1" xmlns:tns="http://schemas.axa.fr/ose/contract/1">
      <xsd:complexType name="RiskCategoryCollection">
        <xsd:sequence>
          <xsd:element minOccurs="0" maxOccurs="unbounded" name="RiskCategory" nillable="true" type="tns:RiskCategory"/>
        </xsd:sequence>
      </xsd:complexType>
      <xsd:element name="RiskCategoryCollection" nillable="true" type="tns:RiskCategoryCollection"/>
      <xsd:complexType name="RiskCategory">
        <xsd:sequence>
          <xsd:element minOccurs="0" name="CategoryTitle" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="DataRiskAlphaCollection" nillable="true" type="tns:DataRiskAlphaCollection"/>
        </xsd:sequence>
      </xsd:complexType>
      <xsd:element name="RiskCategory" nillable="true" type="tns:RiskCategory"/>
      <xsd:complexType name="DataRiskAlphaCollection">
        <xsd:sequence>
          <xsd:element minOccurs="0" maxOccurs="unbounded" name="DataRiskAlpha" nillable="true" type="tns:DataRiskAlpha"/>
        </xsd:sequence>
      </xsd:complexType>
      <xsd:element name="DataRiskAlphaCollection" nillable="true" type="tns:DataRiskAlphaCollection"/>
      <xsd:complexType name="DataRiskAlpha">
        <xsd:sequence>
          <xsd:element minOccurs="0" name="Label" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="Position" type="xsd:int"/>
          <xsd:element minOccurs="0" name="FieldValue" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="FieldValueCode" nillable="true" type="xsd:string"/>
        </xsd:sequence>
      </xsd:complexType>
      <xsd:element name="DataRiskAlpha" nillable="true" type="tns:DataRiskAlpha"/>
      <xsd:simpleType name="TargetType">
        <xsd:restriction base="xsd:string">
          <xsd:enumeration value="None"/>
          <xsd:enumeration value="EN"/>
          <xsd:enumeration value="PP"/>
        </xsd:restriction>
      </xsd:simpleType>
      <xsd:element name="TargetType" nillable="true" type="tns:TargetType"/>
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
          <xsd:element minOccurs="0" name="Message" nillable="true" type="xsd:string"/>
        </xsd:sequence>
      </xsd:complexType>
      <xsd:element name="ErreurInterne" nillable="true" type="tns:ErreurInterne"/>
      <xsd:complexType name="ErreurAccesMF">
        <xsd:sequence>
          <xsd:element minOccurs="0" name="Message" nillable="true" type="xsd:string"/>
        </xsd:sequence>
      </xsd:complexType>
      <xsd:element name="ErreurAccesMF" nillable="true" type="tns:ErreurAccesMF"/>
      <xsd:complexType name="ErreurTechMF">
        <xsd:sequence>
          <xsd:element minOccurs="0" name="ErrorCode" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="Message" nillable="true" type="xsd:string"/>
        </xsd:sequence>
      </xsd:complexType>
      <xsd:element name="ErreurTechMF" nillable="true" type="tns:ErreurTechMF"/>
      <xsd:element name="GetFleetContract">
        <xsd:complexType>
          <xsd:sequence>
            <xsd:element minOccurs="0" name="ContractNumber" nillable="true" type="xsd:string"/>
            <xsd:element minOccurs="0" name="DateEmission" type="xsd:dateTime"/>
            <xsd:element minOccurs="0" name="User" nillable="true" type="xsd:string"/>
          </xsd:sequence>
        </xsd:complexType>
      </xsd:element>
      <xsd:complexType name="GetFleetContractResult">
        <xsd:sequence>
          <xsd:element minOccurs="0" name="AnomalyFleet" nillable="true" type="tns:AnomalyFleet"/>
          <xsd:element minOccurs="0" name="Flotte" nillable="true" type="tns:Flotte"/>
        </xsd:sequence>
      </xsd:complexType>
      <xsd:element name="GetFleetContractResult" nillable="true" type="tns:GetFleetContractResult"/>
      <xsd:complexType name="AnomalyFleet">
        <xsd:sequence>
          <xsd:element minOccurs="0" name="Code" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="Label" nillable="true" type="xsd:string"/>
        </xsd:sequence>
      </xsd:complexType>
      <xsd:element name="AnomalyFleet" nillable="true" type="tns:AnomalyFleet"/>
      <xsd:complexType name="Flotte">
        <xsd:sequence>
          <xsd:element minOccurs="0" name="AppelOffre" type="xsd:boolean"/>
          <xsd:element minOccurs="0" name="IsPrimeTTC" type="xsd:boolean"/>
          <xsd:element minOccurs="0" name="MontantBdg" type="xsd:int"/>
          <xsd:element minOccurs="0" name="MontantDta" type="xsd:int"/>
          <xsd:element minOccurs="0" name="MontantInc" type="xsd:int"/>
          <xsd:element minOccurs="0" name="MontantRc" type="xsd:int"/>
          <xsd:element minOccurs="0" name="MontantTtc" type="xsd:int"/>
          <xsd:element minOccurs="0" name="MontantVol" type="xsd:int"/>
          <xsd:element minOccurs="0" name="ActiviteMajoritaire" type="tns:ActiviteMajoritaire"/>
          <xsd:element minOccurs="0" name="CategoriePrincipale" type="tns:CategoriePrincipale"/>
          <xsd:element minOccurs="0" name="ModeDEGestion" type="tns:ModeDEGestion"/>
          <xsd:element minOccurs="0" name="TypeCoeffTechnique" type="tns:TypeCoeffTechnique"/>
          <xsd:element minOccurs="0" name="CorrectionTarif" nillable="true" type="tns:CorrectionTarif"/>
          <xsd:element minOccurs="0" name="ProcedureJudiciaire" nillable="true" type="tns:ProcedureJudiciaire"/>
          <xsd:element minOccurs="0" name="Sinistrabilite" nillable="true" type="tns:Sinistrabilite"/>
          <xsd:element minOccurs="0" name="CategorieCollection" nillable="true" type="tns:CategorieCollection"/>
          <xsd:element minOccurs="0" name="ActiviteEntreprise" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="Revision" nillable="true" type="tns:Revision"/>
          <xsd:element minOccurs="0" name="AssurancePrecedente" nillable="true" type="tns:AssurancePrecedente"/>
          <xsd:element minOccurs="0" name="CodeNaf" nillable="true" type="xsd:string"/>
        </xsd:sequence>
      </xsd:complexType>
      <xsd:element name="Flotte" nillable="true" type="tns:Flotte"/>
      <xsd:simpleType name="ActiviteMajoritaire">
        <xsd:restriction base="xsd:string">
          <xsd:enumeration value="Unknown"/>
          <xsd:enumeration value="Agricole"/>
          <xsd:enumeration value="Autoecole"/>
          <xsd:enumeration value="AmbulanceTransportSanitaire"/>
          <xsd:enumeration value="Artisan"/>
          <xsd:enumeration value="BatimentTravauxPublics"/>
          <xsd:enumeration value="CollectiviteLocale"/>
          <xsd:enumeration value="Commercial"/>
          <xsd:enumeration value="VehiculesDECollection"/>
          <xsd:enumeration value="FourgonFuneraire"/>
          <xsd:enumeration value="LocationSansChauffeur"/>
          <xsd:enumeration value="SapeurPompier"/>
          <xsd:enumeration value="TransportDEVoyageur"/>
          <xsd:enumeration value="Taxi"/>
          <xsd:enumeration value="TransportDEMarchandise"/>
          <xsd:enumeration value="Associations et activités de services à domicile"/>
          <xsd:enumeration value="Véhicule à usage d'entreprise"/>
        </xsd:restriction>
      </xsd:simpleType>
      <xsd:element name="ActiviteMajoritaire" nillable="true" type="tns:ActiviteMajoritaire"/>
      <xsd:simpleType name="CategoriePrincipale">
        <xsd:restriction base="xsd:string">
          <xsd:enumeration value="Unknown"/>
          <xsd:enumeration value="Tpc2EmeCategorie"/>
          <xsd:enumeration value="Autres1EreCategorie"/>
          <xsd:enumeration value="Tpm2EmeCategorie"/>
          <xsd:enumeration value="Tpm1EreCategorie"/>
          <xsd:enumeration value="Tpv2EmeCategorie"/>
          <xsd:enumeration value="Tpv1EreCategorie"/>
          <xsd:enumeration value="EnginsAgricoles"/>
          <xsd:enumeration value="EnginsDEChantier"/>
          <xsd:enumeration value="DeuxRoues"/>
          <xsd:enumeration value="ConservationTpcMoins3T5"/>
          <xsd:enumeration value="ConservationTpcPlus3T5"/>
          <xsd:enumeration value="ConservationTpmTpvMoins3T5"/>
          <xsd:enumeration value="ConservationTpmTpvPlus3T5"/>
        </xsd:restriction>
      </xsd:simpleType>
      <xsd:element name="CategoriePrincipale" nillable="true" type="tns:CategoriePrincipale"/>
      <xsd:simpleType name="ModeDEGestion">
        <xsd:restriction base="xsd:string">
          <xsd:enumeration value="Unknown"/>
          <xsd:enumeration value="Forfaitaire"/>
          <xsd:enumeration value="Revisable"/>
        </xsd:restriction>
      </xsd:simpleType>
      <xsd:element name="ModeDEGestion" nillable="true" type="tns:ModeDEGestion"/>
      <xsd:simpleType name="TypeCoeffTechnique">
        <xsd:restriction base="xsd:string">
          <xsd:enumeration value="Unknown"/>
          <xsd:enumeration value="ParGaranties"/>
          <xsd:enumeration value="ParContrat"/>
        </xsd:restriction>
      </xsd:simpleType>
      <xsd:element name="TypeCoeffTechnique" nillable="true" type="tns:TypeCoeffTechnique"/>
      <xsd:complexType name="CorrectionTarif">
        <xsd:sequence>
          <xsd:element minOccurs="0" name="ResponsabiliteCivileProtectionJuridique" type="xsd:decimal"/>
          <xsd:element minOccurs="0" name="Dommage" type="xsd:decimal"/>
          <xsd:element minOccurs="0" name="IncendieVol" type="xsd:decimal"/>
          <xsd:element minOccurs="0" name="BrisDEGlace" type="xsd:decimal"/>
          <xsd:element minOccurs="0" name="Assistance" type="xsd:decimal"/>
        </xsd:sequence>
      </xsd:complexType>
      <xsd:element name="CorrectionTarif" nillable="true" type="tns:CorrectionTarif"/>
      <xsd:complexType name="ProcedureJudiciaire">
        <xsd:sequence>
          <xsd:element minOccurs="0" name="InfractionCodeRoute" type="xsd:boolean"/>
          <xsd:element minOccurs="0" name="RetraitSuppressionPermis" type="xsd:boolean"/>
        </xsd:sequence>
      </xsd:complexType>
      <xsd:element name="ProcedureJudiciaire" nillable="true" type="tns:ProcedureJudiciaire"/>
      <xsd:complexType name="Sinistrabilite">
        <xsd:sequence>
          <xsd:element minOccurs="0" name="DateDEDebut" nillable="true" type="xsd:dateTime"/>
          <xsd:element minOccurs="0" name="DateDEFin" nillable="true" type="xsd:dateTime"/>
          <xsd:element minOccurs="0" name="NbreResponsablesMateriels" type="xsd:int"/>
          <xsd:element minOccurs="0" name="NbreResponsablesCorporels" type="xsd:int"/>
          <xsd:element minOccurs="0" name="NbreNonResponsableMateriel" type="xsd:int"/>
          <xsd:element minOccurs="0" name="NbreNonResponsablesCorporels" type="xsd:int"/>
          <xsd:element minOccurs="0" name="Dommage" type="xsd:int"/>
          <xsd:element minOccurs="0" name="Incendie" type="xsd:int"/>
          <xsd:element minOccurs="0" name="Vol" type="xsd:int"/>
          <xsd:element minOccurs="0" name="Bdg" type="xsd:int"/>
          <xsd:element minOccurs="0" name="Materiel" type="xsd:int"/>
          <xsd:element minOccurs="0" name="Coporel" type="xsd:int"/>
          <xsd:element minOccurs="0" name="Stationnement" type="xsd:int"/>
        </xsd:sequence>
      </xsd:complexType>
      <xsd:element name="Sinistrabilite" nillable="true" type="tns:Sinistrabilite"/>
      <xsd:complexType name="CategorieCollection">
        <xsd:sequence>
          <xsd:element minOccurs="0" maxOccurs="unbounded" name="Categorie" nillable="true" type="tns:Categorie"/>
        </xsd:sequence>
      </xsd:complexType>
      <xsd:element name="CategorieCollection" nillable="true" type="tns:CategorieCollection"/>
      <xsd:complexType name="Categorie">
        <xsd:sequence>
          <xsd:element minOccurs="0" name="NbreVeh" type="xsd:int"/>
          <xsd:element minOccurs="0" name="TexteSousCategorie" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="MontantAmenagement" type="xsd:int"/>
          <xsd:element minOccurs="0" name="MatiereDangereuse" type="xsd:boolean"/>
          <xsd:element minOccurs="0" name="TypeCategorie" type="tns:TypeCategorie"/>
          <xsd:element minOccurs="0" name="TypeSousCategorie" type="tns:TypeSousCategorie"/>
          <xsd:element minOccurs="0" name="GarantieCollection" nillable="true" type="tns:GarantieCollection"/>
          <xsd:element minOccurs="0" name="TypeMatiereDangereuse" type="tns:TypeMatiereDangereuse"/>
        </xsd:sequence>
      </xsd:complexType>
      <xsd:element name="Categorie" nillable="true" type="tns:Categorie"/>
      <xsd:simpleType name="TypeCategorie">
        <xsd:restriction base="xsd:string">
          <xsd:enumeration value="Unknown"/>
          <xsd:enumeration value="VehiculesMoins3T5"/>
          <xsd:enumeration value="RemorquesMoins3T5"/>
          <xsd:enumeration value="Camions"/>
          <xsd:enumeration value="TracteursRoutiers"/>
          <xsd:enumeration value="Autocars"/>
          <xsd:enumeration value="RemorquesPlus3T5"/>
          <xsd:enumeration value="SemiRemorques"/>
          <xsd:enumeration value="EnginsDEChantier"/>
          <xsd:enumeration value="EnginsAgricoles"/>
          <xsd:enumeration value="DeuxRouesMoins125CM3"/>
          <xsd:enumeration value="DeuxRouesPlus125CM3"/>
        </xsd:restriction>
      </xsd:simpleType>
      <xsd:element name="TypeCategorie" nillable="true" type="tns:TypeCategorie"/>
      <xsd:simpleType name="TypeSousCategorie">
        <xsd:restriction base="xsd:string">
          <xsd:enumeration value="Unknown"/>
          <xsd:enumeration value="MoinsDE3Ans"/>
          <xsd:enumeration value="TroisAnsETPlus"/>
          <xsd:enumeration value="MoinsDE4Ans"/>
          <xsd:enumeration value="QuatreAnsETPlus"/>
          <xsd:enumeration value="MoinsDE5Ans"/>
          <xsd:enumeration value="CinqAnsETPlus"/>
          <xsd:enumeration value="MoinsDE6Ans"/>
          <xsd:enumeration value="SixAnsETPlus"/>
          <xsd:enumeration value="MoinsDE7Ans"/>
          <xsd:enumeration value="SeptAnsETPlus"/>
          <xsd:enumeration value="MoinsDE8Ans"/>
          <xsd:enumeration value="HuitAnsETPlus"/>
          <xsd:enumeration value="MoinsDE10Ans"/>
          <xsd:enumeration value="DixAnsETPlus"/>
          <xsd:enumeration value="MoinsDE15244Euro"/>
          <xsd:enumeration value="PlusDE15244Euro"/>
          <xsd:enumeration value="MoinsDE22867Euro"/>
          <xsd:enumeration value="PlusDE22867Euro"/>
          <xsd:enumeration value="MoinsDE30489Euro"/>
          <xsd:enumeration value="PlusDE30489Euro"/>
          <xsd:enumeration value="MoinsDE38112Euro"/>
          <xsd:enumeration value="PlusDE38112Euro"/>
          <xsd:enumeration value="Autre"/>
        </xsd:restriction>
      </xsd:simpleType>
      <xsd:element name="TypeSousCategorie" nillable="true" type="tns:TypeSousCategorie"/>
      <xsd:complexType name="GarantieCollection">
        <xsd:sequence>
          <xsd:element minOccurs="0" maxOccurs="unbounded" name="Garantie" nillable="true" type="tns:Garantie"/>
        </xsd:sequence>
      </xsd:complexType>
      <xsd:element name="GarantieCollection" nillable="true" type="tns:GarantieCollection"/>
      <xsd:complexType name="Garantie">
        <xsd:sequence>
          <xsd:element minOccurs="0" name="Limite" type="xsd:int"/>
          <xsd:element minOccurs="0" name="Franchise" type="xsd:int"/>
          <xsd:element minOccurs="0" name="Capital" type="xsd:int"/>
          <xsd:element minOccurs="0" name="TypeGarantie" type="tns:TypeGarantie"/>
          <xsd:element minOccurs="0" name="TypeOption" type="tns:TypeOption"/>
        </xsd:sequence>
      </xsd:complexType>
      <xsd:element name="Garantie" nillable="true" type="tns:Garantie"/>
      <xsd:simpleType name="TypeGarantie">
        <xsd:restriction base="xsd:string">
          <xsd:enumeration value="Unknown"/>
          <xsd:enumeration value="GarantieRC"/>
          <xsd:enumeration value="GarantiePJ"/>
          <xsd:enumeration value="GarantieDomAccident"/>
          <xsd:enumeration value="GarantieDomColision"/>
          <xsd:enumeration value="GarantieInc"/>
          <xsd:enumeration value="GarantieBdg"/>
          <xsd:enumeration value="GarantieObjetPerso"/>
          <xsd:enumeration value="GarantieAutoRadio"/>
          <xsd:enumeration value="GarantiePerteFinanciere"/>
          <xsd:enumeration value="GarantiePeinturePub"/>
          <xsd:enumeration value="GarantieSecuriteConducteur"/>
          <xsd:enumeration value="GarantieAssistance"/>
          <xsd:enumeration value="GarantieAssistanceMedicale"/>
          <xsd:enumeration value="GarantieRemorquage"/>
          <xsd:enumeration value="GarantieVehRemplacement"/>
          <xsd:enumeration value="GarantieAbsorptionCorpsEtrangers"/>
          <xsd:enumeration value="GarantieMarchandisesTransportées"/>
          <xsd:enumeration value="GarantieVol"/>
          <xsd:enumeration value="GarantieDR"/>
          <xsd:enumeration value="GarantieRCFonc"/>
        </xsd:restriction>
      </xsd:simpleType>
      <xsd:element name="TypeGarantie" nillable="true" type="tns:TypeGarantie"/>
      <xsd:simpleType name="TypeOption">
        <xsd:restriction base="xsd:string">
          <xsd:enumeration value="Unknown"/>
          <xsd:enumeration value="Base"/>
          <xsd:enumeration value="Option1"/>
          <xsd:enumeration value="Option2"/>
          <xsd:enumeration value="Option3"/>
        </xsd:restriction>
      </xsd:simpleType>
      <xsd:element name="TypeOption" nillable="true" type="tns:TypeOption"/>
      <xsd:simpleType name="TypeMatiereDangereuse">
        <xsd:restriction base="xsd:string">
          <xsd:enumeration value="ProduitsNoirs"/>
          <xsd:enumeration value="ProduitsBlancs"/>
        </xsd:restriction>
      </xsd:simpleType>
      <xsd:element name="TypeMatiereDangereuse" nillable="true" type="tns:TypeMatiereDangereuse"/>
      <xsd:complexType name="Revision">
        <xsd:sequence>
          <xsd:element minOccurs="0" name="TypeRevision" type="tns:TypeRevision"/>
          <xsd:element minOccurs="0" name="MontantBrut" type="xsd:int"/>
          <xsd:element minOccurs="0" name="MontantCA" type="xsd:int"/>
          <xsd:element minOccurs="0" name="Unite" type="tns:Unite"/>
          <xsd:element minOccurs="0" name="MontantDeclare" type="xsd:int"/>
          <xsd:element minOccurs="0" name="MontantSalaireBrut" type="xsd:int"/>
          <xsd:element minOccurs="0" name="NbreDEKilometre" type="xsd:int"/>
          <xsd:element minOccurs="0" name="TypeDENombre" type="q4:TypeDENombre" xmlns:q4="http://schemas.axa.fr/OSE/Contract/1"/>
        </xsd:sequence>
      </xsd:complexType>
      <xsd:element name="Revision" nillable="true" type="tns:Revision"/>
      <xsd:simpleType name="TypeRevision">
        <xsd:restriction base="xsd:string">
          <xsd:enumeration value="Unknown"/>
          <xsd:enumeration value="RevisionCA"/>
          <xsd:enumeration value="RevisionSalaires"/>
          <xsd:enumeration value="RevisionKM"/>
          <xsd:enumeration value="RevisionVeh"/>
          <xsd:enumeration value="RevisionDemiDifference"/>
        </xsd:restriction>
      </xsd:simpleType>
      <xsd:element name="TypeRevision" nillable="true" type="tns:TypeRevision"/>
      <xsd:simpleType name="Unite">
        <xsd:restriction base="xsd:string">
          <xsd:enumeration value="Pourcentage"/>
          <xsd:enumeration value="Pourmillage"/>
          <xsd:enumeration value="Euro"/>
        </xsd:restriction>
      </xsd:simpleType>
      <xsd:element name="Unite" nillable="true" type="tns:Unite"/>
      <xsd:complexType name="AssurancePrecedente">
        <xsd:sequence>
          <xsd:element minOccurs="0" name="CreationEntreprise" type="xsd:boolean"/>
          <xsd:element minOccurs="0" name="DateCreation" nillable="true" type="xsd:dateTime"/>
          <xsd:element minOccurs="0" name="RisqueAssurePrecedemment" type="xsd:boolean"/>
          <xsd:element minOccurs="0" name="ContratPrecedentCollection" nillable="true" type="tns:ContratPrecedentCollection"/>
        </xsd:sequence>
      </xsd:complexType>
      <xsd:element name="AssurancePrecedente" nillable="true" type="tns:AssurancePrecedente"/>
      <xsd:complexType name="ContratPrecedentCollection">
        <xsd:sequence>
          <xsd:element minOccurs="0" maxOccurs="unbounded" name="ContratPrecedent" nillable="true" type="tns:ContratPrecedent"/>
        </xsd:sequence>
      </xsd:complexType>
      <xsd:element name="ContratPrecedentCollection" nillable="true" type="tns:ContratPrecedentCollection"/>
      <xsd:complexType name="ContratPrecedent">
        <xsd:sequence>
          <xsd:element minOccurs="0" name="NomCompagnie" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="NumeroContrat" nillable="true" type="xsd:string"/>
        </xsd:sequence>
      </xsd:complexType>
      <xsd:element name="ContratPrecedent" nillable="true" type="tns:ContratPrecedent"/>
    </xsd:schema>
    <xs:schema attributeFormDefault="qualified" elementFormDefault="qualified" targetNamespace="http://schemas.microsoft.com/2003/10/Serialization/" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:tns="http://schemas.microsoft.com/2003/10/Serialization/">
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
  <wsdl:message name="GetContract">
    <wsdl:part name="parameters" element="tns:GetContract"/>
  </wsdl:message>
  <wsdl:message name="GetContractResponse">
    <wsdl:part name="GetContractResult" element="tns:GetContractResult"/>
  </wsdl:message>
  <wsdl:message name="ContractServices_GetContract_AccesNonAutoriseFault_FaultMessage">
    <wsdl:part name="detail" element="q5:AccesNonAutorise" xmlns:q5="http://schemas.axa.fr/ose/contract/1"/>
  </wsdl:message>
  <wsdl:message name="ContractServices_GetContract_ArgumentInvalideFault_FaultMessage">
    <wsdl:part name="detail" element="q6:ArgumentInvalide" xmlns:q6="http://schemas.axa.fr/ose/contract/1"/>
  </wsdl:message>
  <wsdl:message name="ContractServices_GetContract_ErreurInterneFault_FaultMessage">
    <wsdl:part name="detail" element="q7:ErreurInterne" xmlns:q7="http://schemas.axa.fr/ose/contract/1"/>
  </wsdl:message>
  <wsdl:message name="ContractServices_GetContract_ErreurAccesMFFault_FaultMessage">
    <wsdl:part name="detail" element="q8:ErreurAccesMF" xmlns:q8="http://schemas.axa.fr/ose/contract/1"/>
  </wsdl:message>
  <wsdl:message name="ContractServices_GetContract_ErreurTechMFFault_FaultMessage">
    <wsdl:part name="detail" element="q9:ErreurTechMF" xmlns:q9="http://schemas.axa.fr/ose/contract/1"/>
  </wsdl:message>
  <wsdl:message name="GetFleetContract">
    <wsdl:part name="parameters" element="q10:GetFleetContract" xmlns:q10="http://schemas.axa.fr/ose/contract/1"/>
  </wsdl:message>
  <wsdl:message name="GetFleetContractResponse">
    <wsdl:part name="GetFleetContractResult" element="q11:GetFleetContractResult" xmlns:q11="http://schemas.axa.fr/ose/contract/1"/>
  </wsdl:message>
  <wsdl:message name="ContractServices_GetFleetContract_ErreurInterneFault_FaultMessage">
    <wsdl:part name="detail" element="q12:ErreurInterne" xmlns:q12="http://schemas.axa.fr/ose/contract/1"/>
  </wsdl:message>
  <wsdl:message name="ContractServices_GetFleetContract_ArgumentInvalideFault_FaultMessage">
    <wsdl:part name="detail" element="q13:ArgumentInvalide" xmlns:q13="http://schemas.axa.fr/ose/contract/1"/>
  </wsdl:message>
  <wsdl:message name="ContractServices_GetFleetContract_ErreurAccesMFFault_FaultMessage">
    <wsdl:part name="detail" element="q14:ErreurAccesMF" xmlns:q14="http://schemas.axa.fr/ose/contract/1"/>
  </wsdl:message>
  <wsdl:message name="ContractServices_GetFleetContract_ErreurTechMFFault_FaultMessage">
    <wsdl:part name="detail" element="q15:ErreurTechMF" xmlns:q15="http://schemas.axa.fr/ose/contract/1"/>
  </wsdl:message>
  <wsdl:message name="ContractServices_GetFleetContract_AccesNonAutoriseFault_FaultMessage">
    <wsdl:part name="detail" element="q16:AccesNonAutorise" xmlns:q16="http://schemas.axa.fr/ose/contract/1"/>
  </wsdl:message>
  <wsdl:portType name="ContractServices">
    <wsdl:operation name="GetContract">
      <wsdl:input wsaw:Action="http://services.axa.fr/OSE/Contract/1/ContractServices/GetContract" name="GetContract" message="tns:GetContract"/>
      <wsdl:output wsaw:Action="http://services.axa.fr/OSE/Contract/1/ContractServices/GetContractResponse" name="GetContractResponse" message="tns:GetContractResponse"/>
      <wsdl:fault wsaw:Action="http://services.axa.fr/OSE/Contract/1/ContractServices/GetContractAccesNonAutoriseFault" name="AccesNonAutoriseFault" message="tns:ContractServices_GetContract_AccesNonAutoriseFault_FaultMessage"/>
      <wsdl:fault wsaw:Action="http://services.axa.fr/OSE/Contract/1/ContractServices/GetContractArgumentInvalideFault" name="ArgumentInvalideFault" message="tns:ContractServices_GetContract_ArgumentInvalideFault_FaultMessage"/>
      <wsdl:fault wsaw:Action="http://services.axa.fr/OSE/Contract/1/ContractServices/GetContractErreurInterneFault" name="ErreurInterneFault" message="tns:ContractServices_GetContract_ErreurInterneFault_FaultMessage"/>
      <wsdl:fault wsaw:Action="http://services.axa.fr/OSE/Contract/1/ContractServices/GetContractErreurAccesMFFault" name="ErreurAccesMFFault" message="tns:ContractServices_GetContract_ErreurAccesMFFault_FaultMessage"/>
      <wsdl:fault wsaw:Action="http://services.axa.fr/OSE/Contract/1/ContractServices/GetContractErreurTechMFFault" name="ErreurTechMFFault" message="tns:ContractServices_GetContract_ErreurTechMFFault_FaultMessage"/>
    </wsdl:operation>
    <wsdl:operation name="GetFleetContract">
      <wsdl:input wsaw:Action="http://services.axa.fr/OSE/Contract/1/ContractServices/GetFleetContract" name="GetFleetContract" message="tns:GetFleetContract"/>
      <wsdl:output wsaw:Action="http://services.axa.fr/OSE/Contract/1/ContractServices/GetFleetContractResponse" name="GetFleetContractResponse" message="tns:GetFleetContractResponse"/>
      <wsdl:fault wsaw:Action="http://services.axa.fr/OSE/Contract/1/ContractServices/GetFleetContractErreurInterneFault" name="ErreurInterneFault" message="tns:ContractServices_GetFleetContract_ErreurInterneFault_FaultMessage"/>
      <wsdl:fault wsaw:Action="http://services.axa.fr/OSE/Contract/1/ContractServices/GetFleetContractArgumentInvalideFault" name="ArgumentInvalideFault" message="tns:ContractServices_GetFleetContract_ArgumentInvalideFault_FaultMessage"/>
      <wsdl:fault wsaw:Action="http://services.axa.fr/OSE/Contract/1/ContractServices/GetFleetContractErreurAccesMFFault" name="ErreurAccesMFFault" message="tns:ContractServices_GetFleetContract_ErreurAccesMFFault_FaultMessage"/>
      <wsdl:fault wsaw:Action="http://services.axa.fr/OSE/Contract/1/ContractServices/GetFleetContractErreurTechMFFault" name="ErreurTechMFFault" message="tns:ContractServices_GetFleetContract_ErreurTechMFFault_FaultMessage"/>
      <wsdl:fault wsaw:Action="http://services.axa.fr/OSE/Contract/1/ContractServices/GetFleetContractAccesNonAutoriseFault" name="AccesNonAutoriseFault" message="tns:ContractServices_GetFleetContract_AccesNonAutoriseFault_FaultMessage"/>
    </wsdl:operation>
  </wsdl:portType>
  <wsdl:binding name="BasicHttpBinding_ContractServices" type="tns:ContractServices">
    <wsp:PolicyReference URI="#BasicHttpBinding_ContractServices_policy"/>
    <soap:binding transport="http://schemas.xmlsoap.org/soap/http"/>
    <wsdl:operation name="GetContract">
      <soap:operation soapAction="http://services.axa.fr/OSE/Contract/1/ContractServices/GetContract" style="document"/>
      <wsdl:input name="GetContract">
        <soap:body use="literal"/>
      </wsdl:input>
      <wsdl:output name="GetContractResponse">
        <soap:body use="literal"/>
      </wsdl:output>
      <wsdl:fault name="AccesNonAutoriseFault">
        <soap:fault name="AccesNonAutoriseFault" use="literal"/>
      </wsdl:fault>
      <wsdl:fault name="ArgumentInvalideFault">
        <soap:fault name="ArgumentInvalideFault" use="literal"/>
      </wsdl:fault>
      <wsdl:fault name="ErreurInterneFault">
        <soap:fault name="ErreurInterneFault" use="literal"/>
      </wsdl:fault>
      <wsdl:fault name="ErreurAccesMFFault">
        <soap:fault name="ErreurAccesMFFault" use="literal"/>
      </wsdl:fault>
      <wsdl:fault name="ErreurTechMFFault">
        <soap:fault name="ErreurTechMFFault" use="literal"/>
      </wsdl:fault>
    </wsdl:operation>
    <wsdl:operation name="GetFleetContract">
      <soap:operation soapAction="http://services.axa.fr/OSE/Contract/1/ContractServices/GetFleetContract" style="document"/>
      <wsdl:input name="GetFleetContract">
        <soap:body use="literal"/>
      </wsdl:input>
      <wsdl:output name="GetFleetContractResponse">
        <soap:body use="literal"/>
      </wsdl:output>
      <wsdl:fault name="ErreurInterneFault">
        <soap:fault name="ErreurInterneFault" use="literal"/>
      </wsdl:fault>
      <wsdl:fault name="ArgumentInvalideFault">
        <soap:fault name="ArgumentInvalideFault" use="literal"/>
      </wsdl:fault>
      <wsdl:fault name="ErreurAccesMFFault">
        <soap:fault name="ErreurAccesMFFault" use="literal"/>
      </wsdl:fault>
      <wsdl:fault name="ErreurTechMFFault">
        <soap:fault name="ErreurTechMFFault" use="literal"/>
      </wsdl:fault>
      <wsdl:fault name="AccesNonAutoriseFault">
        <soap:fault name="AccesNonAutoriseFault" use="literal"/>
      </wsdl:fault>
    </wsdl:operation>
  </wsdl:binding>
  <wsdl:service name="ContractServices">
    <wsdl:documentation>
      <description>Service de lecture de contrat IARD Entreprise.</description>
      <version>1.0.0</version>
    </wsdl:documentation>
    <wsdl:port name="BasicHttpBinding_ContractServices" binding="tns:BasicHttpBinding_ContractServices">
      <soap:address location="http://ws-ose-contract-cst-1-rec.ose-rec.axa-fr.intraxa/IMA6/ContractServices.svc"/>
    </wsdl:port>
  </wsdl:service>
</wsdl:definitions>]]></con:content>
				<con:type>http://schemas.xmlsoap.org/wsdl/</con:type>
			</con:part>
		</con:definitionCache>
		<con:endpoints>
			<con:endpoint>${Endpoint}</con:endpoint>
		</con:endpoints>
		<con:operation isOneWay="false" action="http://services.axa.fr/OSE/Contract/1/ContractServices/GetContract" name="GetContract" bindingOperationName="GetContract" type="Request-Response" outputName="GetContractResponse" inputName="GetContract" receivesAttachments="false" sendsAttachments="false" anonymous="optional">
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
		<con:wsaConfig mustUnderstand="NONE" version="200508" action="http://services.axa.fr/OSE/Contract/1/ContractServices/GetContract"/>
		<con:wsrmConfig version="1.2"/>
	</con:call>
</#list>
</con:operation>
</con:interface><con:testSuite name="TestSuite 1">
	<con:settings/>
	<con:runType>SEQUENTIAL</con:runType>
	<con:testCase failOnError="false" failTestCaseOnErrors="true" keepSession="false" maxResults="0" name="TestCase 1" searchProperties="true" id="d165a2d4-ca97-4cd1-8124-cfb2168a452d">
		<con:settings/>
		
<#list Requests as Request>
		<con:testStep type="request" name="GetContract - ${Request.RequestName}">
			<con:settings/>
			<con:config xsi:type="con:RequestStep" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
				<con:interface>BasicHttpBinding_ContractServices</con:interface>
				<con:operation>GetContract</con:operation>
				<con:request name="GetContract - ${Request.RequestName}" outgoingWss="" incomingWss="" timeout="" sslKeystore="" useWsAddressing="false" useWsReliableMessaging="false" wssPasswordType="">
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
					<con:wsaConfig mustUnderstand="NONE" version="200508" action="http://services.axa.fr/OSE/Contract/1/ContractServices/GetContract"/>
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