//
//  ViewController.swift
//  SliderHomework
//
//  Created by Светлана Сенаторова on 24.06.2022.
//

import UIKit

class SettingsViewController: UIViewController {
    
    @IBOutlet weak var mainView: UIView!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    @IBOutlet weak var redSliderValue: UILabel!
    @IBOutlet weak var greenSliderValue: UILabel!
    @IBOutlet weak var blueSliderValue: UILabel!
    
    @IBOutlet weak var redTextField: UITextField!
    @IBOutlet weak var greenTextField: UITextField!
    @IBOutlet weak var blueTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainView.layer.cornerRadius = 10
        setupSlider()
        setupLabel()
        setColor()
    }
    
    @IBAction func redSliderAction() {
        roundingSliderValueText(label: redSliderValue, slider: redSlider)
        setColor()
    }
    
    @IBAction func blueSliderAction() {
        roundingSliderValueText(label: blueSliderValue, slider: blueSlider)
        setColor()
    }
    
    @IBAction func greenSliderAction() {
        roundingSliderValueText(label: greenSliderValue, slider: greenSlider)
        setColor()
    }
                                                                        
    private func setupSlider() {
        redSlider.minimumTrackTintColor = .red
        redSlider.value = 0
        blueSlider.minimumTrackTintColor = .blue
        blueSlider.value = 0
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
    
    private func setColor() {
        mainView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1)
    }
}
