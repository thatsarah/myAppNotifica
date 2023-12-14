//
//  Ocorrencia.swift
//  myAppNotifica
//
//  Created by Sarah Rodrigues on 14/12/23.
//

import UIKit

struct Ocorrencia {
    
    var title: String
    var description: String
    var location: String
    var date: Date
    var status: String
    
    init(title: String, description: String, location: String, date: Date, status: String) {
        self.title = title
        self.description = description
        self.location = location
        self.date = date
        self.status = status
    }
    
}
