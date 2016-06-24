//
//  ViewController.swift
//  animacja2
//
//  Created by Kamil Wójcik on 24.06.2016.
//  Copyright © 2016 Kamil Wójcik. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var spotifyBiałeLogo: UIImageView!
    @IBOutlet weak var spotifyTekst: UILabel!
    @IBOutlet weak var kontynuujBtn: UIButton!
    @IBOutlet weak var obrazek: UIImageView!
    
    var teksty = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //przezroczysty navigation bar
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), forBarMetrics: .Default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.translucent = true
        
        self.navigationController!.navigationBar.tintColor = UIColor.whiteColor()
        
        teksty = ["W Spotify możesz znaleźć miliony utworów. Odtwarzaj swoje ulubione, odkrywaj nowe utwory i zbuduj perfekcyjną kolekcję.", "Odkryjesz gotowe playlisty pasujące do Twojego nastroju, które zostały utworzone przez fanów muzyki i ekspertów.", "Posłuchaj najnowszych singli i albumów z tego tygodnia, a także sprawdzaj przeboje na liście Top 50.", "Czy wiesz, czego chcesz posłuchać? Wystarczy wyszukać i nacisnąć przycisk odtwarzania.", "Sprawdź ostatnie listy przebojów, najnowsze wydania i doskonałe playlisty już teraz.", "Co poniedziałek słuchaj nowej muzyki na osobistej playliście. Lub usiądź wygodnie i posłuchaj radia."]
    }
    
    override func viewWillAppear(animated: Bool) {
        obrazek.alpha = 0.0
        kontynuujBtn.alpha = 0.0
        spotifyTekst.alpha = 0.0
        kontynuujBtn.layer.cornerRadius = 2.0
        self.kontynuujBtn.center.y += 30

    }
    
    override func viewDidAppear(animated: Bool) {
        
        UIView.animateWithDuration(1, delay: 0.0, options: [], animations: {
            
            self.obrazek.alpha = 1.0
            
            }, completion: nil)
        
        UIView.animateWithDuration(2.0, delay: 0.5, usingSpringWithDamping: 0.4, initialSpringVelocity: 0.6, options: [], animations: {
            
            self.kontynuujBtn.alpha = 1.0
            self.kontynuujBtn.center.y -= 30
            
            }, completion: { finished in
                self.tekstySpotify(0)
        })
    }
    
    func tekstySpotify(var index: Int){
        let tekst = self.teksty[index]
        self.spotifyTekst.text = tekst
        
        self.spotifyTekst.center.y += 30.0
        
        UIView.animateKeyframesWithDuration(10.0, delay: 0.0, options: [], animations: {
            
            UIView.addKeyframeWithRelativeStartTime(0.0, relativeDuration: 0.10, animations: {
                
                self.spotifyTekst.alpha = 0.5
                
            })
            
            UIView.addKeyframeWithRelativeStartTime(0.10, relativeDuration: 0.05, animations: {
                
                self.animacjaKeyFrame()
                
            })
            
            
            UIView.addKeyframeWithRelativeStartTime(0.90, relativeDuration: 0.05, animations: {
                
                self.spotifyTekst.alpha = 0.0
            })
            
            
            }, completion: { finished in
                
                if index == self.teksty.count-1 {
                    index = 0
                } else {
                    index += 1
                }
                
                self.tekstySpotify(index)
                
        })
    }
    
    func animacjaKeyFrame(){
        UIView.animateWithDuration(1.0, delay: 0.0, usingSpringWithDamping: 0.7, initialSpringVelocity: 0.0, options: [], animations: { 
            
            self.spotifyTekst.center.y -= 30.0
            }, completion: nil)
    }
    
    @IBAction func kontynuujBtn(sender: AnyObject) {
    }
    
}

