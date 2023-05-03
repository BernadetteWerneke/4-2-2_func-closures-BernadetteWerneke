import Cocoa

// ###################################################################################
//                                  Aufgabe 3
// ###################################################################################



let movies = ["Hangover": 7.7,
              "Matrix": 8.7,
              "Oldboy": 8.4,
              "Fifty Shades of Grey": 4.2,
              "Inception": 8.8,
              "John Wick": 7.4,
              "Scary Movie": 6.2,
              "Pulp Fiction": 8.9]

//3.1
var showFavMovie = {
    print("Mein Lieblings Film ist Kungfu Panda.")
}
showFavMovie()


//3.2
let showAnyMovie = { (movie: String) in
    print("Ich möchte mir als nächstes \(movie) angucken.")
}
showAnyMovie("Schneewittchen")


//3.3
var wuerfel: (Int) -> Int = { meineZahl in
    return Int.random(in: 1...meineZahl)
}
print(wuerfel(6))
print(wuerfel(20))


//3.4
let bestMovies = movies.filter { $1 >= 8.0 }
print("Beste Filme sind \(bestMovies)")

