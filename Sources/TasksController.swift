import PerfectLib
import PerfectHTTP
import PerfectHTTPServer
import PerfectMustache

class TasksController: Controller {
    override var routes: [Route] {
        return [
            Route(method: .get, uri: "/tasks", handler: index),
            Route(method: .get, uri: "/tasks/create", handler: create)
        ]
    }
    
    /**
     Show all tasks
     */
    func index(request: HTTPRequest, response: HTTPResponse) {
        do {
            sendHtmlResponse(response, html: try mustacheBody("test", ["name": "Tammy"]))
        } catch {
            print("Error!") 
        }
    }
    
    func create(request: HTTPRequest, response: HTTPResponse) {
        
    }
}
