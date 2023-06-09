//
//  CustomCell.swift
//  UIKit&SwiftUI


import Foundation
import UIKit

class CustomCell: UITableViewCell {
    
    static let reuseId = "CustomCell"
    @IBOutlet weak var postImageView: UIImageView!
    @IBOutlet weak var postLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        postImageView.layer.cornerRadius = 10
        
    }
    
    func set(post: Post) {
        postImageView.image = post.image
        postLabel.text = post.text
    }
}
