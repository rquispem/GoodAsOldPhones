//
//  ProductViewController.swift
//  GoodAsOldPhones
//
//  Created by Ruben Quispe Montoya on 11/18/16.
//  Copyright © 2016 rquispe. All rights reserved.
//

import UIKit

class ProductViewController: UIViewController {

    @IBOutlet weak var producNameLabel: UILabel!
    @IBOutlet weak var productImageView: UIImageView!
    
    var product: Product?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
//
        if let p = product {
            producNameLabel.text = p.name
            if let i = p.productImage {
                productImageView.image = UIImage(named: i)
            }
        }
        
        //productImageView.image = #imageLiteral(resourceName: "phone-fullscreen3") //image literal
    }

    @IBAction func addToCartPressed(_ sender: Any) -> Void {
        print("Button tapped")
        guard let product = product, let price = product.price else {
            return
        }
        let alertController = UIAlertController(title: "Saved to cart", message: "Saved to cart with a price of \(price)", preferredStyle: .alert)
        
        let action = UIAlertAction(title: "OK", style: .default, handler: nil)
        alertController.addAction(action)
        
        present(alertController, animated: true, completion: nil)
        
        show(alertController, sender: nil)
    }
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        // Dispose of any resources that can be recreated.
//    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
