%dw 2.0
output application/xml writeDeclaration=false
---
{
    table @(style: "width: 50%; border: 1px solid black; font-family: Arial" ): {
        tr @(bgcolor: "#f5e298",style: "color: white !important; font-size:14px; "): {
            th @() : "Key",
            th @() : "Description"
        },        
            tr @(bgcolor: "#cee8f5",align:"left", style: "color: #0f0f0f; font-size:12px;font-weight: 500; width:10%"): {
                td @(): "Application",
                td @(): vars.errordata.'appName' default " "
            },
            tr @(bgcolor: "#cee8f5",align:"left", style: "color: #0f0f0f; font-size:12px; font-weight: 500; width:10%"):{
                td @(): "Application ID",
                td @(): vars.errordata.'ID' default " "
            },
//            tr @(bgcolor: "#cee8f5",align:"left", style: "color: #0f0f0f; font-size:12px; font-weight: 500; width:10%"):{
//                td @(): "Source System",
//                td @(): vars.queueErrMsg.'sourceSystem'
//            },
//			tr @(bgcolor: "#cee8f5",align:"left", style: "color: #0f0f0f; font-size:12px; font-weight: 500; width:10%"):{
//                td @(): "Target System",
//                td @(): vars.queueErrMsg.'targetSystem'
//            },
//           tr @(bgcolor: "#cee8f5",align:"left", style: "color: #0f0f0f; font-size:12px; font-weight: 500; width:10%"):{
//               td @(): "Error Type",
//                td @(): vars.errorType.'errorType'
//           },
			 tr @(bgcolor: "#cee8f5",align:"left", style: "color: #0f0f0f; font-size:12px; font-weight: 500; width:10%"):{
                td @(): "Status Code",
                td @(): vars.errordata.'statusCode' default " "
            },
            tr @(bgcolor: "#cee8f5",align:"left", style: "color: #0f0f0f; font-size:12px; font-weight: 500; width:10%"):{
                td @(): "Exception Description",
                td @(): vars.errordata.'errorDescription' default " "
            },
            tr @(bgcolor: "#cee8f5",align:"left", style: "color: #0f0f0f; font-size:12px; font-weight: 500; width:10%"):{
                td @(): "Exception Date",
                td @(): vars.errordata.'errorDate' default " "
            },
            tr @(bgcolor: "#cee8f5",align:"left", style: "color: #0f0f0f; font-size:12px; font-weight: 500; width:10%"):{
                td @(): "Correlation ID",
                td @(): vars.errordata.'correlationId' default " "
            },
             tr @(bgcolor: "#cee8f5",align:"left", style: "color: #0f0f0f; font-size:12px; font-weight: 500; width:10%"):{
               td @(): "status report ID",
                td @(): vars.errordata.payload.'id'
           },
           tr @(bgcolor: "#cee8f5",align:"left", style: "color: #0f0f0f; font-size:12px; font-weight: 500; width:10%"):{
               td @(): "HP Now Ticket Created",
                td @(): " "
            }
            
    }
}