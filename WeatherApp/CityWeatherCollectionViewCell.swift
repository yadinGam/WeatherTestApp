//
//  CityWeatherCollectionViewCell.swift
//  WeatherApp
//
//  Created by ידין גמליאל on 15/04/2018.
//  Copyright © 2018 ידין גמליאל. All rights reserved.
//

import UIKit
import Alamofire

class CityWeatherCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var tempertureLabel: UILabel!
    @IBOutlet weak var weatherDescriptionLabel: UILabel!
    @IBOutlet weak var weatherImageView: UIImageView!
    
    var cityId: Int?{
        didSet{
      currentUrl = "http://api.openweathermap.org/data/2.5/weather?id=\(cityId!)&appid=d2bd923726d8850b7677856f80cb52cd"
            print(currentUrl!)
        }
    }
    
        private var currentUrl:String?{
            didSet{
                //send request to server
                if currentUrl != nil{
                    parseJSON(with: currentUrl!)
                }
                
            }
        }
    
    
    var cityJSONData: CityJSONData?{
        didSet{
            print("cityJSONData had been set to cell")
           updateUI()
        }
    }
    
    
    func updateUI(){
      nameLabel.text = cityJSONData?.name
        let celsiusTemp = cityJSONData!.main.temp - 273.15
        let y = Double(round(1000*celsiusTemp)/1000)
        tempertureLabel.text = String("\(y) celsius")
        weatherDescriptionLabel.text = cityJSONData?.weather[0].description
        
     fetchImage()
    }
    
    private func parseJSON(with jsonUrlString: String){
        //1. get the json from server
    
        Alamofire.request(jsonUrlString).responseJSON { [weak self] (response) in
            
            //2. parse the json into objects
            guard let data = response.data else{
                return
            }
            let decoder = JSONDecoder()
            do{
                let jsonData = try decoder.decode(CityJSONData.self, from: data)
                self?.cityJSONData = jsonData
                print("name: \(jsonData.name)")
               
            }catch{
                print("JSON decoding failed with error: \(error)")
               
            }
            
        }
        
    }
    
    
    private func fetchImage() {
        if let iconUrl = cityJSONData?.weather[0].icon {
            let url = "http://openweathermap.org/img/w/\(iconUrl).png"
            Alamofire.request(url).response {[weak self] response in
                if let data = response.data {
                    let image = UIImage(data: data)
                    self?.weatherImageView.image = image
                } else {
                    print("Data is nil.")
                }
            }
        }
    
}

}
