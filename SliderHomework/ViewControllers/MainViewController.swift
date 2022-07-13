//
//  MainViewController.swift
//  SliderHomework
//
//  Created by Светлана Сенаторова on 12.07.2022.
//

import UIKit

protocol SettingsViewControllerDelegate {
    func setNewColor(for viewColor: UIColor)
        
}

class MainViewController: UIViewController {

    @IBOutlet weak var mainView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainView.backgroundColor = .lightGray

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let navigationVC = segue.destination as? UINavigationController else { return }
        guard let settingsVC = navigationVC.topViewController as? SettingsViewController else { return }
        settingsVC.viewColor = mainView.backgroundColor
        settingsVC.deligate = self
    }

}

// MARK: - SettingsViewControllerDelegate

extension MainViewController: SettingsViewControllerDelegate {
    func setNewColor(for viewColor: UIColor) {
        mainView.backgroundColor = viewColor
    }
    
}

