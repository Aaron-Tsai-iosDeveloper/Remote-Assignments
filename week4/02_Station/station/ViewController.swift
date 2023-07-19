//
//  ViewController.swift
//  station
//
//  Created by 蔡佳峪 on 2023/7/18.
//
import Foundation
import UIKit

class ViewController: UIViewController {
    struct Station {
        let stationID: String
        let stationName: String
        let stationAddress: String
    }
    var station:Station?
    @IBOutlet weak var stationID: UILabel!
    @IBOutlet weak var stationName: UILabel!
    @IBOutlet weak var stationAddress: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        fetchTheData()
    }
    //組成URL
    func fetchTheData(){
        var components = URLComponents()
        components.scheme = "https"
        components.host = "remote-assignment.s3.ap-northeast-1.amazonaws.com"
        components.path = "/station"
        //設置端點、請求、Session
        if let endpointURL = components.url {
            let request = URLRequest(url: endpointURL)
            let session = URLSession.shared
            print("URL OK")
            //非同步處理dataTask
            let task = session.dataTask(with: request, completionHandler: { data , response, error in
                     print("Tsak Finish")
                    if let error = error {
                     print("\(error)")
                    return
                    }
                    guard let data = data else{
                     print("No data.")
                    return
                    }
                    //Data轉換Json格式 -> 提取字典
                    do{
                    let json = try
                     JSONSerialization.jsonObject(with: data)
                    if let rootDictionary = json as? [String:Any]{
                        if let stationIDValue = rootDictionary["stationID"]{
                            if let  stationID = stationIDValue as?String{
                                if let stationNameValue = rootDictionary["stationName"]{
                                    if let stationName = stationNameValue as?String{
                                        if let stationAddressValue = rootDictionary["stationAddress"]{
                                            if let stationAddress = stationAddressValue as? String{
                                                //創建實例station
                                                self.station = Station(stationID: stationID, stationName: stationName, stationAddress: stationAddress)
                                                //更新主線程
                                                DispatchQueue.main.async {
                                                    self.stationID.text = self.station?.stationID
                                                    self.stationName.text = self.station?.stationName
                                                    self.stationAddress.text = self.station?.stationAddress
                                                }
                                            }else{print("The stationAddressValue isn't the String type.")}
                                        }else{print("The key:stationAddress does't have a value.")}
                                    }else{print("The stationNameValue isn't the String type.")}
                                }else{print("The key:stationName does't have a value.")}
                            }else{print("The stationIDValue isn't the String type.")}
                        }else{ print("The key:stationID does't have a value.")}
                    }else{print("The root isn't a dictionary.")}
                }catch{print("\(error)")}
              }
            )
            //向伺服器發送請求
            task.resume()
            print("Task Start")
        }else{print("Invalid endpoint URL.")}
    }
}
