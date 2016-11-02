//
//  ViewController.swift
//  PickerViewPics
//
//  Created by Robert Martin on 9/20/16.
//  Copyright © 2016 Robert Martin. All rights reserved.
//
//This app is a demo of using pictures in pickerview

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    var imageArray: [UIImage] = [UIImage(named: "Pictues1.png")!,
                                 UIImage(named: "Pictues2.png")!,
                                 UIImage(named: "Pictues3.png")!,
                                 UIImage(named: "Pictues4.png")!,
                                 UIImage(named: "Pictues5.png")!,
                                 UIImage(named: "Pictues6.png")!,
                                 UIImage(named: "Pictues7.png")!,
                                 UIImage(named: "Pictues8.png")!,
                                 UIImage(named: "Pictues9.png")!,
                                 UIImage(named: "Pictues10.png")!,
                                 UIImage(named: "Pictues11.png")!]
    
    
    @IBOutlet weak var pickerView: UIPickerView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        pickerView.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    // MARK: UIPickerViewDataSource
    
    func numberOfComponents(in: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return 11
    }
    
    func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return 200
    }
    
    
    // MARK: UIPickerViewDelegate
    
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        
        
        var myImageView = UIImageView()
        
        switch row {
        case 0:
            myImageView = UIImageView(image: UIImage(named:"Pictues1.png"))
        case 1:
            myImageView = UIImageView(image: UIImage(named:"Pictues2.png"))
        case 2:
            myImageView = UIImageView(image: UIImage(named:"Pictues3.png"))
        case 3:
            myImageView = UIImageView(image: UIImage(named:"Pictues4.png"))
        case 4:
            myImageView = UIImageView(image: UIImage(named:"Pictues5.png"))
        case 5:
            myImageView = UIImageView(image: UIImage(named:"Pictues6.png"))
        case 6:
            myImageView = UIImageView(image: UIImage(named:"Pictues7.png"))
        case 7:
            myImageView = UIImageView(image: UIImage(named:"Pictues8.png"))
        case 8:
            myImageView = UIImageView(image: UIImage(named:"Pictues9.png"))
        case 9:
            myImageView = UIImageView(image: UIImage(named:"Pictues10.png"))
        case 10:
            myImageView = UIImageView(image: UIImage(named:"Pictues11.png"))
        default:
            myImageView.image = nil
            
            return myImageView
        }
        return myImageView
        
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        // do something with selected row
    }

    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return imageArray.description
    }
    
    
}

