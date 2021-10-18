//
//  ViewController.swift
//  University_Map_Dyploma
//
//  Created by Efe on 18.10.2021.
//

import UIKit
import RealityKit
import ARKit

class ViewController: UIViewController {
    @IBOutlet var arView: ARView!
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        setupARView()
    }
    // MARK: Setup methods
    func setupARView() {
        //Not working. Needs a physical device instead of a simulator.
        //arView.automaticallyConfigureSession = false
        let configuration = ARWorldTrackingConfiguration()
        configuration.planeDetection = [.horizontal, .vertical]
        configuration.environmentTexturing = .automatic
        arView.session.run(configuration)
        
    }
    
}

