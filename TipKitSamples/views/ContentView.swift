import SwiftUI
import TipKit

struct ContentView: View {

    var tip = TicketFeatureTip()

    var body: some View {
        NavigationView {
            List {
                NavigationLink(destination: SimpleTipView()) {
                    Text("Creating a tip")
                }
                NavigationLink(destination: TipWithRuleView()) {
                    Text("Tip with Rules")
                }
                NavigationLink(destination: BehaviourTipView()) {
                    Text("Behaviour Tip")
                }
            }
            .navigationTitle("TipKit Samples")
        }
    }
}

#Preview {
    ContentView()
}
