import Foundation

public class FileLoader {
    
    public init() {
        
    }
    
    /// Returns the text in the file as an array of strings
    /// having the words in the text separated by a space.
    ///
    /// - Parameters:
    ///   - name: the name of the file
    ///   - type: the extension of the file
    /// - Returns: an array of strings containing the words in the file
    public func loadFile(name: String, type: String = "txt") -> [String]? {
        let path = Bundle.main.path(forResource: name, ofType: type) ?? ""
        let url = URL(fileURLWithPath: path)
        do {
            let string = "I really like Brazil. It is an amazing country. I also like Deep Learning and I love Leticia." //try String(contentsOf: url)
                .replacingOccurrences(of: "\n", with: " ")
                .replacingOccurrences(of: ".", with: " .")
                .replacingOccurrences(of: ",", with: " ,")
                .replacingOccurrences(of: "!", with: " !")
                .replacingOccurrences(of: "?", with: " ?")
                .replacingOccurrences(of: ":", with: " :")
                .replacingOccurrences(of: ";", with: " ;")
                .replacingOccurrences(of: "(", with: "( ")
                .replacingOccurrences(of: ")", with: " )")
            return string.components(separatedBy: " ")
        } catch {
            return nil
        }
    }
    
}
