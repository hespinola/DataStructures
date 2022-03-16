import XCTest
@testable import DataStructures

final class TreeNodeTests: XCTestCase {
    private var stringTree: TreeNode<String>!
    
    override func setUp() {
        let root = TreeNode(data: "Beverages")
        
        let coldDrinks = TreeNode(data: "Cold Drinks")
        let hotDrinks = TreeNode(data: "Hot Drinks")
        
        let soda = TreeNode(data: "Soda")
        let coke = TreeNode(data: "Coke")
        
        let coffe = TreeNode(data: "Coffe")
        let tea = TreeNode(data: "Tea")
        
        root.add(node: coldDrinks)
        root.add(node: hotDrinks)
        
        coldDrinks.add(node: soda)
        coldDrinks.add(node: coke)
        
        hotDrinks.add(node: coffe)
        hotDrinks.add(node: tea)
        
        stringTree = root
    }
    
    override func tearDown() {
        stringTree = nil
    }
    
    func testCreateNode() {
        let value = 1
        let node = TreeNode<Int>(data: value)
        XCTAssertNil(node.parent)
        XCTAssertTrue(node.children.isEmpty)
        XCTAssertEqual(node.data, value)
    }
    
    func testAddChild() {
        let root = TreeNode(data: 0)
        root.add(child: 1)
        XCTAssertFalse(root.children.isEmpty)
        XCTAssertEqual(root.children.first?.data, 1)
    }
    
    func testBreadthFirstSearch() {
        let nodeToFind = TreeNode(data: "Coke")
        let nodeToMiss = TreeNode(data: "Dr Pepper")
        
        XCTAssertTrue(stringTree.bfs(target: nodeToFind))
        XCTAssertFalse(stringTree.bfs(target: nodeToMiss))
    }
    
    func testDepthFirstSearch() {
        let nodeToFind = TreeNode(data: "Coke")
        let nodeToMiss = TreeNode(data: "Dr Pepper")
        
        XCTAssertTrue(stringTree.dfs(target: nodeToFind))
        XCTAssertFalse(stringTree.dfs(target: nodeToMiss))
    }
}
