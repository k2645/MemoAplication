//
//  ViewController.swift
//  MemoApplication
//
//  Created by 김영현 on 2022/06/13.
//

import UIKit

class HomeViewController: UIViewController, UITableViewDataSource,  UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(
            withIdentifier: "cell",
            for: indexPath) as? CustomCell else { return UITableViewCell() }
        
        return cell
    }

    
    @IBAction func quickButton(_ sender: Any) {
        guard let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "QuickVC") else { return }
        self.navigationController?.pushViewController(nextVC, animated: true)
    }
    
    @IBAction func createButton(_ sender: Any) {
        guard let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "createVC") else { return }
        self.navigationController?.pushViewController(nextVC, animated: true)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let backBarButtonItem = UIBarButtonItem(title: "폴더", style: .plain, target: self, action: nil)
        
        backBarButtonItem.tintColor = .systemOrange
        
        self.navigationItem.backBarButtonItem = backBarButtonItem
        
    }


}

class CustomCell: UITableViewCell {
    
    @IBOutlet weak var folderButton: UIButton!
    
}
