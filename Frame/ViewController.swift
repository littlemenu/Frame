//
//  ViewController.swift
//  Frame
//
//  Created by 정재훈 on 2019/10/14.
//  Copyright © 2019 Jung. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextViewDelegate {

    @IBOutlet weak var textViewTest: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        textViewTest.backgroundColor = .systemBlue
        textViewTest.delegate = self
    }
    
    func textViewDidBeginEditing(_ textView: UITextView) {
        print("textView Did Begin Editing")
        textView.text = "Hi, My name is Vex"
        setFrame()
    }

    func setFrame() {
        textViewTest.translatesAutoresizingMaskIntoConstraints = false
        textViewTest.frame.size.width = 100.0
        textViewTest.frame.size.height = 100.0
        // view.layoutIfNeeded()
    }
}

