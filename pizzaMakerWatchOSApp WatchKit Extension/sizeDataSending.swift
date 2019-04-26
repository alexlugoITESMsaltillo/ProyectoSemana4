//
//  sizeDataSending.swift
//  pizzaMakerWatchOSApp WatchKit Extension
//
//  Created by Alejandro Lugo on 4/24/19.
//  Copyright © 2019 Alejandro Lugo. All rights reserved.
//

import WatchKit


class sizeDataSending: NSObject {
    var masaUserChoice = ""
    var quesoUserChoice = ""
    var ingredientesUserChoice = ""
    
    init (userSize:String)
    {
        resultadoSize = userSize
    }
    
    init(userMasa:String)
    {
        resultadoMasa = userMasa
    }
    
    init(userQueso:String)
    {
        resultadoQueso = userQueso
    }
    
    init (ingredienteUno:String,ingredienteDos:String,ingredienteTres:String,ingredienteCuatro:String,ingredienteCinco:String)
    {
        ingredientesUserChoice = "\(ingredienteUno) \(ingredienteDos) \(ingredienteTres) \(ingredienteCuatro) \(ingredienteCinco)"
    }
    
    
}
