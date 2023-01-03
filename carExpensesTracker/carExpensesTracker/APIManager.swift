//
//  APIManager.swift
//  carExpensesTracker
//
//  Created by pavel on 6.10.22.
//

import Foundation
import UIKit
import FirebaseCore
import FirebaseFirestore
import FirebaseStorage

class APIManager {
    
    static let shared = APIManager()
    
    func configureFB() -> Firestore {
        var db: Firestore!
        let settings = FirestoreSettings()
        Firestore.firestore().settings = settings
        db = Firestore.firestore()
        return db
    }
    
    func addCarData(id: UUID, data: [String: Any]) {
        let docRef = configureFB().collection("userCars").document(id.uuidString)
        docRef.setData(data) { error in
            guard error == nil else {
                debugPrint(error?.localizedDescription as Any)
                return
            }
        }
    }
    
    func removeCarData(id: String) {
        let docRef = configureFB().collection("userCars").document(id)
        docRef.delete { error in
            guard error == nil else {
                debugPrint(error?.localizedDescription as Any)
                return
            }
            debugPrint("car item removed")
        }
    }

    func getImage(category: String, brand: String, completion: @escaping (UIImage) -> Void) {
        let storage = Storage.storage()
        let reference = storage.reference()
        let pathRef = reference.child(category)
        var image = UIImage()
        
        let fileRef = pathRef.child(brand + ".png")
        fileRef.getData(maxSize: 1024*1024) { data, error in
            guard error == nil else { completion(image); return }
            
            if let reciviedData = data, let dataImage = UIImage(data: reciviedData) {
                image = dataImage
                completion(image)
            }
        }
    }
    
}
