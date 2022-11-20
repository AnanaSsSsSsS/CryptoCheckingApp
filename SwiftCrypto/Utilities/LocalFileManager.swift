//
//  LocalFileManager.swift
//  SwiftCrypto
//
//  Created by macbook on 08.11.2022.
//

import Foundation
import SwiftUI

class LocalFileManager {
    
    static let instance = LocalFileManager()
    private init() {
        
    }
    
    func saveImage(image: UIImage) {
        guard
            let data = image.pngData(),
            let url = URL(string: "")
            else { return }
    
        do {
            try data.write(to: url)
        } catch let error {
            print("error saving image. \(error)")
        }
    }
    
    private func createFolderIfNeaded(folderName: String) {
        guard let url = getURLForFolder(folderName: folderName) else { return }
    }
    
    
    private func getURLForFolder(folderName: String) -> URL? {
        
        guard let url = FileManager.default.urls(for: .cachesDirectory, in: .userDomainMask).first else {
            return nil
        }
        return url.appendingPathComponent(folderName)
    }
    
    
    private func getURLForImage(imageName: String, folderName: String) -> URL? {
        
        guard let folderURL = getURLForFolder(folderName: folderName) else {
            return  nil
        }
        return folderURL.appendingPathComponent(imageName + "pnh")
        
    }
    
}
