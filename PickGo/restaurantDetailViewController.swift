//
//  restaurantDetailViewController.swift
//  PickGo
//
//  Created by Lily on 3/20/18.
//  Copyright © 2018 Lily. All rights reserved.
//

import UIKit

class restaurantDetailViewController: UIViewController {

    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblRating: UILabel!
    @IBOutlet weak var lblAddress: UILabel!
    @IBOutlet weak var lblPhoneNumber: UILabel!
    
    var restaurant:Restaurant?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.title = "Restaurant Detail"
        lblName.text = restaurant!.name
        lblRating.text = String(restaurant!.rating)
        lblAddress.text = String(restaurant!.street)
        lblPhoneNumber.text = restaurant!.phoneNumber
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
