<?xml version="1.0" encoding="UTF-8"?>
<con:soapui-project activeEnvironment="Default" name="${ProjectName}" resourceRoot="" soapui-version="4.6.3" xmlns:con="http://eviware.com/soapui/config">
	<con:settings/>
	<con:interface xsi:type="con:WsdlInterface" wsaVersion="NONE" name="BasicHttpBinding_IControlSimulationServices" type="wsdl" bindingName="{http://services.axa.fr/OSE/CONTROL/1}BasicHttpBinding_IControlSimulationServices" soapVersion="1_1" anonymous="optional" definition="http://eip-mediator-wsint-tstenv-sedc.applications.services.axa-tech.intraxa/ws/ose-control-simul-1-controlsimulationservices?wsdl" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
		<con:settings/>
		<con:definitionCache type="TEXT" rootPart="${Endpoint}?wsdl">
			<con:part>
				<con:url>${Endpoint}?wsdl</con:url>
				<con:content>
					<![CDATA[<wsdl:definitions name="ose-control-simul-1-controlsimulationservices" targetNamespace="http://services.axa.fr/OSE/CONTROL/1" xmlns:wsp="http://schemas.xmlsoap.org/ws/2004/09/policy" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:q3="http://schemas.axa.fr/OSE/CONTROL/1" xmlns:wsx="http://schemas.xmlsoap.org/ws/2004/09/mex" xmlns:wsa10="http://www.w3.org/2005/08/addressing" xmlns:wsap="http://schemas.xmlsoap.org/ws/2004/08/addressing/policy" xmlns:wsam="http://www.w3.org/2007/05/addressing/metadata" xmlns:wsu="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd" xmlns:soapenc="http://schemas.xmlsoap.org/soap/encoding/" xmlns:wsa="http://schemas.xmlsoap.org/ws/2004/08/addressing" xmlns:wsaw="http://www.w3.org/2006/05/addressing/wsdl" xmlns:tns="http://services.axa.fr/OSE/CONTROL/1" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:soap12="http://schemas.xmlsoap.org/wsdl/soap12/" xmlns:msc="http://schemas.microsoft.com/ws/2005/12/wsdl/contract">
  <wsdl:types>
    <xsd:schema elementFormDefault="qualified" targetNamespace="http://services.axa.fr/OSE/CONTROL/1">
      <xsd:element name="EnsureSubscriptionData">
        <xsd:complexType>
          <xsd:sequence>
            <xsd:element minOccurs="0" name="ContextOfControl" nillable="true" type="q1:ContextOfControl" xmlns:q1="http://schemas.axa.fr/OSE/CONTROL/1"/>
            <xsd:element minOccurs="0" name="User" nillable="true" type="xsd:string"/>
          </xsd:sequence>
        </xsd:complexType>
      </xsd:element>
      <xsd:element name="Anomalie" nillable="true" type="q2:Anomalie" xmlns:q2="http://schemas.axa.fr/OSE/CONTROL/1"/>
    </xsd:schema>
    <xsd:schema elementFormDefault="qualified" targetNamespace="http://schemas.axa.fr/OSE/CONTROL/1" xmlns:ser="http://schemas.microsoft.com/2003/10/Serialization/" xmlns:tns="http://schemas.axa.fr/OSE/CONTROL/1">
      <xsd:complexType name="ContextOfControl">
        <xsd:sequence>
          <xsd:element minOccurs="0" name="ListeCtrl" nillable="true" type="tns:ListeCtrl"/>
          <xsd:element minOccurs="0" name="ListeAtome" nillable="true" type="tns:ListeAtome"/>
          <xsd:element minOccurs="0" name="ListeDonnees" nillable="true" type="tns:ListeDonnees"/>
          <xsd:element minOccurs="0" name="ListeCtrlExt" nillable="true" type="tns:ListeCtrlExt"/>
          <xsd:element minOccurs="0" name="ListeAtomeExt" nillable="true" type="tns:ListeAtomeExt"/>
          <xsd:element minOccurs="0" name="ControleDateEffet" nillable="true" type="xsd:string"/>
        </xsd:sequence>
      </xsd:complexType>
      <xsd:element name="ContextOfControl" nillable="true" type="tns:ContextOfControl"/>
      <xsd:complexType name="ListeCtrl">
        <xsd:sequence>
          <xsd:element minOccurs="0" name="CtrlCoherencePr" type="xsd:boolean"/>
          <xsd:element minOccurs="0" name="CtrlClient" type="xsd:boolean"/>
          <xsd:element minOccurs="0" name="CtrlPortefeuille" type="xsd:boolean"/>
          <xsd:element minOccurs="0" name="CtrlDateEffet" type="xsd:boolean"/>
          <xsd:element minOccurs="0" name="CtrlCoass" type="xsd:boolean"/>
          <xsd:element minOccurs="0" name="CtrlCresultat" type="xsd:boolean"/>
          <xsd:element minOccurs="0" name="CtrlPreNumcnt" type="xsd:boolean"/>
          <xsd:element minOccurs="0" name="CtrlCntSigne" type="xsd:boolean"/>
          <xsd:element minOccurs="0" name="CtrlUv" type="xsd:boolean"/>
          <xsd:element minOccurs="0" name="CtrlFormule" type="xsd:boolean"/>
          <xsd:element minOccurs="0" name="CtrlMarche" type="xsd:boolean"/>
          <xsd:element minOccurs="0" name="CtrlEchan" type="xsd:boolean"/>
          <xsd:element minOccurs="0" name="CtrlFract" type="xsd:boolean"/>
          <xsd:element minOccurs="0" name="CtrlPreres" type="xsd:boolean"/>
          <xsd:element minOccurs="0" name="CtrlCodtax" type="xsd:boolean"/>
          <xsd:element minOccurs="0" name="CtrlFeffDurcnt" type="xsd:boolean"/>
          <xsd:element minOccurs="0" name="CtrlCotis" type="xsd:boolean"/>
          <xsd:element minOccurs="0" name="CtrlDerogation" type="xsd:boolean"/>
          <xsd:element minOccurs="0" name="CtrlCocom" type="xsd:boolean"/>
          <xsd:element minOccurs="0" name="CtrlRevRc" type="xsd:boolean"/>
          <xsd:element minOccurs="0" name="CtrlRevPe" type="xsd:boolean"/>
          <xsd:element minOccurs="0" name="CtrlClauses" type="xsd:boolean"/>
          <xsd:element minOccurs="0" name="CtrlCg" type="xsd:boolean"/>
          <xsd:element minOccurs="0" name="CtrlIndice" type="xsd:boolean"/>
          <xsd:element minOccurs="0" name="CtrlPj" type="xsd:boolean"/>
          <xsd:element minOccurs="0" name="CtrlTime" type="xsd:boolean"/>
          <xsd:element minOccurs="0" name="CtrlAppcie" type="xsd:boolean"/>
          <xsd:element minOccurs="0" name="CtrlAdresse" type="xsd:boolean"/>
          <xsd:element minOccurs="0" name="CtrlGest" type="xsd:boolean"/>
          <xsd:element minOccurs="0" name="CtrlSiret" type="xsd:boolean"/>
          <xsd:element minOccurs="0" name="CtrlTitre" type="xsd:boolean"/>
        </xsd:sequence>
      </xsd:complexType>
      <xsd:element name="ListeCtrl" nillable="true" type="tns:ListeCtrl"/>
      <xsd:complexType name="ListeAtome">
        <xsd:sequence>
          <xsd:element minOccurs="0" name="AtomeCohePr" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="AtomeCli" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="AtomePtf" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="AtomeDteffc" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="AtomeCoas" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="AtomeClauseR1" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="AtomeClauseR2" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="AtomePrenum" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="AtomeRs" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="AtomeUv" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="AtomeForm" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="AtomeMarche" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="AtomeDurcnt" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="AtomeEchanm" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="AtomeEchanj" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="AtomeFract" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="AtomePreres" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="AtomeCodtax" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="AtomeDtfinc" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="AtomeNbut" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="TabAtomeUt" nillable="true" type="tns:ArrayOfTabAtomeUt"/>
          <xsd:element minOccurs="0" name="AtomeMtcttc" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="AtomeNbpts" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="AtomeSignpts" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="AtomeCdptfsec" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="AtomeTxcomsec" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="AtomeMtassec" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="AtomeMntmin" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="AtomeTauact" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="AtomeRnbmax" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="AtomeFrerev" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="AtomeDtfindc" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="AtomePdtbilc" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="AtomeFrmgar" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="AtomeRetsrv" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="AtomeRcptrev" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="TabAtomeRevrc" nillable="true" type="tns:ArrayOfTabAtomeRevrc"/>
          <xsd:element minOccurs="0" name="AtomeCritere035" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="AtomeLiblong035" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="AtomePeptrev" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="TabAtomeRevpe" nillable="true" type="tns:ArrayOfTabAtomeRevpe"/>
          <xsd:element minOccurs="0" name="AtomeClause1" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="AtomeClause2" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="AtomeClause3" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="AtomeClause4" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="AtomeClause5" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="AtomeClause6" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="AtomeRefcg" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="AtomeForcpt" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="AtomeLettreind" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="AtomeDtforcind" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="AtomePj" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="AtomeAdr1" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="AtomeAdr2" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="AtomeAdr3" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="AtomeCpostal" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="AtomeVille" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="AtomePays" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="AtomeHeure" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="AtomeMinute" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="AtomeAppcie" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="AtomeTypapp" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="AtomeGest" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="AtomeSiret" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="AtomeTitre" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="AtomeOptcpt" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="AtomeAppagt" nillable="true" type="xsd:string"/>
        </xsd:sequence>
      </xsd:complexType>
      <xsd:element name="ListeAtome" nillable="true" type="tns:ListeAtome"/>
      <xsd:complexType name="ArrayOfTabAtomeUt">
        <xsd:sequence>
          <xsd:element maxOccurs="unbounded" minOccurs="0" name="TabAtomeUt" nillable="true" type="tns:TabAtomeUt"/>
        </xsd:sequence>
      </xsd:complexType>
      <xsd:element name="ArrayOfTabAtomeUt" nillable="true" type="tns:ArrayOfTabAtomeUt"/>
      <xsd:complexType name="TabAtomeUt">
        <xsd:sequence>
          <xsd:element minOccurs="0" name="AtomeMtcot" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="AtomeNatcot" nillable="true" type="xsd:string"/>
        </xsd:sequence>
      </xsd:complexType>
      <xsd:element name="TabAtomeUt" nillable="true" type="tns:TabAtomeUt"/>
      <xsd:complexType name="ArrayOfTabAtomeRevrc">
        <xsd:sequence>
          <xsd:element maxOccurs="unbounded" minOccurs="0" name="TabAtomeRevrc" nillable="true" type="tns:TabAtomeRevrc"/>
        </xsd:sequence>
      </xsd:complexType>
      <xsd:element name="ArrayOfTabAtomeRevrc" nillable="true" type="tns:ArrayOfTabAtomeRevrc"/>
      <xsd:complexType name="TabAtomeRevrc">
        <xsd:sequence>
          <xsd:element minOccurs="0" name="AtomePlancher" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="AtomeRcassi" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="AtomeRcdesig" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="AtomeRcmtrev" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="AtomeRctxrev" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="AtomeRcunite" nillable="true" type="xsd:string"/>
        </xsd:sequence>
      </xsd:complexType>
      <xsd:element name="TabAtomeRevrc" nillable="true" type="tns:TabAtomeRevrc"/>
      <xsd:complexType name="ArrayOfTabAtomeRevpe">
        <xsd:sequence>
          <xsd:element maxOccurs="unbounded" minOccurs="0" name="TabAtomeRevpe" nillable="true" type="tns:TabAtomeRevpe"/>
        </xsd:sequence>
      </xsd:complexType>
      <xsd:element name="ArrayOfTabAtomeRevpe" nillable="true" type="tns:ArrayOfTabAtomeRevpe"/>
      <xsd:complexType name="TabAtomeRevpe">
        <xsd:sequence>
          <xsd:element minOccurs="0" name="AtomePeassi" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="AtomePedesig" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="AtomePemtrev" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="AtomePetxrev" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="AtomePeunite" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="AtomeTendance" nillable="true" type="xsd:string"/>
        </xsd:sequence>
      </xsd:complexType>
      <xsd:element name="TabAtomeRevpe" nillable="true" type="tns:TabAtomeRevpe"/>
      <xsd:complexType name="ListeDonnees">
        <xsd:sequence>
          <xsd:element minOccurs="0" name="Catpr" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="Grpcnt" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="Numcnt" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="Numcli" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="Dteffc" nillable="true" type="xsd:dateTime"/>
          <xsd:element minOccurs="0" name="Natpro" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="Cresult1" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="Cresult2" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="PreNumcnt" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="Form" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="Entiteno" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="Durcnt" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="Moisanm" type="xsd:int"/>
          <xsd:element minOccurs="0" name="Moisanj" type="xsd:int"/>
          <xsd:element minOccurs="0" name="Fract" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="Preres" type="xsd:int"/>
          <xsd:element minOccurs="0" name="Codtax" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="Dtfinc" nillable="true" type="xsd:dateTime"/>
          <xsd:element minOccurs="0" name="Nbut" type="xsd:int"/>
          <xsd:element minOccurs="0" name="FacturUt" nillable="true" type="tns:ArrayOfFacturUt"/>
          <xsd:element minOccurs="0" name="ForcCompt" type="xsd:boolean"/>
          <xsd:element minOccurs="0" name="Mtcttc" type="xsd:decimal"/>
          <xsd:element minOccurs="0" name="ForcDerog" type="xsd:boolean"/>
          <xsd:element minOccurs="0" name="NbptsDeroges" nillable="true" type="tns:NbptsDeroges"/>
          <xsd:element minOccurs="0" name="ForcCocom" type="xsd:boolean"/>
          <xsd:element minOccurs="0" name="Cdptfsec" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="Txcomsec" type="xsd:decimal"/>
          <xsd:element minOccurs="0" name="Mtassec" type="xsd:long"/>
          <xsd:element minOccurs="0" name="Mntmin" type="xsd:int"/>
          <xsd:element minOccurs="0" name="Tauact" type="xsd:decimal"/>
          <xsd:element minOccurs="0" name="Rnbmax" type="xsd:decimal"/>
          <xsd:element minOccurs="0" name="Frerev" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="Dtfindc" nillable="true" type="xsd:dateTime"/>
          <xsd:element minOccurs="0" name="Pdtbilc" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="Frmgar" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="Retsrv" type="xsd:boolean"/>
          <xsd:element minOccurs="0" name="Typrev" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="Rcptrev" type="xsd:int"/>
          <xsd:element minOccurs="0" name="ElemRevisionRc" nillable="true" type="tns:ArrayOfElemRevisionRc"/>
          <xsd:element minOccurs="0" name="Critere035" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="Libcomplet035" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="Peptrev" type="xsd:int"/>
          <xsd:element minOccurs="0" name="ElemRevisionPe" nillable="true" type="tns:ArrayOfElemRevisionPe"/>
          <xsd:element minOccurs="0" name="Refcg" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="Clause1" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="Clause2" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="Clause3" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="Clause4" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="Clause5" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="Clause6" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="Forcpt" type="xsd:boolean"/>
          <xsd:element minOccurs="0" name="Topind" type="xsd:boolean"/>
          <xsd:element minOccurs="0" name="Lettreind" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="Forcind" type="xsd:boolean"/>
          <xsd:element minOccurs="0" name="Dtforcind" nillable="true" type="xsd:dateTime"/>
          <xsd:element minOccurs="0" name="Idpj" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="Heure" type="xsd:int"/>
          <xsd:element minOccurs="0" name="Minute" type="xsd:int"/>
          <xsd:element minOccurs="0" name="Nadrsc1" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="Nadrsc2" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="Nadrsc3" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="Cpostal" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="Burdist" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="Pays" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="Appcie" type="xsd:int"/>
          <xsd:element minOccurs="0" name="Typapp" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="Gest" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="Siret" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="Titre" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="Optcpt" type="xsd:boolean"/>
          <xsd:element minOccurs="0" name="Appagt" type="xsd:int"/>
        </xsd:sequence>
      </xsd:complexType>
      <xsd:element name="ListeDonnees" nillable="true" type="tns:ListeDonnees"/>
      <xsd:complexType name="ArrayOfFacturUt">
        <xsd:sequence>
          <xsd:element maxOccurs="unbounded" minOccurs="0" name="FacturUt" nillable="true" type="tns:FacturUt"/>
        </xsd:sequence>
      </xsd:complexType>
      <xsd:element name="ArrayOfFacturUt" nillable="true" type="tns:ArrayOfFacturUt"/>
      <xsd:complexType name="FacturUt">
        <xsd:sequence>
          <xsd:element minOccurs="0" name="Gartech" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="Mtcot" type="xsd:decimal"/>
          <xsd:element minOccurs="0" name="Natcot" nillable="true" type="xsd:string"/>
        </xsd:sequence>
      </xsd:complexType>
      <xsd:element name="FacturUt" nillable="true" type="tns:FacturUt"/>
      <xsd:complexType name="NbptsDeroges">
        <xsd:sequence>
          <xsd:element minOccurs="0" name="Signpts" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="Nbpts" type="xsd:decimal"/>
        </xsd:sequence>
      </xsd:complexType>
      <xsd:element name="NbptsDeroges" nillable="true" type="tns:NbptsDeroges"/>
      <xsd:complexType name="ArrayOfElemRevisionRc">
        <xsd:sequence>
          <xsd:element maxOccurs="unbounded" minOccurs="0" name="ElemRevisionRc" nillable="true" type="tns:ElemRevisionRc"/>
        </xsd:sequence>
      </xsd:complexType>
      <xsd:element name="ArrayOfElemRevisionRc" nillable="true" type="tns:ArrayOfElemRevisionRc"/>
      <xsd:complexType name="ElemRevisionRc">
        <xsd:sequence>
          <xsd:element minOccurs="0" name="Plancher" type="xsd:int"/>
          <xsd:element minOccurs="0" name="Rcassi" type="xsd:int"/>
          <xsd:element minOccurs="0" name="Rcdesig" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="Rcmtrev" type="xsd:decimal"/>
          <xsd:element minOccurs="0" name="Rcscat" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="Rctxrev" type="xsd:decimal"/>
          <xsd:element minOccurs="0" name="Rcunite" nillable="true" type="xsd:string"/>
        </xsd:sequence>
      </xsd:complexType>
      <xsd:element name="ElemRevisionRc" nillable="true" type="tns:ElemRevisionRc"/>
      <xsd:complexType name="ArrayOfElemRevisionPe">
        <xsd:sequence>
          <xsd:element maxOccurs="unbounded" minOccurs="0" name="ElemRevisionPe" nillable="true" type="tns:ElemRevisionPe"/>
        </xsd:sequence>
      </xsd:complexType>
      <xsd:element name="ArrayOfElemRevisionPe" nillable="true" type="tns:ArrayOfElemRevisionPe"/>
      <xsd:complexType name="ElemRevisionPe">
        <xsd:sequence>
          <xsd:element minOccurs="0" name="Peassi" type="xsd:int"/>
          <xsd:element minOccurs="0" name="Pedesig" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="Pemtrev" type="xsd:decimal"/>
          <xsd:element minOccurs="0" name="Pescat" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="Petxrev" type="xsd:decimal"/>
          <xsd:element minOccurs="0" name="Peunite" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="Tendance" type="xsd:int"/>
        </xsd:sequence>
      </xsd:complexType>
      <xsd:element name="ElemRevisionPe" nillable="true" type="tns:ElemRevisionPe"/>
      <xsd:complexType name="ListeCtrlExt">
        <xsd:sequence>
          <xsd:element minOccurs="0" name="CtrlAdressRisk" type="xsd:boolean"/>
          <xsd:element minOccurs="0" name="CtrlClausesMSC" type="xsd:boolean"/>
        </xsd:sequence>
      </xsd:complexType>
      <xsd:element name="ListeCtrlExt" nillable="true" type="tns:ListeCtrlExt"/>
      <xsd:complexType name="ListeAtomeExt">
        <xsd:sequence>
          <xsd:element minOccurs="0" name="AtomeAdresseRisk" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="AtomeClauseX" nillable="true" type="xsd:string"/>
        </xsd:sequence>
      </xsd:complexType>
      <xsd:element name="ListeAtomeExt" nillable="true" type="tns:ListeAtomeExt"/>
      <xsd:complexType name="Anomalie">
        <xsd:sequence>
          <xsd:element minOccurs="0" name="NbCr" type="xsd:int"/>
          <xsd:element minOccurs="0" name="TabCodeRetour" nillable="true" type="tns:ArrayOfTabCodeRetour"/>
        </xsd:sequence>
      </xsd:complexType>
      <xsd:element name="Anomalie" nillable="true" type="tns:Anomalie"/>
      <xsd:complexType name="ArrayOfTabCodeRetour">
        <xsd:sequence>
          <xsd:element maxOccurs="unbounded" minOccurs="0" name="TabCodeRetour" nillable="true" type="tns:TabCodeRetour"/>
        </xsd:sequence>
      </xsd:complexType>
      <xsd:element name="ArrayOfTabCodeRetour" nillable="true" type="tns:ArrayOfTabCodeRetour"/>
      <xsd:complexType name="TabCodeRetour">
        <xsd:sequence>
          <xsd:element minOccurs="0" name="Codret" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="Libelle" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="EtatBloc" nillable="true" type="xsd:string"/>
          <xsd:element minOccurs="0" name="Atome" nillable="true" type="xsd:string"/>
        </xsd:sequence>
      </xsd:complexType>
      <xsd:element name="TabCodeRetour" nillable="true" type="tns:TabCodeRetour"/>
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
  <wsdl:message name="IControlSimulationServices_EnsureSubscriptionData_ErreurTechFault_FaultMessage">
    <wsdl:part name="detail" element="q3:ErreurTech"></wsdl:part>
  </wsdl:message>
  <wsdl:message name="IControlSimulationServices_EnsureSubscriptionData_ErreurInterneFault_FaultMessage">
    <wsdl:part name="detail" element="q3:ErreurInterne"></wsdl:part>
  </wsdl:message>
  <wsdl:message name="EnsureSubscriptionDataResponse">
    <wsdl:part name="Anomalie" element="tns:Anomalie"></wsdl:part>
  </wsdl:message>
  <wsdl:message name="IControlSimulationServices_EnsureSubscriptionData_AccesNonAutoriseFault_FaultMessage">
    <wsdl:part name="detail" element="q3:AccesNonAutorise"></wsdl:part>
  </wsdl:message>
  <wsdl:message name="IControlSimulationServices_EnsureSubscriptionData_ArgumentInvalideFault_FaultMessage">
    <wsdl:part name="detail" element="q3:ArgumentInvalide"></wsdl:part>
  </wsdl:message>
  <wsdl:message name="EnsureSubscriptionData">
    <wsdl:part name="parameters" element="tns:EnsureSubscriptionData"></wsdl:part>
  </wsdl:message>
  <wsdl:message name="IControlSimulationServices_EnsureSubscriptionData_ErreurAccesFault_FaultMessage">
    <wsdl:part name="detail" element="q3:ErreurAcces"></wsdl:part>
  </wsdl:message>
  <wsdl:portType name="IControlSimulationServices">
    <wsdl:operation name="EnsureSubscriptionData">
      <wsdl:input name="EnsureSubscriptionData" message="tns:EnsureSubscriptionData" wsaw:Action="http://services.axa.fr/OSE/CONTROL/1/IControlSimulationServices/EnsureSubscriptionData"></wsdl:input>
      <wsdl:output name="EnsureSubscriptionDataResponse" message="tns:EnsureSubscriptionDataResponse" wsaw:Action="http://services.axa.fr/OSE/CONTROL/1/IControlSimulationServices/EnsureSubscriptionDataResponse"></wsdl:output>
      <wsdl:fault name="ErreurInterneFault" message="tns:IControlSimulationServices_EnsureSubscriptionData_ErreurInterneFault_FaultMessage" wsaw:Action="http://services.axa.fr/OSE/CONTROL/1/IControlSimulationServices/EnsureSubscriptionDataErreurInterneFault"></wsdl:fault>
      <wsdl:fault name="AccesNonAutoriseFault" message="tns:IControlSimulationServices_EnsureSubscriptionData_AccesNonAutoriseFault_FaultMessage" wsaw:Action="http://services.axa.fr/OSE/CONTROL/1/IControlSimulationServices/EnsureSubscriptionDataAccesNonAutoriseFault"></wsdl:fault>
      <wsdl:fault name="ArgumentInvalideFault" message="tns:IControlSimulationServices_EnsureSubscriptionData_ArgumentInvalideFault_FaultMessage" wsaw:Action="http://services.axa.fr/OSE/CONTROL/1/IControlSimulationServices/EnsureSubscriptionDataArgumentInvalideFault"></wsdl:fault>
      <wsdl:fault name="ErreurAccesFault" message="tns:IControlSimulationServices_EnsureSubscriptionData_ErreurAccesFault_FaultMessage" wsaw:Action="http://services.axa.fr/OSE/CONTROL/1/IControlSimulationServices/EnsureSubscriptionDataErreurAccesFault"></wsdl:fault>
      <wsdl:fault name="ErreurTechFault" message="tns:IControlSimulationServices_EnsureSubscriptionData_ErreurTechFault_FaultMessage" wsaw:Action="http://services.axa.fr/OSE/CONTROL/1/IControlSimulationServices/EnsureSubscriptionDataErreurTechFault"></wsdl:fault>
    </wsdl:operation>
  </wsdl:portType>
  <wsdl:binding name="BasicHttpBinding_IControlSimulationServices" type="tns:IControlSimulationServices">
    <soap:binding transport="http://schemas.xmlsoap.org/soap/http"/>
    <wsdl:operation name="EnsureSubscriptionData">
      <soap:operation soapAction="http://services.axa.fr/OSE/CONTROL/1/IControlSimulationServices/EnsureSubscriptionData" style="document"/>
      <wsdl:input name="EnsureSubscriptionData">
        <soap:body use="literal"/>
      </wsdl:input>
      <wsdl:output name="EnsureSubscriptionDataResponse">
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
  <wsdl:service name="ose-control-simul-1-controlsimulationservices">
    <wsdl:port name="ose-control-simul-1-controlsimulationservicessoaphttp" binding="tns:BasicHttpBinding_IControlSimulationServices">
      <soap:address location="http://eip-mediator-wsint-devenv-sedc.applications.services.axa-tech.intraxa:80/ws/ose-control-simul-1-controlsimulationservices"/>
    </wsdl:port>
  </wsdl:service>
</wsdl:definitions>]]></con:content>
				<con:type>http://schemas.xmlsoap.org/wsdl/</con:type>
			</con:part>
		</con:definitionCache>
		<con:endpoints>
			<con:endpoint>${Endpoint}</con:endpoint>
		</con:endpoints>
		<con:operation isOneWay="false" action="http://services.axa.fr/OSE/CONTROL/1/IControlSimulationServices/EnsureSubscriptionData" name="EnsureSubscriptionData" bindingOperationName="EnsureSubscriptionData" type="Request-Response" outputName="EnsureSubscriptionDataResponse" inputName="EnsureSubscriptionData" receivesAttachments="false" sendsAttachments="false" anonymous="optional">
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
		<con:wsaConfig mustUnderstand="NONE" version="200508" action="http://services.axa.fr/OSE/CONTROL/1/IControlSimulationServices/EnsureSubscriptionData"/>
		<con:wsrmConfig version="1.2"/>
	</con:call>
