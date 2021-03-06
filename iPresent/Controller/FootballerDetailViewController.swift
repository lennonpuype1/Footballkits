//
//  FootballerDetailViewController.swift
//  iPresent
//
//  Created by Lennon Puype on 07/04/2019.
//  Copyright © 2019 Lennon Puype. All rights reserved.
//

import UIKit
import YoutubePlayer_in_WKWebView

class FootballerDetailViewController: UIViewController {

    //MARK: IBOulets
    //info
    @IBOutlet weak var FootballerName: UILabel!
    @IBOutlet weak var FootballerImage: UIImageView!
    
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var country: UILabel!
    @IBOutlet weak var team: UILabel!
    @IBOutlet weak var age: UILabel!
    
    @IBOutlet weak var activeImg: UIImageView!
    @IBOutlet weak var rating: UILabel!
    
    @IBOutlet weak var desc: UITextView!
    
    //Other
    @IBOutlet weak var backBtn: UIButton!
    @IBOutlet weak var clubLabel: UILabel!
    
    @IBOutlet weak var video: WKYTPlayerView!
    
    //MARK: Global variables
    var footballer:Footballer?;
    
    //MARK: View loading
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        useData();
        backBtn.layer.cornerRadius =  20;
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: true)
    }
    
    //MARK: Data
    func useData(){
        //
        FootballerImage.image = UIImage(named: footballer!.name.lowercased());
        FootballerName.text = footballer?.name;
        //
        name.text = footballer?.fullName;
        country.text = footballer?.national_team;
        //
        rating.text = footballer?.rating;
        //
        desc.text = footballer?.bio;
        
        let active = footballer!.active;
        let alive = footballer!.alive;
        
        if(active){
            activeImg.image = UIImage(named: "true")
            clubLabel.text = "Club: "
            team.text = footballer?.team;
        }else{
            activeImg.image = UIImage(named: "false")
            clubLabel.text = "Biggest Period: "
            team.text = footballer?.biggest_period;
        }
        
        if(alive){
            age.text = "\(footballer?.age ?? 0)";
        }else{
            age.text = "\(footballer?.age ?? 0) ✝";
        }
        
        video.load(withVideoId: "\(footballer?.video ?? "")")
        
    }
   
    //MARK: IBActions
    @IBAction func backButton(_ sender: Any) {
        print("Go Back")
        performSegue(withIdentifier: "goBackToFeaturedPlayers", sender: nil)
    }
}
