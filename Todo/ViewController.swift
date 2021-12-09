//
//  ViewController.swift
//  Todo
//
//  Created by 이희원 on 2021/12/09.
//  Copyright © 2021 swift. All rights reserved.
//

import UIKit
import FSCalendar


class ViewController: UIViewController{

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        dateFormatter.dateFormat = "yyyy-MM-dd"
        
        
    }
   let dateFormatter = DateFormatter()
    
}

extension ViewController : FSCalendarDelegate,FSCalendarDataSource,FSCalendarDelegateAppearance{
    
}
