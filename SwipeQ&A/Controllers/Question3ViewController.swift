//
//  Question3ViewController.swift
//  SwipeQ&A
//
//  Created by 奥城健太郎 on 2019/02/27.
//  Copyright © 2019 奥城健太郎. All rights reserved.
//

import UIKit

class Question3ViewController: UIViewController, UIGestureRecognizerDelegate {

    let userDefaults = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let rightSwipe = UISwipeGestureRecognizer(target: self, action: #selector(Question3ViewController.swipeGesture(_:)))
        rightSwipe.direction = .right
        self.view.addGestureRecognizer(rightSwipe)
        
        let leftSwipe = UISwipeGestureRecognizer(target: self, action: #selector(Question3ViewController.swipeGesture(_:)))
        leftSwipe.direction = .left
        self.view.addGestureRecognizer(leftSwipe)
        
        // Do any additional setup after loading the view.
    }
    
    @objc internal func swipeGesture(_ sender: UISwipeGestureRecognizer) {
        
        if sender.direction == .right {
            //好き
            print("Right")
            userDefaults.set("好き", forKey: "answer3")
            present()
        }
        else if sender.direction == .left {
            //嫌い
            print("Left")
            userDefaults.set("嫌い", forKey: "answer3")
            present()
        }
    }
    
    func present(){
        let storyboard: UIStoryboard = self.storyboard!
        let nextView = storyboard.instantiateViewController(withIdentifier: "result") as! ResultViewController
        nextView.modalTransitionStyle = .crossDissolve
        self.present(nextView, animated: true, completion: nil)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
