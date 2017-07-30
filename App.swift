import PerfectHTTP
import PerfectHTTPServer

struct App {
    let server = HTTPServer()
    
    var routes = Routes()
    
    var controllers = [Controller]()
    
    init(serverPort: UInt16, controllers: [Controller]) {
        server.serverPort = serverPort
        
        controllers.forEach {
            self.controllers.append($0)
            routes.add($0.routes)
        }
    }
}
