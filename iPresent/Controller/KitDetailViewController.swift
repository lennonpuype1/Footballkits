//
//  KitDetailViewController.swift
//  iPresent
//
//  Created by Lennon Puype on 12/04/2019.
//  Copyright © 2019 Lennon Puype. All rights reserved.
//

import UIKit

class KitDetailViewController: UIViewController {

    //MARK: IBOutlets
    @IBOutlet weak var goBack: UIButton!
    
    @IBOutlet weak var playerName: UILabel!
    @IBOutlet weak var fullName: UILabel!
    @IBOutlet weak var club: UILabel!
    @IBOutlet weak var shortInfo: UILabel!
    
    @IBOutlet weak var activeImg: UIImageView!
    
    @IBOutlet weak var kitImage: UIImageView!
    
    //MARK: Global variables
    var kit:Kit?;
    
    //MARK: Loading view
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        goBack.layer.cornerRadius = 20;
        setData();
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: true)
    }
    
    
    //MARK: Managing data
    func setData(){
        playerName.text = kit?.playername;
        fullName.text = kit?.playername;
        club.text = kit?.team;
        shortInfo.text = kit?.moreinfo;
        let img = UIImage(data: kit!.image!);
        kitImage.image = img;
        
        let active = kit!.activity;

        if(active){
            activeImg.image = UIImage(named: "true")
        }else{
            activeImg.image = UIImage(named: "false")
        }
    }
  
    //MARK: IBActions
    @IBAction func btnGoBackToYourCollection(_ sender: Any) {
        performSegue(withIdentifier: "gotoYourCollection", sender: nil)
    }
    
}
