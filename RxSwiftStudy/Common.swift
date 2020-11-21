//
//  Common.swift
//  RxSwiftStudy
//
//  Created by 정영모 on 2020/11/22.
//

import UIKit

let largeImageUrl = "https://picsum.photos/1024/768/?random"
let largerImageUrl = "https://picsum.photos/1280/720/?random"
let largestImageUrl = "https://picsum.photos/2560/1440/?random"

func asyncLoadImage(from imageUrl: String, completed: @escaping (UIImage?) -> void) {
    
    DispatchQueue.global().asyc{
        guard let url = URL(string: imageUrl) else {
            completed(nil)
            return
        }
        
        guard let data = try? Data(contentsOf: url) else {
            completed(nil)
            return
        }
            
        let image = UIImage(data: data)
        completed(image)
    }
}
