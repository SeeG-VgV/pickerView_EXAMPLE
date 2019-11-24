//
//  ViewController.swift
//  pickerView_EXAMPLE
//
//  Created by Grigorij on 24/11/2019.
//  Copyright © 2019 Grigorij Verba. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet var picker: UIPickerView!
    
    var pickerData = ["Item 1", "Item 2", "Item 3", "Item 4", "Item 5", "Item 6"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.picker.delegate = self
        self.picker.dataSource = self
        
    }

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        pickerData.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        pickerData[row]
    }
    
    @IBAction func changePickerView(_ sender: Any) {
        pickerData = ["Item A", "Item B", "Item C"]
        // не знаю как изменить
    }
}

