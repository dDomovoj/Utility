import Foundation

public extension Bool {

  static var random: Bool { return arc4random_uniform(2) == 0 }
}
