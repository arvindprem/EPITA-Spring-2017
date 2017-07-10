//
//  WeatherDetailController.swift
//  Advanced iOS Spring 2017
//
//  Created by Guest User on 09/07/17
//  Copyright © 2017 ___AdvancediOS___. All rights reserved.
//

import UIKit

class WeatherDetailController: UIViewController {

    @IBOutlet weak var citypicture: UIImageView!
    @IBOutlet weak var city: UILabel!
    @IBOutlet weak var temperature: UILabel!
    
    //Initializing the variables and defining there types
    var cityname = String()
    var temp = Int()
    var img = UIImage()
    
    
 
    
    override func viewDidLoad() {
        super.viewDidLoad()
       //Assigning the values of the above variables set in the TableViewController here while loading this view
        city.text = cityname
        temperature.text = String(temp)
        citypicture.image = img
        
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
   

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
 */
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//         Get the new view controller using segue.destinationViewController.
//         Pass the selected object to the new view controller.
//    }
 

}
