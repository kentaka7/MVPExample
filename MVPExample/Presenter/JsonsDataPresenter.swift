//
//  JsonsDataPresenter.swift
//  MVPExample
//
//  Created by takakura naohiro on 2018/10/24.
//  Copyright © 2018年 GeoMagnet. All rights reserved.
//

import UIKit
import SwiftyJSON
import Alamofire

protocol JsonsDataPresenterProtocol: class {
    func showArticle(_ jsonsData: JsonsData)
}

class JsonsDataPresenter {
    
    var presenter: JsonsDataPresenterProtocol!
    
    //MARK: - Initializer
    
    init(presenter: JsonsDataPresenterProtocol) {
        self.presenter = presenter
    }
    
    //MARK: - Functions
    
    //サンプル記事データを取得する
    func getDataList() {
        let apiRequestManager = APIRequestManager(endPoint: "", method: .get)
        
        apiRequestManager.requestAnsync(
            success: { (jsonString: String) in
                let json = try? JSONDecoder().decode(JsonsData.self, from: jsonString.data(using: .utf8)!)
                //self.presenter.showArticle(json)
        },
            fail: { (error: Error?) in
                
                //通信失敗時の処理をプロトコルを適用したViewController側で行う
                //self.presenter.hideArticle()
        }
        )
    }
}
