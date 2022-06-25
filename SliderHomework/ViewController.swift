//
//  ViewController.swift
//  SliderHomework
//
//  Created by Светлана Сенаторова on 24.06.2022.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var mainView: UIView!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    
    @IBOutlet weak var greenSliderValue: UILabel!
    @IBOutlet weak var blueSliderValue: UILabel!
    @IBOutlet weak var redSliderValue: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainView.layer.cornerRadius = 10
        setupSlider()
        setupLabel()
    }
    
    @IBAction func redSliderAction() {
        redSliderValue.text = "\(round (redSlider.value * 100) / 100)"
        if blueSlider.value == 0 && greenSlider.value == 0 {
        mainView.backgroundColor = redSlider.minimumTrackTintColor?.withAlphaComponent(CGFloat(redSlider.value))
        } else {
            mainView.backgroundColor = UIColor(
                red: CGFloat(redSlider.value),
                green: CGFloat(greenSlider.value),
                blue: CGFloat(blueSlider.value),
                alpha: 1)
        }
    }
    
    @IBAction func blueSliderAction() {
        blueSliderValue.text = "\(round (blueSlider.value * 100) / 100)"
        if redSlider.value == 0 && greenSlider.value == 0 {
        mainView.backgroundColor = blueSlider.minimumTrackTintColor?.withAlphaComponent(CGFloat(blueSlider.value))
        } else {
            mainView.backgroundColor = UIColor(
                red: CGFloat(redSlider.value),
                green: CGFloat(greenSlider.value),
                blue: CGFloat(blueSlider.value),
                alpha: 1)
        }
    }
    
    @IBAction func greenSliderAction() {
        greenSliderValue.text = "\(round (greenSlider.value * 100) / 100)"
        if redSlider.value == 0 && greenSlider.value == 0 {
        mainView.backgroundColor = greenSlider.minimumTrackTintColor?.withAlphaComponent(CGFloat(greenSlider.value))
        } else {
            mainView.backgroundColor = UIColor(
                red: CGFloat(redSlider.value),
                green: CGFloat(greenSlider.value),
                blue: CGFloat(blueSlider.value),
                alpha: 1)
        }
    }
                                                                        
    private func setupSlider() {
        redSlider.minimumValue = 0.0
        redSlider.maximumValue = 1.0
        redSlider.minimumTrackTintColor = .red
        redSlider.value = 0
        blueSlider.minimumValue = 0.0
        blueSlider.maximumValue = 1.0
        blueSlider.minimumTrackTintColor = .blue
        blueSlider.value = 0
        greenSlider.minimumValue = 0.0
        greenSlider.maximumValue = 1.0
        greenSlider.minimumTrackTintColor = .green
        greenSlider.value = 0
    }
    
    private func setupLabel() {
        redSliderValue.text = "0.0"
        blueSliderValue.text = "0.0"
        greenSliderValue.text = "0.0"
    }
}


