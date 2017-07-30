import PerfectLib
import PerfectHTTP
import PerfectHTTPServer

do {
    try app.server.start()
} catch {
    fatalError("\(error)") // fatal error launching one of the servers
}
