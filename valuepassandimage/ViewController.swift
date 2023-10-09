//
//  ViewController.swift
//  valuepassandimage
//
//  Created by apple on 7/26/23.
//

import UIKit

class ViewController: UIViewController,UIImagePickerControllerDelegate, UINavigationControllerDelegate{

    @IBOutlet weak var image: UIImageView!
    
    @IBOutlet weak var clickbtn: UIButton!
    
    @IBOutlet weak var textfield: UITextField!
    
    //var tname = "sai" //this name only
    
  
    
    let imagepicker = UIImagePickerController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imagepicker.delegate = self
        image.layer.borderWidth = 11
       image.layer.cornerRadius = .init(90)
        image.layer.borderColor = .init(red: 0, green: 0, blue: 225, alpha: 100)
    }


    @IBAction func clickbtnfun(_ sender: Any) { // no working
//       imagepicker.sourceType = .savedPhotosAlbum // device does not have a camera, specifies the Saved Photos album as the source
//
      self.present(imagepicker, animated: true)

    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) { //select the second page image   to click  firstpage will change
        
        
        let i = info[UIImagePickerController.InfoKey.originalImage] as! UIImage
        
        image.image = i //did appear
        
        dismiss(animated: true)//select after dismiss in profileview image
    }
    
    
    @IBAction func pro(_ sender: Any) { //proceed button
        
     //if   textfield.text == tname {
        
        //self.performSegue(withIdentifier: "one", sender: self)
        
        imagepicker.sourceType = .savedPhotosAlbum // device does not have a camera, specifies the Saved Photos album as the source

        self.present(imagepicker, animated: true)

            
//     }else {
//
//         print("Not allowed")
//     }
        
    }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let ob = segue.destination as! ProfileView
        
        
        ob.name = textfield.text //textfield to label
        ob.img = image.image
        
        
    }
    
}

