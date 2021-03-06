//
//  ViewController.swift
//  WeatherApp
//
//  Created by ידין גמליאל on 15/04/2018.
//  Copyright © 2018 ידין גמליאל. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UICollectionViewDataSource, UICollectionViewDelegate {
    
   
    

    
    @IBOutlet weak var weatherCollectionView: UICollectionView!
    
    private var cityIds:[Int] = [Int]()
    
    @IBOutlet weak var pageControl: UIPageControl!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
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
        
configurePageControl()
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return cityIds.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
      
        let cell = weatherCollectionView.dequeueReusableCell(withReuseIdentifier: "cityCell" , for: indexPath)
        
        print("\(indexPath)")
        
        if let cityCell = cell as? CityWeatherCollectionViewCell
        {
            pageControl.currentPage = indexPath.item
            cityCell.cityId = cityIds[indexPath.item]
        }
        return cell
        
        
    }

    func configurePageControl() {
        self.pageControl.numberOfPages = cityIds.count
        self.pageControl.currentPage = 0
        self.pageControl.currentPageIndicatorTintColor = UIColor.green
    }

}

