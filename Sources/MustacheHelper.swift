import PerfectLib
import PerfectHTTP
import PerfectHTTPServer
import PerfectMustache

class MustacheHelper: MustachePageHandler {
    func extendValuesForResponse(context contxt: MustacheWebEvaluationContext, collector: MustacheEvaluationOutputCollector) {
        do {
            try contxt.formulateResponse(withCollector: collector)
        } catch {
            
        }
    }
}
