class MySingletonAnalytics {
    private static let instance = MySingletonAnalytics()
    
    static var shared: MySingletonAnalytics {
        #if DEBUG
        if let stubbedInstance = stubbedInstance {
            return stubbedInstance
        }
        #endif
        return instance
    }
    
    #if DEBUG
    static var stubbedInstance: MySingletonAnalytics?
    #endif
    
    func track(event: String) {
        Analytics.shared.track(event: event)
        if self !== MySingletonAnalytics.instance {
            print(">> Not the MySingletonAnalytics singleton")
        }
    }
}
