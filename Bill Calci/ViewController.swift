//
//  ViewController.swift
//  Bill Calci
//
//  Created by Ashwath Sridhar on 14/12/16.
//  Copyright © 2016 Ashwath. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var length: UITextField!
    @IBOutlet weak var width: UITextField!
    @IBOutlet weak var price: UITextField!
    @IBOutlet weak var quantity: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let sec = segue.destination as? VC2
        sec?.lengthop = length.text!
        sec?.widthop = width.text!
        sec?.priceop = price.text!
        sec?.quantityop = quantity.text!
    }
    
}
