//
//  newMemoViewController.swift
//  MemoApplication
//
//  Created by 김영현 on 2022/06/18.
//

import UIKit

class CreateViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let rowImg = UIImage(systemName: "ellipsis.circle")
        
        let rowButton = UIBarButtonItem(image: rowImg, style: .plain, target: self, action: #selector(didTapRowButton(sender:)))
        let doneButton = UIBarButtonItem(title: "완료", style: .plain, target: self, action: #selector(didTapDoneButton(sender:)))
        
        rowButton.tintColor = UIColor.systemOrange
        doneButton.tintColor = UIColor.systemOrange
        
        navigationItem.rightBarButtonItems = [doneButton, rowButton]
    }
    
    @objc func didTapRowButton(sender: AnyObject){
        
    }
    
    @objc func didTapDoneButton(sender: AnyObject){
        
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
