//
//  OcorrenciasStorage.swift
//  myAppNotifica
//
//  Created by Sarah Rodrigues on 14/12/23.
//

import UIKit

class OcorrenciasStorage {
    
    var ocorrencias: [Ocorrencia] = []
    func save(ocorrencia: Ocorrencia) {
        self.ocorrencias.append(ocorrencia)
    }
}
