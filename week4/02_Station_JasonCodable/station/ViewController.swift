//
//  ViewController.swift
//  station
//
//  Created by 蔡佳峪 on 2023/7/18.
//
import Foundation
import UIKit

class ViewController: UIViewController {
//透過Codable協議使用JSONDecoder解碼(反序列化)
struct Station: Codable {
    var stationID: String
    var stationName: String
    var stationAddress: String
 }
    
 @IBOutlet weak var stationID: UILabel!
 @IBOutlet weak var stationName: UILabel!
 @IBOutlet weak var stationAddress: UILabel!
    
 override func viewDidLoad() {
  super.viewDidLoad()
  fetchTheData()
 }

 func fetchTheData(){
     //URL
     var components = URLComponents()
         components.scheme = "https"
         components.host = "remote-assignment.s3.ap-northeast-1.amazonaws.com"
         components.path = "/station"
     if let endpointURL = components.url{
         let request = URLRequest(url: endpointURL)
         let session = URLSession.shared
         //非同步執行網路請求
         let task = session.dataTask(with: request,completionHandler: { data, response, error in
             if let  error = error {
                 print("\(error)")
                 return
             }
             guard let data = data else{
                 print("No data.")
                 return
             }
             //解碼JSON資料
             do{
                 let decoder = JSONDecoder()
                 let station = try decoder.decode(Station.self, from: data)
             //更新主線程
                 DispatchQueue.main.async {
                     self.stationID.text = station.stationID
                     self.stationName.text = station.stationName
                     self.stationAddress.text = station.stationAddress
                 }
             }catch{
                 print("Error: Invalid decoding ")
             }
         })
         //啟動網路請求task
         task.resume()
     }else{print("Error: Invalid EndpointURL")}
 }
}
