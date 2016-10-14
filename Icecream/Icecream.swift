//
//  Icecream.swift
//  Icecream
//
//  Created by James Campagno on 9/19/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

class Icecream {
    
    // 1. Create the Dictionary here. The name of the variable should be favoriteFlavorsOfIceCream
    var favoriteFlavorsOfIceCream: [String: String] = [ "Joe": "Peanut Butter and Chocolate",
                                                        "Tim": "Natural Vanilla",
                                                        "Sophie": "Mexican Chocolate",
                                                        "Deniz": "Natural Vanilla",
                                                        "Tom": "Mexican Chocolate",
                                                        "Jim": "Natural Vanilla",
                                                        "Susan": "Cookies \'N\' Cream"
                                                        ]
    
    
    
    
    // 2.
    func names(forFlavor flavor: String) -> [String] {
        var names: [String] = []
        for (nameOnList, flavorOnList) in favoriteFlavorsOfIceCream {
            if flavor == flavorOnList {
                names.append(nameOnList)
            }
        }
        return names
    }
    
    
    
    
    
    // 3.
    func count(forFlavor flavor: String) -> Int {
        var flavorCount: Int = 0
        for (flavorOnList) in favoriteFlavorsOfIceCream.values {
            if flavor == flavorOnList {
                flavorCount += 1
            }
        }
        return flavorCount
    }
    
    
    
    
    
    
    // 4.
    func flavor(forPerson person: String) -> String? {
        if favoriteFlavorsOfIceCream[person] == nil {
            return nil
        } else {
            return favoriteFlavorsOfIceCream[person]
        }
    }
    
    
    
    
    
    
    // 5.
    func replace(flavor: String, forPerson person: String) -> Bool {
        if favoriteFlavorsOfIceCream[person] == nil {
            return false
        } else if favoriteFlavorsOfIceCream[person] == flavor {
            return false
        } else {
            favoriteFlavorsOfIceCream[person] = flavor
            return true
        }
    }
    
    
    
    
    
    
    // 6.
    func remove(person: String) -> Bool {
        if favoriteFlavorsOfIceCream[person] == nil {
            return false
        } else {
            favoriteFlavorsOfIceCream[person] = nil
            return true
        }
    }
    
    
    
    
    
    
    
    // 7.
    func numberOfAttendees() -> Int {
        let number = favoriteFlavorsOfIceCream.count
        return number
    }
    
    
    
    
    
    
    
    // 8.
    func add(person: String, withFlavor flavor: String) -> Bool {
        if favoriteFlavorsOfIceCream[person] == nil {
            favoriteFlavorsOfIceCream[person] = flavor
            return true
        } else {
            return false
        }
    }
    
    
    
    
    
    
    
    
    // 9.
    func attendeeList() -> String {
        let allNames = Array(favoriteFlavorsOfIceCream.keys).sorted()
        var attendees: String = ""
        for index in 0...(allNames.count - 1) {
            for (nameOnList, flavorOnList) in favoriteFlavorsOfIceCream {
                if nameOnList == allNames[index] {
                    if index != (allNames.count - 1) {
                        attendees.append("\(nameOnList) likes \(flavorOnList)\n")
                    } else {
                        attendees.append("\(nameOnList) likes \(flavorOnList)")
                    }
                }
            }
        }
        return attendees
    }
    
    
    
    
    
    
    

}
