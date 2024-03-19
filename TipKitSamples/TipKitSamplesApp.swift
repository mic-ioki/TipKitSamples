import SwiftUI
import TipKit

@main
struct TipKitSamplesApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .task {
                    try? Tips.configure([
//                        .displayFrequency(.daily)
//                        .displayFrequency(.hourly)
//                        .displayFrequency(.weekly)
//                        .displayFrequency(.monthly)
//                        .displayFrequency(.immediate)

//                        .datastoreLocation(.applicationDefault)
                    ])

//                    Tips.showTipsForTesting([])
//                    Tips.showAllTipsForTesting()
//                    Tips.hideTipsForTesting([])
//                    Tips.hideAllTipsForTesting()

                }
        }
    }
}
