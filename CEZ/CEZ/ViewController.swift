//
//  ViewController.swift
//  CEZ
//
//  Created by Daryna Polevyk on 01.10.2021.
//

import UIKit

class ViewController: UIViewController {
    
    var hours: Int?
    var minutes: Int?
    var weekDay: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getCurrentDate()
        timeFunc()
    }

    func getCurrentDate() {
        let dateCurrent = Date()
        print("dateCurrent: \(dateCurrent)")
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "HH"
        hours = Int(dateFormatter.string(from: dateCurrent))
        dateFormatter.dateFormat = "mm"
        minutes = Int(dateFormatter.string(from: dateCurrent))
        dateFormatter.dateFormat = "EEEE"
        weekDay = dateFormatter.string(from: dateCurrent)
        
        print(hours!)
        print(minutes!)
        print(weekDay!)
        
    }
    
    func timeFunc() {
        if hours! >= 19 {
           view.backgroundColor = .red
        } else {
            view.backgroundColor = .green
        }
    }
}

