//
//  ApiCaller.swift
//  CombineIntro
//
//  Created by Trevisol, Maiara on 19/08/21.
//
import Combine
import Foundation

class APICaller {
    
    static let shared = APICaller()
    func fetchCompanies() -> Future<[String], Error>{
        
        return Future { promixe in
            DispatchQueue.main.asyncAfter(deadline: .now()+3) {
                promixe(.success(["Apple", "Google", "Microsoft", "Facebook"]))
            }
            
        }
        
    }
}
