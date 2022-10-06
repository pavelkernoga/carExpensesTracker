//
//  LogsView.swift
//  carExpensesTracker
//
//  Created by pavel on 26.09.22.
//

import SwiftUI

struct Expenses: View {
//    @State var image = UIImage()
//    @State var field1 = String(0)

    
    var body: some View {
        VStack {
            Text("Expenses")
            
//            Button("Show Image", action: show)
//            Image(uiImage: self.image)
//                    .resizable()
//                    .scaledToFit()
//            Text("\(field1)")
            
        }
    }
    
//    func show() {
//        APIManager.shared.getPost(collectrion: "cars", docName: "smallCar") { doc in
//            guard doc != nil else { return }
//            self.field1 = doc?.field1 ?? ""
//        }
//        
//        APIManager.shared.getImage(picName: "C-class") { pic in
//            self.image = pic
//        }
//    }
}

struct LogsView_Previews: PreviewProvider {
    static var previews: some View {
        Expenses()
    }
}
