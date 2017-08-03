//
//  ViewController.swift
//  MiraclePill
//
//  Created by Igor Zaika on 7/28/17.
//  Copyright © 2017 Igor Zaika. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var fullNameLabel: UILabel!
    @IBOutlet weak var fullNameInput: UITextField!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var addressInput: UITextField!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var cityInput: UITextField!

    @IBOutlet weak var stateLabel: UILabel!
    @IBOutlet weak var statePickerBtn: UIButton!
    @IBOutlet weak var statePicker: UIPickerView!

    @IBOutlet weak var countryLabel: UILabel!
    @IBOutlet weak var countryInput: UITextField!
    @IBOutlet weak var zipLabel: UILabel!
    @IBOutlet weak var zipInput: UITextField!

    @IBOutlet weak var buyNowBtn: UIButton!

    @IBOutlet weak var successImage: UIImageView!

    let states = ["Alaska", "Arkansas", "Alabama", "California", "Maine", "New York"]

    override func viewDidLoad() {
        super.viewDidLoad()
        statePicker.dataSource = self
        statePicker.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func stateBtnPressed(_ sender: Any) {
        statePicker.isHidden = false
        countryLabel.isHidden = true
        countryInput.isHidden = true
        zipLabel.isHidden = true
        zipInput.isHidden = true
    }

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }

    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }

    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }

    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        statePickerBtn.setTitle(states[row], for: UIControlState.normal)
        statePicker.isHidden = true
        countryLabel.isHidden = false
        countryInput.isHidden = false
        zipLabel.isHidden = false
        zipInput.isHidden = false
    }

    @IBAction func BuyBtnPressed(_ sender: Any) {
        fullNameLabel.isHidden = true
        fullNameInput.isHidden = true
        addressLabel.isHidden = true
        addressInput.isHidden = true
        cityLabel.isHidden = true
        cityInput.isHidden = true
        stateLabel.isHidden = true
        statePickerBtn.isHidden = true
        statePicker.isHidden = true
        countryLabel.isHidden = true
        countryInput.isHidden = true
        zipLabel.isHidden = true
        zipInput.isHidden = true
        buyNowBtn.isHidden = true
        successImage.isHidden = false

    }


}
