//
//  Data.swift
//  Paca
//
//  Created by Tomás Sousa Pereira on 17/10/2019.
//  Copyright © 2019 Caneca. All rights reserved.
//

import Foundation

public class DateHandler{
    static func getFormattedDate(date: Date , formatter:String) -> String{
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = formatter         
        return dateFormatter.string(from: date)
    }
}
