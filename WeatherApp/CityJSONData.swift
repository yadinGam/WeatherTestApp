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
        let container = try decoder.container(keyedBy: CityJSONDataCodingKeys.self)
        coord = try container.decode (Coordinate.self, forKey: .coord)
        weather = try container.decode ([Weather].self, forKey: .weather)
        base = try container.decode (String.self, forKey: .base)
        main = try container.decode (MainData.self, forKey: .main)
        visibility = try container.decode (Int.self, forKey: .visibility)
        wind = try container.decode (Wind.self, forKey: .wind)
        clouds = try container.decode (Clouds.self, forKey: .clouds)
        dt = try container.decode (Int.self, forKey: .dt)
        sys = try container.decode (Sys.self, forKey: .sys)
        id = try container.decode (Int.self, forKey: .id)
        name = try container.decode (String.self, forKey: .name)
        cod = try container.decode (Int.self, forKey: .cod)
        
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container (keyedBy: CityJSONDataCodingKeys.self)
        try container.encode (coord, forKey: .coord)
        try container.encode (weather, forKey: .weather)
        try container.encode (base, forKey: .base)
        try container.encode (main, forKey: .main)
        try container.encode (visibility, forKey: .visibility)
        try container.encode (wind, forKey: .wind)
        try container.encode (clouds, forKey: .clouds)
        try container.encode (dt, forKey: .dt)
        try container.encode (sys, forKey: .sys)
        try container.encode (id, forKey: .id)
             try container.encode (name, forKey: .name)
             try container.encode (cod, forKey: .cod)
        
    }
    
    
    
    struct Coordinate: Codable {
        let lon: Double
        let lat: Double
        
        init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CoordinateCodingKeys.self)
            lon = try container.decode (Double.self, forKey: .lon)
            lat = try container.decode (Double.self, forKey: .lat)

        }
        func encode(to encoder: Encoder) throws {
            var container = encoder.container (keyedBy: CoordinateCodingKeys.self)
            try container.encode (lon, forKey: .lon)
            try container.encode (lat, forKey: .lat)
            
        }
        
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
        
        init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: WeatherCodingKeys.self)
            id = try container.decode (Int.self, forKey: .id)
            
            main = try container.decode (String.self, forKey: .id)
            
            description = try container.decode (String.self, forKey: .id)
            
            icon = try container.decode (String.self, forKey: .id)
            
        }
 
        func encode(to encoder: Encoder) throws {
            var container = encoder.container (keyedBy: WeatherCodingKeys.self)
            
            try container.encode (id, forKey: .id)
            try container.encode (main, forKey: .main)
            try container.encode (description, forKey: .description)
            try container.encode (icon, forKey: .icon)
            
        }
        
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
        
        init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: MainDataCodingKeys.self)
            temp = try container.decode (Double.self, forKey: .temp)
            pressure = try container.decode (Int.self, forKey: .pressure)
            humidity = try container.decode (Int.self, forKey: .humidity)
            temp_min = try container.decode (Double.self, forKey: .temp_min)
            temp_max = try container.decode (Double.self, forKey: .temp_max)
        }
        //JSONData struct
        func encode(to encoder: Encoder) throws {
            var container = encoder.container (keyedBy: MainDataCodingKeys.self)
            
            try container.encode (temp, forKey: .temp)
            try container.encode (pressure, forKey: .pressure)
            try container.encode (humidity, forKey: .humidity)
            try container.encode (temp_min, forKey: .temp_min)
            try container.encode (temp_max, forKey: .temp_max)
        }
        
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
    
        init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: WindDataCodingKeys.self)
            speed = try container.decode (Double.self, forKey: .speed)
            deg = try container.decode (Int.self, forKey: .deg)
            
        }
        //JSONData struct
        func encode(to encoder: Encoder) throws {
            var container = encoder.container (keyedBy: WindDataCodingKeys.self)
            try container.encode (speed, forKey: .speed)
            try container.encode (deg, forKey: .deg)
            
        }
        
        enum WindDataCodingKeys: String, CodingKey {
            case speed
            case deg
 
        }
        
    }
    
    
    
    
    struct Clouds: Codable{
        
        let all:Int
        
        init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CloudsDataCodingKeys.self)
            all = try container.decode (Int.self, forKey: .all)
            
        }
        //JSONData struct
        func encode(to encoder: Encoder) throws {
            var container = encoder.container (keyedBy: CloudsDataCodingKeys.self)
            
            try container.encode (all, forKey: .all)
            
        }
        
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
        
        
        init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: SysDataCodingKeys.self)
            type = try container.decode (Int.self, forKey: .type)
            id = try container.decode (Int.self, forKey: .id)
            message = try container.decode (Double.self, forKey: .message)
            country = try container.decode (String.self, forKey: .country)
            sunrise = try container.decode (Int.self, forKey: .sunrise)
            sunset = try container.decode (Int.self, forKey: .sunset)
        }
        //JSONData struct
        func encode(to encoder: Encoder) throws {
            var container = encoder.container (keyedBy: SysDataCodingKeys.self)
            
            try container.encode (type, forKey: .type)
            try container.encode (id, forKey: .id)
            try container.encode (message, forKey: .message)
            try container.encode (country, forKey: .country)
            try container.encode (sunrise, forKey: .sunrise)
            try container.encode (sunset, forKey: .sunset)
            
            
        }
        
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
