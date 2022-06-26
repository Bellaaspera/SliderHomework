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
        roundingSliderValueText(label: redSliderValue, slider: redSlider)
        mainView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1)
    }
    
    @IBAction func blueSliderAction() {
        roundingSliderValueText(label: blueSliderValue, slider: blueSlider)
        mainView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1)
    }
    
    @IBAction func greenSliderAction() {
        roundingSliderValueText(label: greenSliderValue, slider: greenSlider)
        mainView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1)
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
        redSliderValue.text = "0.00"
        blueSliderValue.text = "0.00"
        greenSliderValue.text = "0.00"
    }
    
    private func roundingSliderValueText(label: UILabel, slider: UISlider) {
        label.text = String(format: "%.2f", slider.value)
    }
}
