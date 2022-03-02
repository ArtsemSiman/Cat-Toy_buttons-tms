//
//  ViewController.swift
//  CateGameButtons
//
//  Created by Артём Симан on 24.02.22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var dot: UIView!
    

    
    @IBOutlet weak var catToy: UIView!
    let point: CGFloat = 10
    var miny: CGFloat = 0
    var minx: CGFloat = 0
    var maxx: CGFloat = 0
    var maxy: CGFloat = 0
    var catToyHeight: CGFloat = 50
    var catToyWidth: CGFloat = 50
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupSubviews()
    
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        let heightofButton = catToy.layer.frame.height
        catToy.layer.cornerRadius = heightofButton / 2
       // setupTap()
    }
    
    private func setupSubviews() {
        let viewSize = self.view.bounds
        let superViewHeight = viewSize.height
        let superViewWidth = viewSize.width
        
        maxy = superViewHeight - catToyHeight
        maxx = superViewWidth - catToyHeight
        
        
        catToy.frame = CGRect(x: superViewWidth / 2 - 25, y: superViewHeight / 2 - 220, width: 50, height: 50)
        catToy.backgroundColor = UIColor.red
        
     //   catToy.addTarget(self, action: #selector(btnTouched), for: .touchUpInside)
        
        self.view.addSubview(catToy)
    }
    @IBAction func Up(_ sender: UIButton) {
       let newY = max(catToy.frame.origin.y - point, miny)
        catToy.frame.origin.y = newY
 
    }
    
    @IBAction func left(_ sender: UIButton) {
        let newX = max(catToy.frame.origin.x - point, minx)
        catToy.frame.origin.x = newX
    }
    
    @IBAction func down(_ sender: UIButton) {
        let newY = min(catToy.frame.origin.y + point, maxy)
        catToy.frame.origin.y = newY
    }
    
    @IBAction func right(_ sender: UIButton) {
        let newX = min(catToy.frame.origin.x + point, maxx)
        catToy.frame.origin.x = newX
    }

 

  //  private func setupTap() {
    //    let heightofButton = dot.layer.frame.height
      //  dot.layer.cornerRadius = heightofButton / 2
    //}
}
