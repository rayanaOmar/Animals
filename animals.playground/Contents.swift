import UIKit

//super class
class Animal{
    var name: String
    var health: Int = 100
    
    init(name: String){
        self.name = name
    }
    
    func displayHealth(){
        print("\(self.name) Health is \(self.health)")
    }
}

//cat class extemd from animal class
class Cat: Animal{
    override init(name: String) {
        super.init(name: name)
        health = 150
    }
    
    func growl(){
        print("Rawr!")
    }
    
    func run(){
        if health > 10{
            print("Running")
            health -= 10
        }
    }
}

//lion class extend from cat class
class Lion: Cat{
    override init(name: String) {
        super.init(name: name)
        health = 200
    }
    
    override func growl() {
        print("ROAR!! I AM THE KING OF THE JUNGLE")
    }
}

//cheetah class extend from cat class
class Cheetah: Cat{
    override func run() {
        if health >= 50{
            print("Running Fast")
            health -= 50
        }else{
            print("You Can not Run, Sleep First!")
        }
    }
    
    func sleep(){
        if(health + 50) <= 200{
            health += 50
        }else{
            print("Max Health Reached")
        }
    }
}
//Main Section

let cheetah = Cheetah(name: "Lion")

cheetah.run()
cheetah.run()
cheetah.run()
cheetah.run()
cheetah.displayHealth()

let lion = Lion(name: "Cheeta")

lion.run()
lion.run()
lion.run()
lion.growl()

cheetah.sleep()
cheetah.displayHealth()


