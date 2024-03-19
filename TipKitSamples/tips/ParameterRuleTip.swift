import TipKit

struct ParameterRuleTip: Tip {

    @Parameter
    static var userIsLoggedIn: Bool = false

    var title: Text {
        Text("Tip with Param")
    }

    var message: Text? {
        Text("Lorem ipsum...")
    }

    var rules: [Rule] {

        #Rule(Self.$userIsLoggedIn) { $0 == true }
    }

}
