//
//  CityJSONData.swift
//  WeatherApp
//
//  Created by ידין גמליאל on 15/04/2018.
//  Copyright © 2018 ידין גמליאל. All rights reserved.
//

import Foundation


struct CityJSONData: Codable{
    
    let coord: Coordinate
    let weather: [Weather]
    let base: String
    let main: MainData
    let visibility: Int
    let wind: Wind
    let clouds: Clouds
    let dt: Int
    let sys: Sys
    let id: Int
    let name: String
    let cod: Int
    
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: JSONDataCodingKeys.self)
        coord = try container.decode (Bool.self, forKey: .status)
        weather = try container.decode (CampaignList.self, forKey: .data)
        base = try container.decode (Bool.self, forKey: .status)
        main = try container.decode (CampaignList.self, forKey: .data)
        visibility = try container.decode (Bool.self, forKey: .status)
        wind = try container.decode (CampaignList.self, forKey: .data)
        clouds = try container.decode (Bool.self, forKey: .status)
        dt = try container.decode (CampaignList.self, forKey: .data)
        sys = try container.decode (Bool.self, forKey: .status)
        id = try container.decode (CampaignList.self, forKey: .data)
        name = try container.decode (Bool.self, forKey: .status)
        code = try container.decode (CampaignList.self, forKey: .data)
        
    }
    //JSONData struct
    func encode(to encoder: Encoder) throws {
        var container = encoder.container (keyedBy: JSONDataCodingKeys.self)
        try container.encode (status, forKey: .status)
        try container.encode (data, forKey: .data)
    }
    
    struct Coordinate: Codable {
        let lon: Double
        let lat: Double
        
        
        enum CoordinateCodingKeys: String, CodingKey {
            case lon
            case lat
        }
        
    }
    
    struct Weather: Codable {
        
          let id:Int
            let main:String
            let description:String
            let icon: String
        
        enum WeatherCodingKeys: String, CodingKey {
            case id
            case main
            case description
            case icon
        }
        
    }
    
    struct MainData : Codable{
        
        let temp:Double
        let pressure:Int
        let humidity:Int
        let temp_min: Double
        let temp_max: Double
        
        enum MainDataCodingKeys: String, CodingKey {
            case temp
            case pressure
            case humidity
            case temp_min
            case temp_max
            
        }
        
    }
    
    struct Wind: Codable{
        
        let speed:Double
        let deg:Int
    
        
        enum WindDataCodingKeys: String, CodingKey {
            case speed
            case deg
 
        }
        
    }
    
    
    
    
    struct Clouds: Codable{
        
        let all:Int
        
        enum CloudsDataCodingKeys: String, CodingKey {
            case all
        }
        
    }
    
    struct Sys: Codable{
        
        let type:Int
        let id:Int
         let message:Double
         let country:String
         let sunrise:Int
         let sunset:Int
        
        enum SysDataCodingKeys: String, CodingKey {
            case type
            case id
            case message
            case country
            case sunrise
            case sunset
            
        }
        
    }
    
    
    
    enum CityJSONDataCodingKeys: String, CodingKey {
        case coord
        case weather
        case base
        case main
        case visibility
        case wind
        case clouds
        case dt
        case sys
        case id
        case name
        case cod
        
    }
    
    
}


//{
//    "coord":{
//        "lon":145.77,
//        "lat":-16.92
//    },
//    "weather":[
//    {
//    "id":802,
//    "main":"Clouds",
//    "description":"scattered clouds",
//    "icon":"03n"
//    }
//    ],
//    "base":"stations",
//    "main":{
//        "temp":300.15,
//        "pressure":1007,
//        "humidity":74,
//        "temp_min":300.15,
//        "temp_max":300.15
//    },
//    "visibility":10000,
//    "wind":{
//        "speed":3.6,
//        "deg":160
//    },
//    "clouds":{
//        "all":40
//    },
//    "dt":1485790200,
//    "sys":{
//        "type":1,
//        "id":8166,
//        "message":0.2064,
//        "country":"AU",
//        "sunrise":1485720272,
//        "sunset":1485766550
//    },
//    "id":2172797,
//    "name":"Cairns",
//    "cod":200
//}
