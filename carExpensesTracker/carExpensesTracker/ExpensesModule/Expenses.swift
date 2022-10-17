//
//  LogsView.swift
//  carExpensesTracker
//
//  Created by pavel on 26.09.22.
//

import SwiftUI

struct Expenses: View {
    @State var amountExpenses = 0
    
    var body: some View {
        ZStack(alignment: .center) {
            Image("expenses")
                .resizable()
                .aspectRatio(contentMode: .fill).edgesIgnoringSafeArea(.all)
            VStack {
                Group {
                    // Total expenses view
                    VStack(alignment: .leading, spacing: 10) {
                        Text("Amount of total spending").foregroundColor(.white).font(.largeTitle)
                        Text("\(amountExpenses) $")
                            .foregroundColor(.white)
                            .font(.largeTitle)
                    }
                    .padding()
                    
                }
                .frame(width: UIScreen.main.bounds.width - 25, alignment: .center)
                .background(.thinMaterial, in: RoundedRectangle(cornerRadius: 16))
                .padding()
                
                // Expenses buttons
                ExpenseButtonsView()
            }
        }
        
    }
}

struct LogsView_Previews: PreviewProvider {
    static var previews: some View {
        Expenses()
    }
}
