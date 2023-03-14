//
//  ViewController.swift
//  UIKit&SwiftUI


import UIKit
import SwiftUI

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
   
    @IBOutlet weak var tableView: UITableView!
    var posts: [Post] = Post.fetchPosts()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "Courses"
        self.navigationController?.navigationBar.prefersLargeTitles = true
        
        tableView.register(UINib(nibName: "CustomCell", bundle: nil), forCellReuseIdentifier: CustomCell.reuseId)
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return posts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CustomCell.reuseId, for: indexPath) as! CustomCell
        cell.set(post: posts[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
    
}


