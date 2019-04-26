//
//  masaInterfaceController.swift
//  pizzaMakerWatchOSApp WatchKit Extension
//
//  Created by Alejandro Lugo on 4/25/19.
//  Copyright © 2019 Alejandro Lugo. All rights reserved.
//

import WatchKit
import Foundation

var resultMasa = ""

class masaInterfaceController: WKInterfaceController {

    @IBOutlet weak var masaPicker: WKInterfacePicker!
    let masaArray = ["Delgada","Crujiente","Gruesa"]
    var masaElegida = ""

        
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        let masaOne = WKPickerItem()
        masaOne.title = masaArray[0]
        let masaTwo = WKPickerItem()
        masaTwo.title = masaArray[1]
        let masaThree = WKPickerItem()
        masaThree.title = masaArray[2]
        
        let arregloMasa = [masaOne,masaTwo,masaThree]
        masaPicker.setItems(arregloMasa)
     
        
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    @IBAction func masaChoice(_ value: Int)
    {
        let masaResultado = value
        
        if (masaResultado == 0)
        {
            masaElegida = masaArray[0]
        }else if (masaResultado == 1)
        {
            masaElegida = masaArray[1]
        }else if (masaResultado == 2)
        {
            masaElegida = masaArray[2]
        }else
        {
            return
        }

       
    }
    
    
    
    @IBAction func nextButtonPressedTwo()
    {
        pushController(withName: "toQueso", context: sizeDataSending.init(userMasa: masaElegida))
        
    }

    
}


