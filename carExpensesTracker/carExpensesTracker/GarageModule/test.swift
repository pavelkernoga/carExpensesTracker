//
//  test.swift
//  carExpensesTracker
//
//  Created by pavel on 30.09.22.
//

import SwiftUI

struct test: View {
    @State var selectedTag: Int?

    var body: some View {
        NavigationView {
            List(1...10, id: \.self) { id in
                HStack {
                    Text("Item \(id)")
                    Spacer()
                    
                    Button("Show detail") { selectedTag = id }
                    .background(link(id: id))
                }.buttonStyle(.borderless) /// 👈 ⚠️ on the item! **NOT** on the button!!!
            }
        }
    }
    
    func link(id: Int) -> some View {
        NavigationLink("",
            destination: Text("\(id) Selected"),
            tag: id,
            selection: $selectedTag
        ).hidden()
    }
}

struct test_Previews: PreviewProvider {
    static var previews: some View {
        test()
    }
}
