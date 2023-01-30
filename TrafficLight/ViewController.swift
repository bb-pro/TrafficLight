//
//  ViewController.swift
//  TrafficLight
//
//  Created by Bektemur on 30/01/23.
//

import UIKit


class ViewController: UIViewController {
    
    private let circle: CGFloat = 50
    private let lightOff: CGFloat = 0.3
    private let lightOn: CGFloat = 1
    
    
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
        turnOn(yellowLight)
        turnOff(greenLight)
    }

    @IBAction func nextButtonTapped() {
    
        if isOn(redLight) {
            redLight.alpha = lightOff
            yellowLight.alpha = lightOn
        } else if isOn(yellowLight) {
            yellowLight.alpha = lightOff
            greenLight.alpha = lightOn
        } else if isOn(greenLight) {
            greenLight.alpha = lightOff
            redLight.alpha = lightOn
        } else {
            redLight.alpha = lightOn
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
        light.alpha = 1
    }
    
    private func turnOn (_ light: UIView) ->  UIView! {
        light.alpha = 1
        return light
    }
    
    
    }



