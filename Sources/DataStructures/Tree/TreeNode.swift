public class TreeNode<T> {
    public var data: T
    public var children: [TreeNode]
    public var parent: TreeNode?
    
    public init(data: T, children: [TreeNode] = [], parent: TreeNode) {
        self.data = data
        self.children = children
        self.parent = parent
    }
}
