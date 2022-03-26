public struct Trie {
    /// Trie Node
    private class Node {
        let value: Character
        var children: [Character : Node]
        var isWord: Bool
        
        init(value: Character) {
            self.value = value
            children = [Character : Node]()
            isWord = false
        }
    }
    
    private var root = Node(value: "*")
    
    /// Inserts a new word into the Trie
    /// - Parameter word: Word to be inserted
    mutating func insert(word: String) {
        var currentNode = root
        
        for character in word {
            if !currentNode.children.keys.contains(character) {
                currentNode.children[character] = Node(value: character)
            }
            
            currentNode = currentNode.children[character]!
        }
        
        currentNode.isWord = true
    }
    
    /// Performs a word lookup
    /// - Parameter word: Word to lookup
    /// - Returns: True if the word exists or false if not
    mutating func hasWord(_ word: String) -> Bool {
        var currentNode = root
        
        for character in word {
            guard let nextNode = currentNode.children[character] else { return false }
            currentNode = nextNode
        }
        
        return currentNode.isWord
    }
    
    /// Performs a prefix lookup
    /// - Parameter word: Prefix to lookup
    /// - Returns: True if the prefix exists or false if not
    mutating func hasPrefix(word: String) -> Bool {
        var currentNode = root
        
        for character in word {
            guard let nextNode = currentNode.children[character] else { return false }
            currentNode = nextNode
        }
        
        return true
    }
}
