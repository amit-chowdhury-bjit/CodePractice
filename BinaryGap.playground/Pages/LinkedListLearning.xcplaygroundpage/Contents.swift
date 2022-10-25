//: [Previous](@previous)
public class Node<Value> {

  public var value: Value
  public var next: Node?

  public init(value: Value, next: Node? = nil) {
    self.value = value
    self.next = next
  }
}

extension Node: CustomStringConvertible {
  public var description: String {

    guard let next = next else {
      return "\(value)"
    }
    return "\(value) -> " + String(describing: next) + " "
  }
}

//example(of: "creating and linking nodes") {
  let node1 = Node(value: 1)
  let node2 = Node(value: 2)
  let node3 = Node(value: 3)
  node1.next = node2
  node2.next = node3
  print(node1)

//}

public struct LinkedList<Value> {

  public var head: Node<Value>?
  public var tail: Node<Value>?
  
  public init() {}
    
  public var isEmpty: Bool {
    head == nil
  }

    public mutating func push(_ value: Value) {
        copyNodes()
      head = Node(value: value, next: head)
      if tail == nil {
        tail = head
      }
    }

    public mutating func append(_ value: Value) {
        copyNodes()
      // 1
      guard !isEmpty else {
        push(value)
        return
      }

      // 2
      tail!.next = Node(value: value)
      // 3
      tail = tail!.next
    }

    public func node(at index: Int) -> Node<Value>? {
      // 1
      var currentNode = head
      var currentIndex = 0
      // 2
      while currentNode != nil && currentIndex < index {
        currentNode = currentNode!.next
        currentIndex += 1
      }
      return currentNode
    }

    // 1

    @discardableResult
    public mutating func insert(_ value: Value, after node: Node<Value>)-> Node<Value> {
        copyNodes()
      // 2
      guard tail !== node else {
        append(value)
        return tail!
      }
      // 3
      node.next = Node(value: value, next: node.next)
      return node.next!
    }

    @discardableResult

    public mutating func pop() -> Value? {
        copyNodes()
        // defer can be handy when cleanup actions are performed multiple times, like closing a file or locking a lock, before exiting the scope. Simply put, the Swift defer statement provides good housekeeping.

        //https://blog.logrocket.com/complete-guide-swift-defer-statement/

      defer {
        head = head?.next
        if isEmpty {
          tail = nil
        }
      }
      return head?.value
    }
    
    @discardableResult
    public mutating func removeLast() -> Value? {
        copyNodes()
      // 1
      guard let head = head else {
        return nil
      }
      // 2
      guard head.next != nil else {
        return pop()
      }

      // 3
      var prev = head
      var current = head

      while let next = current.next {
        prev = current
        current = next
      }
      // 4
      prev.next = nil
      tail = prev
      return current.value
    }

    @discardableResult
    public mutating func remove(after node: Node<Value>) -> Value? {
        copyNodes()
      defer {
        if node.next === tail {
          tail = node
        }
        node.next = node.next?.next
      }
      return node.next?.value
    }
    
    private mutating func copyNodes() {
       guard !isKnownUniquelyReferenced(&head) else {
         return
       }
       guard var oldNode = head else {
         return
       }
       
       head = Node(value: oldNode.value)
       var newNode = head
       
       while let nextOldNode = oldNode.next {
         newNode!.next = Node(value: nextOldNode.value)
         newNode = newNode!.next
         oldNode = nextOldNode
       }
       
       tail = newNode
     }

    private mutating func copyNodes(returningCopyOf node: Node<Value>?) -> Node<Value>? {
      guard !isKnownUniquelyReferenced(&head) else {
        return nil
      }
      guard var oldNode = head else {
        return nil
      }
      
      head = Node(value: oldNode.value)
      var newNode = head
      var nodeCopy: Node<Value>?
      
      while let nextOldNode = oldNode.next {
        if oldNode === node {
          nodeCopy = newNode
        }
        newNode!.next = Node(value: nextOldNode.value)
        newNode = newNode!.next
        oldNode = nextOldNode
      }
      
      return nodeCopy
    }

}

