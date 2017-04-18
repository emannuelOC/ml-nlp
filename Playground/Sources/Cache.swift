import Foundation

public func saveTheta(theta: [[Double]]) -> Bool {
    if let path = Bundle.main.path(forResource: "cache", ofType: "txt") {
        let url = URL(fileURLWithPath: path)
        var text = ""
        for i in theta {
            for j in i {
                text += "\(text) \(j)"
            }
            text += "\n"
        }
        do {
            try text.write(to: url, atomically: false, encoding: .utf8)
            print("if did!")
            return true
        } catch {
            print("if didn't 1!")
            print(error)
            return false
        }
    }
    print("if didn't 2!")
    return false
}

