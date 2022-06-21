//
//  QuickViewController.swift
//  MemoApplication
//
//  Created by 김영현 on 2022/06/13.
//

import UIKit

class QuickViewController: UIViewController {
    
    @IBAction func createButton(_ sender: Any) {
        guard let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "createVC") else { return }
        self.navigationController?.pushViewController(nextVC, animated: true)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let setImg = UIImage(systemName: "ellipsis.circle")
        
        let setButton = UIBarButtonItem(image: setImg, style: .plain, target: self, action: #selector(didTapSetButton(sender:)))
        let backButton = UIBarButtonItem(title: "빠른 메모", style: .plain, target: self, action: nil)
        
        setButton.tintColor = UIColor.systemOrange
        backButton.tintColor = UIColor.systemOrange
        
        navigationItem.rightBarButtonItem = setButton
        navigationItem.backBarButtonItem = backButton
        
    }
    
    @objc func didTapSetButton(sender: AnyObject){
        
    }
    
}
