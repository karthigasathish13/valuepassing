//
//  ProfileView.swift
//  valuepassandimage
//
//  Created by apple on 7/26/23.
//

import UIKit

class ProfileView: UIViewController {
    
    
    var name : String?
    var img: UIImage?

    @IBOutlet weak var iholder: UIImageView!
    
    
    @IBOutlet weak var lab: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        iholder.image = img
        lab.text = name
        
        

       
    }
    

}
