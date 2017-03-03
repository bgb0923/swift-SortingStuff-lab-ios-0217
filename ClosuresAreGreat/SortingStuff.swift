//
//  SortingStuff.swift
//  ClosuresAreGreat
//
//  Created by Ron Don Volante on 10/25/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation


struct ToyBin {
    
    var ships: [Ship] = []
    var books: [Book] = []
    var bowlingPins: [BowlingPin] = []
    var musicCDs: [MusicCD] = []
    
    // TODO: Implement all of the sort functions (lets organize this toy bin!)
    
    mutating func sortShips() {
        self.ships = self.ships.sorted { return $0.name == "Titanic" ? true : $0.age > $1.age }
    }
    
    mutating func sortBooks() {
        self.books = self.books.sorted { $0.name < $1.name }
    }
    
    mutating func sortBowlingPins() {
            self.bowlingPins = self.bowlingPins.sorted { $0.color.rawValue < $1.color.rawValue }
    }
    
    mutating func sortMusicCDs() {
        self.musicCDs = self.musicCDs.sorted { return $0.name == "Drake" ?  true : $0.name < $1.name }
    }
    
    mutating func changeColorOfAllPins(to color: Color) {
        self.bowlingPins = self.bowlingPins.map {
            var pin = $0
            pin.color = color
            return pin
        }
    }
    
    
}


struct Ship {
    var name: String
    var age: Int
}


struct Book {
    var name: String
    var year: Int
    var author: String
}


struct BowlingPin {
    var name: String
    var film: String
    var color: Color
}


extension BowlingPin {
    mutating func changeColor(to color: Color) {
        self.color = color
    }
}


enum Color: Int {
    case red, orange, yellow, green, blue, indigo, violet
}

struct MusicCD {
    var name: String
    var year: Int
    var songs: [String]
}
