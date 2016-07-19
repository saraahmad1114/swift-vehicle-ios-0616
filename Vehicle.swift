//
//  Vehicle.swift
//  
//
//  Created by Flatiron School on 7/16/16.
//
//

import Foundation

class Vehicle {

    let name: String
    let weight: Double
    let maxSpeed: Double
    var speed: Double = 0.0
    var heading: Double = 0.0
    
    //just fact to know if you do not set a value for you immutable properties by setting in the designated initializer you will solve it that way
    init(name: String, weight: Double, maxSpeed: Double)
    {
        self.name = name
        self.weight = weight
        self.maxSpeed = maxSpeed
    }
    
    func goFast()
    {
        speed = maxSpeed
    }
    
    func halt()
    {
        speed = 0
    }
    
    func accelerate()
    {
        if speed < maxSpeed
        {
            speed += (0.10 * maxSpeed)
        }
    }
    
    func decelerate()
    {
        if speed > 0
        {
            speed -= (0.10 * maxSpeed)
        }
    }
    
    func turnRight()
    {
        if speed != 0
        {
            if heading == 0 || heading == 360
            {
            heading = 90
            speed *= 0.50
            }
            else if heading == 90
            {
            heading = 180
            speed *= 0.50
            }
            else if heading == 180
            {
            heading = 270
            speed *= 0.50
            }
        }
    }
    
    func turnLeft()
    {
        if speed != 0
        {
            if heading == 0 || heading == 360
            {
                heading = 270
                speed *= 0.50
            }
            else if heading == 270
            {
                heading = 180
                speed *= 0.50
            }
            else if heading == 180
            {
                heading = 90
                speed *= 0.50
            }
        }
    }
    
}