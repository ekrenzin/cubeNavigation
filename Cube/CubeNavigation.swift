//
//  CubeNavigation.swift
//  Cube
//
//  Created by Ean Krenzin on 11/15/17.
//  Copyright © 2017 Ean Krenzin. All rights reserved.
//


import UIKit
import SceneKit
import QuartzCore
import SpriteKit

func sceneKit(scnView: SCNView){
    
    let scene = SCNScene()
    scnView.scene = scene
    scnView.backgroundColor = UIColor.clear
    
    
    
    let cameraNode = SCNNode()
    cameraNode.camera = SCNCamera()
    
    scene.rootNode.addChildNode(cameraNode)
    cameraNode.position = SCNVector3(x: 0, y: 0, z: 10)   //where cube will be or do camera.xFov = 10 camera.yFov = 45
    
    
    scnView.allowsCameraControl = true     //that's for you can spin it any direction with your finger if you are bored
    scnView.autoenablesDefaultLighting = true   //Lighting
    
    var geometries = [
        SCNBox(width: 3.0, height: 3.0, length: 3.0, chamferRadius: 0.0),
        ] //This is the cube with parameters of 3- chamferRadius addes rounded edges
    let top = SCNMaterial()
    let bottom = SCNMaterial()
    let left = SCNMaterial()
    let right = SCNMaterial()
    let front = SCNMaterial()
    let back = SCNMaterial()
    let cubeMaterials = [ front, right, back, left, top, bottom ]
    for i in 0..<geometries.count {
        let geometry = geometries[i]
        let node = SCNNode(geometry: geometry)
        
        node.geometry?.materials = cubeMaterials
        //auto rotate
        //node.runAction(SCNAction.repeatForever(SCNAction.rotateBy(x: 1, y: 1, z: 1, duration: 3)))
        
        print(node.childNodes)
        scene.rootNode.addChildNode(node)
        
    }
}

func cubeNavigation(VC1: String, VC2: String, VC3: String, VC4: String, VC5: String, VC6: String, navController: UINavigationController, storyBoard: UIStoryboard){
    if sideTapped == "front"{
        navController.pushViewController(storyBoard.instantiateViewController(withIdentifier: VC1) as UIViewController, animated: true)
        print("front")
    } else if sideTapped == "right" {
        navController.pushViewController(storyBoard.instantiateViewController(withIdentifier: VC2) as UIViewController, animated: true)
        print("right")
    } else if sideTapped == "left"{
        navController.pushViewController(storyBoard.instantiateViewController(withIdentifier: VC3) as UIViewController, animated: true)
        print("front")
    } else if sideTapped == "back" {
        navController.pushViewController(storyBoard.instantiateViewController(withIdentifier: VC4) as UIViewController, animated: true)
        print("right")
    } else if sideTapped == "top"{
        navController.pushViewController(storyBoard.instantiateViewController(withIdentifier: VC5) as UIViewController, animated: true)
        print("front")
    } else if sideTapped == "bottom" {
        navController.pushViewController(storyBoard.instantiateViewController(withIdentifier: VC6) as UIViewController, animated: true)
        print("right")
    }
}
