//
//  ViewController.swift
//  Animation+Core
//
//  Created by Abdusamad Mamasoliyev on 04/03/24.
//

import UIKit

class ViewController: UIViewController {

    var birthRate: Float = 180
    var lifeTime: Float = 4.5
    var velocity: CGFloat = 130
    var scale: CGFloat = 0.012
    let button = UIButton(type: .custom)
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        buttonSetting()
    }
    func buttonSetting() {
        view.addSubview(button)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(named: "happy"), for: .normal)
        
        button.addTarget(self, action: #selector(happy), for: .primaryActionTriggered)
        
        NSLayoutConstraint.activate([
        
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 120),
            button.heightAnchor.constraint(equalToConstant: 300),
            button.widthAnchor.constraint(equalToConstant: 200)
        ])
    }
    @objc func happy() {
        createLayer()
    }
 
    private func createLayer() {
        
        let animation = CAEmitterLayer()
        animation.emitterPosition = CGPoint(x: view.center.x, y: -100)
        let cell = CAEmitterCell()
        cell.scale = scale
        cell.emissionRange = .pi * 2
        cell.lifetime = lifeTime
        cell.birthRate = birthRate
        cell.velocity = velocity
        cell.color = UIColor.white.cgColor
        cell.contents = UIImage(named: "img1")!.cgImage
        
        let cell1 = CAEmitterCell()
        cell1.scale = scale
        cell1.emissionRange = .pi * 2
        cell1.lifetime = lifeTime
        cell1.birthRate = birthRate
        cell1.velocity = velocity
        cell1.color = UIColor.white.cgColor
        cell1.contents = UIImage(named: "img3")!.cgImage
        
        let cell2 = CAEmitterCell()
        cell2.scale = scale
        cell2.emissionRange = .pi * 2
        cell2.lifetime = lifeTime
        cell2.birthRate = birthRate
        cell2.velocity = velocity
        cell2.color = UIColor.white.cgColor
        cell2.contents = UIImage(named: "img4")!.cgImage
        
        let cell3 = CAEmitterCell()
        cell3.scale = scale
        cell3.emissionRange = .pi * 2
        cell3.lifetime = lifeTime
        cell3.birthRate = birthRate
        cell3.velocity = velocity
        cell3.color = UIColor.red.cgColor
        cell3.contents = UIImage(named: "img5")!.cgImage
        
        animation.emitterCells = [cell, cell1, cell2 , cell3]
        view.layer.addSublayer(animation)
        
    }
}

