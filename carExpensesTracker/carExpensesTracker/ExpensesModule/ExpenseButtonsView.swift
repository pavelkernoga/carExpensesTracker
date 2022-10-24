//
//  ExpenseButtonsView.swift
//  carExpensesTracker
//
//  Created by pavel on 13.10.22.
//

import SwiftUI

struct ExpenseButtonsView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 30) {
            HStack {
                // Fuel button
                Button {
                    print("fuel tapped")
                } label: {
                    setupButtonLabel(imageName: "fuel", buttonTitle: "Fuel", backgroundColor: .green)
                }
                
                // Wash button
                Button {
                    print("wash tapped")
                } label: {
                    setupButtonLabel(imageName: "wash", buttonTitle: "Wash", backgroundColor: .teal)
                }
                
                // Parking button
                Button {
                    print("parking tapped")
                } label: {
                    setupButtonLabel(imageName: "parking", buttonTitle: "Parking", backgroundColor: .purple)
                }
                
                // Service button
                Button {
                    print("service tapped")
                } label: {
                    setupButtonLabel(imageName: "service", buttonTitle: "Service", backgroundColor: .yellow)
                }
                
            }
            .frame(width: UIScreen.main.bounds.width - 25, height: 50)
            .padding()
            
            HStack {
                // Spares button
                Button {
                    print("spares tapped")
                } label: {
                    setupButtonLabel(imageName: "spares", buttonTitle: "Spares", backgroundColor: .mint)
                }
                
                // Tax button
                Button {
                    print("tax tapped")
                } label: {
                    setupButtonLabel(imageName: "tax", buttonTitle: "Taxes", backgroundColor: .orange)
                }
                
                // Tuning button
                Button {
                    print("tuning tapped")
                } label: {
                    setupButtonLabel(imageName: "tuning", buttonTitle: "Tuning", backgroundColor: .red)
                }
                
                // Other button
                Button {
                    print("other tapped")
                } label: {
                    setupButtonLabel(imageName: "other", buttonTitle: "Other", backgroundColor: .gray)
                }
            }
            .frame(width: UIScreen.main.bounds.width - 25, height: 50)
        }
    }
    
    private func setupButtonLabel(imageName: String, buttonTitle: String, backgroundColor: Color) -> some View {
            VStack {
                Image(imageName)
                Text(buttonTitle)
                    .font(.headline).foregroundColor(.white)
                    .scaledToFill()
                    .minimumScaleFactor(0.5)
                    .lineLimit(1)
            }
        .padding()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(backgroundColor, in: RoundedRectangle(cornerRadius: 15))
    }
    
}

struct ExpenseButtonsView_Previews: PreviewProvider {
    static var previews: some View {
        ExpenseButtonsView()
    }
}
