//
//  Jet.swift
//  swift-vehicle-lab
//
//  Created by Flatiron School on 7/18/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Jet : Plane
{
    override func climb() {
        if altitude < maxAltitude && inFlight
        {
            altitude += ((0.20) * maxAltitude)
            decelerate()
        }
    }
    
    override func dive() {
        if altitude > 0 && inFlight
        {
            altitude -= ((0.20) * maxAltitude)
            accelerate()
        }
    }
    
    func afterburner()
    {
        if inFlight && speed == maxSpeed
        {
            speed = 2 * maxSpeed
        }
    }
}