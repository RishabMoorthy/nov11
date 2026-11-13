<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<vs:stubVirtualService xmlns:vs="http://wu.com/stubio/config" environment="QA" lastUpdated="2026-11-11" name="VS_WPS_DAS_v1">
  <vs:ExecutionMode>
    <vs:ExecutionModeValue>Stand In</vs:ExecutionModeValue>
    <vs:LiveURLs>
      <vs:LiveURL active="true">
        <vs:EnvType>UAT</vs:EnvType>
        <vs:TransType>http</vs:TransType>
        <vs:Host>66.218.172.20</vs:Host>
        <vs:Port>3609</vs:Port>
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
  <vs:TCPService allowFallback="false" autoRestart="true" host="localhost" port="3609">
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
        <vs:HeaderLength>5</vs:HeaderLength>
        <vs:FooterLength>0</vs:FooterLength>
        <vs:TagLength>5</vs:TagLength>
        <vs:LengthSize>5</vs:LengthSize>
        <vs:ContentLengthPosition>
          <vs:Start>0</vs:Start>
          <vs:End>4</vs:End>
        </vs:ContentLengthPosition>
      </vs:RequestHandler>
      <vs:ResponseHandler>
        <vs:ScriptLang>Groovy</vs:ScriptLang>
        <vs:Script/>
      </vs:ResponseHandler>
    </vs:TCPHandlers>
    <vs:headerValidator type="NONE"/>
    <vs:StubOperations>
      <vs:StubOperation defaultRR="default_0" name="GetDeliveryServices">
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
              <vs:Script><![CDATA[def req = mockRequest.getRequestContent()
log.info "Request: " + req

if (req.contains("AKC170383")) {
    if (req.contains("<QUERYFILTER4>D2B")) {
        log.info "D2B"
        matchContext.setResponse("DAS1D2B Response")
        return true
    }
    else if (req.contains("<QUERYFILTER4>000")) {
        matchContext.setResponse("DAS1000 Response")
        return true
    }
    else if (req.contains("<QUERYFILTER4>300")) {
        matchContext.setResponse("DAS1300 Response")
        return true
    }
    else if (req.contains("<QUERYFILTER4>500")) {
        matchContext.setResponse("DAS1500 Response")
        return true
    }
    else if (req.contains("<QUERYFILTER4>700")) {
        matchContext.setResponse("DAS1700 Response")
        return true
    }
    else {
        matchContext.setResponse("DAS1_DefaultResponse")
        return true
    }
}
else if (req.contains("A16110042")) {
    if (req.contains("QUERYFILTER4>D2B")) {
        matchContext.setResponse("DAS2Response2_0042")
        return true
    }
    else {
        matchContext.setResponse("DAS2_DefaultResponse_0042")
        return true
    }
}
else if (req.contains("A16119997")) {
    if (req.contains("QUERYFILTER4>D2B")) {
        matchContext.setResponse("DAS2Response2_9997")
        return true
    }
    else {
        matchContext.setResponse("DAS2_DefaultResponse_9997")
        return true
    }
}
else {
    return false
}
]]></vs:Script>
            </vs:MatchScript>
          </vs:ResponseSelection>
          <vs:stubResponse>
            <vs:Response contentType="Json" name="DAS1D2B Response" responseDelay="0" statusCode="200">
              <vs:Header>00857</vs:Header>
              <vs:Body><![CDATA[00001000012000030000100000500825<?xml version="1.0" encoding="WINDOWS-1252" ?><MTML><REPLY HOST="AUHOST" CLIENT="WUCLIENT" TYPE=""><DATA_CONTEXT><HEADER><ACCOUNT_NUM>AKC170383</ACCOUNT_NUM><DB_NAME>DSVMV2 ERCQSA CT1MV1 MEXUSA</DB_NAME><DATA_MORE>N</DATA_MORE><DATA_NUM_RECS>1</DATA_NUM_RECS><NAME>GetDeliveryServices</NAME></HEADER><RECORDSET><RECORD><DESTINATION_CODE>USA</DESTINATION_CODE><SVC_CODE>500</SVC_CODE><SVC_NAME>DIRECT TO BANK</SVC_NAME><ROUTE><![CDATA[62000000\EBD]]]]><![CDATA[></ROUTE><BANNER>PAYEE INFORMATION FOR DIRECT TO BANK</BANNER><TEMPLT>4040</TEMPLT><CTRY_VIEW_FILTER>D2B</CTRY_VIEW_FILTER><DESCRIPTION><![CDATA[THE DIRECT TO BANK MONEY TRANSFER SERVICE OFFERS CONSUMERS AN EASY AND CONVENIENT WAY TO SEND FUNDS DIRECTLY TO QUALIFYING BANK ACCOUNTS.]]]]><![CDATA[></DESCRIPTION><EXCL_FLAGS>00</EXCL_FLAGS></RECORD></RECORDSET></DATA_CONTEXT></REPLY></MTML>]]></vs:Body>
              <vs:Footer/>
              <vs:ResponseScript>
                <vs:ScriptLang>Groovy</vs:ScriptLang>
                <vs:Script/>
              </vs:ResponseScript>
            </vs:Response>
            <vs:Response contentType="Json" name="DAS1000 Response" responseDelay="0" statusCode="200">
              <vs:Header>01494</vs:Header>
              <vs:Body><![CDATA[00001000012000030000100000501462<?xml version="1.0" encoding="WINDOWS-1252" ?><MTML><REPLY HOST="AUHOST" CLIENT="WUCLIENT" TYPE=""><DATA_CONTEXT><HEADER><ACCOUNT_NUM>AKC170383</ACCOUNT_NUM><DB_NAME>DSVMV1 ERC1EC CT1MV1 MEXUSA</DB_NAME><DATA_MORE>N</DATA_MORE><DATA_NUM_RECS>3</DATA_NUM_RECS><NAME>GetDeliveryServices</NAME></HEADER><RECORDSET><RECORD><DESTINATION_CODE>USA</DESTINATION_CODE><SVC_CODE>025</SVC_CODE><SVC_NAME>ATM SERVICE</SVC_NAME><ROUTE>62000000</ROUTE><BANNER>PAYEE INFORMATION FOR ATM SERVICE</BANNER><TEMPLT>2200</TEMPLT><EXCL_FLAGS>E0</EXCL_FLAGS></RECORD><RECORD><DESTINATION_CODE>USA</DESTINATION_CODE><SVC_CODE>006</SVC_CODE><SVC_NAME>CHECKWRITER SERVICE</SVC_NAME><ROUTE>62000000</ROUTE><BANNER>PAYEE INFORMATION FOR CHECKWRITER SERVICES</BANNER><TEMPLT>2080</TEMPLT><DESCRIPTION><![CDATA[NO HAY CARGO PARA EL SERVICIO DE CHEQUES. HAY UN SOBRECARGO DE $15 PARA ENVIAR DINERO SI EL BENEFICIARIO ES UNA CUENTA DE EMERGENCIA VIA EL DEPARTAMENTO DEL ESTADO.]]]]><![CDATA[></DESCRIPTION><EXCL_FLAGS>00</EXCL_FLAGS></RECORD><RECORD><DESTINATION_CODE>USA</DESTINATION_CODE><SVC_CODE>005</SVC_CODE><SVC_NAME>Mobile Money Transfer</SVC_NAME><ROUTE><![CDATA[62000000\MBF]]]]><![CDATA[></ROUTE><BANNER>Information for Mobile Money Transfer</BANNER><TEMPLT>0000</TEMPLT><DESCRIPTION><![CDATA["Dinero Dia Siguiente" disponible al enviar dinero desde los locales seleccionados en los principales paises Europeos.]]]]><![CDATA[></DESCRIPTION><EXCL_FLAGS>00</EXCL_FLAGS></RECORD></RECORDSET></DATA_CONTEXT></REPLY></MTML>]]></vs:Body>
              <vs:Footer/>
              <vs:ResponseScript>
                <vs:ScriptLang>Groovy</vs:ScriptLang>
                <vs:Script/>
              </vs:ResponseScript>
            </vs:Response>
            <vs:Response contentType="Json" name="DAS1300 Response" responseDelay="0" statusCode="200">
              <vs:Header>01657</vs:Header>
              <vs:Body><![CDATA[00001000012000030000100000501625<?xml version="1.0" encoding="WINDOWS-1252" ?><MTML><REPLY HOST="AUHOST" CLIENT="WUCLIENT" TYPE=""><DATA_CONTEXT><HEADER><ACCOUNT_NUM>AKC170383</ACCOUNT_NUM><DB_NAME>DSVMV1 ERC1EC CT1MV1 MEXUSA</DB_NAME><DATA_MORE>N</DATA_MORE><DATA_NUM_RECS>4</DATA_NUM_RECS><NAME>GetDeliveryServices</NAME></HEADER><RECORDSET><RECORD><DESTINATION_CODE>USA</DESTINATION_CODE><SVC_CODE>325</SVC_CODE><SVC_NAME>ATM SERVICE</SVC_NAME><ROUTE><![CDATA[62000000\012]]]]><![CDATA[></ROUTE><BANNER>PAYEE INFORMATION FOR ATM SERVICE</BANNER><TEMPLT>2200</TEMPLT><EXCL_FLAGS>00</EXCL_FLAGS></RECORD><RECORD><DESTINATION_CODE>USA</DESTINATION_CODE><SVC_CODE>351</SVC_CODE><SVC_NAME>Notification</SVC_NAME><ROUTE>62000000</ROUTE><BANNER>INFORMATION FOR NOTIFICATION</BANNER><TEMPLT>4080</TEMPLT><CTRY_VIEW_FILTER>ASI</CTRY_VIEW_FILTER><EXCL_FLAGS>00</EXCL_FLAGS></RECORD><RECORD><DESTINATION_CODE>USA</DESTINATION_CODE><SVC_CODE>361</SVC_CODE><SVC_NAME>Oklahoma Tax</SVC_NAME><ROUTE>62000000</ROUTE><BANNER>Oklahoma Tax</BANNER><TEMPLT>4070</TEMPLT><CTRY_VIEW_FILTER>ASK</CTRY_VIEW_FILTER><EXCL_FLAGS>00</EXCL_FLAGS></RECORD><RECORD><DESTINATION_CODE>USA</DESTINATION_CODE><SVC_CODE>302</SVC_CODE><SVC_NAME>PHONE NOTIFICATION</SVC_NAME><ROUTE><![CDATA[62000000\012]]]]><![CDATA[></ROUTE><BANNER>PAYEE INFORMATION FOR TELEPHONE NOTIFICATION</BANNER><TEMPLT>2090</TEMPLT><DESCRIPTION><![CDATA[HAY UN CARGO ADICIONAL PARA LA NOTIFICACION POR TELEFONO. WESTERN UNION NOTIFICARA AL BENEFICIARIO POR TELEFONO ENTRE 2 HORAS. EL DINERO SE PUEDE RECOGER EN CUALQUIER AGENTE DE WESTERN UNION.]]]]><![CDATA[></DESCRIPTION><EXCL_FLAGS>00</EXCL_FLAGS></RECORD></RECORDSET></DATA_CONTEXT></REPLY></MTML>]]></vs:Body>
              <vs:Footer/>
              <vs:ResponseScript>
                <vs:ScriptLang>Groovy</vs:ScriptLang>
                <vs:Script/>
              </vs:ResponseScript>
            </vs:Response>
            <vs:Response contentType="Json" name="DAS1500 Response" responseDelay="0" statusCode="200">
              <vs:Header>00869</vs:Header>
              <vs:Body><![CDATA[00001000012000030000100000500837<?xml version="1.0" encoding="WINDOWS-1252" ?><MTML><REPLY HOST="AUHOST" CLIENT="WUCLIENT" TYPE=""><DATA_CONTEXT><HEADER><ACCOUNT_NUM>AKC170383</ACCOUNT_NUM><DB_NAME>DSVMV1 ERC1EC CT1MV1 MEXUSA</DB_NAME><DATA_MORE>N</DATA_MORE><DATA_NUM_RECS>2</DATA_NUM_RECS><NAME>GetDeliveryServices</NAME></HEADER><RECORDSET><RECORD><DESTINATION_CODE>USA</DESTINATION_CODE><SVC_CODE>551</SVC_CODE><SVC_NAME>Notification</SVC_NAME><ROUTE>62000000</ROUTE><BANNER>INFORMATION FOR NOTIFICATION</BANNER><TEMPLT>4080</TEMPLT><CTRY_VIEW_FILTER>ASI</CTRY_VIEW_FILTER><EXCL_FLAGS>00</EXCL_FLAGS></RECORD><RECORD><DESTINATION_CODE>USA</DESTINATION_CODE><SVC_CODE>561</SVC_CODE><SVC_NAME>Oklahoma Tax</SVC_NAME><ROUTE>62000000</ROUTE><BANNER>Oklahoma Tax</BANNER><TEMPLT>4070</TEMPLT><EXCL_FLAGS>00</EXCL_FLAGS></RECORD></RECORDSET></DATA_CONTEXT></REPLY></MTML>]]></vs:Body>
              <vs:Footer/>
              <vs:ResponseScript>
                <vs:ScriptLang>Groovy</vs:ScriptLang>
                <vs:Script/>
              </vs:ResponseScript>
            </vs:Response>
            <vs:Response contentType="Json" name="DAS1700 Response" responseDelay="0" statusCode="200">
              <vs:Header>00847</vs:Header>
              <vs:Body><![CDATA[00001000012000030000100000500815<?xml version="1.0" encoding="WINDOWS-1252" ?><MTML><REPLY HOST="AUHOST" CLIENT="WUCLIENT" TYPE=""><DATA_CONTEXT><HEADER><ACCOUNT_NUM>AKC170383</ACCOUNT_NUM><DB_NAME>DSVMV1 ERC1EC CT1MV1 MEXUSA</DB_NAME><DATA_MORE>N</DATA_MORE><DATA_NUM_RECS>1</DATA_NUM_RECS><NAME>GetDeliveryServices</NAME></HEADER><RECORDSET><RECORD><DESTINATION_CODE>USA</DESTINATION_CODE><SVC_CODE>702</SVC_CODE><SVC_NAME>BUSINESS TO BUSINESS</SVC_NAME><ROUTE><![CDATA[62000000\SME]]]]><![CDATA[></ROUTE><BANNER>PAYEE INFORMATION FOR PHONE NOTIFICATION</BANNER><TEMPLT>2090</TEMPLT><DESCRIPTION>2  SERVICIO PARA EMPRESAS El Servicio para Empresas esta disponible para pequenas y medianas empresas para enviar dinero por un cargo fijo en envios superiores a usd 750</DESCRIPTION><EXCL_FLAGS>00</EXCL_FLAGS></RECORD></RECORDSET></DATA_CONTEXT></REPLY></MTML>]]></vs:Body>
              <vs:Footer/>
              <vs:ResponseScript>
                <vs:ScriptLang>Groovy</vs:ScriptLang>
                <vs:Script/>
              </vs:ResponseScript>
            </vs:Response>
            <vs:Response contentType="Json" name="DAS1_DefaultResponse" responseDelay="0" statusCode="200">
              <vs:Header>00416</vs:Header>
              <vs:Body><![CDATA[00001000012000030000100000500384<?xml version="1.0" encoding="WINDOWS-1252" ?><MTML><REPLY HOST="AUHOST" CLIENT="WUCLIENT" TYPE=""><DATA_CONTEXT><HEADER><ACCOUNT_NUM>AKC170383</ACCOUNT_NUM><DB_NAME>DSVMV1 ERC1EC CT1MV1 MEXUSA</DB_NAME><DATA_MORE>N</DATA_MORE><DATA_NUM_RECS>0</DATA_NUM_RECS><ERROR_MSG>D0004 NO MATCHING RECORDS FOUND</ERROR_MSG><NAME>GetDeliveryServices</NAME></HEADER></DATA_CONTEXT></REPLY></MTML>]]></vs:Body>
              <vs:Footer/>
              <vs:ResponseScript>
                <vs:ScriptLang>Groovy</vs:ScriptLang>
                <vs:Script/>
              </vs:ResponseScript>
            </vs:Response>
            <vs:Response contentType="Json" name="DAS2Response2_0042" responseDelay="0" statusCode="200">
              <vs:Header>00688</vs:Header>
              <vs:Body><![CDATA[00001000012000030000100000500656<?xml version="1.0" encoding="WINDOWS-1252"?><MTML><REPLY HOST="AUHOST" CLIENT="WUCLIENT" TYPE=""><DATA_CONTEXT><HEADER><ACCOUNT_NUM>A16110042</ACCOUNT_NUM><DB_NAME>DSV7HA ERCFRZ CT13YX MEXUSA</DB_NAME><DATA_MORE>N</DATA_MORE><DATA_NUM_RECS>1</DATA_NUM_RECS><NAME>GetDeliveryServices</NAME></HEADER><RECORDSET><RECORD><DESTINATION_CODE>USA</DESTINATION_CODE><SVC_CODE>500</SVC_CODE><SVC_NAME>DIRECT TO BANK</SVC_NAME><ROUTE><![CDATA[62000000\EBD]]]]><![CDATA[></ROUTE><BANNER>PAYEE INFORMATION FOR DIRECT DEPOSIT SERVICE</BANNER><TEMPLT>4000</TEMPLT><CTRY_VIEW_FILTER>D2B</CTRY_VIEW_FILTER><EXCL_FLAGS>C1</EXCL_FLAGS></RECORD></RECORDSET></DATA_CONTEXT></REPLY></MTML>]]></vs:Body>
              <vs:Footer/>
              <vs:ResponseScript>
                <vs:ScriptLang>Groovy</vs:ScriptLang>
                <vs:Script/>
              </vs:ResponseScript>
            </vs:Response>
            <vs:Response contentType="Json" name="DAS2_DefaultResponse_0042" responseDelay="0" statusCode="200">
              <vs:Header>00415</vs:Header>
              <vs:Body><![CDATA[00001000012000030000100000500383<?xml version="1.0" encoding="WINDOWS-1252"?><MTML><REPLY HOST="AUHOST" CLIENT="WUCLIENT" TYPE=""><DATA_CONTEXT><HEADER><ACCOUNT_NUM>A16110042</ACCOUNT_NUM><DB_NAME>DSV7HA ERCFRZ CT13YX MEXUSA</DB_NAME><DATA_MORE>N</DATA_MORE><DATA_NUM_RECS>0</DATA_NUM_RECS><ERROR_MSG>D0004 NO MATCHING RECORDS FOUND</ERROR_MSG><NAME>GetDeliveryServices</NAME></HEADER></DATA_CONTEXT></REPLY></MTML>]]></vs:Body>
              <vs:Footer/>
              <vs:ResponseScript>
                <vs:ScriptLang>Groovy</vs:ScriptLang>
                <vs:Script/>
              </vs:ResponseScript>
            </vs:Response>
            <vs:Response contentType="Json" name="DAS2Response2_9997" responseDelay="0" statusCode="200">
              <vs:Header>00885</vs:Header>
              <vs:Body><![CDATA[00001000012000030000100000500853<?xml version="1.0" encoding="WINDOWS-1252" ?><MTML><REPLY HOST="AUHOST" CLIENT="WUCLIENT" TYPE=""><DATA_CONTEXT><HEADER><ACCOUNT_NUM>A16119997</ACCOUNT_NUM><DB_NAME>DSV7HA ERCINT CT13YW MEXUSA</DB_NAME><DATA_MORE>N</DATA_MORE><DATA_NUM_RECS>1</DATA_NUM_RECS><NAME>GetDeliveryServices</NAME></HEADER><RECORDSET><RECORD><DESTINATION_CODE>FRZ</DESTINATION_CODE><SVC_CODE>500</SVC_CODE><DIRECTED_FLAG>0</DIRECTED_FLAG><SVC_NAME>DIRECT TO BANK</SVC_NAME><ROUTE><![CDATA[WADSFR000\EBD]]]]><![CDATA[></ROUTE><BANNER>PAYEE INFORMATION FOR DIRECT DEPOSIT SERVICE</BANNER><TEMPLT>4200</TEMPLT><CTRY_VIEW_FILTER>D2B</CTRY_VIEW_FILTER><DESCRIPTION>THE DIRECT TO BANK MONEY TRANSFER SERVICE OFFERS CONSUMERS AN EASY AND CONVENIENT WAY TO SEND FUNDS DIRECTLY TO QUALIFYING BANK ACCOUNTS</DESCRIPTION><EXCL_FLAGS>00</EXCL_FLAGS></RECORD></RECORDSET></DATA_CONTEXT></REPLY></MTML>]]></vs:Body>
              <vs:Footer/>
              <vs:ResponseScript>
                <vs:ScriptLang>Groovy</vs:ScriptLang>
                <vs:Script/>
              </vs:ResponseScript>
            </vs:Response>
            <vs:Response contentType="Json" name="DAS2_DefaultResponse_9997" responseDelay="0" statusCode="200">
              <vs:Header>00416</vs:Header>
              <vs:Body><![CDATA[00001000012000030000100000500384<?xml version="1.0" encoding="WINDOWS-1252" ?><MTML><REPLY HOST="AUHOST" CLIENT="WUCLIENT" TYPE=""><DATA_CONTEXT><HEADER><ACCOUNT_NUM>A16119997</ACCOUNT_NUM><DB_NAME>DSV7HA ERCINT CT13YW MEXUSA</DB_NAME><DATA_MORE>N</DATA_MORE><DATA_NUM_RECS>0</DATA_NUM_RECS><ERROR_MSG>D0004 NO MATCHING RECORDS FOUND</ERROR_MSG><NAME>GetDeliveryServices</NAME></HEADER></DATA_CONTEXT></REPLY></MTML>]]></vs:Body>
              <vs:Footer/>
              <vs:ResponseScript>
                <vs:ScriptLang>Groovy</vs:ScriptLang>
                <vs:Script/>
              </vs:ResponseScript>
            </vs:Response>
          </vs:stubResponse>
        </vs:RRPair>
        <vs:RRPair id="default_0">
          <vs:Request>
            <vs:RequestData/>
          </vs:Request>
          <vs:ResponseSelection>
            <vs:MatchStyle>Operation</vs:MatchStyle>
            <vs:MatchScript>
              <vs:ScriptLang>Groovy</vs:ScriptLang>
              <vs:Script/>
            </vs:MatchScript>
          </vs:ResponseSelection>
          <vs:stubResponse>
            <vs:Response contentType="Json" name="GetDeliveryServices_DefaultResponse" responseDelay="0" statusCode="200">
              <vs:Header></vs:Header>
              <vs:Body><![CDATA[]]></vs:Body>
              <vs:Footer/>
              <vs:ResponseScript>
                <vs:ScriptLang>Groovy</vs:ScriptLang>
                <vs:Script/>
              </vs:ResponseScript>
            </vs:Response>
          </vs:stubResponse>
        </vs:RRPair>
      </vs:StubOperation>
      <vs:StubOperation defaultRR="default_0" name="GetWUAgentBannerMsgs">
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
              <vs:Script><![CDATA[def Req = mockRequest.getRequestContent()
log.info "Request: " + Req

if (Req.contains("AKC170383")) {
    matchContext.setResponse("GetWUAgentBannerMsgs_DAS1Response")
    return true
}
else if (Req.contains("A16119997")) {
    matchContext.setResponse("GetWUAgentBannerMsgs_DAS2Response_9997")
    return true
}
else if (Req.contains("A16110042")) {
    matchContext.setResponse("GetWUAgentBannerMsgs_DAS2Response_0042")
    return true
}
else if (Req.contains("APH275048")) {
    matchContext.setResponse("GetWUAgentBannerMsgs_DAS2Response_5048")
    return true
}
else {
    return false
}
]]></vs:Script>
            </vs:MatchScript>
          </vs:ResponseSelection>
          <vs:stubResponse>
            <vs:Response contentType="Json" name="GetWUAgentBannerMsgs_DAS1Response" responseDelay="0" statusCode="200">
              <vs:Header>01378</vs:Header>
              <vs:Body><![CDATA[00001000012000030000100000501346<?xml version="1.0" encoding="WINDOWS-1252" ?><MTML><REPLY HOST="AUHOST" CLIENT="WUCLIENT" TYPE=""><DATA_CONTEXT><HEADER><ACCOUNT_NUM>AKC170383</ACCOUNT_NUM><DB_NAME>ERCQSA</DB_NAME><FS_REFNUM>141</FS_REFNUM><DATA_MORE>N</DATA_MORE><DATA_NUM_RECS>7</DATA_NUM_RECS><NAME>GetWUAgentBannerMsgs</NAME></HEADER><RECORDSET><RECORD><ERR_CODE>001</ERR_CODE><ERR_MESSAGE><![CDATA[On 01/19/17, Western Union announced settlement agreements with]]]]><![CDATA[></ERR_MESSAGE></RECORD><RECORD><ERR_CODE>002</ERR_CODE><ERR_MESSAGE><![CDATA[several U.S. federal government agencies. In connection with the]]]]><![CDATA[></ERR_MESSAGE></RECORD><RECORD><ERR_CODE>003</ERR_CODE><ERR_MESSAGE><![CDATA[settlement, it is important for you to read one of the orders]]]]><![CDATA[></ERR_MESSAGE></RECORD><RECORD><ERR_CODE>004</ERR_CODE><ERR_MESSAGE><![CDATA[entered by the court, which specifies certain actions Western]]]]><![CDATA[></ERR_MESSAGE></RECORD><RECORD><ERR_CODE>005</ERR_CODE><ERR_MESSAGE><![CDATA[Union must take. Please go to http://go.wu.com/FTCorder to]]]]><![CDATA[></ERR_MESSAGE></RECORD><RECORD><ERR_CODE>006</ERR_CODE><ERR_MESSAGE><![CDATA[access the order. Thank you - with your help, we can continue to]]]]><![CDATA[></ERR_MESSAGE></RECORD><RECORD><ERR_CODE>007</ERR_CODE><ERR_MESSAGE><![CDATA[raise the bar against those who would misuse our system.]]]]><![CDATA[></ERR_MESSAGE></RECORD></RECORDSET></DATA_CONTEXT></REPLY></MTML>]]></vs:Body>
              <vs:Footer/>
              <vs:ResponseScript>
                <vs:ScriptLang>Groovy</vs:ScriptLang>
                <vs:Script/>
              </vs:ResponseScript>
            </vs:Response>
            <vs:Response contentType="Json" name="GetWUAgentBannerMsgs_DAS2Response_9997" responseDelay="0" statusCode="200">
              <vs:Header>01227</vs:Header>
              <vs:Body><![CDATA[00001000012000030000100000501195<?xml version="1.0" encoding="WINDOWS-1252" ?><MTML><REPLY HOST="AUHOST" CLIENT="WUCLIENT" TYPE=""><DATA_CONTEXT><HEADER><ACCOUNT_NUM>A16119997</ACCOUNT_NUM><DB_NAME>ERCINT</DB_NAME><FS_REFNUM>1123</FS_REFNUM><DATA_MORE>N</DATA_MORE><DATA_NUM_RECS>7</DATA_NUM_RECS><NAME>GetWUAgentBannerMsgs</NAME></HEADER><RECORDSET><RECORD><ERR_CODE>001</ERR_CODE><ERR_MESSAGE><![CDATA[*EFFECTIVE FEBRUARY 5, 2025 SERVICE TO CUBA HAS BEEN SUSPENDED.]]]]><![CDATA[></ERR_MESSAGE></RECORD><RECORD><ERR_CODE>002</ERR_CODE><ERR_MESSAGE><![CDATA[*DIRECT TO BANK SERVICE TO JORDAN IS TEMPORARILY UNAVAILABLE]]]]><![CDATA[></ERR_MESSAGE></RECORD><RECORD><ERR_CODE>003</ERR_CODE><ERR_MESSAGE><![CDATA[*DUE TO EARTHQUAKE, LOCATIONS IN VANUATU MAY BE CLOSED OR]]]]><![CDATA[></ERR_MESSAGE></RECORD><RECORD><ERR_CODE>004</ERR_CODE><ERR_MESSAGE><![CDATA["PARTIALLY OPERATIONAL DURING REGULAR HOURS.]]]]><![CDATA[></ERR_MESSAGE></RECORD><RECORD><ERR_CODE>005</ERR_CODE><ERR_MESSAGE><![CDATA[*SERVICE TO SYRIA *SERVICE TO SYRIA IS FULLY OPERATIONAL, SOME]]]]><![CDATA[></ERR_MESSAGE></RECORD><RECORD><ERR_CODE>006</ERR_CODE><ERR_MESSAGE>DELAYS MAY OCCUR DUE TO POLITICAL UNREST</ERR_MESSAGE></RECORD><RECORD><ERR_CODE>007</ERR_CODE></RECORD></RECORDSET></DATA_CONTEXT></REPLY></MTML>]]></vs:Body>
              <vs:Footer/>
              <vs:ResponseScript>
                <vs:ScriptLang>Groovy</vs:ScriptLang>
                <vs:Script/>
              </vs:ResponseScript>
            </vs:Response>
            <vs:Response contentType="Json" name="GetWUAgentBannerMsgs_DAS2Response_0042" responseDelay="0" statusCode="200">
              <vs:Header>01226</vs:Header>
              <vs:Body><![CDATA[00001000012000030000100000501194<?xml version="1.0" encoding="WINDOWS-1252"?><MTML><REPLY HOST="AUHOST" CLIENT="WUCLIENT" TYPE=""><DATA_CONTEXT><HEADER><ACCOUNT_NUM>A16110042</ACCOUNT_NUM><DB_NAME>ERCFRZ</DB_NAME><FS_REFNUM>16</FS_REFNUM><DATA_MORE>N</DATA_MORE><DATA_NUM_RECS>7</DATA_NUM_RECS><NAME>GetWUAgentBannerMsgs</NAME></HEADER><RECORDSET><RECORD><ERR_CODE>001</ERR_CODE><ERR_MESSAGE><![CDATA[*CERTAINS LIEUX D'HAITI PEUVENT ETRE FERMES PENDANT LES HEURES]]]]><![CDATA[></ERR_MESSAGE></RECORD><RECORD><ERR_CODE>002</ERR_CODE><ERR_MESSAGE><![CDATA[REGULIERES D'OUVERTURE EN RAISON DE L'ETAT D'URGENCE. *A COMPTER]]]]><![CDATA[></ERR_MESSAGE></RECORD><RECORD><ERR_CODE>003</ERR_CODE><ERR_MESSAGE><![CDATA[DE 1er FEVRIER 2024, LE SERVICE DE WESTERN UNION A CUBA A ETE]]]]><![CDATA[></ERR_MESSAGE></RECORD><RECORD><ERR_CODE>004</ERR_CODE><ERR_MESSAGE><![CDATA[TEMPORAIREMENT SUSPENDU. *LES SITES EN PALESTINE ET DANS LES]]]]><![CDATA[></ERR_MESSAGE></RECORD><RECORD><ERR_CODE>005</ERR_CODE><ERR_MESSAGE><![CDATA[PAYS PROCHES PEUVENT ETRE FERMES EN RAISON D'UN CONFLIT]]]]><![CDATA[></ERR_MESSAGE></RECORD><RECORD><ERR_CODE>006</ERR_CODE><ERR_MESSAGE><![CDATA[INTERNATIONAL.]]]]><![CDATA[></ERR_MESSAGE></RECORD><RECORD><ERR_CODE>007</ERR_CODE></RECORD></RECORDSET></DATA_CONTEXT></REPLY></MTML>]]></vs:Body>
              <vs:Footer/>
              <vs:ResponseScript>
                <vs:ScriptLang>Groovy</vs:ScriptLang>
                <vs:Script/>
              </vs:ResponseScript>
            </vs:Response>
            <vs:Response contentType="Json" name="GetWUAgentBannerMsgs_DAS2Response_5048" responseDelay="0" statusCode="200">
              <vs:Header>01139</vs:Header>
              <vs:Body><![CDATA[00001000012000030000100000501107<?xml version="1.0" encoding="WINDOWS-1252" ?><MTML><REPLY HOST="AUHOST" CLIENT="WUCLIENT" TYPE=""><DATA_CONTEXT><HEADER><ACCOUNT_NUM>APH275048</ACCOUNT_NUM><DB_NAME>ERCUSA</DB_NAME><FS_REFNUM>1290</FS_REFNUM><DATA_MORE>N</DATA_MORE><DATA_NUM_RECS>7</DATA_NUM_RECS><NAME>GetWUAgentBannerMsgs</NAME></HEADER><RECORDSET><RECORD><ERR_CODE>001</ERR_CODE><ERR_MESSAGE><![CDATA[*PAYOUTS IN BANGLADESH ARE DELAYED DUE TO NATIONWIDE CURFEW AND]]]]><![CDATA[></ERR_MESSAGE></RECORD><RECORD><ERR_CODE>002</ERR_CODE><ERR_MESSAGE><![CDATA[DISRUPTION IN INTERNET SERVICES *DUE TO CIVIL UNREST IN]]]]><![CDATA[></ERR_MESSAGE></RECORD><RECORD><ERR_CODE>003</ERR_CODE><ERR_MESSAGE><![CDATA[VENEZUELA, AGENT LOCATIONS MIGHT BE CLOSED DURING REGULAR]]]]><![CDATA[></ERR_MESSAGE></RECORD><RECORD><ERR_CODE>004</ERR_CODE><ERR_MESSAGE><![CDATA[OPERATING HOURS. CUSTOMERS SHOULD USE THE AGENT S WEBSITE TO]]]]><![CDATA[></ERR_MESSAGE></RECORD><RECORD><ERR_CODE>005</ERR_CODE><ERR_MESSAGE><![CDATA[SEND AND RECEIVE MONEY ONLINE.]]]]><![CDATA[></ERR_MESSAGE></RECORD><RECORD><ERR_CODE>006</ERR_CODE></RECORD><RECORD><ERR_CODE>007</ERR_CODE></RECORD></RECORDSET></DATA_CONTEXT></REPLY></MTML>]]></vs:Body>
              <vs:Footer/>
              <vs:ResponseScript>
                <vs:ScriptLang>Groovy</vs:ScriptLang>
                <vs:Script/>
              </vs:ResponseScript>
            </vs:Response>
          </vs:stubResponse>
        </vs:RRPair>
        <vs:RRPair id="default_0">
          <vs:Request>
            <vs:RequestData/>
          </vs:Request>
          <vs:ResponseSelection>
            <vs:MatchStyle>Operation</vs:MatchStyle>
            <vs:MatchScript>
              <vs:ScriptLang>Groovy</vs:ScriptLang>
              <vs:Script/>
            </vs:MatchScript>
          </vs:ResponseSelection>
          <vs:stubResponse>
            <vs:Response contentType="Json" name="GetWUAgentBannerMsgs_DefaultResponse" responseDelay="0" statusCode="200">
              <vs:Header>01319</vs:Header>
              <vs:Body><![CDATA[00001000012000030000100000501287<?xml version="1.0" encoding="WINDOWS-1252" ?><MTML><REPLY HOST="AUHOST" CLIENT="WUCLIENT" TYPE=""><DATA_CONTEXT><HEADER><ACCOUNT_NUM>A18130017</ACCOUNT_NUM><DB_NAME>ERCDEU</DB_NAME><FS_REFNUM>1450</FS_REFNUM><DATA_MORE>N</DATA_MORE><DATA_NUM_RECS>7</DATA_NUM_RECS><NAME>GetWUAgentBannerMsgs</NAME></HEADER><RECORDSET><RECORD><ERR_CODE>001</ERR_CODE><ERR_MESSAGE><![CDATA[*MIT WIRKUNG VOM 5. FEBRUAR 2025 WURDE DER DIENST NACH KUBA]]]]><![CDATA[></ERR_MESSAGE></RECORD><RECORD><ERR_CODE>002</ERR_CODE><ERR_MESSAGE><![CDATA[EINGESTELLT. *DER DIREKTE BANKSERVICE NACH JORDANIEN IST]]]]><![CDATA[></ERR_MESSAGE></RECORD><RECORD><ERR_CODE>003</ERR_CODE><ERR_MESSAGE><![CDATA[VORUBERGEHEND NICHT VERFUGBAR *AUFGRUND VON ERDBEBEN KONNEN]]]]><![CDATA[></ERR_MESSAGE></RECORD><RECORD><ERR_CODE>004</ERR_CODE><ERR_MESSAGE>STANDORTE IN VANUATU WAHREND DER REGULAREN GESCHAFTSZEITEN</ERR_MESSAGE></RECORD><RECORD><ERR_CODE>005</ERR_CODE><ERR_MESSAGE><![CDATA[GESCHLOSSEN ODER TEILWEISE BETRIEBSBEREIT SEIN. *DER DIENST AN]]]]><![CDATA[></ERR_MESSAGE></RECORD><RECORD><ERR_CODE>006</ERR_CODE><ERR_MESSAGE><![CDATA[SYRIEN IST VOLL FUNKTIONSFAHIG, EINIGE VERZOGERUNGEN KONNEN]]]]><![CDATA[></ERR_MESSAGE></RECORD><RECORD><ERR_CODE>007</ERR_CODE><ERR_MESSAGE>AUFGRUND POLITISCHER UNRUHEN AUFTRETEN</ERR_MESSAGE></RECORD></RECORDSET></DATA_CONTEXT></REPLY></MTML>]]></vs:Body>
              <vs:Footer/>
              <vs:ResponseScript>
                <vs:ScriptLang>Groovy</vs:ScriptLang>
                <vs:Script/>
              </vs:ResponseScript>
            </vs:Response>
          </vs:stubResponse>
        </vs:RRPair>
      </vs:StubOperation>
      <vs:StubOperation defaultRR="default_0" name="GetWUBannerMsgs">
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
              <vs:Script><![CDATA[def Req = mockRequest.getRequestContent()
log.info "Request: " + Req

if (Req.contains("AKC170383")) {
    matchContext.setResponse("GetWUBannerMsgs_DAS1Response")
    return true
}
else if (Req.contains("A16119997")) {
    matchContext.setResponse("GetWUBannerMsgs_DAS2Response_9997")
    return true
}
else if (Req.contains("A16110042")) {
    matchContext.setResponse("GetWUBannerMsgs_DAS2Response_0042")
    return true
}
else if (Req.contains("APH275048")) {
    matchContext.setResponse("GetWUBannerMsgs_DAS2Response_5048")
    return true
}
else {
    return false
}
]]></vs:Script>
            </vs:MatchScript>
          </vs:ResponseSelection>
          <vs:stubResponse>
            <vs:Response contentType="Json" name="GetWUBannerMsgs_DAS1Response" responseDelay="0" statusCode="200">
              <vs:Header>00870</vs:Header>
              <vs:Body><![CDATA[00001000012000030000100000500838<?xml version="1.0" encoding="WINDOWS-1252" ?><MTML><REPLY HOST="AUHOST" CLIENT="WUCLIENT" TYPE=""><DATA_CONTEXT><HEADER><ACCOUNT_NUM>AKC170383</ACCOUNT_NUM><DB_NAME>ERCQSA</DB_NAME><FS_REFNUM>142</FS_REFNUM><DATA_MORE>N</DATA_MORE><DATA_NUM_RECS>4</DATA_NUM_RECS><NAME>GetWUBannerMsgs</NAME></HEADER><RECORDSET><RECORD><ERR_CODE>001</ERR_CODE><ERR_MESSAGE><![CDATA[B0000 https://pos.westernunion.net/agents]]]]><![CDATA[></ERR_MESSAGE></RECORD><RECORD><ERR_CODE>002</ERR_CODE><ERR_MESSAGE><![CDATA[B0001 https://pos.westernunion.net/agents]]]]><![CDATA[></ERR_MESSAGE></RECORD><RECORD><ERR_CODE>003</ERR_CODE><ERR_MESSAGE><![CDATA[B0002 https://pos.westernunion.net/agents]]]]><![CDATA[></ERR_MESSAGE></RECORD><RECORD><ERR_CODE>004</ERR_CODE><ERR_MESSAGE><![CDATA[B0003 https://pos.westernunion.net/agents]]]]><![CDATA[></ERR_MESSAGE></RECORD></RECORDSET></DATA_CONTEXT></REPLY></MTML>]]></vs:Body>
              <vs:Footer/>
              <vs:ResponseScript>
                <vs:ScriptLang>Groovy</vs:ScriptLang>
                <vs:Script/>
              </vs:ResponseScript>
            </vs:Response>
            <vs:Response contentType="Json" name="GetWUBannerMsgs_DAS2Response_9997" responseDelay="0" statusCode="200">
              <vs:Header>00611</vs:Header>
              <vs:Body><![CDATA[00001000012000030000100000500579<?xml version="1.0" encoding="WINDOWS-1252" ?><MTML><REPLY HOST="AUHOST" CLIENT="WUCLIENT" TYPE=""><DATA_CONTEXT><HEADER><ACCOUNT_NUM>A16119997</ACCOUNT_NUM><DB_NAME>ERCINT</DB_NAME><FS_REFNUM>1124</FS_REFNUM><DATA_MORE>N</DATA_MORE><DATA_NUM_RECS>4</DATA_NUM_RECS><NAME>GetWUBannerMsgs</NAME></HEADER><RECORDSET><RECORD><ERR_CODE>001</ERR_CODE><ERR_MESSAGE>THANK YOU FOR USING WESTERN UNION</ERR_MESSAGE></RECORD><RECORD><ERR_CODE>002</ERR_CODE></RECORD><RECORD><ERR_CODE>003</ERR_CODE></RECORD><RECORD><ERR_CODE>004</ERR_CODE></RECORD></RECORDSET></DATA_CONTEXT></REPLY></MTML>]]></vs:Body>
              <vs:Footer/>
              <vs:ResponseScript>
                <vs:ScriptLang>Groovy</vs:ScriptLang>
                <vs:Script/>
              </vs:ResponseScript>
            </vs:Response>
            <vs:Response contentType="Json" name="GetWUBannerMsgs_DAS2Response_0042" responseDelay="0" statusCode="200">
              <vs:Header>00804</vs:Header>
              <vs:Body><![CDATA[00001000012000030000100000500772<?xml version="1.0" encoding="WINDOWS-1252"?><MTML><REPLY HOST="AUHOST" CLIENT="WUCLIENT" TYPE=""><DATA_CONTEXT><HEADER><ACCOUNT_NUM>A16110042</ACCOUNT_NUM><DB_NAME>ERCFRZ</DB_NAME><FS_REFNUM>17</FS_REFNUM><DATA_MORE>N</DATA_MORE><DATA_NUM_RECS>4</DATA_NUM_RECS><NAME>GetWUBannerMsgs</NAME></HEADER><RECORDSET><RECORD><ERR_CODE>001</ERR_CODE><ERR_MESSAGE><![CDATA[* Les transferts d'argent envoyes au [Tchad/Cameroun] sont]]]]><![CDATA[></ERR_MESSAGE></RECORD><RECORD><ERR_CODE>002</ERR_CODE><ERR_MESSAGE><![CDATA[soumis a une taxe de 0,2 % qui sera deduite du montant principal]]]]><![CDATA[></ERR_MESSAGE></RECORD><RECORD><ERR_CODE>003</ERR_CODE><ERR_MESSAGE><![CDATA[lors du paiement.]]]]><![CDATA[></ERR_MESSAGE></RECORD><RECORD><ERR_CODE>004</ERR_CODE></RECORD></RECORDSET></DATA_CONTEXT></REPLY></MTML>]]></vs:Body>
              <vs:Footer/>
              <vs:ResponseScript>
                <vs:ScriptLang>Groovy</vs:ScriptLang>
                <vs:Script/>
              </vs:ResponseScript>
            </vs:Response>
            <vs:Response contentType="Json" name="GetWUBannerMsgs_DAS2Response_5048" responseDelay="0" statusCode="200">
              <vs:Header>00611</vs:Header>
              <vs:Body><![CDATA[00001000012000030000100000500579<?xml version="1.0" encoding="WINDOWS-1252" ?><MTML><REPLY HOST="AUHOST" CLIENT="WUCLIENT" TYPE=""><DATA_CONTEXT><HEADER><ACCOUNT_NUM>APH275048</ACCOUNT_NUM><DB_NAME>ERCUSA</DB_NAME><FS_REFNUM>1291</FS_REFNUM><DATA_MORE>N</DATA_MORE><DATA_NUM_RECS>4</DATA_NUM_RECS><NAME>GetWUBannerMsgs</NAME></HEADER><RECORDSET><RECORD><ERR_CODE>001</ERR_CODE><ERR_MESSAGE>THANK YOU FOR USING WESTERN UNION</ERR_MESSAGE></RECORD><RECORD><ERR_CODE>002</ERR_CODE></RECORD><RECORD><ERR_CODE>003</ERR_CODE></RECORD><RECORD><ERR_CODE>004</ERR_CODE></RECORD></RECORDSET></DATA_CONTEXT></REPLY></MTML>]]></vs:Body>
              <vs:Footer/>
              <vs:ResponseScript>
                <vs:ScriptLang>Groovy</vs:ScriptLang>
                <vs:Script/>
              </vs:ResponseScript>
            </vs:Response>
          </vs:stubResponse>
        </vs:RRPair>
        <vs:RRPair id="default_0">
          <vs:Request>
            <vs:RequestData/>
          </vs:Request>
          <vs:ResponseSelection>
            <vs:MatchStyle>Operation</vs:MatchStyle>
            <vs:MatchScript>
              <vs:ScriptLang>Groovy</vs:ScriptLang>
              <vs:Script/>
            </vs:MatchScript>
          </vs:ResponseSelection>
          <vs:stubResponse>
            <vs:Response contentType="Json" name="GetWUBannerMsgs_DefaultResponse" responseDelay="0" statusCode="200">
              <vs:Header></vs:Header>
              <vs:Body><![CDATA[]]></vs:Body>
              <vs:Footer/>
              <vs:ResponseScript>
                <vs:ScriptLang>Groovy</vs:ScriptLang>
                <vs:Script/>
              </vs:ResponseScript>
            </vs:Response>
          </vs:stubResponse>
        </vs:RRPair>
      </vs:StubOperation>
      <vs:StubOperation defaultRR="default_0" name="GetAccountTableInfo">
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
              <vs:Script><![CDATA[def Req = mockRequest.getRequestContent()
log.info "Request: " + Req

if (Req.contains("AKC170383")) {
    matchContext.setResponse("GetAccountTableInfo_DAS1Response")
    return true
}
else if (Req.contains("A16110042")) {
    matchContext.setResponse("GetAccountTableInfo_DAS2_0042")
    return true
}
else if (Req.contains("A16119997")) {
    matchContext.setResponse("GetAccountTableInfo_DAS2_9997")
    return true
}
else if (Req.contains("TPHVERSION_NUMBER")) {
    matchContext.setResponse("GetAccountTableInfo_DAS2_PHNUMBER")
    return true
}
else {
    return false
}
]]></vs:Script>
            </vs:MatchScript>
          </vs:ResponseSelection>
          <vs:stubResponse>
            <vs:Response contentType="Json" name="GetAccountTableInfo_DAS1Response" responseDelay="0" statusCode="200">
              <vs:Header>00346</vs:Header>
              <vs:Body><![CDATA[00001000012000030000100000500314<?xml version="1.0" encoding="WINDOWS-1252" ?><MTML><REPLY HOST="AUHOST" CLIENT="WUCLIENT" TYPE=""><DATA_CONTEXT><HEADER><DATA_MORE>N</DATA_MORE><DATA_NUM_RECS>0</DATA_NUM_RECS><ERROR_MSG>D0004 NO MATCHING RECORDS FOUND</ERROR_MSG><NAME>GetAccountTableInfo</NAME></HEADER><RECORDSET/></DATA_CONTEXT></REPLY></MTML>]]></vs:Body>
              <vs:Footer/>
              <vs:ResponseScript>
                <vs:ScriptLang>Groovy</vs:ScriptLang>
                <vs:Script/>
              </vs:ResponseScript>
            </vs:Response>
            <vs:Response contentType="Json" name="GetAccountTableInfo_DAS2_0042" responseDelay="0" statusCode="200">
              <vs:Header>00823</vs:Header>
              <vs:Body><![CDATA[00001000012000030000100000500791<?xml version="1.0" encoding="WINDOWS-1252"?><MTML><REPLY HOST="AUHOST" CLIENT="WUCLIENT" TYPE=""><DATA_CONTEXT><HEADER><FSID>SOCIETFRT</FSID><COUNTER_ID>AE2V</COUNTER_ID><DATA_MORE>N</DATA_MORE><DATA_NUM_RECS>1</DATA_NUM_RECS><NAME>GetAccountTableInfo</NAME></HEADER><RECORDSET><RECORD><ACCOUNT>A16110042</ACCOUNT><TERM_ID>aqbG</TERM_ID><FSID>SOCIETFRT</FSID><COUNTER_ID>AE2V</COUNTER_ID><ISO_COUNTRY_CD>FR</ISO_COUNTRY_CD><CURRENCY_CD>EUR</CURRENCY_CD><CT1_TABLE>3YX</CT1_TABLE><RAT_TABLE>4XI</RAT_TABLE><DSV_TABLE>7HA</DSV_TABLE><TMP_TABLE>3KC</TMP_TABLE><ERC_TABLE>FRZ</ERC_TABLE><QQC_TABLE>INT</QQC_TABLE><MEX_TABLE>USA</MEX_TABLE><FIF_TABLE>FRA</FIF_TABLE><BNK_TABLE>INT</BNK_TABLE><SUP_TABLE>USA</SUP_TABLE><CKW_TABLE>USA</CKW_TABLE></RECORD></RECORDSET></DATA_CONTEXT></REPLY></MTML>]]></vs:Body>
              <vs:Footer/>
              <vs:ResponseScript>
                <vs:ScriptLang>Groovy</vs:ScriptLang>
                <vs:Script/>
              </vs:ResponseScript>
            </vs:Response>
            <vs:Response contentType="Json" name="GetAccountTableInfo_DAS2_9997" responseDelay="0" statusCode="200">
              <vs:Header>00735</vs:Header>
              <vs:Body><![CDATA[00001000012000030000100000500703<?xml version="1.0" encoding="WINDOWS-1252" ?><MTML><REPLY HOST="AUHOST" CLIENT="WUCLIENT" TYPE=""><DATA_CONTEXT><HEADER><ACCOUNT_NUM>A16119997</ACCOUNT_NUM><DATA_MORE>N</DATA_MORE><DATA_NUM_RECS>1</DATA_NUM_RECS><NAME>GetAccountTableInfo</NAME></HEADER><RECORDSET><RECORD><ISO_COUNTRY_CD>FR</ISO_COUNTRY_CD><CURRENCY_CD>EUR</CURRENCY_CD><ACCOUNT>A16119997</ACCOUNT><CT1_TABLE>3YW</CT1_TABLE><RAT_TABLE>3JX</RAT_TABLE><DSV_TABLE>7HA</DSV_TABLE><TMP_TABLE>8FR</TMP_TABLE><ERC_TABLE>INT</ERC_TABLE><QQC_TABLE>INT</QQC_TABLE><MEX_TABLE>USA</MEX_TABLE><FIF_TABLE>FRA</FIF_TABLE><BNK_TABLE>INT</BNK_TABLE><SUP_TABLE>USA</SUP_TABLE><CKW_TABLE>USA</CKW_TABLE></RECORD></RECORDSET></DATA_CONTEXT></REPLY></MTML>]]></vs:Body>
              <vs:Footer/>
              <vs:ResponseScript>
                <vs:ScriptLang>Groovy</vs:ScriptLang>
                <vs:Script/>
              </vs:ResponseScript>
            </vs:Response>
            <vs:Response contentType="Json" name="GetAccountTableInfo_DAS2_PHNUMBER" responseDelay="0" statusCode="200">
              <vs:Header>00346</vs:Header>
              <vs:Body><![CDATA[00001000012000030000100000500314<?xml version="1.0" encoding="WINDOWS-1252" ?><MTML><REPLY HOST="AUHOST" CLIENT="WUCLIENT" TYPE=""><DATA_CONTEXT><HEADER><DATA_MORE>N</DATA_MORE><DATA_NUM_RECS>0</DATA_NUM_RECS><ERROR_MSG>D0004 NO MATCHING RECORDS FOUND</ERROR_MSG><NAME>GetAccountTableInfo</NAME></HEADER><RECORDSET/></DATA_CONTEXT></REPLY></MTML>]]></vs:Body>
              <vs:Footer/>
              <vs:ResponseScript>
                <vs:ScriptLang>Groovy</vs:ScriptLang>
                <vs:Script/>
              </vs:ResponseScript>
            </vs:Response>
          </vs:stubResponse>
        </vs:RRPair>
        <vs:RRPair id="default_0">
          <vs:Request>
            <vs:RequestData/>
          </vs:Request>
          <vs:ResponseSelection>
            <vs:MatchStyle>Operation</vs:MatchStyle>
            <vs:MatchScript>
              <vs:ScriptLang>Groovy</vs:ScriptLang>
              <vs:Script/>
            </vs:MatchScript>
          </vs:ResponseSelection>
          <vs:stubResponse>
            <vs:Response contentType="Json" name="GetAccountTableInfo_DefaultResponse" responseDelay="0" statusCode="200">
              <vs:Header>00346</vs:Header>
              <vs:Body><![CDATA[00001000012000030000100000500314<?xml version="1.0" encoding="WINDOWS-1252" ?><MTML><REPLY HOST="AUHOST" CLIENT="WUCLIENT" TYPE=""><DATA_CONTEXT><HEADER><DATA_MORE>N</DATA_MORE><DATA_NUM_RECS>0</DATA_NUM_RECS><ERROR_MSG>D0004 NO MATCHING RECORDS FOUND</ERROR_MSG><NAME>GetAccountTableInfo</NAME></HEADER><RECORDSET/></DATA_CONTEXT></REPLY></MTML>]]></vs:Body>
              <vs:Footer/>
              <vs:ResponseScript>
                <vs:ScriptLang>Groovy</vs:ScriptLang>
                <vs:Script/>
              </vs:ResponseScript>
            </vs:Response>
          </vs:stubResponse>
        </vs:RRPair>
      </vs:StubOperation>
      <vs:StubOperation defaultRR="default_0" name="GetSeqCityStateUpdates">
        <vs:DataSourceSelect>
          <vs:Database/>
          <vs:File>
            <vs:RequestName/>
            <vs:RequestColumnMappings/>
          </vs:File>
        </vs:DataSourceSelect>
        <vs:Filters/>
        <vs:RequestData/>
        <vs:RRPair id="default_0">
          <vs:Request>
            <vs:RequestData/>
          </vs:Request>
          <vs:ResponseSelection>
            <vs:MatchStyle>Operation</vs:MatchStyle>
            <vs:MatchScript>
              <vs:ScriptLang>Groovy</vs:ScriptLang>
              <vs:Script/>
            </vs:MatchScript>
          </vs:ResponseSelection>
          <vs:stubResponse>
            <vs:Response contentType="Json" name="GetSeqCityStateUpdates_Response" responseDelay="0" statusCode="200">
              <vs:Header>00349</vs:Header>
              <vs:Body><![CDATA[00001000012000030000100000500317<?xml version="1.0" encoding="WINDOWS-1252" ?><MTML><REPLY HOST="AUHOST" CLIENT="WUCLIENT" TYPE=""><DATA_CONTEXT><HEADER><DATA_MORE>N</DATA_MORE><DATA_NUM_RECS>0</DATA_NUM_RECS><ERROR_MSG>D0004 NO MATCHING RECORDS FOUND</ERROR_MSG><NAME>GetSeqCityStateUpdates</NAME></HEADER><RECORDSET/></DATA_CONTEXT></REPLY></MTML>]]></vs:Body>
              <vs:Footer/>
              <vs:ResponseScript>
                <vs:ScriptLang>Groovy</vs:ScriptLang>
                <vs:Script/>
              </vs:ResponseScript>
            </vs:Response>
          </vs:stubResponse>
        </vs:RRPair>
      </vs:StubOperation>
      <vs:StubOperation defaultRR="default_0" name="GetErrorMessagesInfo">
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
              <vs:Script><![CDATA[def Req = mockRequest.getRequestContent()
log.info "Request: " + Req

if (Req.contains("AKC170383")) {
    matchContext.setResponse("GetErrorMessagesInfo_DAS1Response")
    return true
}
else if (Req.contains("A16110042")) {
    matchContext.setResponse("GetErrorMessagesInfo_DAS2_0042")
    return true
}
else if (Req.contains("A16119997")) {
    matchContext.setResponse("GetErrorMessagesInfo_DAS2_9997")
    return true
}
else {
    return false
}
]]></vs:Script>
            </vs:MatchScript>
          </vs:ResponseSelection>
          <vs:stubResponse>
            <vs:Response contentType="Json" name="GetErrorMessagesInfo_DAS1Response" responseDelay="0" statusCode="200">
              <vs:Header>00396</vs:Header>
              <vs:Body><![CDATA[00001000012000030000100000500364<?xml version="1.0" encoding="WINDOWS-1252" ?><MTML><REPLY HOST="AUHOST" CLIENT="WUCLIENT" TYPE=""><DATA_CONTEXT><HEADER><ACCOUNT_NUM>AKC170383</ACCOUNT_NUM><DB_NAME>ERC1EC</DB_NAME><DATA_MORE>N</DATA_MORE><DATA_NUM_RECS>0</DATA_NUM_RECS><ERROR_MSG>D0004 NO MATCHING RECORDS FOUND</ERROR_MSG><NAME>GetErrorMessagesInfo</NAME></HEADER></DATA_CONTEXT></REPLY></MTML>]]></vs:Body>
              <vs:Footer/>
              <vs:ResponseScript>
                <vs:ScriptLang>Groovy</vs:ScriptLang>
                <vs:Script/>
              </vs:ResponseScript>
            </vs:Response>
            <vs:Response contentType="Json" name="GetErrorMessagesInfo_DAS2_0042" responseDelay="0" statusCode="200">
              <vs:Header>00388</vs:Header>
              <vs:Body><![CDATA[00001000012000030000100000500356<?xml version="1.0" encoding="WINDOWS-1252"?><MTML><REPLY HOST="AUHOST" CLIENT="WUCLIENT" TYPE=""><DATA_CONTEXT><HEADER><FSID>F0000000864P</FSID><COUNTER_ID>SW11</COUNTER_ID><DATA_MORE>N</DATA_MORE><DATA_NUM_RECS>0</DATA_NUM_RECS><ERROR_MSG>D0004 NO MATCHING RECORDS FOUND</ERROR_MSG><NAME>GetErrorMessagesInfo</NAME></HEADER></DATA_CONTEXT></REPLY></MTML>]]></vs:Body>
              <vs:Footer/>
              <vs:ResponseScript>
                <vs:ScriptLang>Groovy</vs:ScriptLang>
                <vs:Script/>
              </vs:ResponseScript>
            </vs:Response>
            <vs:Response contentType="Json" name="GetErrorMessagesInfo_DAS2_9997" responseDelay="0" statusCode="200">
              <vs:Header>00396</vs:Header>
              <vs:Body><![CDATA[00001000012000030000100000500364<?xml version="1.0" encoding="WINDOWS-1252" ?><MTML><REPLY HOST="AUHOST" CLIENT="WUCLIENT" TYPE=""><DATA_CONTEXT><HEADER><ACCOUNT_NUM>A16119997</ACCOUNT_NUM><DB_NAME>ERCINT</DB_NAME><DATA_MORE>N</DATA_MORE><DATA_NUM_RECS>0</DATA_NUM_RECS><ERROR_MSG>D0004 NO MATCHING RECORDS FOUND</ERROR_MSG><NAME>GetErrorMessagesInfo</NAME></HEADER></DATA_CONTEXT></REPLY></MTML>]]></vs:Body>
              <vs:Footer/>
              <vs:ResponseScript>
                <vs:ScriptLang>Groovy</vs:ScriptLang>
                <vs:Script/>
              </vs:ResponseScript>
            </vs:Response>
          </vs:stubResponse>
        </vs:RRPair>
        <vs:RRPair id="default_0">
          <vs:Request>
            <vs:RequestData/>
          </vs:Request>
          <vs:ResponseSelection>
            <vs:MatchStyle>Operation</vs:MatchStyle>
            <vs:MatchScript>
              <vs:ScriptLang>Groovy</vs:ScriptLang>
              <vs:Script/>
            </vs:MatchScript>
          </vs:ResponseSelection>
          <vs:stubResponse>
            <vs:Response contentType="Json" name="GetErrorMessagesInfo_DefaultResponse" responseDelay="0" statusCode="200">
              <vs:Header></vs:Header>
              <vs:Body><![CDATA[]]></vs:Body>
              <vs:Footer/>
              <vs:ResponseScript>
                <vs:ScriptLang>Groovy</vs:ScriptLang>
                <vs:Script/>
              </vs:ResponseScript>
            </vs:Response>
          </vs:stubResponse>
        </vs:RRPair>
      </vs:StubOperation>
      <vs:StubOperation defaultRR="default_0" name="GetCountriesCurrencies">
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
              <vs:Script><![CDATA[def currreq = mockRequest.getRequestContent()
log.info "Request: " + currreq

if (currreq.contains("<QUERYFILTER3>Japan</QUERYFILTER3>")) {
    log.info "Japan"
    matchContext.setResponse("Response 2")
    return true
}
else if (currreq.contains("<QUERYFILTER3>Sudan</QUERYFILTER3>")) {
    matchContext.setResponse("Response 3")
    return true
}
else {
    return false
}
]]></vs:Script>
            </vs:MatchScript>
          </vs:ResponseSelection>
          <vs:stubResponse>
            <vs:Response contentType="Json" name="Response 2" responseDelay="0" statusCode="200">
              <vs:Header>31677</vs:Header>
              <vs:Body><![CDATA[00001000012000030000100000531645<?xml version="1.0" encoding="WINDOWS-1252"?><MTML><REPLY HOST="AUHOST" CLIENT="WUCLIENT" TYPE=""><DATA_CONTEXT><HEADER><ACCOUNT_NUM>ACH087077</ACCOUNT_NUM><DB_NAME>CT1USA</DB_NAME><FS_REFNUM>014</FS_REFNUM><DATA_MORE>Y</DATA_MORE><DATA_NUM_RECS>123</DATA_NUM_RECS><NAME>GetCountriesCurrencies</NAME></HEADER><RECORDSET><RECORD><ISO_COUNTRY_CD>QM</ISO_COUNTRY_CD><COUNTRY_LONG>Japan US Military Base</COUNTRY_LONG><CURRENCY_CD>USD</CURRENCY_CD><CURRENCY_NAME>US Dollar</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>840</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>840</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>JO</ISO_COUNTRY_CD><COUNTRY_LONG>Jordan</COUNTRY_LONG><CURRENCY_CD>JOD</CURRENCY_CD><CURRENCY_NAME>Jordanian Dinar</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>400</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>400</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>KZ</ISO_COUNTRY_CD><COUNTRY_LONG>Kazakhstan</COUNTRY_LONG><CURRENCY_CD>KZT</CURRENCY_CD><CURRENCY_NAME>Kazakhstan Tenge</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>398</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>398</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>KZ</ISO_COUNTRY_CD><COUNTRY_LONG>Kazakhstan</COUNTRY_LONG><CURRENCY_CD>USD</CURRENCY_CD><CURRENCY_NAME>US Dollar</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>398</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>840</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>KE</ISO_COUNTRY_CD><COUNTRY_LONG>Kenya</COUNTRY_LONG><CURRENCY_CD>KES</CURRENCY_CD><CURRENCY_NAME>Kenyan Shilling</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>404</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>404</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>KI</ISO_COUNTRY_CD><COUNTRY_LONG>Kiribati</COUNTRY_LONG><CURRENCY_CD>AUD</CURRENCY_CD><CURRENCY_NAME>Australian Dollar</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>296</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>036</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>KR</ISO_COUNTRY_CD><COUNTRY_LONG>Korea</COUNTRY_LONG><CURRENCY_CD>KRW</CURRENCY_CD><CURRENCY_NAME>Korean Won</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>410</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>410</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>KR</ISO_COUNTRY_CD><COUNTRY_LONG>Korea</COUNTRY_LONG><CURRENCY_CD>USD</CURRENCY_CD><CURRENCY_NAME>US Dollar</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>410</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>840</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>QN</ISO_COUNTRY_CD><COUNTRY_LONG>Korea US Military Base</COUNTRY_LONG><CURRENCY_CD>USD</CURRENCY_CD><CURRENCY_NAME>US Dollar</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>840</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>840</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>K1</ISO_COUNTRY_CD><COUNTRY_LONG>Kosovo</COUNTRY_LONG><CURRENCY_CD>EUR</CURRENCY_CD><CURRENCY_NAME>Euro</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>891</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>978</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>XF</ISO_COUNTRY_CD><COUNTRY_LONG>Kosovo US Military Base</COUNTRY_LONG><CURRENCY_CD>USD</CURRENCY_CD><CURRENCY_NAME>US Dollar</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>840</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>840</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>KW</ISO_COUNTRY_CD><COUNTRY_LONG>Kuwait</COUNTRY_LONG><CURRENCY_CD>KWD</CURRENCY_CD><CURRENCY_NAME>Kuwaiti Dinar</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>414</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>414</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>QU</ISO_COUNTRY_CD><COUNTRY_LONG>Kuwait US Military Base</COUNTRY_LONG><CURRENCY_CD>USD</CURRENCY_CD><CURRENCY_NAME>US Dollar</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>840</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>840</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>KG</ISO_COUNTRY_CD><COUNTRY_LONG>Kyrghyz Republic</COUNTRY_LONG><CURRENCY_CD>KGS</CURRENCY_CD><CURRENCY_NAME>Kyrgyzstani Som</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>417</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>417</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>KG</ISO_COUNTRY_CD><COUNTRY_LONG>Kyrghyz Republic</COUNTRY_LONG><CURRENCY_CD>USD</CURRENCY_CD><CURRENCY_NAME>US Dollar</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>417</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>840</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>AA</ISO_COUNTRY_CD><COUNTRY_LONG>Kyrghyz Republic US Military Base</COUNTRY_LONG><CURRENCY_CD>USD</CURRENCY_CD><CURRENCY_NAME>US Dollar</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>840</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>840</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>LA</ISO_COUNTRY_CD><COUNTRY_LONG>Laos</COUNTRY_LONG><CURRENCY_CD>LAK</CURRENCY_CD><CURRENCY_NAME>Laos Kip</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>418</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>418</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>LA</ISO_COUNTRY_CD><COUNTRY_LONG>Laos</COUNTRY_LONG><CURRENCY_CD>USD</CURRENCY_CD><CURRENCY_NAME>US Dollar</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>418</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>840</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>LV</ISO_COUNTRY_CD><COUNTRY_LONG>Latvia</COUNTRY_LONG><CURRENCY_CD>EUR</CURRENCY_CD><CURRENCY_NAME>Euro</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>428</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>978</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>LB</ISO_COUNTRY_CD><COUNTRY_LONG>Lebanon</COUNTRY_LONG><CURRENCY_CD>USD</CURRENCY_CD><CURRENCY_NAME>US Dollar</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>422</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>840</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>LS</ISO_COUNTRY_CD><COUNTRY_LONG>Lesotho</COUNTRY_LONG><CURRENCY_CD>LSL</CURRENCY_CD><CURRENCY_NAME>Lesotho Loti</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>426</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>426</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>LR</ISO_COUNTRY_CD><COUNTRY_LONG>Liberia</COUNTRY_LONG><CURRENCY_CD>USD</CURRENCY_CD><CURRENCY_NAME>US Dollar</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>430</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>840</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>LY</ISO_COUNTRY_CD><COUNTRY_LONG>Libya</COUNTRY_LONG><CURRENCY_CD>LYD</CURRENCY_CD><CURRENCY_NAME>Libyan Dinar</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>434</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>434</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>LI</ISO_COUNTRY_CD><COUNTRY_LONG>Liechtenstein</COUNTRY_LONG><CURRENCY_CD>CHF</CURRENCY_CD><CURRENCY_NAME>Swiss Franc</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>438</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>756</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>LT</ISO_COUNTRY_CD><COUNTRY_LONG>Lithuania</COUNTRY_LONG><CURRENCY_CD>EUR</CURRENCY_CD><CURRENCY_NAME>Euro</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>440</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>978</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>LU</ISO_COUNTRY_CD><COUNTRY_LONG>Luxembourg</COUNTRY_LONG><CURRENCY_CD>EUR</CURRENCY_CD><CURRENCY_NAME>Euro</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>442</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>978</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>MO</ISO_COUNTRY_CD><COUNTRY_LONG>Macau</COUNTRY_LONG><CURRENCY_CD>MOP</CURRENCY_CD><CURRENCY_NAME>Macau Pataca</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>446</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>446</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>MK</ISO_COUNTRY_CD><COUNTRY_LONG>Macedonia</COUNTRY_LONG><CURRENCY_CD>EUR</CURRENCY_CD><CURRENCY_NAME>Euro</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>807</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>978</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>MK</ISO_COUNTRY_CD><COUNTRY_LONG>Macedonia</COUNTRY_LONG><CURRENCY_CD>MKD</CURRENCY_CD><CURRENCY_NAME>Macedonian Denar</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>807</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>807</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>MG</ISO_COUNTRY_CD><COUNTRY_LONG>Madagascar</COUNTRY_LONG><CURRENCY_CD>MGA</CURRENCY_CD><CURRENCY_NAME>Malagasy Ariary</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>450</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>969</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>MW</ISO_COUNTRY_CD><COUNTRY_LONG>Malawi</COUNTRY_LONG><CURRENCY_CD>MWK</CURRENCY_CD><CURRENCY_NAME>Malawi Kwacha</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>454</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>454</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>MY</ISO_COUNTRY_CD><COUNTRY_LONG>Malaysia</COUNTRY_LONG><CURRENCY_CD>MYR</CURRENCY_CD><CURRENCY_NAME>Malaysian Ringgit</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>458</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>458</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>MV</ISO_COUNTRY_CD><COUNTRY_LONG>Maldives</COUNTRY_LONG><CURRENCY_CD>MVR</CURRENCY_CD><CURRENCY_NAME>Maldive Rufiyaa</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>462</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>462</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>ML</ISO_COUNTRY_CD><COUNTRY_LONG>Mali</COUNTRY_LONG><CURRENCY_CD>XOF</CURRENCY_CD><CURRENCY_NAME>CFA Franc BCEAO</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>466</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>952</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>MT</ISO_COUNTRY_CD><COUNTRY_LONG>Malta</COUNTRY_LONG><CURRENCY_CD>EUR</CURRENCY_CD><CURRENCY_NAME>Euro</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>470</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>978</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>MH</ISO_COUNTRY_CD><COUNTRY_LONG>Marshall Islands</COUNTRY_LONG><CURRENCY_CD>USD</CURRENCY_CD><CURRENCY_NAME>US Dollar</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>584</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>840</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>MQ</ISO_COUNTRY_CD><COUNTRY_LONG>Martinique</COUNTRY_LONG><CURRENCY_CD>EUR</CURRENCY_CD><CURRENCY_NAME>Euro</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>474</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>978</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>MR</ISO_COUNTRY_CD><COUNTRY_LONG>Mauritania</COUNTRY_LONG><CURRENCY_CD>MRU</CURRENCY_CD><CURRENCY_NAME>Mauritanian New Ouguiya</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>478</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>929</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>MU</ISO_COUNTRY_CD><COUNTRY_LONG>Mauritius</COUNTRY_LONG><CURRENCY_CD>MUR</CURRENCY_CD><CURRENCY_NAME>Mauritius Rupee</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>480</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>480</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>YT</ISO_COUNTRY_CD><COUNTRY_LONG>Mayotte</COUNTRY_LONG><CURRENCY_CD>EUR</CURRENCY_CD><CURRENCY_NAME>Euro</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>175</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>978</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>MX</ISO_COUNTRY_CD><COUNTRY_LONG>Mexico</COUNTRY_LONG><CURRENCY_CD>MXN</CURRENCY_CD><CURRENCY_NAME>Mexican Peso</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>484</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>484</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>FM</ISO_COUNTRY_CD><COUNTRY_LONG>Micronesia</COUNTRY_LONG><CURRENCY_CD>USD</CURRENCY_CD><CURRENCY_NAME>US Dollar</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>583</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>840</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>MD</ISO_COUNTRY_CD><COUNTRY_LONG>Moldova</COUNTRY_LONG><CURRENCY_CD>MDL</CURRENCY_CD><CURRENCY_NAME>Moldovan Leu</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>498</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>498</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>MD</ISO_COUNTRY_CD><COUNTRY_LONG>Moldova</COUNTRY_LONG><CURRENCY_CD>EUR</CURRENCY_CD><CURRENCY_NAME>Euro</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>498</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>978</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>MD</ISO_COUNTRY_CD><COUNTRY_LONG>Moldova</COUNTRY_LONG><CURRENCY_CD>USD</CURRENCY_CD><CURRENCY_NAME>US Dollar</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>498</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>840</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>MC</ISO_COUNTRY_CD><COUNTRY_LONG>Monaco</COUNTRY_LONG><CURRENCY_CD>EUR</CURRENCY_CD><CURRENCY_NAME>Euro</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>492</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>978</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>MN</ISO_COUNTRY_CD><COUNTRY_LONG>Mongolia</COUNTRY_LONG><CURRENCY_CD>USD</CURRENCY_CD><CURRENCY_NAME>US Dollar</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>496</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>840</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>ME</ISO_COUNTRY_CD><COUNTRY_LONG>Montenegro</COUNTRY_LONG><CURRENCY_CD>EUR</CURRENCY_CD><CURRENCY_NAME>Euro</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>499</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>978</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>MS</ISO_COUNTRY_CD><COUNTRY_LONG>Montserrat</COUNTRY_LONG><CURRENCY_CD>XCD</CURRENCY_CD><CURRENCY_NAME>East Caribbean Dollar</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>500</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>951</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>MA</ISO_COUNTRY_CD><COUNTRY_LONG>Morocco</COUNTRY_LONG><CURRENCY_CD>MAD</CURRENCY_CD><CURRENCY_NAME>Moroccan Dirham</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>504</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>504</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>MZ</ISO_COUNTRY_CD><COUNTRY_LONG>Mozambique</COUNTRY_LONG><CURRENCY_CD>MZN</CURRENCY_CD><CURRENCY_NAME>Mozambique New Metical</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>508</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>943</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>MM</ISO_COUNTRY_CD><COUNTRY_LONG>Myanmar</COUNTRY_LONG><CURRENCY_CD>MMK</CURRENCY_CD><CURRENCY_NAME>Myanmar Kyat</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>104</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>104</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>NA</ISO_COUNTRY_CD><COUNTRY_LONG>Namibia</COUNTRY_LONG><CURRENCY_CD>NAD</CURRENCY_CD><CURRENCY_NAME>Namibia Dollar</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>516</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>516</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>NR</ISO_COUNTRY_CD><COUNTRY_LONG>Nauru</COUNTRY_LONG><CURRENCY_CD>AUD</CURRENCY_CD><CURRENCY_NAME>Australian Dollar</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>520</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>036</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>NP</ISO_COUNTRY_CD><COUNTRY_LONG>Nepal</COUNTRY_LONG><CURRENCY_CD>NPR</CURRENCY_CD><CURRENCY_NAME>Nepalese Rupee</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>524</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>524</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>NL</ISO_COUNTRY_CD><COUNTRY_LONG>Netherlands</COUNTRY_LONG><CURRENCY_CD>EUR</CURRENCY_CD><CURRENCY_NAME>Euro</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>528</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>978</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>QT</ISO_COUNTRY_CD><COUNTRY_LONG>Netherlands US Military Base</COUNTRY_LONG><CURRENCY_CD>USD</CURRENCY_CD><CURRENCY_NAME>US Dollar</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>840</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>840</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>NZ</ISO_COUNTRY_CD><COUNTRY_LONG>New Zealand</COUNTRY_LONG><CURRENCY_CD>NZD</CURRENCY_CD><CURRENCY_NAME>New Zealand Dollar</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>554</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>554</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>NI</ISO_COUNTRY_CD><COUNTRY_LONG>Nicaragua</COUNTRY_LONG><CURRENCY_CD>USD</CURRENCY_CD><CURRENCY_NAME>US Dollar</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>558</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>840</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>NE</ISO_COUNTRY_CD><COUNTRY_LONG>Niger</COUNTRY_LONG><CURRENCY_CD>XOF</CURRENCY_CD><CURRENCY_NAME>CFA Franc BCEAO</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>562</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>952</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>NG</ISO_COUNTRY_CD><COUNTRY_LONG>Nigeria</COUNTRY_LONG><CURRENCY_CD>USD</CURRENCY_CD><CURRENCY_NAME>US Dollar</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>566</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>840</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>NU</ISO_COUNTRY_CD><COUNTRY_LONG>Niue</COUNTRY_LONG><CURRENCY_CD>NZD</CURRENCY_CD><CURRENCY_NAME>New Zealand Dollar</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>570</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>554</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>XZ</ISO_COUNTRY_CD><COUNTRY_LONG>North Ireland</COUNTRY_LONG><CURRENCY_CD>GBP</CURRENCY_CD><CURRENCY_NAME>United Kingdom Pound</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>826</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>826</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>MP</ISO_COUNTRY_CD><COUNTRY_LONG>Northern Mariana Islands</COUNTRY_LONG><CURRENCY_CD>USD</CURRENCY_CD><CURRENCY_NAME>US Dollar</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>580</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>840</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>NO</ISO_COUNTRY_CD><COUNTRY_LONG>Norway</COUNTRY_LONG><CURRENCY_CD>NOK</CURRENCY_CD><CURRENCY_NAME>Norwegian Krone</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>578</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>578</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>OM</ISO_COUNTRY_CD><COUNTRY_LONG>Oman</COUNTRY_LONG><CURRENCY_CD>OMR</CURRENCY_CD><CURRENCY_NAME>Omani Rial</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>512</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>512</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>PK</ISO_COUNTRY_CD><COUNTRY_LONG>Pakistan</COUNTRY_LONG><CURRENCY_CD>PKR</CURRENCY_CD><CURRENCY_NAME>Pakistan Rupee</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>586</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>586</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>PW</ISO_COUNTRY_CD><COUNTRY_LONG>Palau</COUNTRY_LONG><CURRENCY_CD>USD</CURRENCY_CD><CURRENCY_NAME>US Dollar</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>585</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>840</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>PS</ISO_COUNTRY_CD><COUNTRY_LONG>Palestinian Authority</COUNTRY_LONG><CURRENCY_CD>ILS</CURRENCY_CD><CURRENCY_NAME>Israeli New Shekel</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>275</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>376</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>PS</ISO_COUNTRY_CD><COUNTRY_LONG>Palestinian Authority</COUNTRY_LONG><CURRENCY_CD>JOD</CURRENCY_CD><CURRENCY_NAME>Jordanian Dinar</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>275</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>400</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>PS</ISO_COUNTRY_CD><COUNTRY_LONG>Palestinian Authority</COUNTRY_LONG><CURRENCY_CD>USD</CURRENCY_CD><CURRENCY_NAME>US Dollar</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>275</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>840</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>PA</ISO_COUNTRY_CD><COUNTRY_LONG>Panama</COUNTRY_LONG><CURRENCY_CD>USD</CURRENCY_CD><CURRENCY_NAME>US Dollar</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>591</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>840</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>PG</ISO_COUNTRY_CD><COUNTRY_LONG>Papua New Guinea</COUNTRY_LONG><CURRENCY_CD>PGK</CURRENCY_CD><CURRENCY_NAME>Papua New Guinea Kina</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>598</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>598</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>PY</ISO_COUNTRY_CD><COUNTRY_LONG>Paraguay</COUNTRY_LONG><CURRENCY_CD>PYG</CURRENCY_CD><CURRENCY_NAME>Paraguay Guarani</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>600</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>600</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>PY</ISO_COUNTRY_CD><COUNTRY_LONG>Paraguay</COUNTRY_LONG><CURRENCY_CD>USD</CURRENCY_CD><CURRENCY_NAME>US Dollar</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>600</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>840</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>PE</ISO_COUNTRY_CD><COUNTRY_LONG>Peru</COUNTRY_LONG><CURRENCY_CD>PEN</CURRENCY_CD><CURRENCY_NAME>Sol</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>604</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>604</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>PE</ISO_COUNTRY_CD><COUNTRY_LONG>Peru</COUNTRY_LONG><CURRENCY_CD>USD</CURRENCY_CD><CURRENCY_NAME>US Dollar</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>604</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>840</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>PH</ISO_COUNTRY_CD><COUNTRY_LONG>Philippines</COUNTRY_LONG><CURRENCY_CD>PHP</CURRENCY_CD><CURRENCY_NAME>Philippine Peso</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>608</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>608</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>PH</ISO_COUNTRY_CD><COUNTRY_LONG>Philippines</COUNTRY_LONG><CURRENCY_CD>USD</CURRENCY_CD><CURRENCY_NAME>US Dollar</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>608</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>840</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>PL</ISO_COUNTRY_CD><COUNTRY_LONG>Poland</COUNTRY_LONG><CURRENCY_CD>PLN</CURRENCY_CD><CURRENCY_NAME>Polish Zloty</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>616</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>985</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>PT</ISO_COUNTRY_CD><COUNTRY_LONG>Portugal</COUNTRY_LONG><CURRENCY_CD>EUR</CURRENCY_CD><CURRENCY_NAME>Euro</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>620</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>978</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>PR</ISO_COUNTRY_CD><COUNTRY_LONG>Puerto Rico</COUNTRY_LONG><CURRENCY_CD>USD</CURRENCY_CD><CURRENCY_NAME>US Dollar</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>630</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>840</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>QA</ISO_COUNTRY_CD><COUNTRY_LONG>Qatar</COUNTRY_LONG><CURRENCY_CD>QAR</CURRENCY_CD><CURRENCY_NAME>Qatari Rial</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>634</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>634</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>QY</ISO_COUNTRY_CD><COUNTRY_LONG>Qatar US Military Base</COUNTRY_LONG><CURRENCY_CD>USD</CURRENCY_CD><CURRENCY_NAME>US Dollar</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>840</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>840</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>XA</ISO_COUNTRY_CD><COUNTRY_LONG>Somaliland</COUNTRY_LONG><CURRENCY_CD>USD</CURRENCY_CD><CURRENCY_NAME>US Dollar</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>707</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>840</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>RE</ISO_COUNTRY_CD><COUNTRY_LONG>Reunion Island</COUNTRY_LONG><CURRENCY_CD>EUR</CURRENCY_CD><CURRENCY_NAME>Euro</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>638</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>978</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>RO</ISO_COUNTRY_CD><COUNTRY_LONG>Romania</COUNTRY_LONG><CURRENCY_CD>RON</CURRENCY_CD><CURRENCY_NAME>Romanian New Leu</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>642</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>946</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>RO</ISO_COUNTRY_CD><COUNTRY_LONG>Romania</COUNTRY_LONG><CURRENCY_CD>EUR</CURRENCY_CD><CURRENCY_NAME>Euro</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>642</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>978</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>XW</ISO_COUNTRY_CD><COUNTRY_LONG><![CDATA[Rota, CNMI]]]]><![CDATA[></COUNTRY_LONG><CURRENCY_CD>USD</CURRENCY_CD><CURRENCY_NAME>US Dollar</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>580</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>840</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>RW</ISO_COUNTRY_CD><COUNTRY_LONG>Rwanda</COUNTRY_LONG><CURRENCY_CD>RWF</CURRENCY_CD><CURRENCY_NAME>Rwanda Franc</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>646</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>646</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>RW</ISO_COUNTRY_CD><COUNTRY_LONG>Rwanda</COUNTRY_LONG><CURRENCY_CD>USD</CURRENCY_CD><CURRENCY_NAME>US Dollar</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>646</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>840</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>BL</ISO_COUNTRY_CD><COUNTRY_LONG>Saint Barthelemy</COUNTRY_LONG><CURRENCY_CD>EUR</CURRENCY_CD><CURRENCY_NAME>Euro</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>652</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>978</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>KN</ISO_COUNTRY_CD><COUNTRY_LONG>Saint Kitts And Nevis</COUNTRY_LONG><CURRENCY_CD>XCD</CURRENCY_CD><CURRENCY_NAME>East Caribbean Dollar</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>659</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>951</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>KN</ISO_COUNTRY_CD><COUNTRY_LONG>Saint Kitts And Nevis</COUNTRY_LONG><CURRENCY_CD>USD</CURRENCY_CD><CURRENCY_NAME>US Dollar</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>659</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>840</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>LC</ISO_COUNTRY_CD><COUNTRY_LONG>Saint Lucia</COUNTRY_LONG><CURRENCY_CD>XCD</CURRENCY_CD><CURRENCY_NAME>East Caribbean Dollar</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>662</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>951</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>VC</ISO_COUNTRY_CD><COUNTRY_LONG>Saint Vincent And The Grenadines</COUNTRY_LONG><CURRENCY_CD>XCD</CURRENCY_CD><CURRENCY_NAME>East Caribbean Dollar</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>670</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>951</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>XU</ISO_COUNTRY_CD><COUNTRY_LONG><![CDATA[Saipan, CNMI]]]]><![CDATA[></COUNTRY_LONG><CURRENCY_CD>USD</CURRENCY_CD><CURRENCY_NAME>US Dollar</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>580</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>840</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>WS</ISO_COUNTRY_CD><COUNTRY_LONG>Samoa</COUNTRY_LONG><CURRENCY_CD>WST</CURRENCY_CD><CURRENCY_NAME>Samoan Tala</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>882</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>882</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>ST</ISO_COUNTRY_CD><COUNTRY_LONG>Sao Tome And Principe</COUNTRY_LONG><CURRENCY_CD>STN</CURRENCY_CD><CURRENCY_NAME>Sao Tome New Dobra</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>678</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>930</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>SA</ISO_COUNTRY_CD><COUNTRY_LONG>Saudi Arabia</COUNTRY_LONG><CURRENCY_CD>SAR</CURRENCY_CD><CURRENCY_NAME>Saudi Riyal</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>682</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>682</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>XS</ISO_COUNTRY_CD><COUNTRY_LONG>Scotland</COUNTRY_LONG><CURRENCY_CD>GBP</CURRENCY_CD><CURRENCY_NAME>United Kingdom Pound</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>826</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>826</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>SN</ISO_COUNTRY_CD><COUNTRY_LONG>Senegal</COUNTRY_LONG><CURRENCY_CD>XOF</CURRENCY_CD><CURRENCY_NAME>CFA Franc BCEAO</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>686</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>952</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>YU</ISO_COUNTRY_CD><COUNTRY_LONG>Serbia</COUNTRY_LONG><CURRENCY_CD>EUR</CURRENCY_CD><CURRENCY_NAME>Euro</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>688</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>978</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>YU</ISO_COUNTRY_CD><COUNTRY_LONG>Serbia</COUNTRY_LONG><CURRENCY_CD>RSD</CURRENCY_CD><CURRENCY_NAME>Serbian Dinar</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>688</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>941</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>SC</ISO_COUNTRY_CD><COUNTRY_LONG>Seychelles</COUNTRY_LONG><CURRENCY_CD>SCR</CURRENCY_CD><CURRENCY_NAME>Seychelles Rupee</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>690</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>690</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>SL</ISO_COUNTRY_CD><COUNTRY_LONG>Sierra Leone</COUNTRY_LONG><CURRENCY_CD>SLE</CURRENCY_CD><CURRENCY_NAME>New Leone</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>694</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>925</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>SG</ISO_COUNTRY_CD><COUNTRY_LONG>Singapore</COUNTRY_LONG><CURRENCY_CD>SGD</CURRENCY_CD><CURRENCY_NAME>Singapore Dollar</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>702</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>702</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>SK</ISO_COUNTRY_CD><COUNTRY_LONG>Slovakia</COUNTRY_LONG><CURRENCY_CD>EUR</CURRENCY_CD><CURRENCY_NAME>Euro</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>703</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>978</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>SI</ISO_COUNTRY_CD><COUNTRY_LONG>Slovenia</COUNTRY_LONG><CURRENCY_CD>EUR</CURRENCY_CD><CURRENCY_NAME>Euro</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>705</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>978</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>SB</ISO_COUNTRY_CD><COUNTRY_LONG>Solomon Islands</COUNTRY_LONG><CURRENCY_CD>SBD</CURRENCY_CD><CURRENCY_NAME>Solomon Islands Dollar</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>090</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>090</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>SO</ISO_COUNTRY_CD><COUNTRY_LONG>Somalia</COUNTRY_LONG><CURRENCY_CD>USD</CURRENCY_CD><CURRENCY_NAME>US Dollar</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>706</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>840</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>ZA</ISO_COUNTRY_CD><COUNTRY_LONG>South Africa</COUNTRY_LONG><CURRENCY_CD>ZAR</CURRENCY_CD><CURRENCY_NAME>South African Rand</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>710</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>710</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>ZA</ISO_COUNTRY_CD><COUNTRY_LONG>South Africa</COUNTRY_LONG><CURRENCY_CD>USD</CURRENCY_CD><CURRENCY_NAME>US Dollar</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>710</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>840</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>SS</ISO_COUNTRY_CD><COUNTRY_LONG>South Sudan</COUNTRY_LONG><CURRENCY_CD>SSP</CURRENCY_CD><CURRENCY_NAME>South Sudanese Pound</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>728</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>728</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>SS</ISO_COUNTRY_CD><COUNTRY_LONG>South Sudan</COUNTRY_LONG><CURRENCY_CD>USD</CURRENCY_CD><CURRENCY_NAME>US Dollar</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>728</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>840</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>ES</ISO_COUNTRY_CD><COUNTRY_LONG>Spain</COUNTRY_LONG><CURRENCY_CD>EUR</CURRENCY_CD><CURRENCY_NAME>Euro</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>724</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>978</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>AB</ISO_COUNTRY_CD><COUNTRY_LONG>Spain US Military Base</COUNTRY_LONG><CURRENCY_CD>USD</CURRENCY_CD><CURRENCY_NAME>US Dollar</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>840</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>840</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>LK</ISO_COUNTRY_CD><COUNTRY_LONG>Sri Lanka</COUNTRY_LONG><CURRENCY_CD>LKR</CURRENCY_CD><CURRENCY_NAME>Sri Lanka Rupee</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>144</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>144</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>S1</ISO_COUNTRY_CD><COUNTRY_LONG><![CDATA[St. Maarten]]]]><![CDATA[></COUNTRY_LONG><CURRENCY_CD>ANG</CURRENCY_CD><CURRENCY_NAME>Netherlands Antilles Guilder</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>530</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>532</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>S1</ISO_COUNTRY_CD><COUNTRY_LONG><![CDATA[St. Maarten]]]]><![CDATA[></COUNTRY_LONG><CURRENCY_CD>USD</CURRENCY_CD><CURRENCY_NAME>US Dollar</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>530</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>840</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>MF</ISO_COUNTRY_CD><COUNTRY_LONG><![CDATA[St. Martin]]]]><![CDATA[></COUNTRY_LONG><CURRENCY_CD>EUR</CURRENCY_CD><CURRENCY_NAME>Euro</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>663</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>978</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>XD</ISO_COUNTRY_CD><COUNTRY_LONG><![CDATA[St. Thomas]]]]><![CDATA[></COUNTRY_LONG><CURRENCY_CD>USD</CURRENCY_CD><CURRENCY_NAME>US Dollar</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>850</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>840</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>SD</ISO_COUNTRY_CD><COUNTRY_LONG>Sudan</COUNTRY_LONG><CURRENCY_CD>SDG</CURRENCY_CD><CURRENCY_NAME>Sudan Pound</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>729</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>938</ISO_CURRENCY_NUM_CD></RECORD></RECORDSET></DATA_CONTEXT></REPLY></MTML>]]></vs:Body>
              <vs:Footer/>
              <vs:ResponseScript>
                <vs:ScriptLang>Groovy</vs:ScriptLang>
                <vs:Script/>
              </vs:ResponseScript>
            </vs:Response>
            <vs:Response contentType="Json" name="Response 3" responseDelay="0" statusCode="200">
              <vs:Header>11146</vs:Header>
              <vs:Body><![CDATA[00001000012000030000100000511114<?xml version="1.0" encoding="WINDOWS-1252"?><MTML><REPLY HOST="AUHOST" CLIENT="WUCLIENT" TYPE=""><DATA_CONTEXT><HEADER><ACCOUNT_NUM>ACH087077</ACCOUNT_NUM><DB_NAME>CT1USA</DB_NAME><FS_REFNUM>014</FS_REFNUM><DATA_MORE>N</DATA_MORE><DATA_NUM_RECS>42</DATA_NUM_RECS><NAME>GetCountriesCurrencies</NAME></HEADER><RECORDSET><RECORD><ISO_COUNTRY_CD>SR</ISO_COUNTRY_CD><COUNTRY_LONG>Suriname</COUNTRY_LONG><CURRENCY_CD>EUR</CURRENCY_CD><CURRENCY_NAME>Euro</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>740</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>978</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>SR</ISO_COUNTRY_CD><COUNTRY_LONG>Suriname</COUNTRY_LONG><CURRENCY_CD>USD</CURRENCY_CD><CURRENCY_NAME>US Dollar</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>740</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>840</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>SZ</ISO_COUNTRY_CD><COUNTRY_LONG>Swaziland</COUNTRY_LONG><CURRENCY_CD>SZL</CURRENCY_CD><CURRENCY_NAME>Swaziland Lilangeni</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>748</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>748</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>SE</ISO_COUNTRY_CD><COUNTRY_LONG>Sweden</COUNTRY_LONG><CURRENCY_CD>SEK</CURRENCY_CD><CURRENCY_NAME>Swedish Krona</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>752</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>752</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>CH</ISO_COUNTRY_CD><COUNTRY_LONG>Switzerland</COUNTRY_LONG><CURRENCY_CD>CHF</CURRENCY_CD><CURRENCY_NAME>Swiss Franc</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>756</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>756</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>SY</ISO_COUNTRY_CD><COUNTRY_LONG>Syria</COUNTRY_LONG><CURRENCY_CD>SYP</CURRENCY_CD><CURRENCY_NAME>Syrian Pound</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>760</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>760</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>TW</ISO_COUNTRY_CD><COUNTRY_LONG>Taiwan</COUNTRY_LONG><CURRENCY_CD>USD</CURRENCY_CD><CURRENCY_NAME>US Dollar</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>158</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>840</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>TJ</ISO_COUNTRY_CD><COUNTRY_LONG>Tajikistan</COUNTRY_LONG><CURRENCY_CD>USD</CURRENCY_CD><CURRENCY_NAME>US Dollar</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>762</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>840</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>TZ</ISO_COUNTRY_CD><COUNTRY_LONG>Tanzania</COUNTRY_LONG><CURRENCY_CD>TZS</CURRENCY_CD><CURRENCY_NAME>Tanzanian Shilling</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>834</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>834</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>TH</ISO_COUNTRY_CD><COUNTRY_LONG>Thailand</COUNTRY_LONG><CURRENCY_CD>THB</CURRENCY_CD><CURRENCY_NAME>Thai Baht</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>764</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>764</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>XV</ISO_COUNTRY_CD><COUNTRY_LONG><![CDATA[Tinian, CNMI]]]]><![CDATA[></COUNTRY_LONG><CURRENCY_CD>USD</CURRENCY_CD><CURRENCY_NAME>US Dollar</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>580</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>840</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>TG</ISO_COUNTRY_CD><COUNTRY_LONG>Togo</COUNTRY_LONG><CURRENCY_CD>XOF</CURRENCY_CD><CURRENCY_NAME>CFA Franc BCEAO</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>768</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>952</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>TO</ISO_COUNTRY_CD><COUNTRY_LONG>Tonga</COUNTRY_LONG><CURRENCY_CD>TOP</CURRENCY_CD><CURRENCY_NAME><![CDATA[Tongan Pa'anga]]]]><![CDATA[></CURRENCY_NAME><ISO_COUNTRY_NUM_CD>776</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>776</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>TT</ISO_COUNTRY_CD><COUNTRY_LONG>Trinidad and Tobago</COUNTRY_LONG><CURRENCY_CD>TTD</CURRENCY_CD><CURRENCY_NAME><![CDATA[Trinidad/Tobago Dollar]]]]><![CDATA[></CURRENCY_NAME><ISO_COUNTRY_NUM_CD>780</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>780</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>TN</ISO_COUNTRY_CD><COUNTRY_LONG>Tunisia</COUNTRY_LONG><CURRENCY_CD>TND</CURRENCY_CD><CURRENCY_NAME>Tunisian Dinar</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>788</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>788</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>TR</ISO_COUNTRY_CD><COUNTRY_LONG>Turkey</COUNTRY_LONG><CURRENCY_CD>TRY</CURRENCY_CD><CURRENCY_NAME>New Turkish Lira</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>792</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>949</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>TR</ISO_COUNTRY_CD><COUNTRY_LONG>Turkey</COUNTRY_LONG><CURRENCY_CD>USD</CURRENCY_CD><CURRENCY_NAME>US Dollar</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>792</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>840</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>XN</ISO_COUNTRY_CD><COUNTRY_LONG>Turkey US Military Base</COUNTRY_LONG><CURRENCY_CD>USD</CURRENCY_CD><CURRENCY_NAME>US Dollar</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>840</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>840</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>TM</ISO_COUNTRY_CD><COUNTRY_LONG>Turkmenistan</COUNTRY_LONG><CURRENCY_CD>USD</CURRENCY_CD><CURRENCY_NAME>US Dollar</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>795</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>840</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>TC</ISO_COUNTRY_CD><COUNTRY_LONG>Turks and Caicos Islands</COUNTRY_LONG><CURRENCY_CD>USD</CURRENCY_CD><CURRENCY_NAME>US Dollar</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>796</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>840</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>TV</ISO_COUNTRY_CD><COUNTRY_LONG>Tuvalu</COUNTRY_LONG><CURRENCY_CD>AUD</CURRENCY_CD><CURRENCY_NAME>Australian Dollar</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>798</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>036</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>XE</ISO_COUNTRY_CD><COUNTRY_LONG>UAE US Military Base</COUNTRY_LONG><CURRENCY_CD>USD</CURRENCY_CD><CURRENCY_NAME>US Dollar</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>840</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>840</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>UG</ISO_COUNTRY_CD><COUNTRY_LONG>Uganda</COUNTRY_LONG><CURRENCY_CD>UGX</CURRENCY_CD><CURRENCY_NAME>Uganda Shilling</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>800</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>800</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>UA</ISO_COUNTRY_CD><COUNTRY_LONG>Ukraine</COUNTRY_LONG><CURRENCY_CD>UAH</CURRENCY_CD><CURRENCY_NAME>Ukraine Hryvnia</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>804</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>980</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>UA</ISO_COUNTRY_CD><COUNTRY_LONG>Ukraine</COUNTRY_LONG><CURRENCY_CD>USD</CURRENCY_CD><CURRENCY_NAME>US Dollar</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>804</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>840</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>AE</ISO_COUNTRY_CD><COUNTRY_LONG>United Arab Emirates</COUNTRY_LONG><CURRENCY_CD>AED</CURRENCY_CD><CURRENCY_NAME><![CDATA[Utd. Arab Emir. Dirham]]]]><![CDATA[></CURRENCY_NAME><ISO_COUNTRY_NUM_CD>784</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>784</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>GB</ISO_COUNTRY_CD><COUNTRY_LONG>United Kingdom</COUNTRY_LONG><CURRENCY_CD>GBP</CURRENCY_CD><CURRENCY_NAME>United Kingdom Pound</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>826</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>826</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>QW</ISO_COUNTRY_CD><COUNTRY_LONG>United Kingdom US Military Base</COUNTRY_LONG><CURRENCY_CD>USD</CURRENCY_CD><CURRENCY_NAME>US Dollar</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>840</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>840</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>US</ISO_COUNTRY_CD><COUNTRY_LONG>United States</COUNTRY_LONG><CURRENCY_CD>USD</CURRENCY_CD><CURRENCY_NAME>US Dollar</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>840</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>840</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>UY</ISO_COUNTRY_CD><COUNTRY_LONG>Uruguay</COUNTRY_LONG><CURRENCY_CD>UYP</CURRENCY_CD><CURRENCY_NAME>Peso Uruguayo</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>858</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>858</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>UY</ISO_COUNTRY_CD><COUNTRY_LONG>Uruguay</COUNTRY_LONG><CURRENCY_CD>USD</CURRENCY_CD><CURRENCY_NAME>US Dollar</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>858</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>840</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>UZ</ISO_COUNTRY_CD><COUNTRY_LONG>Uzbekistan</COUNTRY_LONG><CURRENCY_CD>USD</CURRENCY_CD><CURRENCY_NAME>US Dollar</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>860</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>840</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>VU</ISO_COUNTRY_CD><COUNTRY_LONG>Vanuatu</COUNTRY_LONG><CURRENCY_CD>VUV</CURRENCY_CD><CURRENCY_NAME>Vanuatu Vatu</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>548</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>548</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>VE</ISO_COUNTRY_CD><COUNTRY_LONG>Venezuela</COUNTRY_LONG><CURRENCY_CD>VIB</CURRENCY_CD><CURRENCY_NAME>Venezuelan Bolivar Soberano</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>862</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>937</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>VN</ISO_COUNTRY_CD><COUNTRY_LONG>Vietnam</COUNTRY_LONG><CURRENCY_CD>USD</CURRENCY_CD><CURRENCY_NAME>US Dollar</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>704</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>840</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>VN</ISO_COUNTRY_CD><COUNTRY_LONG>Vietnam</COUNTRY_LONG><CURRENCY_CD>VND</CURRENCY_CD><CURRENCY_NAME>Vietnamese Dong</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>704</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>704</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>VI</ISO_COUNTRY_CD><COUNTRY_LONG><![CDATA[Virgin Islands (US)]]]]><![CDATA[></COUNTRY_LONG><CURRENCY_CD>USD</CURRENCY_CD><CURRENCY_NAME>US Dollar</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>850</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>840</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>XR</ISO_COUNTRY_CD><COUNTRY_LONG>Wales</COUNTRY_LONG><CURRENCY_CD>GBP</CURRENCY_CD><CURRENCY_NAME>United Kingdom Pound</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>826</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>826</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>YE</ISO_COUNTRY_CD><COUNTRY_LONG>Yemen</COUNTRY_LONG><CURRENCY_CD>SAR</CURRENCY_CD><CURRENCY_NAME>Saudi Riyal</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>887</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>682</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>YE</ISO_COUNTRY_CD><COUNTRY_LONG>Yemen</COUNTRY_LONG><CURRENCY_CD>USD</CURRENCY_CD><CURRENCY_NAME>US Dollar</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>887</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>840</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>ZM</ISO_COUNTRY_CD><COUNTRY_LONG>Zambia</COUNTRY_LONG><CURRENCY_CD>ZMW</CURRENCY_CD><CURRENCY_NAME>New Kwacha</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>894</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>967</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>ZW</ISO_COUNTRY_CD><COUNTRY_LONG>Zimbabwe</COUNTRY_LONG><CURRENCY_CD>USD</CURRENCY_CD><CURRENCY_NAME>US Dollar</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>716</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>840</ISO_CURRENCY_NUM_CD></RECORD></RECORDSET></DATA_CONTEXT></REPLY></MTML>]]></vs:Body>
              <vs:Footer/>
              <vs:ResponseScript>
                <vs:ScriptLang>Groovy</vs:ScriptLang>
                <vs:Script/>
              </vs:ResponseScript>
            </vs:Response>
          </vs:stubResponse>
        </vs:RRPair>
        <vs:RRPair id="default_0">
          <vs:Request>
            <vs:RequestData/>
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
              <vs:Header>31756</vs:Header>
              <vs:Body><![CDATA[00001000012000030000100000531724<?xml version="1.0" encoding="WINDOWS-1252"?><MTML><REPLY HOST="AUHOST" CLIENT="WUCLIENT" TYPE=""><DATA_CONTEXT><HEADER><ACCOUNT_NUM>ACH087077</ACCOUNT_NUM><DB_NAME>CT1USA</DB_NAME><FS_REFNUM>014</FS_REFNUM><DATA_MORE>Y</DATA_MORE><DATA_NUM_RECS>123</DATA_NUM_RECS><NAME>GetCountriesCurrencies</NAME></HEADER><RECORDSET><RECORD><ISO_COUNTRY_CD>AF</ISO_COUNTRY_CD><COUNTRY_LONG>Afghanistan</COUNTRY_LONG><CURRENCY_CD>AFN</CURRENCY_CD><CURRENCY_NAME>Afghanistan Afghani</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>004</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>971</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>AL</ISO_COUNTRY_CD><COUNTRY_LONG>Albania</COUNTRY_LONG><CURRENCY_CD>ALL</CURRENCY_CD><CURRENCY_NAME>Albanian Lek</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>008</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>008</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>AL</ISO_COUNTRY_CD><COUNTRY_LONG>Albania</COUNTRY_LONG><CURRENCY_CD>EUR</CURRENCY_CD><CURRENCY_NAME>Euro</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>008</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>978</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>DZ</ISO_COUNTRY_CD><COUNTRY_LONG>Algeria</COUNTRY_LONG><CURRENCY_CD>DZD</CURRENCY_CD><CURRENCY_NAME>Algerian Dinar</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>012</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>012</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>AS</ISO_COUNTRY_CD><COUNTRY_LONG>American Samoa</COUNTRY_LONG><CURRENCY_CD>USD</CURRENCY_CD><CURRENCY_NAME>US Dollar</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>016</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>840</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>AO</ISO_COUNTRY_CD><COUNTRY_LONG>Angola</COUNTRY_LONG><CURRENCY_CD>AOA</CURRENCY_CD><CURRENCY_NAME>Angolan  Kwanza</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>024</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>973</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>AI</ISO_COUNTRY_CD><COUNTRY_LONG>Anguilla</COUNTRY_LONG><CURRENCY_CD>XCD</CURRENCY_CD><CURRENCY_NAME>East Caribbean Dollar</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>660</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>951</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>AI</ISO_COUNTRY_CD><COUNTRY_LONG>Anguilla</COUNTRY_LONG><CURRENCY_CD>USD</CURRENCY_CD><CURRENCY_NAME>US Dollar</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>660</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>840</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>AG</ISO_COUNTRY_CD><COUNTRY_LONG>Antigua And Barbuda</COUNTRY_LONG><CURRENCY_CD>XCD</CURRENCY_CD><CURRENCY_NAME>East Caribbean Dollar</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>028</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>951</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>AR</ISO_COUNTRY_CD><COUNTRY_LONG>Argentina</COUNTRY_LONG><CURRENCY_CD>ARS</CURRENCY_CD><CURRENCY_NAME>Argentine Peso</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>032</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>032</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>AW</ISO_COUNTRY_CD><COUNTRY_LONG>Aruba</COUNTRY_LONG><CURRENCY_CD>AWG</CURRENCY_CD><CURRENCY_NAME>Aruban Florin</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>533</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>533</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>AU</ISO_COUNTRY_CD><COUNTRY_LONG>Australia</COUNTRY_LONG><CURRENCY_CD>AUD</CURRENCY_CD><CURRENCY_NAME>Australian Dollar</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>036</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>036</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>AT</ISO_COUNTRY_CD><COUNTRY_LONG>Austria</COUNTRY_LONG><CURRENCY_CD>EUR</CURRENCY_CD><CURRENCY_NAME>Euro</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>040</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>978</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>AZ</ISO_COUNTRY_CD><COUNTRY_LONG>Azerbaijan</COUNTRY_LONG><CURRENCY_CD>AZN</CURRENCY_CD><CURRENCY_NAME>Azerbaijani Manat</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>031</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>944</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>AZ</ISO_COUNTRY_CD><COUNTRY_LONG>Azerbaijan</COUNTRY_LONG><CURRENCY_CD>USD</CURRENCY_CD><CURRENCY_NAME>US Dollar</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>031</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>840</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>BS</ISO_COUNTRY_CD><COUNTRY_LONG>Bahamas</COUNTRY_LONG><CURRENCY_CD>BSD</CURRENCY_CD><CURRENCY_NAME>Bahamian Dollar</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>044</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>044</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>BH</ISO_COUNTRY_CD><COUNTRY_LONG>Bahrain</COUNTRY_LONG><CURRENCY_CD>BHD</CURRENCY_CD><CURRENCY_NAME>Bahraini Dinar</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>048</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>048</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>XB</ISO_COUNTRY_CD><COUNTRY_LONG>Bahrain US Military Base</COUNTRY_LONG><CURRENCY_CD>USD</CURRENCY_CD><CURRENCY_NAME>US Dollar</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>840</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>840</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>BD</ISO_COUNTRY_CD><COUNTRY_LONG>Bangladesh</COUNTRY_LONG><CURRENCY_CD>BDT</CURRENCY_CD><CURRENCY_NAME>Bangladeshi Taka</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>050</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>050</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>BB</ISO_COUNTRY_CD><COUNTRY_LONG>Barbados</COUNTRY_LONG><CURRENCY_CD>BBD</CURRENCY_CD><CURRENCY_NAME>Barbados Dollar</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>052</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>052</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>BE</ISO_COUNTRY_CD><COUNTRY_LONG>Belgium</COUNTRY_LONG><CURRENCY_CD>EUR</CURRENCY_CD><CURRENCY_NAME>Euro</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>056</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>978</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>QQ</ISO_COUNTRY_CD><COUNTRY_LONG>Belgium US Military Base</COUNTRY_LONG><CURRENCY_CD>USD</CURRENCY_CD><CURRENCY_NAME>US Dollar</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>840</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>840</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>BZ</ISO_COUNTRY_CD><COUNTRY_LONG>Belize</COUNTRY_LONG><CURRENCY_CD>BZD</CURRENCY_CD><CURRENCY_NAME>Belize Dollar</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>084</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>084</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>BJ</ISO_COUNTRY_CD><COUNTRY_LONG>Benin</COUNTRY_LONG><CURRENCY_CD>XOF</CURRENCY_CD><CURRENCY_NAME>CFA Franc BCEAO</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>204</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>952</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>BM</ISO_COUNTRY_CD><COUNTRY_LONG>Bermuda</COUNTRY_LONG><CURRENCY_CD>BMD</CURRENCY_CD><CURRENCY_NAME>BERMUDA</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>060</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>060</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>BT</ISO_COUNTRY_CD><COUNTRY_LONG>Bhutan</COUNTRY_LONG><CURRENCY_CD>BTN</CURRENCY_CD><CURRENCY_NAME>Bhutan Ngultrum</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>064</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>064</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>BO</ISO_COUNTRY_CD><COUNTRY_LONG>Bolivia</COUNTRY_LONG><CURRENCY_CD>BOB</CURRENCY_CD><CURRENCY_NAME>Bolivian Boliviano</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>068</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>068</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>BO</ISO_COUNTRY_CD><COUNTRY_LONG>Bolivia</COUNTRY_LONG><CURRENCY_CD>USD</CURRENCY_CD><CURRENCY_NAME>US Dollar</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>068</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>840</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>BA</ISO_COUNTRY_CD><COUNTRY_LONG>Bosnia and Herzegovina</COUNTRY_LONG><CURRENCY_CD>BAD</CURRENCY_CD><CURRENCY_NAME>Convertible Mark</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>070</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>977</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>BW</ISO_COUNTRY_CD><COUNTRY_LONG>Botswana</COUNTRY_LONG><CURRENCY_CD>BWP</CURRENCY_CD><CURRENCY_NAME>Botswana Pula</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>072</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>072</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>BR</ISO_COUNTRY_CD><COUNTRY_LONG>Brazil</COUNTRY_LONG><CURRENCY_CD>BRL</CURRENCY_CD><CURRENCY_NAME>Brazilian Real</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>076</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>986</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>VG</ISO_COUNTRY_CD><COUNTRY_LONG>British Virgin Islands</COUNTRY_LONG><CURRENCY_CD>USD</CURRENCY_CD><CURRENCY_NAME>US Dollar</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>092</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>840</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>BN</ISO_COUNTRY_CD><COUNTRY_LONG>Brunei Darussalam</COUNTRY_LONG><CURRENCY_CD>BND</CURRENCY_CD><CURRENCY_NAME>Brunei Dollar</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>096</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>096</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>BG</ISO_COUNTRY_CD><COUNTRY_LONG>Bulgaria</COUNTRY_LONG><CURRENCY_CD>BGN</CURRENCY_CD><CURRENCY_NAME>Bulgarian New Lev</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>100</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>975</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>BG</ISO_COUNTRY_CD><COUNTRY_LONG>Bulgaria</COUNTRY_LONG><CURRENCY_CD>EUR</CURRENCY_CD><CURRENCY_NAME>Euro</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>100</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>978</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>BF</ISO_COUNTRY_CD><COUNTRY_LONG>Burkina Faso</COUNTRY_LONG><CURRENCY_CD>XOF</CURRENCY_CD><CURRENCY_NAME>CFA Franc BCEAO</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>854</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>952</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>BI</ISO_COUNTRY_CD><COUNTRY_LONG>Burundi</COUNTRY_LONG><CURRENCY_CD>BIF</CURRENCY_CD><CURRENCY_NAME>Burundi Franc</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>108</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>108</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>BI</ISO_COUNTRY_CD><COUNTRY_LONG>Burundi</COUNTRY_LONG><CURRENCY_CD>USD</CURRENCY_CD><CURRENCY_NAME>US Dollar</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>108</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>840</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>KH</ISO_COUNTRY_CD><COUNTRY_LONG>Cambodia</COUNTRY_LONG><CURRENCY_CD>USD</CURRENCY_CD><CURRENCY_NAME>US Dollar</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>116</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>840</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>CM</ISO_COUNTRY_CD><COUNTRY_LONG>Cameroon</COUNTRY_LONG><CURRENCY_CD>XAF</CURRENCY_CD><CURRENCY_NAME>CFA Franc BEAC</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>120</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>950</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>CA</ISO_COUNTRY_CD><COUNTRY_LONG>Canada</COUNTRY_LONG><CURRENCY_CD>CAD</CURRENCY_CD><CURRENCY_NAME>Canadian Dollar</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>124</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>124</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>CV</ISO_COUNTRY_CD><COUNTRY_LONG>Cape Verde</COUNTRY_LONG><CURRENCY_CD>CVE</CURRENCY_CD><CURRENCY_NAME>Cape Verde Escudo</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>132</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>132</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>KY</ISO_COUNTRY_CD><COUNTRY_LONG>Cayman Islands</COUNTRY_LONG><CURRENCY_CD>KYD</CURRENCY_CD><CURRENCY_NAME>Cayman Islands Dollar</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>136</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>136</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>CF</ISO_COUNTRY_CD><COUNTRY_LONG>Central African Republic</COUNTRY_LONG><CURRENCY_CD>XAF</CURRENCY_CD><CURRENCY_NAME>CFA Franc BEAC</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>140</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>950</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>TD</ISO_COUNTRY_CD><COUNTRY_LONG>Chad</COUNTRY_LONG><CURRENCY_CD>XAF</CURRENCY_CD><CURRENCY_NAME>CFA Franc BEAC</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>148</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>950</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>CL</ISO_COUNTRY_CD><COUNTRY_LONG>Chile</COUNTRY_LONG><CURRENCY_CD>CLP</CURRENCY_CD><CURRENCY_NAME>Chilean Peso</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>152</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>152</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>CN</ISO_COUNTRY_CD><COUNTRY_LONG>China</COUNTRY_LONG><CURRENCY_CD>CNY</CURRENCY_CD><CURRENCY_NAME>Chinese Yuan Renminbi</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>156</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>156</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>CN</ISO_COUNTRY_CD><COUNTRY_LONG>China</COUNTRY_LONG><CURRENCY_CD>USD</CURRENCY_CD><CURRENCY_NAME>US Dollar</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>156</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>840</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>CO</ISO_COUNTRY_CD><COUNTRY_LONG>Colombia</COUNTRY_LONG><CURRENCY_CD>COP</CURRENCY_CD><CURRENCY_NAME>Colombian Peso</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>170</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>170</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>KM</ISO_COUNTRY_CD><COUNTRY_LONG>Comoros</COUNTRY_LONG><CURRENCY_CD>KMF</CURRENCY_CD><CURRENCY_NAME>Comoros Franc</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>174</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>174</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>CD</ISO_COUNTRY_CD><COUNTRY_LONG><![CDATA[Congo, Democratic Republic of]]]]><![CDATA[></COUNTRY_LONG><CURRENCY_CD>USD</CURRENCY_CD><CURRENCY_NAME>US Dollar</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>180</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>840</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>CG</ISO_COUNTRY_CD><COUNTRY_LONG><![CDATA[Congo-Brazzaville]]]]><![CDATA[></COUNTRY_LONG><CURRENCY_CD>XAF</CURRENCY_CD><CURRENCY_NAME>CFA Franc BEAC</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>178</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>950</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>CK</ISO_COUNTRY_CD><COUNTRY_LONG>Cook Islands</COUNTRY_LONG><CURRENCY_CD>NZD</CURRENCY_CD><CURRENCY_NAME>New Zealand Dollar</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>184</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>554</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>CR</ISO_COUNTRY_CD><COUNTRY_LONG>Costa Rica</COUNTRY_LONG><CURRENCY_CD>CRC</CURRENCY_CD><CURRENCY_NAME>Costa Rican Colon</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>188</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>188</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>CR</ISO_COUNTRY_CD><COUNTRY_LONG>Costa Rica</COUNTRY_LONG><CURRENCY_CD>USD</CURRENCY_CD><CURRENCY_NAME>US Dollar</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>188</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>840</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>HR</ISO_COUNTRY_CD><COUNTRY_LONG>Croatia</COUNTRY_LONG><CURRENCY_CD>EUR</CURRENCY_CD><CURRENCY_NAME>Euro</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>191</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>978</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>QS</ISO_COUNTRY_CD><COUNTRY_LONG>Cuba US Military Base</COUNTRY_LONG><CURRENCY_CD>USD</CURRENCY_CD><CURRENCY_NAME>US Dollar</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>840</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>840</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>AN</ISO_COUNTRY_CD><COUNTRY_LONG>Curacao</COUNTRY_LONG><CURRENCY_CD>ANG</CURRENCY_CD><CURRENCY_NAME>Netherlands Antilles Guilder</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>530</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>532</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>CY</ISO_COUNTRY_CD><COUNTRY_LONG>Cyprus</COUNTRY_LONG><CURRENCY_CD>EUR</CURRENCY_CD><CURRENCY_NAME>Euro</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>196</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>978</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>C2</ISO_COUNTRY_CD><COUNTRY_LONG><![CDATA[Cyprus (Northern)]]]]><![CDATA[></COUNTRY_LONG><CURRENCY_CD>USD</CURRENCY_CD><CURRENCY_NAME>US Dollar</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>196</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>840</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>CZ</ISO_COUNTRY_CD><COUNTRY_LONG>Czech Republic</COUNTRY_LONG><CURRENCY_CD>CZK</CURRENCY_CD><CURRENCY_NAME>Czech Koruna</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>203</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>203</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>DK</ISO_COUNTRY_CD><COUNTRY_LONG>Denmark</COUNTRY_LONG><CURRENCY_CD>DKK</CURRENCY_CD><CURRENCY_NAME>Danish Krone</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>208</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>208</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>DJ</ISO_COUNTRY_CD><COUNTRY_LONG>Djibouti</COUNTRY_LONG><CURRENCY_CD>DJF</CURRENCY_CD><CURRENCY_NAME>Djibouti Franc</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>262</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>262</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>QV</ISO_COUNTRY_CD><COUNTRY_LONG>Djibouti US Military Base</COUNTRY_LONG><CURRENCY_CD>USD</CURRENCY_CD><CURRENCY_NAME>US Dollar</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>840</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>840</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>DM</ISO_COUNTRY_CD><COUNTRY_LONG>Dominica</COUNTRY_LONG><CURRENCY_CD>XCD</CURRENCY_CD><CURRENCY_NAME>East Caribbean Dollar</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>212</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>951</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>DO</ISO_COUNTRY_CD><COUNTRY_LONG>Dominican Republic</COUNTRY_LONG><CURRENCY_CD>DOP</CURRENCY_CD><CURRENCY_NAME>Dominican Peso</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>214</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>214</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>DO</ISO_COUNTRY_CD><COUNTRY_LONG>Dominican Republic</COUNTRY_LONG><CURRENCY_CD>USD</CURRENCY_CD><CURRENCY_NAME>US Dollar</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>214</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>840</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>TP</ISO_COUNTRY_CD><COUNTRY_LONG>East Timor</COUNTRY_LONG><CURRENCY_CD>USD</CURRENCY_CD><CURRENCY_NAME>US Dollar</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>626</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>840</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>EC</ISO_COUNTRY_CD><COUNTRY_LONG>Ecuador</COUNTRY_LONG><CURRENCY_CD>USD</CURRENCY_CD><CURRENCY_NAME>US Dollar</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>218</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>840</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>EG</ISO_COUNTRY_CD><COUNTRY_LONG>Egypt</COUNTRY_LONG><CURRENCY_CD>EGP</CURRENCY_CD><CURRENCY_NAME>Egyptian Pound</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>818</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>818</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>EG</ISO_COUNTRY_CD><COUNTRY_LONG>Egypt</COUNTRY_LONG><CURRENCY_CD>USD</CURRENCY_CD><CURRENCY_NAME>US Dollar</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>818</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>840</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>SV</ISO_COUNTRY_CD><COUNTRY_LONG>El Salvador</COUNTRY_LONG><CURRENCY_CD>USD</CURRENCY_CD><CURRENCY_NAME>US Dollar</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>222</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>840</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>XQ</ISO_COUNTRY_CD><COUNTRY_LONG>England</COUNTRY_LONG><CURRENCY_CD>GBP</CURRENCY_CD><CURRENCY_NAME>United Kingdom Pound</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>826</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>826</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>GQ</ISO_COUNTRY_CD><COUNTRY_LONG>Equatorial Guinea</COUNTRY_LONG><CURRENCY_CD>XAF</CURRENCY_CD><CURRENCY_NAME>CFA Franc BEAC</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>226</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>950</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>ER</ISO_COUNTRY_CD><COUNTRY_LONG>Eritrea</COUNTRY_LONG><CURRENCY_CD>ERN</CURRENCY_CD><CURRENCY_NAME>Eritrean Nakfa</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>232</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>232</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>EE</ISO_COUNTRY_CD><COUNTRY_LONG>Estonia</COUNTRY_LONG><CURRENCY_CD>EUR</CURRENCY_CD><CURRENCY_NAME>Euro</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>233</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>978</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>ET</ISO_COUNTRY_CD><COUNTRY_LONG>Ethiopia</COUNTRY_LONG><CURRENCY_CD>ETB</CURRENCY_CD><CURRENCY_NAME>Ethiopian Birr</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>231</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>230</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>FK</ISO_COUNTRY_CD><COUNTRY_LONG><![CDATA[Falkland Islands (Malvinas)]]]]><![CDATA[></COUNTRY_LONG><CURRENCY_CD>FKP</CURRENCY_CD><CURRENCY_NAME>Falkland Islands Pound</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>238</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>238</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>FK</ISO_COUNTRY_CD><COUNTRY_LONG><![CDATA[Falkland Islands (Malvinas)]]]]><![CDATA[></COUNTRY_LONG><CURRENCY_CD>USD</CURRENCY_CD><CURRENCY_NAME>US Dollar</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>238</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>840</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>FJ</ISO_COUNTRY_CD><COUNTRY_LONG>Fiji</COUNTRY_LONG><CURRENCY_CD>FJD</CURRENCY_CD><CURRENCY_NAME>Fiji Dollar</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>242</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>242</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>FI</ISO_COUNTRY_CD><COUNTRY_LONG>Finland</COUNTRY_LONG><CURRENCY_CD>EUR</CURRENCY_CD><CURRENCY_NAME>Euro</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>246</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>978</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>FR</ISO_COUNTRY_CD><COUNTRY_LONG>France</COUNTRY_LONG><CURRENCY_CD>EUR</CURRENCY_CD><CURRENCY_NAME>Euro</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>250</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>978</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>GF</ISO_COUNTRY_CD><COUNTRY_LONG>French Guiana</COUNTRY_LONG><CURRENCY_CD>EUR</CURRENCY_CD><CURRENCY_NAME>Euro</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>254</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>978</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>GA</ISO_COUNTRY_CD><COUNTRY_LONG>Gabon</COUNTRY_LONG><CURRENCY_CD>XAF</CURRENCY_CD><CURRENCY_NAME>CFA Franc BEAC</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>266</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>950</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>GM</ISO_COUNTRY_CD><COUNTRY_LONG>Gambia</COUNTRY_LONG><CURRENCY_CD>GMD</CURRENCY_CD><CURRENCY_NAME>Gambian Dalasi</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>270</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>270</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>GE</ISO_COUNTRY_CD><COUNTRY_LONG>Georgia</COUNTRY_LONG><CURRENCY_CD>GEL</CURRENCY_CD><CURRENCY_NAME>Georgian Lari</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>268</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>981</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>GE</ISO_COUNTRY_CD><COUNTRY_LONG>Georgia</COUNTRY_LONG><CURRENCY_CD>USD</CURRENCY_CD><CURRENCY_NAME>US Dollar</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>268</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>840</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>DE</ISO_COUNTRY_CD><COUNTRY_LONG>Germany</COUNTRY_LONG><CURRENCY_CD>EUR</CURRENCY_CD><CURRENCY_NAME>Euro</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>276</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>978</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>QO</ISO_COUNTRY_CD><COUNTRY_LONG>Germany US Military Base</COUNTRY_LONG><CURRENCY_CD>USD</CURRENCY_CD><CURRENCY_NAME>US Dollar</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>840</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>840</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>GH</ISO_COUNTRY_CD><COUNTRY_LONG>Ghana</COUNTRY_LONG><CURRENCY_CD>GHS</CURRENCY_CD><CURRENCY_NAME>Ghanaian Cedi</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>288</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>936</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>GI</ISO_COUNTRY_CD><COUNTRY_LONG>Gibraltar</COUNTRY_LONG><CURRENCY_CD>GBP</CURRENCY_CD><CURRENCY_NAME>United Kingdom Pound</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>292</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>826</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>GR</ISO_COUNTRY_CD><COUNTRY_LONG>Greece</COUNTRY_LONG><CURRENCY_CD>EUR</CURRENCY_CD><CURRENCY_NAME>Euro</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>300</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>978</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>QZ</ISO_COUNTRY_CD><COUNTRY_LONG>Greece US Military Base</COUNTRY_LONG><CURRENCY_CD>USD</CURRENCY_CD><CURRENCY_NAME>US Dollar</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>840</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>840</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>GD</ISO_COUNTRY_CD><COUNTRY_LONG>Grenada</COUNTRY_LONG><CURRENCY_CD>XCD</CURRENCY_CD><CURRENCY_NAME>East Caribbean Dollar</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>308</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>951</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>GP</ISO_COUNTRY_CD><COUNTRY_LONG>Guadeloupe</COUNTRY_LONG><CURRENCY_CD>EUR</CURRENCY_CD><CURRENCY_NAME>Euro</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>312</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>978</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>GU</ISO_COUNTRY_CD><COUNTRY_LONG>Guam</COUNTRY_LONG><CURRENCY_CD>USD</CURRENCY_CD><CURRENCY_NAME>US Dollar</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>316</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>840</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>XY</ISO_COUNTRY_CD><COUNTRY_LONG>Guam US Military Base</COUNTRY_LONG><CURRENCY_CD>USD</CURRENCY_CD><CURRENCY_NAME>US Dollar</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>840</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>840</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>GT</ISO_COUNTRY_CD><COUNTRY_LONG>Guatemala</COUNTRY_LONG><CURRENCY_CD>GTQ</CURRENCY_CD><CURRENCY_NAME>Guatemalan Quetzal</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>320</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>320</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>GN</ISO_COUNTRY_CD><COUNTRY_LONG>Guinea</COUNTRY_LONG><CURRENCY_CD>GNF</CURRENCY_CD><CURRENCY_NAME>Guinea Franc</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>324</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>324</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>GW</ISO_COUNTRY_CD><COUNTRY_LONG><![CDATA[Guinea-Bissau]]]]><![CDATA[></COUNTRY_LONG><CURRENCY_CD>XOF</CURRENCY_CD><CURRENCY_NAME>CFA Franc BCEAO</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>624</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>952</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>GY</ISO_COUNTRY_CD><COUNTRY_LONG>Guyana</COUNTRY_LONG><CURRENCY_CD>GYD</CURRENCY_CD><CURRENCY_NAME>Guyanese Dollar</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>328</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>328</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>HT</ISO_COUNTRY_CD><COUNTRY_LONG>Haiti</COUNTRY_LONG><CURRENCY_CD>HTG</CURRENCY_CD><CURRENCY_NAME>Haitian Gourde</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>332</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>332</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>HT</ISO_COUNTRY_CD><COUNTRY_LONG>Haiti</COUNTRY_LONG><CURRENCY_CD>USD</CURRENCY_CD><CURRENCY_NAME>US Dollar</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>332</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>840</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>HN</ISO_COUNTRY_CD><COUNTRY_LONG>Honduras</COUNTRY_LONG><CURRENCY_CD>HNL</CURRENCY_CD><CURRENCY_NAME>Honduran Lempira</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>340</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>340</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>QR</ISO_COUNTRY_CD><COUNTRY_LONG>Honduras US Military Base</COUNTRY_LONG><CURRENCY_CD>USD</CURRENCY_CD><CURRENCY_NAME>US Dollar</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>840</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>840</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>HK</ISO_COUNTRY_CD><COUNTRY_LONG>Hong Kong</COUNTRY_LONG><CURRENCY_CD>HKD</CURRENCY_CD><CURRENCY_NAME>Hong Kong Dollar</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>344</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>344</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>HK</ISO_COUNTRY_CD><COUNTRY_LONG>Hong Kong</COUNTRY_LONG><CURRENCY_CD>USD</CURRENCY_CD><CURRENCY_NAME>US Dollar</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>344</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>840</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>HU</ISO_COUNTRY_CD><COUNTRY_LONG>Hungary</COUNTRY_LONG><CURRENCY_CD>HUF</CURRENCY_CD><CURRENCY_NAME>Hungarian Forint</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>348</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>348</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>HU</ISO_COUNTRY_CD><COUNTRY_LONG>Hungary</COUNTRY_LONG><CURRENCY_CD>USD</CURRENCY_CD><CURRENCY_NAME>US Dollar</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>348</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>840</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>IS</ISO_COUNTRY_CD><COUNTRY_LONG>Iceland</COUNTRY_LONG><CURRENCY_CD>EUR</CURRENCY_CD><CURRENCY_NAME>Euro</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>352</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>978</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>IS</ISO_COUNTRY_CD><COUNTRY_LONG>Iceland</COUNTRY_LONG><CURRENCY_CD>ISK</CURRENCY_CD><CURRENCY_NAME>Iceland Krona</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>352</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>352</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>IN</ISO_COUNTRY_CD><COUNTRY_LONG>India</COUNTRY_LONG><CURRENCY_CD>INR</CURRENCY_CD><CURRENCY_NAME>Indian Rupee</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>356</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>356</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>ID</ISO_COUNTRY_CD><COUNTRY_LONG>Indonesia</COUNTRY_LONG><CURRENCY_CD>IDR</CURRENCY_CD><CURRENCY_NAME>Indonesian Rupiah</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>360</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>360</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>IQ</ISO_COUNTRY_CD><COUNTRY_LONG>Iraq</COUNTRY_LONG><CURRENCY_CD>IQD</CURRENCY_CD><CURRENCY_NAME>Iraqi Dinar</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>368</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>368</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>QX</ISO_COUNTRY_CD><COUNTRY_LONG>Iraq US Military Base</COUNTRY_LONG><CURRENCY_CD>USD</CURRENCY_CD><CURRENCY_NAME>US Dollar</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>840</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>840</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>IE</ISO_COUNTRY_CD><COUNTRY_LONG>Ireland</COUNTRY_LONG><CURRENCY_CD>EUR</CURRENCY_CD><CURRENCY_NAME>Euro</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>372</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>978</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>IL</ISO_COUNTRY_CD><COUNTRY_LONG>Israel</COUNTRY_LONG><CURRENCY_CD>ILS</CURRENCY_CD><CURRENCY_NAME>Israeli New Shekel</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>376</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>376</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>IL</ISO_COUNTRY_CD><COUNTRY_LONG>Israel</COUNTRY_LONG><CURRENCY_CD>USD</CURRENCY_CD><CURRENCY_NAME>US Dollar</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>376</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>840</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>IT</ISO_COUNTRY_CD><COUNTRY_LONG>Italy</COUNTRY_LONG><CURRENCY_CD>EUR</CURRENCY_CD><CURRENCY_NAME>Euro</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>380</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>978</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>QP</ISO_COUNTRY_CD><COUNTRY_LONG>Italy US Military Base</COUNTRY_LONG><CURRENCY_CD>USD</CURRENCY_CD><CURRENCY_NAME>US Dollar</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>840</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>840</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>CI</ISO_COUNTRY_CD><COUNTRY_LONG>Ivory Coast</COUNTRY_LONG><CURRENCY_CD>XOF</CURRENCY_CD><CURRENCY_NAME>CFA Franc BCEAO</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>384</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>952</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>JM</ISO_COUNTRY_CD><COUNTRY_LONG>Jamaica</COUNTRY_LONG><CURRENCY_CD>JMD</CURRENCY_CD><CURRENCY_NAME>Jamaican Dollar</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>388</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>388</ISO_CURRENCY_NUM_CD></RECORD><RECORD><ISO_COUNTRY_CD>JP</ISO_COUNTRY_CD><COUNTRY_LONG>Japan</COUNTRY_LONG><CURRENCY_CD>JPY</CURRENCY_CD><CURRENCY_NAME>Japanese Yen</CURRENCY_NAME><ISO_COUNTRY_NUM_CD>392</ISO_COUNTRY_NUM_CD><ISO_CURRENCY_NUM_CD>392</ISO_CURRENCY_NUM_CD></RECORD></RECORDSET></DATA_CONTEXT></REPLY></MTML>]]></vs:Body>
              <vs:Footer/>
              <vs:ResponseScript>
                <vs:ScriptLang>Groovy</vs:ScriptLang>
                <vs:Script/>
              </vs:ResponseScript>
            </vs:Response>
          </vs:stubResponse>
        </vs:RRPair>
      </vs:StubOperation>
      <vs:StubOperation defaultRR="default_0" name="GetAgentDetails">
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
              <vs:Script><![CDATA[def Req = mockRequest.getRequestContent()
log.info "Request: " + Req

if (Req.contains("AKC170383")) {
    return false
}
else if (Req.contains("ARA089995")) {
    matchContext.setResponse("GetAgentDetails_DAS2Response")
    return true
}
else if (Req.contains("A16119997")) {
    matchContext.setResponse("GetAgentDetails9997_DAS2Response")
    return true
}
else {
    return false
}
]]></vs:Script>
            </vs:MatchScript>
          </vs:ResponseSelection>
          <vs:stubResponse>
            <vs:Response contentType="Json" name="GetAgentDetails_DAS2Response" responseDelay="0" statusCode="200">
              <vs:Header>00351</vs:Header>
              <vs:Body><![CDATA[00001000012000030000100000500319<?xml version="1.0" encoding="WINDOWS-1252"?><MTML><REPLY HOST="AUHOST" CLIENT="WUCLIENT" TYPE=""><DATA_CONTEXT><HEADER><ACCOUNT_NUM>ARA089995</ACCOUNT_NUM><DATA_MORE>N</DATA_MORE><DATA_NUM_RECS>1</DATA_NUM_RECS><NAME>GetAgentDetails</NAME></HEADER><RECORDSET><RECORD></RECORD></RECORDSET></DATA_CONTEXT></REPLY></MTML>]]></vs:Body>
              <vs:Footer/>
              <vs:ResponseScript>
                <vs:ScriptLang>Groovy</vs:ScriptLang>
                <vs:Script/>
              </vs:ResponseScript>
            </vs:Response>
            <vs:Response contentType="Json" name="GetAgentDetails9997_DAS2Response" responseDelay="0" statusCode="200">
              <vs:Header>00366</vs:Header>
              <vs:Body><![CDATA[00001000012000030000100000500334<?xml version="1.0" encoding="WINDOWS-1252" ?><MTML><REPLY HOST="AUHOST" CLIENT="WUCLIENT" TYPE=""><DATA_CONTEXT><HEADER><ACCOUNT_NUM>A16119997</ACCOUNT_NUM><DATA_MORE>N</DATA_MORE><DATA_NUM_RECS>0</DATA_NUM_RECS><ERROR_MSG>D0004 NO MATCHING RECORDS FOUND</ERROR_MSG><NAME>GetAgentDetails</NAME></HEADER></DATA_CONTEXT></REPLY></MTML>]]></vs:Body>
              <vs:Footer/>
              <vs:ResponseScript>
                <vs:ScriptLang>Groovy</vs:ScriptLang>
                <vs:Script/>
              </vs:ResponseScript>
            </vs:Response>
          </vs:stubResponse>
        </vs:RRPair>
        <vs:RRPair id="default_0">
          <vs:Request>
            <vs:RequestData/>
          </vs:Request>
          <vs:ResponseSelection>
            <vs:MatchStyle>Operation</vs:MatchStyle>
            <vs:MatchScript>
              <vs:ScriptLang>Groovy</vs:ScriptLang>
              <vs:Script/>
            </vs:MatchScript>
          </vs:ResponseSelection>
          <vs:stubResponse>
            <vs:Response contentType="Json" name="GetAgentDetails_DAS1Response" responseDelay="0" statusCode="200">
              <vs:Header>00418</vs:Header>
              <vs:Body><![CDATA[00001000012000030000100000500386<?xml version="1.0" encoding="WINDOWS-1252" ?><MTML><REPLY HOST="AUHOST" CLIENT="WUCLIENT" TYPE=""><DATA_CONTEXT><HEADER><ACCOUNT_NUM>AKC170383</ACCOUNT_NUM><DATA_MORE>N</DATA_MORE><DATA_NUM_RECS>1</DATA_NUM_RECS><NAME>GetAgentDetails</NAME></HEADER><RECORDSET><RECORD><FRAUD_LIMIT>49500</FRAUD_LIMIT><CONSUMER_LIMIT>1</CONSUMER_LIMIT></RECORD></RECORDSET></DATA_CONTEXT></REPLY></MTML>]]></vs:Body>
              <vs:Footer/>
              <vs:ResponseScript>
                <vs:ScriptLang>Groovy</vs:ScriptLang>
                <vs:Script/>
              </vs:ResponseScript>
            </vs:Response>
          </vs:stubResponse>
        </vs:RRPair>
      </vs:StubOperation>
      <vs:StubOperation defaultRR="default_0" name="GetQQCCompanyName">
        <vs:DataSourceSelect>
          <vs:Database/>
          <vs:File>
            <vs:RequestName/>
            <vs:RequestColumnMappings/>
          </vs:File>
        </vs:DataSourceSelect>
        <vs:Filters/>
        <vs:RequestData/>
        <vs:RRPair id="default_0">
          <vs:Request>
            <vs:RequestData/>
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
              <vs:Header>03164</vs:Header>
              <vs:Body><![CDATA[00001000012000030000100000503132<?xml version="1.0" encoding="WINDOWS-1252"?><MTML><REPLY HOST="AUHOST" CLIENT="WUCLIENT" TYPE=""><DATA_CONTEXT><HEADER><ACCOUNT_NUM>A16119997</ACCOUNT_NUM><DB_NAME>QQCINT</DB_NAME><DATA_MORE>N</DATA_MORE><DATA_NUM_RECS>11</DATA_NUM_RECS><NAME>GetQQCCompanyName</NAME></HEADER><RECORDSET><RECORD><COMPANY_NAME>TEST FRANCE QUICK PAY</COMPANY_NAME><CLIENT_ID>TESTING FR</CLIENT_ID><CURRENCY_CD>EUR</CURRENCY_CD><ISO_COUNTRY_CD>FR</ISO_COUNTRY_CD><COUNTRY>FRZ</COUNTRY><PREPAID>N</PREPAID><PRECONFIG>N</PRECONFIG><ACCT_REQD>Y</ACCT_REQD></RECORD><RECORD><COMPANY_NAME>TESTING INTERNATIONAL</COMPANY_NAME><CLIENT_ID>TEST EX</CLIENT_ID><CURRENCY_CD>USD</CURRENCY_CD><ISO_COUNTRY_CD>EC</ISO_COUNTRY_CD><COUNTRY>EEX</COUNTRY><PREPAID>N</PREPAID><PRECONFIG>N</PRECONFIG><ACCT_REQD>Y</ACCT_REQD></RECORD><RECORD><COMPANY_NAME>TESTING ONLY</COMPANY_NAME><CLIENT_ID>1A IA</CLIENT_ID><CURRENCY_CD>USD</CURRENCY_CD><ISO_COUNTRY_CD>US</ISO_COUNTRY_CD><COUNTRY>USA</COUNTRY><PREPAID>N</PREPAID><PRECONFIG>N</PRECONFIG><ACCT_REQD>Y</ACCT_REQD></RECORD><RECORD><COMPANY_NAME>TESTING UK ACCOUNT ONLY</COMPANY_NAME><CLIENT_ID>TESTING UK</CLIENT_ID><CURRENCY_CD>GBP</CURRENCY_CD><ISO_COUNTRY_CD>GB</ISO_COUNTRY_CD><COUNTRY>UKD</COUNTRY><PREPAID>N</PREPAID><PRECONFIG>N</PRECONFIG><ACCT_REQD>Y</ACCT_REQD></RECORD><RECORD><COMPANY_NAME>TESTING WEB DELIVERY</COMPANY_NAME><CLIENT_ID>WEB EX</CLIENT_ID><CURRENCY_CD>USD</CURRENCY_CD><ISO_COUNTRY_CD>EC</ISO_COUNTRY_CD><COUNTRY>EEX</COUNTRY><PREPAID>N</PREPAID><PRECONFIG>N</PRECONFIG><ACCT_REQD>Y</ACCT_REQD></RECORD><RECORD><COMPANY_NAME>1 TESTING</COMPANY_NAME><CLIENT_ID>DEBBI NV</CLIENT_ID><CURRENCY_CD>USD</CURRENCY_CD><ISO_COUNTRY_CD>US</ISO_COUNTRY_CD><COUNTRY>USA</COUNTRY><PREPAID>N</PREPAID><PRECONFIG>N</PRECONFIG><ACCT_REQD>Y</ACCT_REQD></RECORD><RECORD><COMPANY_NAME>MONTVALE TEST PRINTER</COMPANY_NAME><CLIENT_ID>TEST NJ</CLIENT_ID><CURRENCY_CD>USD</CURRENCY_CD><ISO_COUNTRY_CD>US</ISO_COUNTRY_CD><COUNTRY>USA</COUNTRY><PREPAID>N</PREPAID><PRECONFIG>N</PRECONFIG><ACCT_REQD>Y</ACCT_REQD></RECORD><RECORD><COMPANY_NAME>WEB PRICE TEST CORRECTIONAL</COMPANY_NAME><CLIENT_ID>BAILEY MO</CLIENT_ID><CURRENCY_CD>USD</CURRENCY_CD><ISO_COUNTRY_CD>US</ISO_COUNTRY_CD><COUNTRY>USA</COUNTRY><PREPAID>N</PREPAID><PRECONFIG>N</PRECONFIG><ACCT_REQD>Y</ACCT_REQD></RECORD><RECORD><COMPANY_NAME>WESTERN UNION GOLDLINE TEST</COMPANY_NAME><CLIENT_ID>TESTGOLDLINE NZ</CLIENT_ID><CURRENCY_CD>NZD</CURRENCY_CD><ISO_COUNTRY_CD>NZ</ISO_COUNTRY_CD><COUNTRY>NZL</COUNTRY><PREPAID>N</PREPAID><PRECONFIG>N</PRECONFIG><ACCT_REQD>Y</ACCT_REQD></RECORD><RECORD><COMPANY_NAME>WESTERN UNION GOLDLINE TEST</COMPANY_NAME><CLIENT_ID>TESTGOLDLINE AU</CLIENT_ID><CURRENCY_CD>AUD</CURRENCY_CD><ISO_COUNTRY_CD>AU</ISO_COUNTRY_CD><COUNTRY>AUS</COUNTRY><PREPAID>N</PREPAID><PRECONFIG>N</PRECONFIG><ACCT_REQD>Y</ACCT_REQD></RECORD><RECORD><COMPANY_NAME>WESTERN UNION INTL TEST</COMPANY_NAME><CLIENT_ID>QUICKPAYTEST HK</CLIENT_ID><CURRENCY_CD>HKD</CURRENCY_CD><ISO_COUNTRY_CD>HK</ISO_COUNTRY_CD><COUNTRY>HOK</COUNTRY><PREPAID>N</PREPAID><PRECONFIG>N</PRECONFIG><ACCT_REQD>Y</ACCT_REQD></RECORD></RECORDSET></DATA_CONTEXT></REPLY></MTML>]]></vs:Body>
              <vs:Footer/>
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
      <vs:Script><![CDATA[log.info("DAS started on 3609");]]></vs:Script>
    </vs:CustomScript>
    <vs:CustomScript>
      <vs:ScriptLang>Groovy</vs:ScriptLang>
      <vs:ExecutionType>VS Stop</vs:ExecutionType>
      <vs:Script><![CDATA[log.info("DAS Stopped");]]></vs:Script>
    </vs:CustomScript>
    <vs:CustomScript>
      <vs:ScriptLang>Groovy</vs:ScriptLang>
      <vs:ExecutionType>On Request</vs:ExecutionType>
      <vs:Script><![CDATA[def req = mockRequest.getRequestContent()

if (req.contains("GetWUAgentBannerMsgs")) {
    context.setProperty("operation", "GetWUAgentBannerMsgs")
}
else if (req.contains("GetWUBannerMsgs")) {
    context.setProperty("operation", "GetWUBannerMsgs")
}
else if (req.contains("GetDeliveryServices")) {
    context.setProperty("operation", "GetDeliveryServices")
}
else if (req.contains("GetErrorMessagesInfo")) {
    context.setProperty("operation", "GetErrorMessagesInfo")
}
else if (req.contains("GetAccountTableInfo")) {
    context.setProperty("operation", "GetAccountTableInfo")
}
else if (req.contains("GetCountriesCurrencies")) {
    context.setProperty("operation", "GetCountriesCurrencies")
}
else if (req.contains("GetSeqCityStateUpdates")) {
    context.setProperty("operation", "GetSeqCityStateUpdates")
}
else if (req.contains("GetAgentDetails")) {
    context.setProperty("operation", "GetAgentDetails")
}
else if (req.contains("GetQQCCompanyName")) {
    context.setProperty("operation", "GetQQCCompanyName")
}
]]></vs:Script>
    </vs:CustomScript>
    <vs:CustomScript>
      <vs:ScriptLang>Groovy</vs:ScriptLang>
      <vs:ExecutionType>On Response</vs:ExecutionType>
      <vs:Script><![CDATA[log.info("DAS Response Sent: " + mockRequest.getOperation());]]></vs:Script>
    </vs:CustomScript>
  </vs:CustomScripts>
  <vs:Config>
    <vs:ResponseDelay>0</vs:ResponseDelay>
  </vs:Config>
  <vs:Metadata/>
</vs:stubVirtualService>
