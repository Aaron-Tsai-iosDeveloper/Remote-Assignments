import UIKit
//week1 v2.0  修正 Git & GitHub 3, Collection 5、12、13, Control Flow 2、3、4、5
//Part 1: Git & GitHub
 //2. Here are some Git and GitHub commands we usually use in software development. Please explain the meanings and use cases of them.
  //● git status
   //查詢資料夾狀態
  //● git add
   //添加資料至暫存區
  //● git commit
   //提交資料至數據庫
  //● git log
   //顯示版本歷程紀錄
  //● git branch
   //建立分支
  //● git push [ repo_name ] [ branch_name ]
   //將資料從本地數據庫上傳遠端數據庫 
  //● git remote -v
   //顯示遠端數據庫的詳細情況 
  //● fork
   //將完整專案複製到自己帳號

 //3. Please describe how to establish a GitHub repo and how to upload the local projects to GitHub. Try to explain your answers with as much detail as possible.
   //establish a GitHub repo:登入GitHub 點選 "New Repository"設定名稱與描述，可以勾選添加Readme、License、哪些檔案忽略不加入版本控制
   //(已經安裝好Git)打開終端機輸入 cd desktop -> git clone "Repo Https"
   //cd "Repo name" (-> ls 顯示資料夾內的檔案 -> git log 確認提交歷程 )
   //git remote -vv 顯示當前設置的遠端數據庫  (-> git remote add origin "Repo Https" 添加遠端數據庫 )
   //vim readme.mk 編寫說明文件 vim license 編寫授權許可 (按I開始編輯 Escape ＋ :wq 退出並保存)
   //git status 確認資料夾狀態 git add 將資料加入暫存區 git commit 將資料提交本地數據庫
   //git push --set-upstream origin main 建立本地branch與關聯遠端Repo的關聯
   //git push 將資料推送至遠端

//Part 2: Basic
 //1. Please explain the difference between let and var .
  //let宣告常數(不可再改變) var宣告變數(可再變動)

 //2. In Swift, we usually define a variable through the syntax as below:
  //var x: Int = 10
  //We use the formula: 2 * radius * Pi to calculate the circumference. Now, please define a variable Pi and assign a value to it. You can refer to the syntax above while thinking about using var or let and which data type it should be.
   var Pi: Double = 3.14159
 
 //3. Create two constants x and y of type Int then assign any value to them. After that, please calculate the average of x and y and store the result in a constant named average.
   let x: Int = 90
   let y: Int = 80
   let average:Int = (x+y)/2

 //4. Following Q3, now we want to save the average in a record system, but the system doesn’t accept 65 but 65.0.
  //● Please solve this problem so that we can put the average in the record system.
  //● Please explain the difference between ( 10 / 3 ) and ( 10.0 / 3.0 ).
   let x2: Double = 90
   let y2: Double = 80
   let average2:Double = (x2+y2)/2
   //( 10 / 3 )型別是整數Int and ( 10.0 / 3.0 )型別是浮點數Double
 
 //5.Declare two constants that values are 10 and 3 each, then please calculate the remainder and save the result in a constant named remainder .
   let a: Int = 10
   let b: Int = 3
   let remainder: Int = a % b

 //6. Swift is a very powerful language that can infer the data type for you ( Type Inference ) while we still need to know the basics well. Please change the following codes into the ones with the data type.
 //Ex:.varx=10.=>.varx:Int=10.
   var flag:Bool = true
   var inputString:String = "Hello world."
   let bitsInBite:Int = 8
   let averageScore:Double = 86.8
 
 //7. What is Type Inference in Swift?
   //型別推論(Type Inference):如果沒有定義型別，Swift會依據我們賦予的預設值來推論型別。

 //8. What is the issue about this piece of code?
  //var phoneNumber = 0987654321
  //phoneNumber = "Hello world."
   //宣告變數phoneNumber時沒有定義型別，Swift推論為Int.變數phoneNumber型別為Int，無法放入字串String。

 //9. Compound assignment operators are very useful when programming. Please create a salary as 22000, and use unary plus operator adding 28000 to salary, so it will be 50000 after this process.
   var salary:Int = 22000
   salary+=28000
   print(salary)

 //10. You should notice that ‘=’ has a different meaning in programming. In the real world, .‘=’ means equal while In programming, ‘=’ means assign . You simply put the right hand side data into the left hand side variable or constant.
 //Now please write down the Equality operator in Swift.
   // == 相等運算子

