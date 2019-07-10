//
//  Aviatrix.swift
//  AviatrixApp
//
//  Created by Amy Holt on 6/10/18.
//  Copyright © 2018 Amy Holt. All rights reserved.
//

import Foundation

class Aviatrix {
    
    var currentLocation = "St.Louis"
    
    //saying who created this plane and airline
    //I have a property called author
    var author : String
    init(myAuthor: String){
        author = myAuthor
    }
    
    //this function should tell us if the airplane is running or not
    var running = false
    
    //saying how much the airplane travaled
    var distanceTraveled = 0
    
    var maxFuel = 5000
    
    var fuelLevel = 5000.0
    
    var milesPerGallon = 0.4
    
    //starts the airplane, so it means it's running
    func start() -> Bool { //Bool stands for Boolean which means true or false
        running = true
        return running
    }
    
    func refuel() -> Double {
        return 0.0
        
        
    }
    
    func flyTo(destination : String) {
        distanceTraveled += distanceTo(target: destination, current: currentLocation)
        currentLocation = destination
        
    }
    
    //I want to tell every plane that I create from this class how far places are
    //I need the place and distance
    func distanceTo(target : String, current: String) -> Int {
        //I need to get information from the aviatrixdata file
        let data = AviatrixData()
        return data.knownDistances[current]![target]!
        //swift uses ! to mean not, but it also uses it to say that I know there is definitely data here
    }
    
    //I want to tell every plane that I create from the aviatrix class where they can fly
    func knownDestinations() -> [String] {
        //change this function so I can return all the options for destinations
        //I need to get information from the aviatrixdata.swift file
        let data = AviatrixData()
        //I called the aviatrixdata class
        return Array(data.knownDistances.keys)
        //I stored all of the keys or destinations in an array
    }
}
