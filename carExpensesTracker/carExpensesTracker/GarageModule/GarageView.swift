//
//  GarageView.swift
//  carExpensesTracker
//
//  Created by pavel on 26.09.22.
//

import SwiftUI

struct GarageView: View {
    
    @State var showingCarForm: Bool = false

    var body: some View {
        NavigationView {
            
            Button("Add your car") {
                showingCarForm.toggle()
            }
            .sheet(isPresented: $showingCarForm) {
                CarFormView()
            }
            
        }
    }
    
    func addBtnTapped() {
        showingCarForm = true
    }
}

struct GarageView_Previews: PreviewProvider {
    static var previews: some View {
        GarageView()
    }
}
