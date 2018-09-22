//
//  VC2.swift
//  Bill Calci
//
//  Created by Ashwath Sridhar on 14/12/16.
//  Copyright © 2016 Ashwath. All rights reserved.
//

import UIKit

class VC2: UIViewController {
    @IBOutlet weak var length2: UITextField!
    @IBOutlet weak var width2: UITextField!
    @IBOutlet weak var price2: UITextField!
    @IBOutlet weak var quantity2: UITextField!
    
    @IBOutlet weak var total: UITextField!
    @IBOutlet weak var vat: UITextField!
    @IBOutlet weak var gtotal: UITextField!
    
    var lengthop = String()
    var widthop = String()
    var priceop = String ()
    var quantityop = String()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        length2.text = lengthop
        width2.text = widthop
        price2.text = priceop
        quantity2.text = quantityop
        let a = Double(length2.text!)
        let b = Double(width2.text!)
        let p = Double(price2.text!)
        let q = Double(quantity2.text!)
        let tot = round(((a! * b! * p! * q!)/144)*100)/100;
        let vt = round((0.05 * tot)*100)/100;
        let gt = vt+tot
        total.text = String(tot)
        vat.text = String(vt)
        gtotal.text = String(gt)
        
        
        
        
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}

