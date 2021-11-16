//
//  ViewController.swift
//  BackDataTimer
//
//  Created by Moshkina on 16.06.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet private weak var daysLabel: UILabel!
    @IBOutlet private weak var hoursLabel: UILabel!
    @IBOutlet private weak var minutesLabel: UILabel!
    @IBOutlet private weak var secondsLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        changeTime()
    }

    func changeTime() {
        let dateFormatter = DateFormatter()
        
        dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss+07"
        let endData = "2022-01-01 00:00:00"
//        dateFormatter.timeZone = TimeZone(identifier: "Asia/Novosibirsk")
        let newYearDate = dateFormatter.date(from: endData)
        print("newYearData:   \(newYearDate)")
        let currentDate = Date()
        print("currentData:   \(currentDate)")
        
        let components = Set<Calendar.Component>([.second, .minute, .hour, .day])
        let differenceOfDate = Calendar.current.dateComponents(components, from: currentDate, to: newYearDate!)

        print("diff between \(currentDate) and \(newYearDate):  ", differenceOfDate)
        
//        dateFormatter.dateFormat = "dd"
//        let day = dateFormatter.string(from: date)
//
//        dateFormatter.dateFormat = "MM"
//        let month = dateFormatter.string(from: date)
//
//        dateFormatter.dateFormat = "yyyy"
//        let year = dateFormatter.string(from: date)
//
//        dateFormatter.dateFormat = "HH"
//        let hour = dateFormatter.string(from: date)
//
//        dateFormatter.dateFormat = "mm"
//        let minutes = dateFormatter.string(from: date)
//
//        dateFormatter.dateFormat = "ss"
//        let seconds = dateFormatter.string(from: date)

        daysLabel.text = String(differenceOfDate.day!)
        hoursLabel.text = String(differenceOfDate.hour!)
        minutesLabel.text = String(differenceOfDate.minute!)
        secondsLabel.text = String(differenceOfDate.second!)
    }
    
}

