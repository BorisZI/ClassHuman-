//
//  main.swift
//  ClassHuman(наследование)
//
//  Created by Boris Alexandrov on 15.09.2022.
//

import Foundation

class Human {
    let name: String
    var age = 0
    
    init(name: String) {
        self.name = name
    }
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }

    func walk() {
        print("I can walk")
    }
    
    func sleep() {
        print("I need sleep")
    }
    
    func eat() {
        print("A need food")
    }
}

// Наследование

class Child: Human {
    func nursing() {
        if age <= 5 {
            print("I need care")
        } else {
            print("I can eat independently")
        }
    }
    
    func parenting() {
        if age >= 5 && age <= 13 {
            print("I need education")
        } else if age < 5 {
            print("Me too early to education")
        } else {
            print("Me too late to education")
        }
    }
}

let littleBoy = Child.init(name: "Boris", age: 38)
littleBoy.eat()
littleBoy.sleep()
littleBoy.nursing()
littleBoy.parenting()

class SchoolChild: Child {
    
    
    var friendMyChild: String
    
    init(name: String, age: Int, friendMyChild: String) {
        self.friendMyChild = friendMyChild
        super.init(name: name, age: age)
    }
    
    func schooling() {
        if age >= 6 {
            print("I have to go to school")
        } else {
            print("I'm still too early in school")
        }
    }
}

let kamili = SchoolChild(name: "Kamili", age: 5, friendMyChild: "Boris")
//let kamili = SchoolChild(name: "Kamili", age: 5)
kamili.schooling()
