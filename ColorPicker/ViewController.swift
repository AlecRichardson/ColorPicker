//
//  ViewController.swift
//  ColorPicker
//
//  Created by Alec Richardson on 3/17/19.
//  Copyright © 2019 Alec Richardson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    struct Color {
        var name: String
        var color: UIColor
    }
    private let Colors = [
        Color(name: "Red", color: UIColor.red),
        Color(name: "Orange", color: UIColor.orange),
        Color(name: "Yellow", color: UIColor.yellow),
        Color(name: "Green", color: UIColor.green),
        Color(name: "Blue", color: UIColor.blue),
        Color(name: "Purple", color: UIColor.purple)
    ]
    
    @IBOutlet weak var pickerView: UIPickerView!
    @IBOutlet weak var detailLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pickerView.dataSource = self
        pickerView.delegate = self
        self.view.backgroundColor = Colors[0].color
        detailLabel.text = Colors[0].name
    }
}

extension ViewController: UIPickerViewDelegate, UIPickerViewDataSource {
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return Colors.count
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        detailLabel.text = Colors[row].name
        self.view.backgroundColor = Colors[row].color
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return Colors[row].name
    }
    
}