</#list>
</con:operation>
</con:interface>
<con:testSuite name="TestSuite 1">
	<con:settings/>
	<con:runType>SEQUENTIAL</con:runType>
	<con:testCase failOnError="true" failTestCaseOnErrors="true" keepSession="false" maxResults="0" name="TestCase 1" searchProperties="true" id="1bd60099-2cba-4ba5-85c2-8932befa52b9">
		<con:settings/>
		
<#list Requests as Request>
		<con:testStep type="request" name="EnsureSubscriptionData - ${Request.RequestName}">
			<con:settings/>
			<con:config xsi:type="con:RequestStep" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
				<con:interface>BasicHttpBinding_IControlSimulationServices</con:interface>
				<con:operation>EnsureSubscriptionData</con:operation>
				<con:request name="EnsureSubscriptionData - ${Request.RequestName}" outgoingWss="" incomingWss="" timeout="" sslKeystore="" useWsAddressing="false" useWsReliableMessaging="false" wssPasswordType="">
					<con:settings>
						<con:setting id="com.eviware.soapui.impl.wsdl.WsdlRequest@request-headers">&lt;xml-fragment/></con:setting>
				</con:settings>
				<con:encoding>UTF-8</con:encoding>
				<con:endpoint>${Endpoint}</con:endpoint>
				<con:request><![CDATA[${Request.RequestPayload}]]></con:request>
				<con:assertion type="SOAP Response" name="SOAP Response"/>
				<con:assertion type="XPath Match" name="Match content of [a:NbCr]">
					<con:configuration>
						<path>declare namespace a='http://schemas.axa.fr/OSE/CONTROL/1';
