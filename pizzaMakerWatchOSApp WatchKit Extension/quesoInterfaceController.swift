//
//  quesoInterfaceController.swift
//  pizzaMakerWatchOSApp WatchKit Extension
//
//  Created by Alejandro Lugo on 4/25/19.
//  Copyright © 2019 Alejandro Lugo. All rights reserved.
//

import WatchKit
import Foundation


class quesoInterfaceController: WKInterfaceController {

    @IBOutlet weak var quesoPicker: WKInterfacePicker!
    let quesoArray = ["Mozarela","Cheddar","Parmesano","Sin queso"]
    var quesoElegido = ""
    

    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        let quesoOne = WKPickerItem()
        quesoOne.title = quesoArray[0]
        let quesoTwo = WKPickerItem()
        quesoTwo.title = quesoArray[1]
        let quesoThree = WKPickerItem()
        quesoThree.title = quesoArray[2]
        let quesoFour = WKPickerItem()
        quesoFour.title = quesoArray[3]
        
        let quesoArreglo = [quesoOne,quesoTwo,quesoThree,quesoFour]
        quesoPicker.setItems(quesoArreglo)
        
        
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    @IBAction func quesoChoice(_ value: Int)
    {
        let quesoResultado = value
        
        if (quesoResultado == 0)
        {
            quesoElegido = quesoArray[0]
        }else if (quesoResultado == 1)
        {
            quesoElegido = quesoArray[1]
        }else if (quesoResultado == 2)
        {
            quesoElegido = quesoArray[2]
        }else if (quesoResultado == 3)
        {
            quesoElegido = quesoArray[3]
        }else
        {
            return
        }
       
    
    }
    @IBAction func nextButtonPressedThree()
    {
        pushController(withName: "toIngredientes", context: sizeDataSending.init(userQueso: quesoElegido))
    }
}
