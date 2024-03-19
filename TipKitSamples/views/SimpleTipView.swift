import SwiftUI
import TipKit

struct SimpleTipView: View {

    var tip = TicketFeatureTip()
    var tipWithArrow = HiddenFeatureTip()
    var tipOnPopover = TicketFeatureTip()

    var body: some View {
        VStack(spacing: 20) {
            TipView(tip)
            TipView(tipWithArrow, arrowEdge: .leading)
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
                .popoverTip(tipOnPopover)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
