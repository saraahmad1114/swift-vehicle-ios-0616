//
//  Car.swift
//  swift-vehicle-lab
//
//  Created by Flatiron School on 7/16/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Car: Vehicle
{
    let transmission: String
    let cylinders: Int
    let milesPerGallon: Double
    
    //make sure to call on 
    
    init(name: String, weight: Double, maxSpeed: Double, transmission: String, cylinders: Int, milesPerGallon: Double)
    {
        self.transmission = transmission
        self.cylinders = cylinders
        self.milesPerGallon = milesPerGallon
        super.init(name: name, weight: weight, maxSpeed: maxSpeed)
    }
    
    func drive()
    {
        accelerate()
    }
    
    func brake()
    {
        decelerate()
    }
}