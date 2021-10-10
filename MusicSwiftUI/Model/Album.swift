//
//  Album.swift
//  Music
//
//  Created by Hernandez, Osmar Alan (external - Project) on 18/05/21.
//

import Foundation

struct Album {
    let title: String
    let tracks: [Track]
    let year: Int
    
    static var highSchoolMusical: Album {
        return Album(
            title: "High School Musical 3: Senior Year",
            tracks: [
                Track(title: "Now Or Never - Original Version", artist: "High School Musical Cast"),
                Track(title: "Right Here, Right Now - Original Version", artist: "High School Musical Cast, Vanessa Hudgens, Zac Efron"),
                Track(title: "I Want It All - Original Version", artist: "High School Musical Cast, Ashley Tisdale, Lucas Gabreel"),
                Track(title: "Can I Have This Dance - Original Version", artist: "High School Musical Cast, Vanessa Hudgens, Zac Efron"),
                Track(title: "A Night to Remember - Original Version", artist: "High School Musical Cast"),
                Track(title: "Just Wanna Be With You - Original Version", artist: "High School Musical Cast, Vanessa Hudgens, Lucas Gabreel, Zac Efron, Olesya Rulin"),
                Track(title: "The Boys Are Back - Original Version", artist: "High School Musical Cast, Corbin Bleu, Zac Efron"),
                Track(title: "Walk Away - Original Version", artist: "High School Musical Cast, Vanessa Hudgens"),
                Track(title: "Scream - Original Version", artist: "High School Musical Cast, Zac Efron"),
                Track(title: "Senior Year Spring Musical - Original Version", artist: "High School Musical Cast, Vanessa Hudgens, Ashley Tisdale, Lucas Gabreel, Zac Efron, Olesya Rulin, Matt Prokop"),
                Track(title: "We're All In This Together (Graduation Mix)", artist: "High School Musical Cast"),
                Track(title: "High School Musical - Original Version", artist: "High School Musical Cast"),
                Track(title: "Just Getting Started", artist: "High School Musical Cast, Stan Carrizosa")
            ],
            year: 2008)
    }
}

struct Track {
    let title: String
    let artist: String
}
