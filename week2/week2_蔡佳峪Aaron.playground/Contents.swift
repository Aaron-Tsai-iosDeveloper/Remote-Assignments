import UIKit

//Part 1: Object-Oriented Swift
 //1. Declare a class Animal with a property gender and a method eat(). The data type of should be enum Gender as below and when you call eat() method, it will print
   class Animal {
    enum Gender：String {
     case male
     case female
     case undefined
    }
    
    var gender:String
    
    init(gender:String){
     self.gender = gender
    }
    func eat(){
     print("I eat everthing!")
    }
   }
  
 //2. Declare three classes: Elephant, Tiger, Horse that inherits from Animal and override the eat() method to print what they usually eat.
   class Elephant: Animal {
    override init(gender:String) {
     super.init(gender:gender)
    }
    override func eat(){
     print("I eat plants")
    }
   }
   class Tiger:Animal{
    override init(gender: String) {
        super.init(gender: gender)
    }
    override func eat() {
        print("I eat meat")
    }
   }
   class Horse:Animal{
    override init(gender: String) {
        super.init(gender: gender)
    }
    override func eat() {
        print("I eat plants")
    }
   }
 
 //3.Declare a class Zoo with a property weeklyHot which means the most popular one in the zoo this week. The codes below can’t work correctly, please find what data type should A be and solve the problem. Note that tiger, elephant, and horse are instances of class Tiger, Elephant, and Horse, respectively.
   

 //4. What’s the difference between Class and Struct?
  //Class是Reference Type，並且可以繼承類別的屬性與方法
  //Struct是Value Type，沒有類似繼承的特性

 //5. What does Initilizer do in class and struct?
  //Initilizer初始化是設置實例時用於設定屬性的初始值，可以透過關鍵字init來定義初始化的方法。

 //6. What’s the difference between reference type and value type?
  //reference type 與 value type 最大差別在於 傳遞資料的形式，reference type是共用同一個實例，value type則是複製新的實例
 
 //7. What’s the difference between instance method and type method?
  //instance method需要先有實例才能呼叫，type method 用static func 來定義，可以直接透過類別呼叫使用
 
 //8. What does self mean in an instance method and a type method respectively?
  //在instance method中self代表當前的實例，在type method中self指的是類別本身

//Part 2: Enumerations and Optionals in Swift
 //1. There are several gasoline types, 92, 95, 98, and diesel that we can use enum to model them.
 //Please create an enum named Gasoline to model gasoline.
 //Every kind of gasoline has its price. Please create a method named getPrice in Gasoline enum that will return different prices depending on different gasoline.
//Please establish raw values for Gasoline. The data type of raw value should be String. For example, Gasoline.oil92.rawValue should be "92”.
   enum Gasoline: String{
    case gasoline92 = "92汽油" 
    case gasoline95 = "95汽油"
    case gasoline98 = "98汽油"
    func getPrice() ->String{
     switch self{
     case .gasoline92:
         return "這是 \(self.rawValue) 的價格"
     case .gasoline95:
         return "這是 \(self.rawValue) 的價格"
     case .gasoline98:
         return "這是 \(self.rawValue) 的價格"
     }
    }
   }
   var gasoline = Gasoline.gasoline95
   let price = gasoline.getPrice()
   print(price)
  
 //Please explain what enum associated value is and how it works.
  //associated value能夠讓列舉的case關聯一個值，讓列舉附加更多資訊。
  //例如 case gasoline92(todayPrice:String)，可以用 Gasoline.gasoline92(todayPrice:"92汽油的今日價格")表示92汽油的價格

 //2. Optional is a very special data type in Swift . Take var a: lnt？ = 10 for example, the value of a will be nil or lnt. You should have learned how to deal with Optional.
 
 //People would like to have pets, but not everyone could have one. Declare a class Pet with name property and a class People with pet property which will store a Pet instance or nil. Please try to figure out what data type is suitable for these properties in Pet and People.
   class Pets {
    var name:String
    init(name:String){self.name = name}
   }
   class People:Pets{
    var pet:Pets?
    init(pet:Pets?){
     self.pet = pet
        super.init(name: pet?.name ?? "") //pet?-> p是小寫表示類別Pets的實例 //??-> 若pet?.name = nil , 則回傳空字串""
    }
   }
 //Please create a People instance. Use guard let to unwrap the pet property and print its name.
    var petName = Pets(name: "皮卡丘")
    var personWithPets = People(pet: petName)
    
    guard let personWithPets =
    else
 //Please create another People instance. Use if let to unwrap the pet property and print its name.
    func unwrapAnotherPeole (pet:Pets?){
        if let unwrappedPet:Pets? = pet {print("寵物名稱 \(unwrappedPet)"}
    }
    else {print("沒有寵物")}
 //

//Part 3: Protocol in Swift
 //1. Declare a struct Person with a name property type String and a protocol name PoliceMan. There is only one method arrestCriminals with no argument and return void in the protocol.
   protocol PoliceMan{
    func arrestCriminals()->Void{
    }
   }
                                    
   struct Person: PoliceMan {
     var name:String
      init(name:String){self.name = name}
     func arrestCrimanals(){}
   }
   let person = Person(name:"David")
   person.arrestCrimanals()
   print(person.name)
            
 //2. Make struct Person conform to PoliceMan protocol.
 //3. Declare a protocol ToolMan with a method fixComputer that has no argument and return void.
 //4. Add a property toolMan to the struct Person with data type ToolMan.
 //5. Declare a struct named Engineer that conforms to the ToolMan protocol.
 //6. Create a Person instance with the name “Steven” and also create the relative data you need to declare this instance.

//Part 4: Error Handling in Swift
 //Read the code above first and paste it in the playground file, there is an error inside the code. Please solve the error by adding a piece of code in the file. Call guess(number:) and pass 20 as the argument after you fix the problem.
   enum GuessNumberGameError {
    case wrongNumber
   }
   class GuessNumberGame {
    var targetNumber = 10
    func guess(number: Int) throws {
     guard number == targetNumber else {
      throw GuessNumberGameError.wrongNumber
     }
    print("Guess the right number: \(targetNumber)")
    }
   }

//抱歉Steven，還沒處理好的部分我會盡快完成push上去😔
