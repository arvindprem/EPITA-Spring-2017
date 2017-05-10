//
//  jsonparser.swift
//  Advanced iOS Spring 2017
//
//  Created by Guest User on 10/05/17.
//  Copyright © 2017 ___AdvancediOS___. All rights reserved.
//

import Foundation
var names = String
do {
    if let data = data,
    let json = try JSONSerialization.jsonObject(with: data) as? [String: Any],
    let cityNames = json[INSERT KEY HERE] as? [[String: Any]] {
        for cityName in cityNames {
            if let name = cityName[INSERT CITY KEY HERE] as? String {
                names.append(name)
            }
        }
    }
} catch {
    print(“Error parsing JSON: \(error)“
}
print(names)
Save the name and the temperature inside properties.

