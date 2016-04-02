public class TreeNode:CustomStringConvertible {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init(_ val: Int) {
        self.val = val
        self.left = nil
        self.right = nil
    }
    public var description: String {
        return "Val:\(val) Left:\(left) Right:\(right)"
    }
}

// Create a tree for test
//            1
//           / \
//          2  3
//         / \  \
//        4  5  6
//       / \
//      7  8
//        /
//       9

var root = TreeNode(1)
var t2 = TreeNode(2)
var t3 = TreeNode(3)
var t4 = TreeNode(4)
var t5 = TreeNode(5)
var t6 = TreeNode(6)
var t7 = TreeNode(7)
var t8 = TreeNode(8)
var t9 = TreeNode(9)

root.left = t2
root.right = t3
t2.left = t4;
t2.right = t5;
t3.right = t6;
t4.left = t7;
t4.right = t8;
t8.left = t9;


class Solution {
    func isSameTree(p: TreeNode?, _ q: TreeNode?) -> Bool {
        if (p != nil && q != nil) { return (p?.val == q?.val) && isSameTree(p?.left, q?.left) && isSameTree(p?.right, q?.right) }
        else if (p == nil && q == nil) { return true }
        else { return false }
    }
}

var solution = Solution()
solution.isSameTree(root, root)