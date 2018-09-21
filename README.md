<div align=center>
<img align=center src="logo.png" alt="SimpleParallax Logo" width="350" height="222">
<br/><br/><br/>  
<p style="color: #403956; margin-top: 40px;">
Beautiful &amp; simple parallax effects for your UI  🌁 - Recreate the well-known iOS wallpaper animation by dividing your ViewController in background, middleground and foreground elements which each receive different motionEffects.
</p>
<br/><br/>
<h1>Usage</h1>
<p style="color: #403956; margin-top: 40px;">
SimpleParallax works by extending UIView. In order to apply a Parallax-MotionEffect to one of your UIView-objects, simply call one of the following methods:</p><br/>
⋅⋅* addBackgroundPxEffect()
⋅⋅* addMiddlegroundPxEffect()
⋅⋅* addForegroundPxEffect()  
<br/><br/>
<p style="color: #403956; margin-top: 40px;">Furthermore, you can specify the strength of the Parallax-effect: </p>
```swift
enum ParallaxStrength {
    case Low
    case Mid
    case High
}  
```
</br></br>
<h3>Example implementation in viewdidload():</h3>

```swift
  
override func viewDidLoad() {
        super.viewDidLoad()
        //Lets assign our Backgrounds:
        background2.addBackgroundPxEffect(strength: .Low)
        background1.addBackgroundPxEffect(strength: .Mid)
        
        //Lets assign our Middleground:
        titleLabel.addMiddlegroundPxEffect()
        
        //Lets assign our Foreground:
        startButton.addForegroundPxEffect(strength: .High)
    }
```

</div>
