# TipKitSamples

## Intro

- Teach someone about a brand-new feature
- Help with discovery of a hidden feature,
- Show a faster way to accomplish a task


## Creating a tip

```swift
struct FeatureTip: Tip {

    var title: Text {
        Text("New Feature Here!")
    }

    var message: Text? {
        Text("Lorem ipsum")
    }

    var image: Image? {
        Image(systemName: "heart.fill")
    }
}

```

## Eligibility rules

Rule Types:
- Parameter-based
```swift
struct FavoriteLandmarkTip: Tip {
    // Define the app state you want to track.
    @Parameter
    static var userIsLoggedIn: Bool = false


    var rules: [Rule] {
        // Define a rule based on the app state.
        #Rule(Self.$userIsLoggedIn) {
            // Set the conditions for when the tip displays.
            $0 == true
        }
    }
}
```
- Event-based
```swift
struct FavoriteLandmarkTip: Tip {
    // Define the user interaction you want to track.
    static let didViewLandmark: Event = Event(id: "didViewLandmark")


    var rules: [Rule] {
        // Define a rule based on the interaction.
        #Rule(Self.didViewLandmark) {
            // Set the conditions for when the tip displays.
            $0.donations.count > 3
        }
    }
}
```

## Display and dismissal

Display can be configured on the `Tips.configure`  and the `Tip.options`.

### Display Frequency
The frequency can be set to: `.hourly`, `.daily`, `.weekly`, `.monthly`, `.immediate`

`try? Tips.configure([.displayFrequency(.daily)])`
	

### Tip options

```swift
var options: [any TipOption] {
    [
        Tip.IgnoresDisplayFrequency(true),
        Tip.MaxDisplayCount(3)
    ]

}
```

## Test tips

```swift
Tips.showTipsForTesting([])
Tips.showAllTipsForTesting()
Tips.hideTipsForTesting([])
Tips.hideAllTipsForTesting()
```

## Links

- https://developer.apple.com/videos/play/wwdc2023/10229/
- https://developer.apple.com/documentation/TipKit
- https://fatbobman.com/en/posts/mastering-tipkit-basic/
- https://itnext.io/mastering-tipkit-advanced-b6927aeeb9b5
- https://github.com/jordibruin/TipKit-Examples