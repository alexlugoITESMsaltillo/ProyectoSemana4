//
//  confirmationInterfaceController.swift
//  pizzaMakerWatchOSApp WatchKit Extension
//
//  Created by Alejandro Lugo on 4/25/19.
//  Copyright © 2019 Alejandro Lugo. All rights reserved.
//

import WatchKit
import Foundation


class confirmationInterfaceController: WKInterfaceController {

    @IBOutlet weak var tamanoFinal: WKInterfaceLabel!
    @IBOutlet weak var masaFinal: WKInterfaceLabel!
    @IBOutlet weak var quesoFinal: WKInterfaceLabel!
    @IBOutlet weak var ingredientesFinal: WKInterfaceLabel!
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
       tamanoFinal.setText(resultadoSize)
        
       masaFinal.setText(resultadoMasa)
        
       quesoFinal.setText(resultadoQueso)
        
        let userIngredientesFinal = context as! sizeDataSending
        ingredientesFinal.setText(userIngredientesFinal.ingredientesUserChoice)
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    @IBAction func orderButtonPressed() {
        pushController(withName: "toFinal", context: self)
    }
}
