//
//  ViewController.swift
//  WeatherApp
//
//  Created by ידין גמליאל on 15/04/2018.
//  Copyright © 2018 ידין גמליאל. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UICollectionViewDataSource, UICollectionViewDelegate{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        // get a reference to our storyboard cell
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cityCell", for: indexPath as IndexPath) as! CityWeatherCollectionViewCell
        
        // Use the outlet in our custom class to get a reference to the UILabel in the cell
        cell.nameLabel.text = String("\(indexPath.row)")
        cell.backgroundColor = UIColor.cyan // make cell more visible in our example project
        
        
        return cell
    }
    
    @IBOutlet weak var weatherCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        weatherCollectionView.delegate = self
        weatherCollectionView.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

