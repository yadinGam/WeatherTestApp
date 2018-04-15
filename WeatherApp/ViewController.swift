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
    
     private var cityIds:[Int] = [Int]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        weatherCollectionView.delegate = self
        weatherCollectionView.dataSource = self
        
        
        let city0 = 819827
        let city1 = 524901
        let city2 = 1271881
        let city3 = 1283240
        let city4 = 1282898
        let city5 = 703448
        let city6 = 3632308
        let city7 = 1273294
        let city8 = 502069
        let city9 = 3645532    
        
       
        cityIds.append(city0)
        cityIds.append(city1)
        cityIds.append(city2)
        cityIds.append(city3)
        cityIds.append(city4)
        cityIds.append(city5)
        cityIds.append(city6)
        cityIds.append(city7)
        cityIds.append(city8)
        cityIds.append(city9)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return cityIds.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        // get a reference to our storyboard cell
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cityCell", for: indexPath as IndexPath) as! CityWeatherCollectionViewCell
        
        // Use the outlet in our custom class to get a reference to the UILabel in the cell
        cell.nameLabel.text = String("\(indexPath.row)")
        cell.backgroundColor = UIColor.cyan // make cell more visible in our example project
        
        //here i need to call the api
        
        return cell
    }


}

