import TipKit

struct EventRuleTip: Tip {

    static let eventRuleTipEvent = Event(id: "eventRuleTipEvent")

    var title: Text {
        Text("Tip with event rule")
    }

    var message: Text? {
        Text("Lorem ipsum...")
    }

    var rules: [Rule] {

        #Rule(Self.eventRuleTipEvent) { $0.donations.count >= 3 }
    }

}
