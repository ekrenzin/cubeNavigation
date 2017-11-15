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

var sideTapped: String?

class ViewController: UIViewController, UINavigationBarDelegate {

    @IBOutlet weak var sceneView: SCNView!
    @IBOutlet var mainView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        sceneKit(scnView: sceneView)
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
        
        if let touchPoint = touch?.location(in: sceneView),
            let hitTestResult = sceneView.hitTest(touchPoint, options: nil).first {
            let result = hitTestResult
            let node = result.node
            //find the side
            // Find the material for the clicked element
            // (Indices match between the geometryElements and materials arrays)
            let material = node.geometry!.materials[result.geometryIndex]
            // Do something with that material, for example:
            let highlight = CABasicAnimation(keyPath: "diffuse.contents")
            highlight.toValue = UIColor.red
            highlight.duration = 1.0
            highlight.autoreverses = true
            highlight.isRemovedOnCompletion = true
            material.addAnimation(highlight, forKey: nil)
            let faceNodeName = "\(CubeFace(rawValue: result.geometryIndex)!)"
            faceNodeName.dropFirst(27)
            print(faceNodeName)
            sideTapped = faceNodeName
        }
        //this should be the identifier you created on storyboard
        
        cubeNavigation(VC1: "ViewController", VC2: "ViewController", VC3: "ViewController", VC4: "ViewController", VC5: "ViewController", VC6: "ViewController", navController: navigationController!, storyBoard: storyboard!)
        
    }
    
    
}
  

