public class TreeNode<T> where T: Equatable {
    public var data: T
    public var children: [TreeNode]
    public weak var parent: TreeNode?
    
    public init(data: T, children: [TreeNode] = [], parent: TreeNode? = nil) {
        self.data = data
        self.children = children
        self.parent = parent
    }
    
    /// Add child to node
    /// Complexity O(1)
    /// - Parameter data: Data to add
    public func add(child data: T) {
        let child = TreeNode(data: data)
        child.parent = self
        children.append(child)
    }
    
    /// Add node as children
    /// Complexity O(1)
    /// - Parameter node: Node to be added
    public func add(node: TreeNode<T>) {
        node.parent = self
        children.append(node)
    }
    
    /// Breadth-First Search
    /// - Parameter targetNode: Node to find
    /// - Returns: Returns true if the target is in the Tree
    public func bfs(target: TreeNode<T>) -> Bool {
        var queue = Queue<TreeNode<T>>()
        queue.enqueue(self)
        
        while let node = queue.dequeue() {
            if node.data == target.data {
                return true
            }
            
            node.children.forEach { queue.enqueue($0) }
        }
        
        return false
    }
    
    /// Depth-First Search
    /// - Parameter target: Node to find
    /// - Returns: Returns true if target is in the Tree
    public func dfs(target: TreeNode<T>) -> Bool {
        if data == target.data {
            return true
        }
        
        for child in children {
            if child.dfs(target: target) {
                return true
            }
        }
        
        return false
    }
    
    /// Breadth-First Traversal | Level Traversal print
    public func printTree() {
        var queue = Queue<TreeNode<T>>()
        queue.enqueue(self)
        
        while let node = queue.dequeue() {
            print(node.data)
            node.children.forEach { queue.enqueue($0) }
        }
    }
}
