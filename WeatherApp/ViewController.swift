//
//  ViewController.swift
//  WeatherApp
//
//  Created by ידין גמליאל on 15/04/2018.
//  Copyright © 2018 ידין גמליאל. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UICollectionViewDataSource, UICollectionViewDelegate{
    
   
    

    
    @IBOutlet weak var weatherCollectionView: UICollectionView!
    
     private var cities:[City] = [City]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        weatherCollectionView.delegate = self
        weatherCollectionView.dataSource = self
        
        
        let city0: City = City(lat: 3.44444,lon: 4.555555)
        let city1: City = City(lat: 3.44444,lon: 4.555555)
        let city2: City = City(lat: 3.44444,lon: 4.555555)
        let city3: City = City(lat: 3.44444,lon: 4.555555)
        let city4: City = City(lat: 3.44444,lon: 4.555555)
         let city5: City =  City(lat: 3.44444,lon: 4.555555)
         let city6: City =  City(lat: 3.44444,lon: 4.555555)
        let city7: City =  City(lat: 3.44444,lon: 4.555555)
        let city8: City =  City(lat: 3.44444,lon: 4.555555)
        let city9: City = City(lat: 3.44444,lon: 4.555555)
        
       
        cities.append(city0)
        cities.append(city1)
        cities.append(city2)
        cities.append(city3)
        cities.append(city4)
        cities.append(city5)
        cities.append(city6)
        cities.append(city7)
        cities.append(city8)
        cities.append(city9)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return cities.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        // get a reference to our storyboard cell
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cityCell", for: indexPath as IndexPath) as! CityWeatherCollectionViewCell
        
        // Use the outlet in our custom class to get a reference to the UILabel in the cell
        cell.nameLabel.text = String("\(indexPath.row)")
        cell.backgroundColor = UIColor.cyan // make cell more visible in our example project
        
        
        return cell
    }


}

