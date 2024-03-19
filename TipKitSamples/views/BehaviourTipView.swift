import SwiftUI
import TipKit

struct BehaviourTipView: View {

    var invalidateTip = InvalidateTip()
    var maxDisplayCountTip = MaxDisplayCountTip()


    var body: some View {
        VStack(spacing: 20) {
            TipView(invalidateTip)
            Button {
                Task {
                    invalidateTip.invalidate(reason: .actionPerformed)
                }
            } label: {
                Text("Press to dismiss tip")
            }

            TipView(maxDisplayCountTip)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