extension LinkedList: CustomStringConvertible {
  public var description: String {

    guard let head = head else {
      return "Empty list"
    }
    return String(describing: head)
  }
}

//example(of: "push") {

//  var list = LinkedList<Int>()

//  list.push(3)

//  list.push(2)

//  list.push(1)
//  print(list)

//}

//example(of: "append") {

//  var list = LinkedList<Int>()

//  list.append(1)

//  list.append(2)

//  list.append(3)
//  print(list)

//}

//example(of: "inserting at a particular index") {

  var list = LinkedList<Int>()

  list.push(3)

  list.push(2)

  list.push(1)
  print("Before inserting: \(list)")

  var middleNode = list.node(at: 1)!
  for _ in 1...4 {
    middleNode = list.insert(-1, after: middleNode)

  }
  print("After inserting: \(list)")

//}

//example(of: "pop") {

//  var list = LinkedList<Int>()

//  list.push(3)

//  list.push(2)

//  list.push(1)

  print("Before popping list: \(list)")

  let poppedValue = list.pop()

  print("After popping list: \(list)")
  print("Popped value: " + String(describing: poppedValue))
//}

print("Before removing last node: \(list)")

 let removedValue = list.removeLast()
 print("After removing last node: \(list)")
 print("Removed value: " + String(describing: removedValue))
 print("Before removing at particular index: \(list)")

 let index = 1

 let node = list.node(at: index - 1)!

 let removedValue1 = list.remove(after: node)!

 print("After removing at index \(index): \(list)")

print("Removed value: " + String(describing: removedValue1))

extension LinkedList: Collection {

  public struct Index: Comparable {

    public var node: Node<Value>?
    
    static public func ==(lhs: Index, rhs: Index) -> Bool {
      switch (lhs.node, rhs.node) {
      case let (left?, right?):
        return left.next === right.next
      case (nil, nil):
        return true
      default:
        return false
      }
    }
    
    static public func <(lhs: Index, rhs: Index) -> Bool {
      guard lhs != rhs else {
        return false
      }
      let nodes = sequence(first: lhs.node) { $0?.next }
      return nodes.contains { $0 === rhs.node }
    }
  }
    
    // 1
    public var startIndex: Index {
      Index(node: head)
    }
    // 2
    public var endIndex: Index {
      Index(node: tail?.next)
    }
    // 3
    public func index(after i: Index) -> Index {
      Index(node: i.node?.next)
    }
    // 4
    public subscript(position: Index) -> Value {
      position.node!.value
    }

}


var listCollection = LinkedList<Int>()
for i in 0...10 {
    listCollection.append(i)
}

print("List: \(listCollection)")
print("First element: \(listCollection[list.startIndex])")
print("Array containing first 3 elements: \(Array(listCollection.prefix(3)))")
print("Array containing last 3 elements: \(Array(listCollection.suffix(3)))")

let sum = listCollection.reduce(0, +)
print("Sum of all values: \(sum)")

//Value semantics and copy-on-write
let array1 = [1, 2]
var array2 = array1

print("array1: \(array1)")
print("array2: \(array2)")

print("---After adding 3 to array 2---")
array2.append(3)
print("array1: \(array1)")
print("array2: \(array2)")

// Append Linked List

var list1 = LinkedList<Int>()
list1.append(1)
list1.append(2)
var list2 = list1
print("List1: \(list1)")
print("List2: \(list2)")

print("After appending 3 to list2")
list2.append(3)
print("List1: \(list1)")
print("List2: \(list2)")

//Unfortunately, your linked list does not have value semantics!

print("List1 uniquely referenced: \(isKnownUniquelyReferenced(&list1.head))")
//var list2 = list1
print("List1 uniquely referenced: \(isKnownUniquelyReferenced(&list1.head))")
