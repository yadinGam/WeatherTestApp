//
//  CityWeatherCollectionViewCell.swift
//  WeatherApp
//
//  Created by ידין גמליאל on 15/04/2018.
//  Copyright © 2018 ידין גמליאל. All rights reserved.
//

import UIKit

class CityWeatherCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var tempertureLabel: UILabel!
    @IBOutlet weak var wetherDescriptionLabel: UILabel!
    @IBOutlet weak var wetherImageView: UIImageView!
    
    
    var city: City?{
        didSet{
            print("campaign had been set to cell")
            updateUI()
        }
    }
    
    
    func updateUI(){
      
        fetchImage()
    }
    
    
    private func fetchImage() {
//        if let url = campaign?.videoThumbnail {
//            Alamofire.request(url).response {[weak self] response in
//                if let data = response.data {
//                    let image = UIImage(data: data)
//                    self?.campaignImage.image = image
//                } else {
//                    print("Data is nil.")
//                }
//            }
//        }
    
}

}
