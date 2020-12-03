//
//  MessageColorViewController.swift
//  Mensagens
//
//  Copyright © 2017 Eric Brito. All rights reserved.
//

import UIKit

class MessageColorViewController: BaseViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadMessage()
    }
    
    private func loadMessage(){
        lbMessage.text = self.message.text
        lbMessage.textColor = self.message.textColor
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destination = (segue.destination as! ScreenColorViewController)
        destination.message = self.message
    }
}

extension MessageColorViewController: ColorPickerProtocol{
    func applyColor(color: UIColor) {
        self.message.backgroundColor = color
        lbMessage.backgroundColor = color
    }
}
