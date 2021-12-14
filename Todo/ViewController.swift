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


    @IBOutlet weak var calendarView: FSCalendar!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        calendarView.delegate = self
        calendarView.dataSource = self
        self.calendarColor()
        self.calendarText()
        self.setUpEvents()
        
        
        calendarView.scrollDirection = .vertical
        //세로로 스와이프
    }
    
    func calendarColor() {
        calendarView.appearance.titleDefaultColor = .black
        calendarView.appearance.titleWeekendColor = .red
        calendarView.appearance.headerTitleColor = .black
        calendarView.appearance.weekdayTextColor = .orange
        
    }
    
    func calendarText() {
        calendarView.appearance.headerDateFormat = "YYYY년 M월"
        calendarView.locale = Locale(identifier: "ko_KR")
        
        calendarView.appearance.headerMinimumDissolvedAlpha = 0.5
        // 헤더 양쪽 흐릿한 년월 없애기 //스와이프 vertical 일땐 보이지 않음
        
        calendarView.appearance.headerTitleFont = UIFont.systemFont(ofSize:24)
        
    }
    
    var events:[Date] = []
    func setUpEvents() {
        let dateFormatter = DateFormatter()
        dateFormatter.locale = Locale(identifier: "ko_KR")
        
        dateFormatter.dateFormat = "yyyy-MM-dd"
        let xmas = dateFormatter.date(from:"2021-12-25")
        let sampledate = dateFormatter.date(from:"2021-12-19")
        events = [xmas!,sampledate!]
        
    }
}

extension ViewController:FSCalendarDataSource,FSCalendarDelegate{
    func calendar(_ calendar: FSCalendar, numberOfEventsFor date: Date) -> Int {
        if self.events.contains(date) {
            return 1
        }else {
            return 0
        }
        
    }
}

