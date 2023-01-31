//
//  ViewController.swift
//  TrafficLight
//
//  Created by Bektemur on 30/01/23.
//

import UIKit


final class ViewController: UIViewController {
//MARK: - IB Outlets
    @IBOutlet var redLight: UIView!
    @IBOutlet var yellowLight: UIView!
    @IBOutlet var greenLight: UIView!
    @IBOutlet var switchButton: UIButton!
    
//MARK: - Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        let roundCorner = redLight.frame.width / 2
        
        switchButton.layer.cornerRadius = 10
        
        redLight.layer.cornerRadius = roundCorner
        yellowLight.layer.cornerRadius = roundCorner
        greenLight.layer.cornerRadius = roundCorner
        
        turnOff(redLight)
        turnOff(yellowLight)
        turnOff(greenLight)
    }
//MARK: - IB Actions
    @IBAction func nextButtonTapped() {
        if switchButton.currentTitle == "START" {
            switchButton.setTitle("NEXT", for: .normal)
        }
    
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
//MARK: - Private Methods
    private func isOn(_ light: UIView!) -> Bool {
        light.alpha.isEqual(to: 1)
    }
    
    private func turnOff (_ light: UIView) {
        light.alpha = 0.3
    }
    
    private func turnOn (_ light: UIView) {
        light.alpha = 1
    }
}



