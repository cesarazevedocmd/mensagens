//
//  ColorPickerViewController.swift
//  Mensagens
//
//  Created by César Alves de Azevedo on 26/10/20.
//  Copyright © 2020 Eric Brito. All rights reserved.
//

import UIKit

protocol ColorPickerProtocol : class {
    func applyColor(color: UIColor)
}

class ColorPickerViewController: UIViewController {
    
    @IBOutlet weak var viColor: UIView!
    @IBOutlet weak var slRed: UISlider!
    @IBOutlet weak var slGreen: UISlider!
    @IBOutlet weak var slBlue: UISlider!
    
    weak var reference: ColorPickerProtocol?
    

    override func viewDidLoad() {
        super.viewDidLoad()
        setColor()
    }
    
    @IBAction func selectColor(_ sender: UIButton) {
        reference?.applyColor(color: viColor.backgroundColor!)
        dismiss(animated: true, completion: nil)
    }
    
    
    @IBAction func changeColor(_ sender: UISlider) {
        setColor()
    }
    
    private func setColor(){
        viColor.backgroundColor = UIColor(
            displayP3Red: CGFloat(slRed.value),
            green: CGFloat(slGreen.value),
            blue: CGFloat(slBlue.value),
            alpha: 1.0)
    }
    
    
}
