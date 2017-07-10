//
//  jsonparser.swift
//  Advanced iOS Spring 2017
//
//  Created by Guest User on 01/06/17.
//  Copyright © 2017 ___AdvancediOS___. All rights reserved.
//

class JsonParser
{
    func readJSONObject(object: [String: AnyObject]) {
        let hum = object["humidity"] as? int
        let city = object["name"] as? string
        print("Humid:\n\(String(describing: hum))")
        print("City:\n\(String(describing: city))")
    }
    
    func parseJson(cities: Data)
    {
        do
        {
            
            let object = try JSONSerialization.jsonObject(with: cities, options: .allowFragments)
            if let dictionary = object as? [String: AnyObject] {
                readJSONObject(object: dictionary)
            }
            let data = cities
            let json = try JSONSerialization.jsonObject(with: data) as? [String: AnyObject]
            let cityNames = json?["name"] as? [String: AnyObject]
            //  let cityName = cityNames
            print("Checking if City is :\n\(String(describing: cityNames))")
        }
        catch {
            print("Error parsing JSON:\(error)")
        }
}
}