declare namespace ns1='http://services.axa.fr/OSE/CONTROL/1';
//ns1:Anomalie[1]/a:NbCr[1]/text()</path>
						<content>${Request.RequestNbCR}</content>
						<allowWildcards>false</allowWildcards>
						<ignoreNamspaceDifferences>true</ignoreNamspaceDifferences>
						<ignoreComments>true</ignoreComments>
					</con:configuration>
				</con:assertion>
				<con:assertion type="XPath Match" name="Match content of [a:Libelle]">
					<con:configuration>
						<path>declare namespace a='http://schemas.axa.fr/OSE/CONTROL/1';
declare namespace ns1='http://services.axa.fr/OSE/CONTROL/1';
//ns1:Anomalie[1]/a:TabCodeRetour[1]/a:TabCodeRetour[1]/a:Libelle[1]/text()</path>
						<content>${Request.RequestLabel1}</content>
						<allowWildcards>false</allowWildcards>
						<ignoreNamspaceDifferences>false</ignoreNamspaceDifferences>
						<ignoreComments>false</ignoreComments>
					</con:configuration>
				</con:assertion>
				<con:assertion type="XPath Match" name="Match content of [a:Libelle]">
					<con:configuration>
						<path>declare namespace a='http://schemas.axa.fr/OSE/CONTROL/1';
