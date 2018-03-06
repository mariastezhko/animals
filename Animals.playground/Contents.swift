//: Playground - noun: a place where people can play

import UIKit

class Animal {
    var name: String
    var health: Int
    init(name: String) {
        self.name = name
        self.health = 100
    }
    func displayHealth() {
        print(self.health)
    }
}

class Cat: Animal {
    override init(name: String) {
        super.init(name: name)
        self.health = 150
        
    }
    func growl() {
        print("Rawr!")
    }
    func run() {
        print("Running")
        self.health -= 10
    }
}

class Cheetah: Cat {
    override func run() {
        if self.health >= 50 {
        print("Running Fast")
        self.health -= 50
        }
        else {
            print("Not enough health to run")
        }
    }
    func sleep() {
        self.health += 50
    }
}

class Lion: Cat {
    override init(name: String) {
        super.init(name: name)
        self.health = 200
    }
    override func growl() {
        print("ROAR!!! I am the King of the Jungle")
    }
}

var cheetah = Cheetah(name: "Bob")
cheetah.run()
cheetah.run()
cheetah.run()
cheetah.run()
print(cheetah.health)

var lion = Lion(name: "Tom")
lion.run()
lion.run()
lion.run()
lion.growl()



