import Foundation

//TODO: Siehe README im Sources Ordner ganz unten!


// ###################################################################################
//                                  Aufgabe 1
// ###################################################################################

//1.1
//Hier deine Lösung zu Aufgabe 1.1
func showMyName() {
    print("Mein Name ist John") //fixer Satz, immer gleich z.B. bei Kommentaren iwe erledigt
}
showMyName()

func showAnyName(name: String) {
    print("Mein Name ist \(name)")  //Parameterübergabe, flexibel, Namensänderungen möglich
}
showAnyName(name: "John")

// Funktionsaufruf lässt sich besser lesen
func yourNameIs(_ name: String) {
    
    print("Mein Name ist \(name)") //mit "_" kann Parametername weggelassen werden und nur der Value übergeben werden
}
yourNameIs("John")


//1.2
//TODO: Implementiere die Funktion getNameAndAge
func getNameAndAge() -> (String, Int) {
  let name = "John"
  let age = 33
    return (name, age)
}
var (name, age) = getNameAndAge()
print(name, age)

//Verwende folgendes Array für Bonusaufgabe
var arr = [2,15,333,56,90,74,100,47,12,9]

//1.3
func gerade(_ num: Int) -> Bool {
    var x : Bool
    if num % 2 == 0 {
       x = true
    } else {
        x = false
    }
    return x
}
print(gerade(6))

//Bonus
func checkArray(arr: [Int]) {
    for i in arr{
        if (gerade(i)){
            print (i)}
    }
}
checkArray(arr: arr)