declare namespace ns1='http://services.axa.fr/OSE/CONTROL/1';
//ns1:Anomalie[1]/a:TabCodeRetour[1]/a:TabCodeRetour[2]/a:Libelle[1]</path>
						<content>&lt;a:Libelle xmlns="http://services.axa.fr/OSE/CONTROL/1" xmlns:i="http://www.w3.org/2001/XMLSchema-instance" xmlns:a="http://schemas.axa.fr/OSE/CONTROL/1" xmlns:s="http://schemas.xmlsoap.org/soap/envelope/"/></content>
						<allowWildcards>false</allowWildcards>
						<ignoreNamspaceDifferences>true</ignoreNamspaceDifferences>
						<ignoreComments>true</ignoreComments>
					</con:configuration>
				</con:assertion>
				<con:assertion type="XPath Match" name="Match content of [a:Libelle]">
					<con:configuration>
						<path>declare namespace a='http://schemas.axa.fr/OSE/CONTROL/1';
declare namespace ns1='http://services.axa.fr/OSE/CONTROL/1';
//ns1:Anomalie[1]/a:TabCodeRetour[1]/a:TabCodeRetour[3]/a:Libelle[1]</path>
						<content>&lt;a:Libelle xmlns="http://services.axa.fr/OSE/CONTROL/1" xmlns:i="http://www.w3.org/2001/XMLSchema-instance" xmlns:a="http://schemas.axa.fr/OSE/CONTROL/1" xmlns:s="http://schemas.xmlsoap.org/soap/envelope/"/></content>
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
				<con:wsaConfig mustUnderstand="NONE" version="200508" action="http://services.axa.fr/OSE/CONTROL/1/IControlSimulationServices/EnsureSubscriptionData"/>
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
</con:soapui-project>