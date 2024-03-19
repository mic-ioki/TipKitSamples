import TipKit

struct HiddenFeatureTip: Tip {

    var title: Text {
        Text("Adding an additional passenger")
    }

    var message: Text? {
        Text("Till your shuttle is on the way, you can add a person to your ride")
    }

    var image: Image? {
        Image(systemName: "globe")
    }
}
