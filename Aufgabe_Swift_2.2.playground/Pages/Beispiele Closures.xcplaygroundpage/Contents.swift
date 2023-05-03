import Cocoa
// Closures mit Parameter
let sayHello = {(name: String) in
    print("Hello \(name) ")
}
sayHello("Dennis")
// Closures mit Parameter und Rückgabewert
let message = {(name: String) -> String in
    return "Hello \(name)"
}
print(message("Dennis"))

/*
 Funktion mit Funktion als Parameter.
 transport ist eine Variable, die eine Funktion ohne Parameter und Rückgabewert verlangt. die Funktion muss also z.B. so aussehen:
 func deineFunktion() {
        //Hier dein Code
 }
 transport lässt sich dann wie eine Funktion anwenden.
 */
func travel(transport: ()-> Void) {
    
    print("Meine Reise beginnt")
    transport()
    print("Ich bin am Ziel angekommen")
}
/* Da travel ein Funktion als Parameter erwartet kann man die folgende schreibweise verwenden. Die {}-Klammern definieren jetzt unsere Funktion, die wir übergeben wollen. Die Funktion muss sich dabei allerdings an die Struktur halten. In unserem Fall also () -> Void. Wir haben also keine Parameter oder Rückgabewerte.
*/
travel(){
    print("Ich fahre mit dem Auto los")
}
/* Ihr habt Closures sogar schon mal verwendet. Betrachtet folgendes Beispiel:
    Wir haben die Variable names, die ein Array aus Namen beinhaltet. Das Array wird dann mit der sorted() funktion sortiert. Wenn die Funktion sorted() einfach so aufgerufen wird werden die Namen alphabetisch sortiert (sortedNames).
    Der zweite Aufruf von sorted besitzt nun die Schreibweise mit den {}-Klammern (genannt: Trailing Closures). In den Klammern wurde eine Funktion definiert, die zwei Strings (name1, name2) als Parameter erhält und einen Bool (name1 > name2) zurückgibt. Diese Funktion nimmt sich also immer zwei Elemente aus unserem array names und gibt zurück, ob das erste Element (name1) größer ist als das zweite Element (name2). Intern wird diese Funktion also für alle Paare von namen aufgerufen. Ihr könnt Zeile 41 auskommentieren um euch einen kleinen Einblick zu verschaffen.
 */
var names = ["Stan", "Randy", "Wendy", "Kenny", "Bibi", "Kyle"]
var sortedNames = names.sorted()
print(sortedNames)
var reversedNames = names.sorted{ (name1: String, name2: String ) in
    //auskommentieren um einen kleinen Einblick zu bekommen wie sorted arbeitet
    //print("\(name1) > \(name2): \(name1 > name2)")
    
    return name1 > name2
    
}
print(reversedNames)

//var reversedNames2 = names.sorted{$0 > $1}
//print(reversedNames2)


/*
 Die Schreibweise, die man häufiger sehen wird ist allerdings die folgende:
 var reversedNames2 = names.sorted{$0 > $1}
 die benannten Variablen name1 und name2 werden zu $0 und $1 und in den {}-Klammern steht nur noch der boolische Ausdruck $0 > $1 (name1 > name2). Ihr könnt die Zeilen 48 und 49 auch mal auskommentieren und beide Ergebnisse vergleich. Es sollte allerdings in beiden Fällen das Selbe rauskommen :)
 */
// Hier das Gleiche nur nochmal mit Integern
var numbers = [10,6,42,101,33,87,2,99]
var sortedNumbers = numbers.sorted()
print(sortedNumbers)
var reversedNumbers = numbers.sorted{$0 > $1}
print(reversedNumbers)

//Weiteres Beispiel für Funktionen als Parameter
func makeDictionary(generateDict: () -> [String: String] ) -> [String: String] {
    return generateDict()
}

let newDict = makeDictionary{
    return ["name": "Michael",
            "Job": "Manager",
            "hairColor": "Black"]
}
print(newDict)
