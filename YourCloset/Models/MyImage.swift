//
//  MyImage.swift
//  YourCloset
//
//  Created by Ruba Abuhatlah on 02/08/1444 AH.
//


import Foundation

import UIKit

struct MyImage: Identifiable, Codable {
    var id = UUID()
    var name: String
    var category: String = "T-shirt"
    
    var image: UIImage {
        do {
            return try FileManager().readImage(with: id)
        } catch {
            return UIImage(systemName: "photo.fill")!
        }
    }
}
