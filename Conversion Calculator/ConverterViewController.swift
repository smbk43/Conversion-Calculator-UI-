//
//  ConverterViewController.swift
//  Conversion Calculator
//
//  Created by Sean Buchholz on 11/11/17.
//  Copyright © 2017 Sean Buchholz. All rights reserved.
//
import UIKit
class ConverterViewController: UIViewController { let converters:[Converter] = [
        Converter(label: "Fahrenheit to Celcius", inputUnit: "°F", outputUnit: "°C"),
        Converter(label: "Celcius to Fahrenheit", inputUnit: "°C", outputUnit: "°F"),
        Converter(label: "Miles to Kilometers", inputUnit: "mi", outputUnit: "km"),
        Converter(label: "Kilometers to Miles", inputUnit: "km", outputUnit: "mi") ]
    @IBOutlet weak var outputDisplay: UITextField!
    @IBOutlet weak var inputDisplay: UITextField!
    @IBAction func convertTapped(_ sender: UIButton) { let alert = UIAlertController(title: nil, message: "Choose A Converter:", preferredStyle: UIAlertControllerStyle.actionSheet)
        for converter in converters{ alert.addAction(UIAlertAction(title: converter.label, style: UIAlertActionStyle.default, handler: { (alertAction) -> Void in
                self.inputDisplay.text = converter.inputUnit
                self.outputDisplay.text = converter.outputUnit })) }
        self.present(alert, animated: true, completion: nil) }
    override func viewDidLoad() { super.viewDidLoad()
        let defaultConverter = converters[0]
        inputDisplay.text = defaultConverter.inputUnit
        outputDisplay.text = defaultConverter.outputUnit }
    override func didReceiveMemoryWarning() { super.didReceiveMemoryWarning() } }
