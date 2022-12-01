//
//  Expense.swift
//  ExpenseUI
//
//  Created by Adam Gerber on 30/11/2022.
//

import SwiftUI

//MARK: Expense Model and Sample Data
struct Expense: Identifiable{
    var id = UUID().uuidString
    var icon: String
    var title: String
    var subTitle: String
    var amount: String
}

var expenses: [Expense] = [
    
    Expense(icon: "Food", title: "Food", subTitle: "K Food Restaurant", amount: "$145.12"),
    Expense(icon: "Taxi", title: "Taxi", subTitle: "Taxi Payment", amount: "$45.12"),
    Expense(icon: "Netflix", title: "Netflix", subTitle: "Subscriptions", amount: "$19.22")

]

//MARK: Months and Sample Progress for Animating Speedometer

let months: [String] = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"]
let progressArray: [CGFloat] = [0.1,0.4,0.9,0.5,0.3,0.8, 0.6, 0.2, 0.89, 0.45, 0.98, 0.32]
