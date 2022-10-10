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
    
    func addCarData(brand: String, data: [String: Any]) {
        let docRef = configureFB().collection("userCars").document(brand)
        docRef.setData(data) { error in
            guard error == nil else {
                debugPrint(error?.localizedDescription as Any)
                return
            }
        }
    }
    
    // test
//    func getPost(collectrion: String, docName: String, completion: @escaping (Document?) -> Void) {
//        let db = configureFB()
//        db.collection(collectrion).document(docName).getDocument { document, error in
//            guard error == nil else { completion(nil); return }
//            let doc = Document(field1: (document?.get("field1") as? String)!, field2: document?.get("field2") as! String)
//            completion(doc)
//        }
//    }
//
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
