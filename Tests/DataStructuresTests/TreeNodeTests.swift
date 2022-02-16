import XCTest
@testable import DataStructures

final class TreeNodeTests: XCTestCase {
    func testAddingChild() {
        let node = TreeNode<Int>(data: 0)
        node.add(child: TreeNode(data: 1))
    }
}
