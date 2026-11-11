<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<vs:stubVirtualService xmlns:vs="http://wu.com/stubio/config" environment="QA" lastUpdated="2026-11-06" name="TIBCO_TCP">
  <vs:ExecutionMode>
    <vs:ExecutionModeValue>Stand In</vs:ExecutionModeValue>
    <vs:LiveURLs>
      <vs:LiveURL active="true">
        <vs:EnvType>UAT</vs:EnvType>
        <vs:TransType>http</vs:TransType>
        <vs:Host>10.45.20.246</vs:Host>
        <vs:Port>5110</vs:Port>
        <vs:BasePath/>
      </vs:LiveURL>
    </vs:LiveURLs>
  </vs:ExecutionMode>
  <vs:DefaultError>
    <vs:Response contentType="application/json" responseDelay="0" statusCode="404" statusMsg="Not Found">
      <vs:body><![CDATA[{
    "error": "No Match found in Virtual Service"
}
]]></vs:body>
    </vs:Response>
  </vs:DefaultError>
  <vs:ServiceDefinition>
    <vs:WSDLMetadata>
      <vs:WSDLPart/>
    </vs:WSDLMetadata>
  </vs:ServiceDefinition>
  <vs:TCPService allowFallback="false" autoRestart="true" host="localhost" port="5110">
    <vs:ExecutionMode>
      <vs:ExecutionModeValue/>
      <vs:LiveURLs/>
    </vs:ExecutionMode>
    <vs:DefaultError>
      <vs:Response/>
    </vs:DefaultError>
    <vs:TCPHandlers>
      <vs:RequestHandler>
        <vs:ScriptLang>Groovy</vs:ScriptLang>
        <vs:Script/>
        <vs:HeaderLength>24</vs:HeaderLength>
        <vs:FooterLength>9</vs:FooterLength>
        <vs:TagLength>3</vs:TagLength>
        <vs:LengthSize>2</vs:LengthSize>
        <vs:ContentLengthPosition>
          <vs:Start>15</vs:Start>
          <vs:End>18</vs:End>
        </vs:ContentLengthPosition>
      </vs:RequestHandler>
      <vs:ResponseHandler>
        <vs:ScriptLang>Groovy</vs:ScriptLang>
        <vs:Script/>
      </vs:ResponseHandler>
    </vs:TCPHandlers>
    <vs:headerValidator type="NONE"/>
    <vs:StubOperations>
      <vs:StubOperation name="SenderReq">
        <vs:DataSourceSelect>
          <vs:Database/>
          <vs:File>
            <vs:RequestName/>
            <vs:RequestColumnMappings/>
          </vs:File>
        </vs:DataSourceSelect>
        <vs:Filters/>
        <vs:RequestData/>
        <vs:RRPair id="1">
          <vs:Request>
            <vs:RequestData/>
          </vs:Request>
          <vs:ResponseSelection>
            <vs:MatchStyle>Script</vs:MatchStyle>
            <vs:MatchScript>
              <vs:ScriptLang>Groovy</vs:ScriptLang>
              <vs:Script><![CDATA[import com.stubio.parsers.*
import java.util.*

def request=mockRequest.getRequestContent()
        String request_header = extractHeader(request);
String request_data = removeHeaderAndTail(request);
TLVParser tlv = new TLVParser(3, 2);
def PassportID =extractPassport(request_data,tlv)
String mockResponseName ="Response_" + PassportID
log.info("MockResponseName:"+mockResponseName)

if (PassportID == "A\\G40091374") {
    matchContext.setResponse("Response_A\\G40091374")
    return true
}
else if (PassportID == "33697969595") {
    matchContext.setResponse("Response_33697969595")
    return true
}
else {
    return false
}

public  String extractHeader(String input) {
    def header = input.substring(input.indexOf("{"), input.indexOf("}") + 1)
    return header
}
public  String addHeaderAndTailBack(String modified, String header) {
    return header + modified+'''|$|END|$|''';
}

public  String removeHeaderAndTail(String input) {
    input = input.replaceAll("\\{.*?\\}", "")
    input = input.replace('''|$|END|$|''', "")
    log.info("Cleaned Message: " + input)
    return input
}
public String extractPassport(String request, TLVParser tlvparser){
LinkedList<TLVData> tlvList = tlvparser.parse(request);
String value = "";
for(TLVData tlv : tlvList)
{
			if (tlv.getField().equals("T02"))
				value = tlv.getValue();
		}
		if (value.equals(""))
			return "No Such Field";
		System.out.println("Value : "+value);
		return value;
}

]]></vs:Script>
            </vs:MatchScript>
          </vs:ResponseSelection>
          <vs:stubResponse>
            <vs:Response contentType="Json" name="LiveResponse" responseDelay="0" statusCode="200">
              <vs:Header>{0        000000352001R}</vs:Header>
              <vs:Body><![CDATA[001020900204073600304110800412F0000000864P0050310000604W04ZT030977880853535680014YYZY024YYZY034YYZY074YYZY064YYZY104YYZY094YYZYK14YYZYH24YYZY684YYZY334YYZY34435631YYZY794YYZY084YYZYM74YYZYJ630__357800108UNI_01_S0201A0309G400913740708010119900606FRANCE100801012030090801012020K10035768H20068003306France3406FRANCE7905PARIS0800M700J6192000000000076902508]]></vs:Body>
              <vs:Footer>|$|END|$|</vs:Footer>
              <vs:ResponseScript>
                <vs:ScriptLang>Groovy</vs:ScriptLang>
                <vs:Script/>
              </vs:ResponseScript>
            </vs:Response>
            <vs:Response contentType="Json" name="Response_A\G40091374" responseDelay="0" statusCode="200">
              <vs:Header>{0        000000352001R}</vs:Header>
              <vs:Body><![CDATA[001020900204073600304112600412F0000000864P0050310000604W04ZT030933356926835680014YYZY024YYZY034YYZY074YYZY064YYZY104YYZY094YYZYK14YYZYH24YYZY684YYZY334YYZY34435631YYZY794YYZY084YYZYM74YYZYJ630__357800108UNI_01_S0201A0309G400913740708010119900606FRANCE100801012030090801012020K10035768H20068003306France3406FRANCE7905PARIS0800M700J6192000000000076902508]]></vs:Body>
              <vs:Footer>|$|END|$|</vs:Footer>
              <vs:ResponseScript>
                <vs:ScriptLang>Groovy</vs:ScriptLang>
                <vs:Script/>
              </vs:ResponseScript>
            </vs:Response>
            <vs:Response contentType="Json" name="Response_33697969595" responseDelay="0" statusCode="200">
              <vs:Header>{0        000000238001R}</vs:Header>
              <vs:Body><![CDATA[0010209002040736003051154400412F0000000864P0050310000604W00CT0309948756476059030050570300152401N058020106109636Y0088652301Y00904JOHN01006PASCAL01108STREET 101304CITY015057500101702FR0161533    697969595278023347709697969595476023306703ZZ1]]></vs:Body>
              <vs:Footer>|$|END|$|</vs:Footer>
              <vs:ResponseScript>
                <vs:ScriptLang>Groovy</vs:ScriptLang>
                <vs:Script/>
              </vs:ResponseScript>
            </vs:Response>
          </vs:stubResponse>
        </vs:RRPair>
        <vs:RRPair id="default_0">
          <vs:Request contentType="application/xml">
            <vs:RequestData/>
            <vs:RequestParameters>
              <vs:arg case="false" echoValue="false" matchType="Equals" name="Invalid request body" selected="false">Invalid request body</vs:arg>
            </vs:RequestParameters>
          </vs:Request>
          <vs:ResponseSelection>
            <vs:MatchStyle>Operation</vs:MatchStyle>
            <vs:MatchScript>
              <vs:ScriptLang>Groovy</vs:ScriptLang>
              <vs:Script/>
            </vs:MatchScript>
          </vs:ResponseSelection>
          <vs:stubResponse>
            <vs:Response contentType="Json" name="Response 1" responseDelay="0" statusCode="200">
              <vs:Header>{0        000000355001R}</vs:Header>
              <vs:Body><![CDATA[001020900204073600307112235900412F0000000864P0050310000604W04ZT030976833089235680014YYZY024YYZY034YYZY074YYZY064YYZY104YYZY094YYZYK14YYZYH24YYZY684YYZY334YYZY34435631YYZY794YYZY084YYZYM74YYZYJ630__357800108UNI_01_S0201A0309g987543210708010119900606FRANCE100801012030090801012020K10035768H20068003306France3406FRANCE7905PARIS0800M700J6192000000000076772052]]></vs:Body>
              <vs:Footer>|$|END|$|</vs:Footer>
              <vs:ResponseScript>
                <vs:ScriptLang>Groovy</vs:ScriptLang>
                <vs:Script/>
              </vs:ResponseScript>
            </vs:Response>
          </vs:stubResponse>
        </vs:RRPair>
      </vs:StubOperation>
    </vs:StubOperations>
  </vs:TCPService>
  <vs:CustomScripts>
    <vs:CustomScript>
      <vs:ScriptLang>Groovy</vs:ScriptLang>
      <vs:ExecutionType>VS Start</vs:ExecutionType>
      <vs:Script><![CDATA[log.info("TIBCO started on 5110");]]></vs:Script>
    </vs:CustomScript>
    <vs:CustomScript>
      <vs:ScriptLang>Groovy</vs:ScriptLang>
      <vs:ExecutionType>VS Stop</vs:ExecutionType>
      <vs:Script><![CDATA[log.info("TIBCO Stopped");]]></vs:Script>
    </vs:CustomScript>
    <vs:CustomScript>
      <vs:ScriptLang>Groovy</vs:ScriptLang>
      <vs:ExecutionType>On Request</vs:ExecutionType>
      <vs:Script><![CDATA[log.info("TIBCO Request: "+ mockRequest.getRequestContent());]]></vs:Script>
    </vs:CustomScript>
    <vs:CustomScript>
      <vs:ScriptLang>Groovy</vs:ScriptLang>
      <vs:ExecutionType>On Response</vs:ExecutionType>
      <vs:Script><![CDATA[log.info("TIBCO Response Sent: "+ mockRequest.getOperation());]]></vs:Script>
    </vs:CustomScript>
  </vs:CustomScripts>
  <vs:Config>
    <vs:ResponseDelay>0</vs:ResponseDelay>
  </vs:Config>
  <vs:Metadata/>
</vs:stubVirtualService>
