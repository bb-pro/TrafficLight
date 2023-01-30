//
//  ViewController.swift
//  TrafficLight
//
//  Created by Bektemur on 30/01/23.
//

import UIKit


class ViewController: UIViewController {
    
    private let circle: CGFloat = 50

    
    
    @IBOutlet var redLight: UIView!
    @IBOutlet var yellowLight: UIView!
    @IBOutlet var greenLight: UIView!
    @IBOutlet var nextButton: UIButton!
    
 
    
    
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nextButton.layer.cornerRadius = 10
        
        redLight.layer.cornerRadius = circle
        yellowLight.layer.cornerRadius = circle
        greenLight.layer.cornerRadius = circle
        
        turnOff(redLight)
        turnOff(yellowLight)
        turnOff(greenLight)
    }

    @IBAction func nextButtonTapped() {
    
        if isOn(redLight) {
            turnOff(redLight)
            turnOn(yellowLight)
        } else if isOn(yellowLight) {
            turnOff(yellowLight)
            turnOn(greenLight)
        } else if isOn(greenLight) {
            turnOff(greenLight)
            turnOn(redLight)
        } else {
            turnOn(redLight)
        }
        
    }
    
    
    private func isOn(_ light: UIView!) -> Bool {
        if light.alpha.isEqual(to: 1) {
            return true
        } else {
            return false
        }
    }
    
    private func turnOff (_ light: UIView) {
        light.alpha = 0.3
    }
    
    private func turnOn (_ light: UIView) {
        light.alpha = 1
    }
    
    
    }



