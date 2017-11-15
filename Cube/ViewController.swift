//
//  ViewController.swift
//  Cube
//
//  Created by Ean Krenzin on 11/15/17.
//  Copyright © 2017 Ean Krenzin. All rights reserved.
//

import UIKit
import SceneKit
import QuartzCore
import SpriteKit

enum CubeFace: Int {
    case front, right, back, left, top, bottom
}



class ViewController: UIViewController, UINavigationBarDelegate {

    @IBOutlet weak var sceneView: SCNView!
    @IBOutlet var mainView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        sceneKit(scnView: sceneView)
        //Creating a gradient in the background
        let colors = Colors()
        var backgroundLayer = colors.gl
        backgroundLayer?.frame = mainView.frame
        backgroundLayer?.frame = mainView.frame
        mainView.layer.insertSublayer(backgroundLayer!, at: 0)
        let nav = self.navigationController?.navigationBar
        self.navigationController?.navigationBar.barTintColor = UIColor.white
        self.navigationController?.navigationBar.tintColor = UIColor.blue
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch = touches.first
        cubeHitTesting(touch: touch, sceneView: sceneView)
        }
        //this should be the identifier you created on storyboard
        cubeNavigation(VC1: "ViewController", VC2: "ViewController", VC3: "ViewController", VC4: "ViewController", VC5: "ViewController", VC6: "ViewController", navController: navigationController!, storyBoard: storyboard!)
    }
    
    
}
  

