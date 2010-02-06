package com.dhakads.utils
{
    import mx.rpc.AsyncToken;
    import mx.rpc.IResponder;
    import mx.rpc.http.HTTPService;

    public class ServiceUtils {
        public static function httpGet(url:String, responder:IResponder = null):void
        {
            var service:HTTPService = new HTTPService();
            service.url = url;
            service.resultFormat = "e4x";
            service.method = "GET";            
            service.useProxy = false;
            var call:AsyncToken = service.send();
            call.addResponder(responder);
        }
        
        public static function httpPost(url:String,  request:Object, responder:IResponder = null, sendXML:Boolean = false):void
        {
            var service:HTTPService = new HTTPService();
            service.url = url;
            service.contentType = sendXML ? "application/xml" : "application/x-www-form-urlencoded";
            service.resultFormat = "e4x";
            service.method = "POST";
            service.request = request;
            service.useProxy = false;
            var call:AsyncToken = service.send();
            call.addResponder(responder);
        }
        
        public static function httpPut(url:String,  request:Object, responder:IResponder = null, sendXML:Boolean = false):void
        {
            var service:HTTPService = new HTTPService();
            service.url = url;
            service.contentType = sendXML ? "application/xml" : "application/x-www-form-urlencoded";
            service.resultFormat = "e4x";
            service.method = "POST";
            request["_method"] = "PUT";
            service.request = request;
            service.useProxy = false;
            var call:AsyncToken = service.send();
            call.addResponder(responder);
        }
        
        public static function httpDestroy(url:String,  responder:IResponder = null, request:Object = null, sendXML:Boolean = false):void
        {
            var service:HTTPService = new HTTPService();
            service.url = url;
            service.contentType = sendXML ? "application/xml" : "application/x-www-form-urlencoded";
            service.resultFormat = "e4x";
            service.method = "POST";
            request = (request == null) ? {"_method":"DELETE"} : request["_method"] = "DELETE";            
            service.request = request;
            service.useProxy = false;
            var call:AsyncToken = service.send();
            call.addResponder(responder);
        }
    }
}
