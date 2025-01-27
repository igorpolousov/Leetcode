import UIKit

/*
 

 Implement a last-in-first-out (LIFO) stack using only two queues. The implemented stack should support all the functions of a normal stack (push, top, pop, and empty).

 Implement the MyStack class:

 void push(int x) Pushes element x to the top of the stack.
 int pop() Removes the element on the top of the stack and returns it.
 int top() Returns the element on the top of the stack.
 boolean empty() Returns true if the stack is empty, false otherwise.
 Notes:

 You must use only standard operations of a queue, which means that only push to back, peek/pop from front, size and is empty operations are valid.
 Depending on your language, the queue may not be supported natively. You may simulate a queue using a list or deque (double-ended queue) as long as you use only a queue's standard operations.
 
 
 Example 1:

 Input
 ["MyStack", "push", "push", "top", "pop", "empty"]
 [[], [1], [2], [], [], []]
 Output
 [null, null, null, 2, 2, false]

 Explanation
 MyStack myStack = new MyStack();
 myStack.push(1);
 myStack.push(2);
 myStack.top(); // return 2
 myStack.pop(); // return 2
 myStack.empty(); // return False
 
 */

/*
 * Your MyStack object will be instantiated and called as such:
 * let obj = MyStack()
 * obj.push(x)
 * let ret_2: Int = obj.pop()
 * let ret_3: Int = obj.top()
 * let ret_4: Bool = obj.empty()
 */

// Zu einfach

class MyStack {
    
    var myStack: [Int]
    
    init(myStack: [Int] = []) {
        self.myStack = myStack
    }
    
    func push(_ x: Int) {
        myStack.insert(x, at: 0)
    }
    
    // Удалить элемент и вернуть его значение
    func pop() -> Int {
        var retVal = myStack[0]
        myStack.remove(at: 0)
        return retVal
    }
    
    // Вернуть верхний элемент
    func top() -> Int {
        var retVal = myStack[0]
        return retVal
    }
    
    func empty() -> Bool {
        var retVal = myStack.isEmpty
        return retVal
    }
}

let obj = MyStack()

obj.push(1)
obj.push(2)
obj.top()
obj.pop()
obj.empty()
