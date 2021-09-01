//
//  ViewController.swift
//  Project12
//
//  Created by othman shahrouri on 8/31/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       
        //Examples of writing data:
        let defaults = UserDefaults.standard
        defaults.set(25, forKey: "Age")
        defaults.set(true, forKey: "UseFaceID")
        defaults.set(CGFloat.pi, forKey: "Pi")
        
        defaults.setValue("Othman Shahrouri", forKey: "Name")
        defaults.set(Date(), forKey: "LastRun")
        
        let array = ["hello","world"]
        defaults.set(array, forKey: "SavedArray")
        
        let dict = ["Name": "Paul" ]
        defaults.set(dict,forKey: "SavedDict")
        
        //Examples of reading data:
        
        let age = defaults.integer(forKey: "Age")
        print(age)
        
        let useFaceID = defaults.bool(forKey: "UseFaceID")
        print(useFaceID)
        
        //Usually used for arrays and dictionaries
       // object(forKey:) returns Any? so you need to conditionally typecast it to your data type
        
        let dict2 = defaults.object(forKey: "SavedDict") as? [String:String] ?? [String:String]()
        
        let array2 = defaults.object(forKey: "SavedArray") as? [String] ?? [String]()
        
        
    }


}

