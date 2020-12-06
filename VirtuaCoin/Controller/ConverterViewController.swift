
//
//  ViewController.swift
//  VirtuaCoin
//
//  Created by p.montes.vallespir on 18/10/2020.
//

import UIKit

class ConverterViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet weak var coinPicker: UIPickerView!
    @IBOutlet weak var currencyPicker: UIPickerView!
    
    var coins: [String] = [String]()