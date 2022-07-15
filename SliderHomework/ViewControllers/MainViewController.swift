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

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let settingsVC = segue.destination as? SettingsViewController else { return }
        settingsVC.deligate = self
        settingsVC.viewColor = view.backgroundColor
    }
}

// MARK: - SettingsViewControllerDelegate

extension MainViewController: SettingsViewControllerDelegate {
    func setNewColor(for viewColor: UIColor) {
        view.backgroundColor = viewColor
    }
}

