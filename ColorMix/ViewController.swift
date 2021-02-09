//
//  ViewController.swift
//  ColorMix
//
//  Created by Loaner on 11/1/20.
//

import UIKit

class ViewController: UIViewController {
    
    
    func updateColor() {
        var red: CGFloat = 0
        var green: CGFloat = 0
        var blue: CGFloat = 0
        if REDSwitch.isOn {
            red = CGFloat(redSlider.value)
        }
        if GREENSwitch.isOn {
            green = CGFloat(greenSlider.value)
        }
        if BLUESwitch.isOn {
            blue = CGFloat(blueSlider.value)
        }
        
        let color = UIColor(red: red, green: green,
            blue: blue, alpha: 1)
        colorView.backgroundColor = color
    }

    @IBOutlet weak var colorView: UIView!
    @IBOutlet weak var REDSwitch: UISwitch!
    @IBOutlet weak var GREENSwitch: UISwitch!
    @IBOutlet weak var BLUESwitch: UISwitch!
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    
    
    override func viewDidLoad() {
        colorView.backgroundColor = .black
        super.viewDidLoad()
        
        redSlider.isEnabled = false
        greenSlider.isEnabled = false
        blueSlider.isEnabled = false
        
        colorView.layer.borderWidth = 5
        colorView.layer.cornerRadius = 20
        colorView.layer.borderColor =
            UIColor.black.cgColor
        // Do any additional setup after loading the view.
    }
    
    @IBAction func switchChanged(_ sender: UISwitch) {
       updateColor()
        updateControls()
    }

    @IBAction func sliderChanged(_ sender: Any) {
        updateColor()
        
        }
    @IBAction func reset(_ sender: AnyObject) {
        redSlider.value = 1
        greenSlider.value = 1
        blueSlider.value = 1
        REDSwitch.isOn = false
        GREENSwitch.isOn = false
        BLUESwitch.isOn = false
        
        updateColor()
        
        redSlider.isEnabled = false
        greenSlider.isEnabled = false
        blueSlider.isEnabled = false
    }
    
    func updateControls()  {
        redSlider.isEnabled = REDSwitch.isOn
        greenSlider.isEnabled = GREENSwitch.isOn
        blueSlider.isEnabled = BLUESwitch.isOn
    }
}

