

enum Screens: String {
    case wallet
    case discovery
    case mission
    case calendar
    case details
    case unclaimed
}


let supportedPaths = ["wallet"    : "wallet/calendar/details",
                      "discovery" : "discovery",
                      "mission"   : "mission/unclaimed"]
