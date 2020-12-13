
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
    var currencies: [String] = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.coinPicker.delegate = self
        self.coinPicker.dataSource = self
        self.currencyPicker.delegate = self
        self.currencyPicker.dataSource = self
        
        // Input the data into the array
        coins = ["Coin 1", "Coin 2", "Coin 3", "Coin 4"]
        currencies = ["Currency 1", "Currency 2", "Currency 3", "Currency 4", "Currency 5", "Currency 6"]
    }

    
    // MARK: - UIPicker delegate and protocols
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {

        if pickerView == coinPicker {
            return coins[row]
        }
        return currencies[row]
    }

    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {

        if pickerView == coinPicker {
            return coins.count
        }
        return currencies.count

    }
}
