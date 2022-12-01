//
//  AddExpense.swift
//  ExpenseUI
//
//  Created by Adam Gerber on 01/12/2022.
//

import SwiftUI

struct AddExpense: View {
    
    init() {
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor(Color("Green"))]
    }
    
    var body: some View {
        NavigationView{
            VStack{
                
            }
            .navigationTitle("Add Expenses")
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
            .padding(.top, 15)
            .background{
                Color("BG").ignoresSafeArea()
            }
        }
        
        
    }
}

struct AddExpense_Previews: PreviewProvider {
    static var previews: some View {
        AddExpense()
    }
}
