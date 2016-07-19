//
//  Racecar.swift
//  swift-vehicle-lab
//
//  Created by Flatiron School on 7/18/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class RaceCar: Car
{
    let driver: String
    var sponsors: [String]
    
    init(name: String, weight: Double, maxSpeed: Double, transmission: String, cylinders: Int, milesPerGallon: Double, driver: String, sponsors: [String])
    {
        self.driver = driver
        self.sponsors = sponsors
        super.init(name: name, weight: weight, maxSpeed: maxSpeed, transmission: transmission, cylinders: cylinders, milesPerGallon: milesPerGallon)
    }
    
    override func accelerate() {
        if speed < maxSpeed
        {
            speed += (0.20) * maxSpeed
        }
    }
    
    override func decelerate()
    {
       if speed > 0
        {
            speed -= (0.20) * maxSpeed
        }
    }
    
    func driftRight()
    {
//       if speed > 0
//        {
//            heading += 90
//            speed += ((0.25) * speed)
//        }
        if speed != 0
        {
            if heading == 0 || heading == 360
            {
                heading = 90
                speed -= ((0.25) * speed)
            }
            else if heading == 90
            {
                heading = 180
                speed -= ((0.25) * speed)
            }
            else if heading == 180
            {
                heading = 270
                speed -= ((0.25) * speed)
            }
            
        }
    }
    
    func driftLeft()
    {
//        if speed > 0
//        {
//            heading -= 90
//            speed -= ((0.25) * speed)
//        }
        if speed != 0
        {
            if heading == 0 || heading == 360
            {
                heading = 270
                speed -= ((0.25) * speed)
            }
            else if heading == 270
            {
                heading = 180
                speed -= ((0.25) * speed)
            }
            else if heading == 180
            {
                heading = 90
                speed -= ((0.25) * speed)
            }
            
        }
    }
}