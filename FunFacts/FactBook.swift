//
//  FactBook.swift
//  FunFacts
//
//  Created by Ken Burkhardt on 10/14/16.
//  Copyright © 2016 KenBurkhardt. All rights reserved.
//

import Foundation

struct FactBook {
    let factsArray = [
        "Ants stretch when they wake up in the morning",
        "Ostriches can run faster than horses.",
        "Olympic gold medals are actually mostly made of silver.",
        "You are born with 300 bones; by the time you are an adult you will have 206",
        "It takea bout 8 months for light from the Sun to reach Earth.",
        "Some bamboo plabs can grow almost a meter in just one day.",
        "Some penguins can leap 2-3 meters out of the water.",
        "The state of Florida is bigger than England",
        "On average, it takes 66 days to form a new habit",
        "Mammoths still walked the earth when the Great Oyramid was being built."
    ]


    func randomFact() -> String {
        
        let count = factsArray.count
        let random = Int(arc4random_uniform(UInt32(count)))
        let fact = factsArray[random]
        
        return fact

    }
}