//Part 3: Collection
//You should know how to declare an array in Swift, and also how to add, remove, insert, read an object in an array. You should be familiar with the following syntax: append , .insert , remove .
//Arrays are dangerous in Swift. If you access the array with an index which is out of range, your app will crash with fatal error. Please interact with the array very carefully.
 
 //1. Please create an empty array with String data type and save it in a variable named myFriends
   var myFriends:[String]=[]

 //2. According to Q1, now I have three friends, ‘Ian’, ‘Bomi’, and ‘Kevin’. Please help me to add their name into myFriends array.
   myFriends.append("Ian")
   myFriends.append("Bomi")
   myFriends.append("Kevin")
   print(myFriends)

 //3. Oops,I forgot to add ‘Michael’ who is one of my best friends, please help me to add Michael to the end of myFriends array.
   myFriends.append("Michael")
   print(myFriends)
 
 //4. Because I usually hang out with Kevin, please move Kevin to the beginning of the .myFriends array.
   myFriends.remove(at: 2)
   myFriends.insert("Kevin", at: 0)
   print(myFriends)

 //5. Use for...in to print all the friends in myFriends array.
   for count in 0...3 {
    print(myFriends[count])
   }
 
 //6. Now I want to know who is at index 5 in the myFriends array, try to find the answer for me. Please explain how you get the answer and why the answer is it.
   //Index0..3->"Kevin"、"Ian"、"Bomi"、"Michael" //陣列中 index 5 並沒有對應的elemnet
   //let index5 = myFriends[5] //可以透過Subscript-Getter的方式驗證
   //print(index5) //console顯示：Index out of range
 
 //7. How to get the first element in an array?
   let firstElement = myFriends.first

 //8. How to get the last element in an array?
   let lastElement = myFriends.last

 //9. Please create a dictionary with keys of type String, value of type Int, and save it in a variable named myCountryNumber .
   var myCountryNumber = [String:Int]()
 
 //10. Please add three keys ‘US’, ‘GB’, ‘JP’ with values 1, 44 , 81.
   myCountryNumber ["US"] = 1
   myCountryNumber ["GB"] = 44
   myCountryNumber ["JP"] = 81

 //11. Change the ‘GB’ value from 44 to 0.
   
   myCountryNumber ["GB"] = 0
   
   var newGB = myCountryNumber["GB"]
   print(newGB)

 //12.How to declare an empty dictionary?
   // var dictionaryName = [keyType: valueType]()
    //感謝Steven很仔細用心的批改作業! 我才發現把 ： 打成 ,
   // var dictionaryName = Dictionary<keyType, valueType>()
   // var dictionaryName: [keyType: valueType] = [:]

 //13. How to remove a key-value pair in a dictionary?
 //請寫出remove GB & JP 的寫法
   // let removedValue = dictionary.removeValue(forKey:"") -> 可以獲取被刪除的key所對應的value
   // dictionary[""] = nil
   let removedGBValue = myCountryNumber.removeValue(forKey:"GB")
   myCountryNumber["JP"] = nil
   print(myCountryNumber ["GB"])
   print(myCountryNumber ["JP"])

//Part 4: Control Flow
 //1. Here is an array:
   let lottoNumbers = [10, 9, 8, 7, 6, 5]
 //Please use For-In loop and Range to print the last three members in thel lottoNumbers array.
   for index in 3..<lottoNumbers.count{
   var lotto = lottoNumbers[index]
   print(lotto)
   }
 
 //2. Please use a for-in loop to print the results as the images listed below respectively (through lottoNumbers):
 //image ->5 6 7 8 9 10 10 8 6
   var lottoReversed = lottoNumbers.reversed()
   print(lottoReversed)

   for number:Int in lottoReversed{
    print(number)
   }

   for number:Int in lottoNumbers{
       if (number % 2 == 1){continue}
         print(number)
   }
 
 //3. Please use a while loop to solve the Q2.
   var s = 0
   while s < 6{
    var number = lottoNumbers.reversed()[s]
    print(number)
    s+=1
   }

   s = 5
   while s > 0 {
    var number = lottoNumbers.reversed()[s]
    print(number)
    s-=2
   }

 //4.Please use a repeat-while loop to solve Q2.
   
   s = 0
   repeat{
    var number = lottoNumbers.reversed()[s]
    print(number)
    s+=1
   }while s < 6
  
   s = 5
   repeat{
    var number = lottoNumbers.reversed()[s]
    print(number)
    s-=2
   }while s > 0

 //5.What are the differences between while and repeat-while?
   //while 先進行條件判斷，如果為true，才開始執行迴圈。
   //repeat-while 先執行一次程式，接著條件判斷為true，才開始執行迴圈。

 //6.Here is the variable isRaining to record the weather. Please write a statement that if the weather is raining, print “It’s raining, I don’t want to work today.”, otherwise print “Although it’s sunny, I still don’t want to work today.”
   let isRaining: Bool = true
   if isRaining {print("It’s raining, I don’t want to work today.")}
   else{print("Although it’s sunny, I still don’t want to work today.")}
   
 //7. In a company, we usually use numbers to represent job levels. Let’s make an example. There are four job levels: Member, Team Leader, Manager, and Director. We use 1 for the Member, 2 for Team Leader, 3 for Manager, and 4 for Director. Now, create a variable name jobLevel and assign a number to it. If the jobLevel number is in our list, print the relative job title name; if not, just print “We don't have this job”. Please use a switch statement to complete this requirement.

   var jobLevel = 0
   switch jobLevel{
   case 1:"Member"
   case 2:"Team Leader"
   case 3:"Manager"
   case 4:"Director"
   default:"We don't have this job"
   }


//Part 5: Function
 //1.What are the return types in the following statements?
  //func birthday( ) -> String{} //回傳值為String字串
  //func payment( ) -> Double {} //回傳值為Double浮點數

 //2.Please declare a function named multiply with two arguments a and b . This function won’t return any value and will only print out the result of a * b . Be noticed that we want to give argument b a default value of 10.
   func multiply(a:Int, b:Int = 10)->Void{
   let result:Int = a*b
   print(result)
   return Void()
   }

 //3.What’s the difference between argument label and parameter name in a function?
   //argument label 外部參數名稱 parameter name 內部參數名稱
   //宣告函數使用內部參數，呼叫時使用外部參數增加程式的易讀性
   //宣告函數撰寫順序為 外部參數＋空格＋內部參數。外部參數可以省略，swift會自動產生與內部參數名稱相同的外部參數

 //Please declare a function named greet with person as an argument label and name as a parameter name. This greet function will return  a String.For examplem,if you call the function greet like this:
 //greet(person: "Luke")
 //It will return the string: “Hello, Luke”.

func greet(perosn name: String)->String{
 return "Hello," + name + "."
}
print(greet(perosn: "Luke"))

//week1 v2.0  修正 Git & GitHub 3, Collection 5、12、13, Control Flow 2、3、4、5
//謝謝 Steven ! 😀




   










    
