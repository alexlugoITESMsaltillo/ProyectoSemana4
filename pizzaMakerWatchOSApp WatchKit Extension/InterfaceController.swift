//
//  InterfaceController.swift
//  pizzaMakerWatchOSApp WatchKit Extension
//
//  Created by Alejandro Lugo on 4/24/19.
//  Copyright © 2019 Alejandro Lugo. All rights reserved.
//

import WatchKit
import Foundation

var resultadoSize = ""
var resultadoMasa = ""
var resultadoQueso = ""



class InterfaceController: WKInterfaceController {

    let sizeArray = ["Chica","Mediana","Grande"]
    var valorElegido : String = ""
    
    
    @IBOutlet weak var sizePicker: WKInterfacePicker!
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
       let sizeOne = WKPickerItem()
        sizeOne.title = sizeArray[0]
       let sizeTwo = WKPickerItem()
        sizeTwo.title = sizeArray[1]
       let sizeThree = WKPickerItem()
        sizeThree.title = sizeArray[2]
        
        let arreglotamano = [sizeOne,sizeTwo,sizeThree]
        sizePicker.setItems(arreglotamano)
      
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    @IBAction func setValue(_ value: Int)
    {
     let resultado = value
        
        if (resultado == 0)
        {
            valorElegido = sizeArray[0]
        }else if (resultado == 1)
        {
            valorElegido = sizeArray[1]
        }else if (resultado == 2)
        {
            valorElegido = sizeArray[2]
        }else
        {
            return
        }
      
    }
    
    
    @IBAction func nextButtonPressed()
    {
        pushController(withName: "toMasa", context: sizeDataSending.init(userSize: valorElegido))
    }
  


}
