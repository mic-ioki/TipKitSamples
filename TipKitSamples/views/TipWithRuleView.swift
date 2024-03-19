import SwiftUI
import TipKit

struct TipWithRuleView: View {

    var eventRuleTip = EventRuleTip()
    var parameterRuleTip = ParameterRuleTip()

    var body: some View {
        List {
            TipView(eventRuleTip)
            Section  {
                Button {
                    Task {
                        await EventRuleTip.eventRuleTipEvent.donate()
                    }
                } label: {
                    Text("Press to show event tip")
                }
            } header: {
                Text("Event Rule")
            } footer: {
                Text("donation: \(EventRuleTip.eventRuleTipEvent.donations.count)")
            }

            TipView(parameterRuleTip)
            Section  {
                Button {
                    ParameterRuleTip.userIsLoggedIn = true
                } label: {
                    Text("Press to show param tip")
                }
            } header: {
                Text("Param Rule")
            } footer: {
                Text("")
            }




        }
    }
}

#Preview {
    ContentView()
}
