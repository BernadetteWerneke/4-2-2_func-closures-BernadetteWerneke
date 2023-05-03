#  Swift Woche 4, Tag 2: Funktionen & Closures

# Aufgabe 01: Funktionen

- 1.1 Gucke dir die Funktionen `showMyName()` , `showAnyName()` und `yourNameIs()` an. Die Ausgabe in der Konsole ist bei allen gleich, allerdings unterscheiden sich die ()-Klammern. Schreibe als Kommentar was diese Unterschiede bewirken und in welchen Situationen sich die jeweiligen Schreibweisen am besten eignen.
 
- 1.2. Schreibe als nächstes eine Funktion namens `getNameAndAge()`. Diese Funktion soll einen Tupel mit folgender Form als Rückgabe haben: (String, Int). Der String soll der Name und der Int das Alter einer Person darstellen. Lasse die Funktion folgendes Tupel zurückgeben: ("John", 33). 

    Swift ermöglicht uns jetzt beim Aufrufen der Funktion die beiden Werte des Tupels in unterschiedliche Variablen zu speichern. Kommentiere Zeile 30 aus und verwende die Variablen, um die Werte in der Konsole auszugeben. 

- 1.3 Erstelle eine Funktion, die uns dabei helfen soll herauszufinden ob eine Zahl gerade ist oder nicht. Die Funktion erwartet also einen Int als Parameter und gibt einen Bool als Rückgabewert zurück.

    **Hinweis:** Um herauszufinden ob eine Zahl gerade ist, kann man den Modulo-Operator (%) verwenden. Jede gerade Zahl lässt sich durch 2 teilen ohne einen Rest zu hinterlassen.  
        
    **Beispiel**: 10 % 3 = 1    | Das Ergbniss ist hier 1, da 10 geteilt durch 3 einen Rest von 1 hat.
            
- Bonus:  Erstelle jetzt eine weitere Funktion, die ein Array aus Integern durchläuft und jede gerade Zahl printen soll. 
        Überlege dir ob Parameter und/oder Rückgabewerte hier sinnvoll wären (Es gibt mehrere Lösungen). 
        
  **Hinweis:** Verwende die erste Funktion um zu überprüfen, ob die Zahlen gerade sind oder nicht.  

 # Aufgabe 02: Weitere Funktionen
 
  - Auch in dieser Aufgabe beschäftigen wir uns mit Funktionen. Es wurde schon eine user Variable angelegt, die ein Dictionary mit Informationen eines Users beinhaltet (username, passwod und city). Folgende Funktionen sollen jetzt geschrieben werden:
  
    - 2.1 Erstelle eine Funktion, die überprüfen soll, ob das richtige Passwort eingegeben wurde. Die Funktion soll ein Passwort als Parameter übergeben bekommen und dieses mit dem Passwort des users vergleichen. Falls das Passwort richtig ist soll eine Willkommensnachricht geschrieben werden (print in der Konsole), ansonsten ein Text welcher auf das falsche Passwort hinweist. 
    
    - 2.2 Außerdem soll es eine Funktion geben, die den Usernamen verändern kann. Diese Funktion erhält den neuen Namen als Parameter und schreibt diesen in das entsprechende Feld des users.
    
        **Hinweis:** Mit den Keys vom Dictionary lässt sich auf die Elemente zugreifen -> user["city"] 
        
 
 
 # Aufgabe 03: Anwenden von Closures
 
In dieser Aufgabe geht es darum, sich mit Closures vertaut zu machen. Gucke dazu auch gerne in die Beispiele im Playground. 
- 3.1 Lege eine Variable namens `showFavMovie` an, die eine Closure abspeichern soll. Inerhalb der Closure soll ein print-Befehl mit folgender Nachricht aufgerufen werden: "Mein Lieblings Film ist X" . Für das X könnt ihr euren Lieblingsfilm eintragen. Verwende die Variable `showFavMovie` jetzt wie eine Funktion um die Nachricht in der Konsole anzeigen zu lassen.  

- 3.2 In der vorherigen Aufgabe haben wir eine Closure ohne Parameter verwendet. Wir können unseren Lieblingsfilm also in der Konsole printen lassen. Der nächste Schritt ist jetzt eine Variable zu erstellen, mit der wir jeden Beliebigen Film in der Konsole ausgeben lassen können. 

    - Dazu erstellen wir eine neue Variable namens `showAnyMovie`. Auch hier verwenden wir jetzt eine Closure, allerdings wollen wir es ermöglichen einen Parameter mitzugeben. Dieser Parameter soll vom Typ String sein und einen beliebigen Film enthalten. Die Closure soll dann folgende Nachricht in der Konsole anzeigen lassen: "Ich möchte mir als nächstes X angucken". X soll jetzt durch euren Parameter ausgetauscht werden. Wie in der vorherigen Aufgabe soll `showAnyMovie` jetzt wie eine Funktion, mit einem passenden Parameter, aufgerufen werden. 

 
- 3.3 Wir wollen jetzt eine Variable erstellen, die einen Würfelwurf darstellt. Lege dazu eine Variable an und verwende Closures um der Variable zu ermöglichen einen zufälligen Wert auszuwürfeln. Die Variable soll einen Parameter erhalten (Anzahl an Würfelseiten als Int) und einen Int zurückgeben (gewürfeltes Ergebniss). 

  Wenn wir als Parameter also eine 6 übergeben, soll der Rückgabewert eine Zahl zwischen 1 und 6 sein, bei einem Parameterwert von 20 soll es eine Zahl    zwischen 1 und 20 sein, usw...
        
    **Hinweis:** Um eine zufällige Zahl zwischen 1-6 zu erhalten verwende: Int.random(in: 1...6) 
        
- 3.4 Als nächstes sollt ihr euch an der schon vorhandenen Funktion filter versuchen. Diese Funktion lässt sich genau wie sorted auf Arrays anwenden (array.filter{}). Verwende die Funktion um das gegebene Dictionary movies nach den besten Filmen zu filtern. 

    Hier bedeutet beste Filme: Alle Filme mit einer Bewertung von mindestens 8.0.
        Schaue dir dazu gegebenen Falls auch die Dokumentation zur Filter-Funktion an. 
        
- Bonus:  In der letzten Aufgabe soll eine Funktion namens makeArray erstellt werden, die ein Array aus Integern erzeugen kann. Das Array soll aus 5 Elementen bestehen ([x1,x2,x3,x4,x5]). Das Array mit den Elementen soll jetzt aber über eine Funktion generiert werden, die der makeArray-Funktion übergeben wird. 

    Die Funktion zum generieren soll dabei folgende Struktur besitzen: () -> [Int]. Sie besitzt also keine Parammeter und gibt ein Array aus Integern zurück. Die Idee ist jetzt, dass in der makeArray-Funktion die generator-Funktion aufgerufen wird. makeArray() gibt das Ergebniss der generator-Funktion dann als Rückgabe zurück. Gucke dir dazu sonst das Beispiel im Playground an.
    
   Erstelle jetzt eine neue Variable in der du das Ergebniss von makeArray abspeicherst und übergebe makeArray dabei in den {}-Klammern deine generator-Funktion. 
        
    **Bonus:** Implementiert die generator-Funktion auf mehrere Weisen, z.B. lasst euch ein Zufälliges Array generieren oder ein Array aus geraden Zahlen.
        
