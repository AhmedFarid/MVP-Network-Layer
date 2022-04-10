//
//  UsersInteractor .swift
//  MVP
//
//  Created by Farido on 14/01/2022.
//

import Foundation
import Alamofire
import AlamofireObjectMapper

class UsersInteractor  {
    
    func getUser(completionHandler: @escaping ([User]?, Error?) -> ()) {
        AF.request("https://jsonplaceholder.typicode.com/users").responseArray {(respons: DataResponse<[User],AFError>) in
            let result = respons.result
            switch result {
            case .success(let users):
                completionHandler(users,nil)
            case.failure(let error):
                completionHandler(nil,error)
            }
            
            
        }
    }
}
