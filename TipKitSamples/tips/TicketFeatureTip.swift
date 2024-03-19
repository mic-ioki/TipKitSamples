import TipKit

struct TicketFeatureTip: Tip {

    var title: Text {
        Text("New Feature Tickets")
    }

    var message: Text? {
        Text("Now you are able to purchase an ÖPNV ticket for your complete journey")
    }

    var image: Image? {
        Image(systemName: "heart.fill")
    }
}
