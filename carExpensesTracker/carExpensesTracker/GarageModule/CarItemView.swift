//
//  CarItemView.swift
//  carExpensesTracker
//
//  Created by pavel on 7.10.22.
//

import SwiftUI

struct CarItemView: View {
    @State var car: FirebaseCarModel
    @State var carLogoImage = UIImage()
    
    var body: some View {
            Group {
                HStack(alignment: .center, spacing: 16) {
                    Image(uiImage: carLogoImage)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                        .clipShape(RoundedRectangle(cornerRadius: 12))
                    VStack(alignment: .leading, spacing: 8) {
                        Text("\(car.brand) \(car.model)")
                            .font(.title2)
                            .fontWeight(.heavy)
                            .foregroundColor(.black)
                        Text("\(Constants.numberFormatter.string(for: car.productionYear) ?? "2022"), \(car.mileage) \(car.mileageState)")
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                            .lineLimit(3)
                            .padding(.trailing, 8)
                    }
                }
            .onAppear {
                getCarLogoImagee(carBrand: car.brand)
            }
        }
        
    }
    
    private func getCarLogoImagee(carBrand: String) {
        APIManager.shared.getImage(category: "carLogo", brand: carBrand) { response in
             carLogoImage = response
        }
    }
    
}

struct CarItemView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            CarItemView(car: .init(brand: "", model: "", productionYear: 0, mileage: "", mileageState: "km", id: ""))
        }
    }
}
