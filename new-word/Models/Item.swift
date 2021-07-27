//
//  Item.swift
//  new-word
//
//  Created by Felipe Moraes on 19/07/21.
//

import UIKit

class Item: NSObject {
    let nome: String
    let calorias: Double
    
    init(nome: String, calorias: Double) {
        self.nome = nome
        self.calorias = calorias
        
    }
}
