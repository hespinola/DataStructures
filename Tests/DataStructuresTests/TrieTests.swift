import XCTest
@testable import DataStructures

final class TrieTests: XCTestCase {
    func testSearchWord() {
        let word = "palindrome"
        var trie = Trie()
        
        trie.insert(word: word)
        XCTAssertTrue(trie.hasWord(word))
        XCTAssertFalse(trie.hasWord("pal"))
    }
    
    func testSearchPrefix() {
        let word = "palindrome"
        var trie = Trie()
        
        trie.insert(word: word)
        XCTAssertTrue(trie.hasPrefix(word: word))
        XCTAssertTrue(trie.hasPrefix(word: "pal"))
    }
}
