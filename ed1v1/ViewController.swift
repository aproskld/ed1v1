//
//  ViewController.swift
//  ed1v1
//
//  Created by Александр Прос on 15.10.2023.
//

import UIKit

class ViewController: UIViewController {
    //storyBoardVar
    @IBOutlet weak var redView: UIView!
    
    @IBOutlet weak var orangeView: UIView!
    @IBOutlet weak var turnButton: UIButton!
    @IBOutlet weak var greenView: UIView!
    //Экран был загружен
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("Экран был загружен")
        redView.layer.cornerRadius = 75
        redView.layer.borderWidth = 2
        redView.layer.borderColor = UIColor.white.cgColor
        
        orangeView.layer.cornerRadius = 75
        orangeView.layer.borderWidth = 2
        orangeView.layer.borderColor = UIColor.white.cgColor
        
        greenView.layer.cornerRadius = 75
        greenView.layer.borderWidth = 2
        greenView.layer.borderColor = UIColor.white.cgColor
        
        redView.backgroundColor = .clear
        orangeView.backgroundColor = .clear
        greenView.backgroundColor = .clear
    }
    
    
    //Экран будет показан
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    //Экран был показан
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    //Экран будет скрыт
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
    }
    //Экран был скрыт
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
    }
    
    // MARK: - userFunction
    
    @IBAction func turnButtonAction(_ sender: Any) {
        if redView.backgroundColor == .clear && orangeView.backgroundColor == .clear && greenView.backgroundColor == .clear {
            redView.backgroundColor = .red
        }else if redView.backgroundColor == .red {
            redView.backgroundColor = .clear
            orangeView.backgroundColor = .orange
        }else if orangeView.backgroundColor == .orange {
            orangeView.backgroundColor = .clear
            greenView.backgroundColor = .green
        }else if greenView.backgroundColor == .green {
            greenView.backgroundColor = .clear
        }
    }
    

}

