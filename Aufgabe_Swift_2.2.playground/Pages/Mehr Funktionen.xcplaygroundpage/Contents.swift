
import Foundation

// ###################################################################################
//                                  Aufgabe 2
// ###################################################################################
var user: [String: String] = ["username": "TheRealBatman2",
                              "password": "Im Batman",
                              "city": "Gotham",]

//2.1
func passWordCheck(password: String) {
        if password == user["password"]{
            print ("Willkommen!")
        } else {
            print("falsches Passwort")
        }
}
passWordCheck(password: "Im Batman")
passWordCheck(password: "hi")


//2.2
func changeUserName(newUserName: String) {
    user["username"] = newUserName
}
print("before \(user)")
changeUserName(newUserName: "HuiBuh")
print("new: \(user)")
