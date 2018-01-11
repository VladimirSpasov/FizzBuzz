//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport
@testable import FizzBuzzFramework


Bundle.main

let frameworkBundle = Bundle(identifier: "com.me.FizzBuzzFramework")
let storyboard = UIStoryboard(name: "Main", bundle: frameworkBundle)
let viewController = storyboard.instantiateViewController(withIdentifier: "ViewController") as! ViewController


PlaygroundPage.current.liveView = viewController
PlaygroundPage.current.needsIndefiniteExecution = true


viewController.play(move: .number)
viewController.play(move: .number)
viewController.play(move: .fizz)

