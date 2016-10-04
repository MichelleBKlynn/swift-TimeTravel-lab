//
//  ViewController.swift
//  TimeTravel
//
//  Created by James Campagno on 10/4/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    }
    
    enum Speed: Double {
        case none = 0.0
        case slow = 50
        case medium = 150
        case fast = 1000
        case lightSpeed = 1000000
        
        init(spaceSpeed: Double) {
            switch spaceSpeed {
            case 0...49:
                self = .none
            case 50...149:
                self = .slow
            case 150...999:
                self = .medium
            case 1000...999999:
                self = .fast
            default:
                self = .lightSpeed
            }
        }
        
        var isLightSpeed: Bool { return self == .lightSpeed }
        
        func isFaster(than speed: Speed) -> Bool { return self.rawValue > speed.rawValue }
        
    }
    
    enum Weather {
        case cold, warm, hot, superDuperHot
    }
    
    enum Planet: Int {
        case mercury = 1, venus, earth, mars, jupiter, saturn, uranus, neptune
        
        var hasLife: Bool { if self == .mars || self == .earth { return true } else { return false } }
        var weather: Weather { if self == .earth { return .warm } else { return .cold }
            
        }
        
}

class SpaceShip {
    var name: String
    var speed: Speed = .none
    var currentPlanet: Planet
    var description: String { return "\(currentPlanet)" }
    
    init(name: String, planet: Planet) {
        
        self.name = name
        self.currentPlanet = planet
        
    }
    
    func timeTravel() -> Bool {
        if self.speed.isLightSpeed {
            return true
        } else {
            return false
        }
    }
    
    func 
    
}





