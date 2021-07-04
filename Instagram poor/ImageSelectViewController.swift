//
//  ImageSelectViewController.swift
//  Instagram poor
//
//  Created by Anna T on 2021/06/19.
//

import UIKit

class ImageSelectViewController:UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    @IBAction func handleLibraryButton(_ sender: Any) {
        // ライブラリ（カメラロール）を指定してピッカーを開く
                if UIImagePickerController.isSourceTypeAvailable(.photoLibrary) {
                    let pickerController = UIImagePickerController()
                    pickerController.delegate = self
                    pickerController.sourceType = .photoLibrary
                    self.present(pickerController, animated: true, completion: nil)
                }
    }
    
    @IBAction func handleCameraButton(_ sender: Any) {
        // カメラを指定してピッカーを開く
                if UIImagePickerController.isSourceTypeAvailable(.camera) {
                    let pickerController = UIImagePickerController()
                    pickerController.delegate = self
                    pickerController.sourceType = .camera
                    self.present(pickerController, animated: true, completion: nil)
    }
  }
    @IBAction func handleCancelButton(_ sender: Any) {
        // 画面を閉じる
                self.dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
            super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
        
}
