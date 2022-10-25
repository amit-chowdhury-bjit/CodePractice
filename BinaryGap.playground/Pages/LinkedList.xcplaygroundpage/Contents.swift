//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)

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

//class Person {
//    let name:String
//
//    init(_ n: String) {
//        name = n
//    }
//}
//extension Person: CustomStringConvertible {
//    var description: String {
//        return "(\(name))"
//    }
//}
//
//let person = Person("Karim")
//print(person)


  let node1 = Node(value: 1)
  let node2 = Node(value: 2)
  let node3 = Node(value: 3)
  let node4 = Node(value: 4)
  
  node1.next = node2
  node2.next = node3
node3.next = node4
  
  print(node1)



public struct LinkedList<Value> {

  public var head: Node<Value>?
  public var tail: Node<Value>?
  
  public init() {}

  public var isEmpty: Bool {
    head == nil
  }
    
  public mutating func push(_ value: Value) {
    head = Node(value: value, next: head)
    if tail == nil {
      tail = head
    }
  }

    public mutating func append(_ value: Value) {

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
    public mutating func insert(_ value: Value,
                                after node: Node<Value>)
                                -> Node<Value> {
      // 2
      guard tail !== node else {
        append(value)
        return tail!
      }
      // 3
      node.next = Node(value: value, next: node.next)
      return node.next!
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

  var list = LinkedList<Int>()
print(list)

  list.push(3)
  list.push(2)
  list.push(1)
  list.append(5)
  list.append(6)
  
var middleNode = list.node(at: 3)!
for i in 3...4 {
  middleNode = list.insert(i, after: middleNode)
}


//list.insert(4, after:Node(3))
  
  print(list)


//example(of: "append") {
//  var list = LinkedList<Int>()
//  list.append(1)
//  list.append(2)
//  list.append(3)
//
//  print(list)
//}


@discardableResult
func attemptAction(with input: Int) -> Bool {
    // ** attempt some action and determine whether it succeeded **
    let succeeded = (input != 3)
    return succeeded
}
let data = [1,2,3,4,5]

attemptAction(with:5)
print(attemptAction(with:5))
