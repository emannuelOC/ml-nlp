import Foundation

public func random(_ size: Int) -> [Double] {
    var result = [Double]()
    for i in 0..<size {
        result.append(Double(arc4random()) / Double(UINT32_MAX))
    }
    return result
}
