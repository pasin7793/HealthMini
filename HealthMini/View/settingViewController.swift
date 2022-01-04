//
//  settingViewController.swift
//  HealthMini
//
//  Created by 임준화 on 2022/01/04.
//

import UIKit
import RealmSwift

class settingViewController: UIViewController{
    
    //MARK: Properties
    private let setGoalLabel: UILabel = {
        let setGoalLabel = UILabel()
        setGoalLabel.text = "목표를 정해주세요."
        setGoalLabel.textColor = .black
        return setGoalLabel
    }()
    
    private let slider: UISlider = {
        let slider = UISlider()
        slider.maximumValue = 4000
        slider.minimumValue = 0
        slider.value = 2000
        return slider
    }()
    
    private let sliderThumb: UIView = {
        let sliderThumb = UIView(frame: CGRect(x: 0, y: 300, width: 72, height: 30))
        sliderThumb.backgroundColor = UIColor(red: 1, green: 0.3686, blue: 0.3686, alpha: 1.0)
        return sliderThumb
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setup()
    }
    func setup(){
        view.addSubview(slider)
        slider.translatesAutoresizingMaskIntoConstraints = false
        slider.widthAnchor.constraint(equalToConstant: 50).isActive = true
        slider.heightAnchor.constraint(equalToConstant: 20).isActive = true
        slider.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        slider.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        slider.setThumbImage(UIImage(cgImage: sliderThumb as! CGImage), for: .normal)
        view.addSubview(setGoalLabel)
        view.addSubview(sliderThumb)
    }
}
extension UIView{
    func asImage() -> UIImage{
    UIGraphicsBeginImageContext(self.frame.size)
        self.layer.render(in:UIGraphicsGetCurrentContext()!)
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return UIImage(cgImage: image!.cgImage!)
    }
}

