//
//  CommandPatternCode.swift
//  Design Patterns
//
//  Created by Lewis on 09.04.2024.
//

enum CommandPatternCode {
    
    static let code = """
protocol Command {
    func execute()
}
 
class Receiver {
    func action() {
        print("Performing the requested action")
    }
}
 
class ConcreteCommand: Command {
    var receiver: Receiver
    
    init(receiver: Receiver) {
        self.receiver = receiver
    }
    
    func execute() {
        receiver.action()
    }
}
   
class Invoker {
    var command: Command
    
    init(command: Command) {
        self.command = command
    }
    
    func invoke() {
        command.execute()
    }
}
 
let receiver = Receiver()
let command = ConcreteCommand(receiver: receiver)
let invoker = Invoker(command: command)
invoker.invoke() // Output: "Performing the requested action"
"""
}
