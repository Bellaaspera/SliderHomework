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
        redSliderValue.text = "\(redSlider.value)"
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
        blueSliderValue.text = "\(blueSlider.value)"
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
        greenSliderValue.text = "\(greenSlider.value)"
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
        blueSlider.minimumValue = 0.0
        blueSlider.maximumValue = 1.0
        blueSlider.minimumTrackTintColor = .blue
        greenSlider.minimumValue = 0.0
        greenSlider.maximumValue = 1.0
        greenSlider.minimumTrackTintColor = .green
    }
    
    private func setupLabel() {
        redSliderValue.text = "0.0"
        blueSliderValue.text = "0.0"
        greenSliderValue.text = "0.0"
    }
}


