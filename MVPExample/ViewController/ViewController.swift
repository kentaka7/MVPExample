//
//  ViewController.swift
//  MVPExample
//
//  Created by takakura naohiro on 2018/10/24.
//  Copyright © 2018年 GeoMagnet. All rights reserved.
//

import UIKit

class ViewController: UIViewController,JsonsDataPresenterProtocol {

    fileprivate var presenter: JsonsDataPresenter!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.setupPresenter()
    }

    func showArticle(_ JsonsData: JsonsData) {
        //articleContents.append(article)
    }

    private func setupPresenter() {
        presenter = JsonsDataPresenter(presenter: self)
        presenter.getDataList()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

