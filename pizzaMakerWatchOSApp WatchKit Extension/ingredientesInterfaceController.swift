//
//  ingredientesInterfaceController.swift
//  pizzaMakerWatchOSApp WatchKit Extension
//
//  Created by Alejandro Lugo on 4/25/19.
//  Copyright © 2019 Alejandro Lugo. All rights reserved.
//

import WatchKit
import Foundation


class ingredientesInterfaceController: WKInterfaceController {

    @IBOutlet weak var ingredientOne: WKInterfaceSwitch!
    @IBOutlet weak var ingredientTwo: WKInterfaceSwitch!
    @IBOutlet weak var ingredientThree: WKInterfaceSwitch!
    @IBOutlet weak var ingredientFour: WKInterfaceSwitch!
    @IBOutlet weak var ingredientFive: WKInterfaceSwitch!
   
    
    let ingredientesArray = ["Jamón","Pepperoni","Salchicha","Pimiento","Anchoa"]
    
    var ingredienteUno = ""
    var ingredienteDos = ""
    var ingredienteTres = ""
    var ingredienteCuatro = ""
    var ingredienteCinco = ""
    
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
       
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    @IBAction func switchOne(_ value: Bool)
    {
        let userIngredientOne = value
         if (userIngredientOne == true)
         {
            ingredienteUno = ingredientesArray[0]
         }else
         {
            ingredienteUno = ""
        }
    }
    
    @IBAction func switchTwo(_ value: Bool)
    {
        let userIngredientTwo = value
        if (userIngredientTwo == true)
        {
            ingredienteDos = ingredientesArray[1]
        }else
        {
            ingredienteDos = ""
        }
    }
    
    @IBAction func switchThree(_ value: Bool)
    {
        let userIngredientThree = value
        if (userIngredientThree == true)
        {
            ingredienteTres = ingredientesArray[2]
        }else
        {
            ingredienteTres = ""
        }
    }
    @IBAction func switchFour(_ value: Bool)
    {
        let userIngredientFour = value
        if (userIngredientFour == true)
        {
            ingredienteCuatro = ingredientesArray[3]
        }else
        {
            ingredienteCuatro = ""
        }
    }
    
    @IBAction func switchFive(_ value: Bool)
    {
        let userIngredientFive = value
        if (userIngredientFive == true)
        {
            ingredienteCinco = ingredientesArray[4]
        }else
        {
            ingredienteCinco = ""
        }
    
    
    }

    
    
    @IBAction func nextButtonPressedFour()
    {
        pushController(withName: "toConfirmacion", context: sizeDataSending.init(ingredienteUno: ingredienteUno, ingredienteDos: ingredienteDos, ingredienteTres: ingredienteTres, ingredienteCuatro: ingredienteCuatro, ingredienteCinco: ingredienteCinco))
    }
}
