//
//  ViewController.swift
//  ClashStats
//
//  Created by Jonathas Lopes on 15/11/22.
//

import UIKit

class ViewController: UIViewController {
    
    var clashUIView: ClashUIView?
    
    override func loadView() {
        self.clashUIView = ClashUIView()
        self.view = self.clashUIView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
}

