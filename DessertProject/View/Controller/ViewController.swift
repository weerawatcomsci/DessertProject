//
//  ViewController.swift
//  DessertProject
//
//  Created by Weerawat Plianchum on 27/10/2561 BE.
//  Copyright © 2561 Weerawat Plianchum. All rights reserved.
//

import UIKit
import RxAlamofire
import ObjectMapper
import RxSwift
import Alamofire


class ViewController: UIViewController {


    @IBAction func loginBtn(_ sender: Any) {
     
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        loadPhoto()
//        login(city_id: "1")
    
    }

    func login(city_id: String) {
        let router = AlamofireRouter.loadDessert(city_id: city_id)
        Alamofire.request(router).responseJSON { (response) in
            switch response.result {
            case .success(let value):
            
                print(value)
            case .failure(let error):
                print(error)
            }
        }
    }
    func loadPhoto() {
        let router = AlamofireRouter.loadPhoto
        Alamofire.request(router).responseJSON { (response) in
            switch response.result {
            case .success(let value):
            
                print(value)
            case .failure(let error):
                print(error)
            }
        }
    }
}

