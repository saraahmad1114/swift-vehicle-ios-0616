//
//  Plane.swift
//  swift-vehicle-lab
//
//  Created by Flatiron School on 7/18/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Plane: Vehicle
{
    let maxAltitude: Double
    var altitude: Double = 0.0
    var inFlight: Bool{
        if speed > 0 && altitude > 0
        {
            return true
        }
        else
        {
            return false
        }
    }
    
    init(name: String, weight: Double, maxSpeed: Double, maxAltitude: Double) {
        self.maxAltitude = maxAltitude
        super.init(name: name, weight: weight, maxSpeed: maxSpeed)
    }
    
    func takeoff()
    {
        if !inFlight
        {
            speed += ((0.10) * maxSpeed)
            altitude += ((0.10) * maxAltitude)
        }
    }
    
    func land()
    {
        speed = 0
        altitude = 0
    }
    
    func climb()
    {
//        if altitude < maxAltitude && inFlight
//        {
//            altitude = ((0.10) * maxAltitude)
//        }
//        else
//        {
//            altitude = maxAltitude
//        }
        if inFlight
        {
            if altitude > 0 && altitude < maxAltitude
            {
               altitude += ((0.10) * maxAltitude)
               decelerate()
            }
            else
            {
                altitude = maxAltitude
            }
        }
    }
    
    func dive()
    {
//        if altitude != 0 && inFlight
//        {
//           altitude -= ((0.10) * maxAltitude)
//           accelerate()
//        }
//        
//        if speed == 0
//        {
//                altitude -= ((0.10) * maxAltitude)
////                accelerate()
//        }
//        else
//        {
//            altitude = maxAltitude
//        }
        if altitude != 0   // so im flying
        {
            if altitude > 0 && altitude < maxAltitude //so within good range
            {
                altitude -= ((0.10) * maxAltitude) //go downwards
                accelerate() //get faster i.e dive
            }
            else //so im on the ground
            {
                altitude = maxAltitude
                speed = altitude
            }
            
            print("altitude \(altitude)")
            print("inFlight \(inFlight)")
        }
    }
    
    func bankRight()
    {
        if inFlight
        {
            if heading < 360
            {
                heading += 45
                speed -= ((0.10) * speed)
            }
            else if heading == 360 || heading == 0
            {
                heading = 90
                speed -= ((0.10) * speed)
            }
        }
    }
    
    func bankLeft()
    {
        if inFlight
        {
            if heading == 0
            {
                heading = 360 - 45
                speed -= ((0.10) * speed)
            }
            else if heading == 45
            {
                heading = 0
                speed -= ((0.10) * speed)
            }
            else
            {
                heading -= 45
                speed -= ((0.10) * speed)
            }
        }
    }
}