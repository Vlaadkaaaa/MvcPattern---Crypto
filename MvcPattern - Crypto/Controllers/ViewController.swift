//
//  ViewController.swift
//  MvcPattern - Crypto
//
//  Created by Владислав Лымарь on 22.08.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var valueLabel: UILabel!
    @IBOutlet weak var tickerLabel: UILabel!
    
    private var count = 0
    private var testData = [Crypto]()
    //Создаем экземпляр класса RandomCount
    private let randomCount = RandomCount()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        let model = Crypto.testData
        setupData(with: model)
        setupInitialState()
        
    }
    //получение данных
    func setupData(with testData: [Crypto]){
        self.testData = testData
    }
    func setupInitialState(){
        displayData(i: count)
    }
    
    //Отображает данные
    func displayData(i: Int){
        if testData.count != 0 && count <= (testData.count - 1) && count >= 0{
            nameLabel.text = testData[i].name
            tickerLabel.text = testData[i].ticker
            valueLabel.text = String(testData[i].value)
        } else{
            print("Sorry, no data")
        }
    }
   

    
    

    @IBAction func buttonPressed(_ sender: UIButton) {
        displayData(i: randomCount.getRandomCount(data: testData))
        
    }
    
}

