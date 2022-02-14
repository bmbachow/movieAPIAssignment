//
//  MovieViewModel.swift
//  movieAPIAssignment
//
//  Created by Brian Bachow on 2/11/22.
//

import Foundation

class MovieViewModel {
    
    typealias CompletionHandler = (()->())?
    var arr = Movies()
    var error: Error?
    
    func getData(completionHandler: CompletionHandler) {
        APIHandler.shared.getData() { [weak self] arr, response, error in
            
            guard let data = arr else { return }
            
            do {
                let object = try JSONDecoder.init().decode(Movies.self, from: data)
                self?.setData(arr: object)
            } catch {
                print(error)
                return
            }
            completionHandler?()
        }
        
    }
    
    func getArrresponse() -> Movies {
        return arr
    }
    
    func getMovie(index: Int) -> Movie {
        return arr[index]
    }
    
    
    func getError()->Error? {
        return error
    }
        
        
    func setData(arr : Movies) {
            self.arr = arr
    }
    
    func getCount() -> Int {
        return arr.count
    }
    
    func getMovieTitleHeader(index:Int?)->String{
        return arr.first?.title ?? "No Header"
        
    }
}

