import TipKit

struct MaxDisplayCountTip: Tip {

    var title: Text {
        Text("Max Display Count Tip")
    }

    var message: Text? {
        Text("Lorem ipsum...")
    }

    var options: [any TipOption] {
        [
            Tip.IgnoresDisplayFrequency(true),
            Tip.MaxDisplayCount(3)
        ]

    }
}
