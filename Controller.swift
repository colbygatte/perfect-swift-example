import PerfectLib
import PerfectHTTP
import PerfectMustache

class Controller {
    var routes: [Route] { return [] }
    
    func mustacheBody(_ templatePath: String, _ map: [String: Any]) throws -> String {
        let collector = MustacheEvaluationOutputCollector()
        return try MustacheEvaluationContext(templatePath: templatePath + ".mustache", map: map)
            .formulateResponse(withCollector: collector)
    }
    
    func sendHtmlResponse(_ response: HTTPResponse, html: String) {
        response.setHeader(.contentType, value: "text/html")
        
        response.appendBody(string: html)
        
        response.completed()
    }
}
