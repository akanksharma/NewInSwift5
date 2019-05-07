import UIKit
import Foundation

//Raw strings
var str = "Hello, playground"
let rain = #"the "rain"  in "Spain""#

let keypaths = #"Swift keypaths \Person.name hold uninvoked references to properties."#

let answer = 42
let dontpanic = #"The value of var answer is \#(answer)"#

let strWithHash = ##"This is string with "qutoes"#hash and so I a have used double '#'s as string teminator."##

let multiline = #"""
This is the #value to,
"var"#answer is \#(answer),
 in multiline
"qutoes"#hash
"""#
print(multiline)



//A standard Result type
enum LoginError: Error {
    case wrongCredentials
}

func login(username : String, password : String, completionHandler: @escaping (Result<Bool,LoginError>) -> Void) {
    if username == "akanksha" && password == "sharma"{
        completionHandler(.success(true))
    } else {
        completionHandler(.failure(.wrongCredentials))
    }
}


login(username: "akanksha", password: "sharma") { (result) in
    switch result {
    case .success(let loginSuccessful):
        print("Success : \(loginSuccessful)")
    case .failure(let loginError) :
        print(loginError.localizedDescription)
    }
}


login(username: "akanksha", password: "password") { (result) in
    switch result {
    case .success(let loginSuccessful):
        print("Success : \(loginSuccessful)")
        
    case .failure(let loginError) :
        print("Failure \(loginError.localizedDescription)")
    }
}


struct User {
    var name: String
    var age: Int
}

extension String.StringInterpolation {
    mutating func appendInterpolation( _ value : User){
        appendLiteral("My name is \(value.name) and age is \(value.age)")
    }
    
    mutating func append
}

let user = User(name: "Akanksha", age: 28)
print("User Details \(user)")




