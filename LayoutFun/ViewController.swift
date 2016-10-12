//
//  ViewController.swift
//  LayoutFun
//
//  Created by James Campagno on 8/31/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    

    var redView = UIView(frame: CGRect.zero)
    let orangeView = UIView(frame: CGRect.zero)
    let yellowView = UIView(frame: CGRect.zero)
    let greenView = UIView(frame: CGRect.zero)
    let blueView = UIView(frame: CGRect.zero)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.gray
        
        turnOffAutoResizingOnAllViews()
        setupTheConstraints()
        setupColors()
    }
    
}

// MARK: Constraints
extension ViewController {
    
    func setUpFrames() {
        
        redView.frame = CGRect(x: view.frame.width * 0.25, y: view.frame.height * 0.75, width: view.frame.width/2, height: view.frame.width/2)
        orangeView.frame = CGRect(x: (redView.frame.minX + redView.bounds.width * 0.125), y: (view.frame.height * 0.75 - redView.bounds.height * 0.75), width: redView.frame.width * 0.75, height: redView.frame.width * 0.75)
        
        
    }
    
    
    func setupTheConstraints() {
        // TODO: Create all the constraints (in code) for the various views
        view.addSubview(redView)
        redView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.5).isActive = true
        redView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.25).isActive = true
        redView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        redView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        
        view.addSubview(orangeView)
        orangeView.widthAnchor.constraint(equalTo: redView.widthAnchor, multiplier: 0.75).isActive = true
        orangeView.heightAnchor.constraint(equalTo: redView.heightAnchor, multiplier: 0.75).isActive = true
        orangeView.bottomAnchor.constraint(equalTo: redView.topAnchor).isActive = true
        orangeView.centerXAnchor.constraint(equalTo: redView.centerXAnchor).isActive = true
        
        view.addSubview(yellowView)
        yellowView.widthAnchor.constraint(equalTo: orangeView.widthAnchor, multiplier: 0.75).isActive = true
        yellowView.heightAnchor.constraint(equalTo: orangeView.heightAnchor, multiplier: 0.75).isActive = true
        yellowView.bottomAnchor.constraint(equalTo: orangeView.topAnchor).isActive = true
        yellowView.centerXAnchor.constraint(equalTo: orangeView.centerXAnchor).isActive = true
        
        view.addSubview(greenView)
        greenView.widthAnchor.constraint(equalTo: yellowView.widthAnchor, multiplier: 0.75).isActive = true
        greenView.heightAnchor.constraint(equalTo: yellowView.heightAnchor, multiplier: 0.75).isActive = true
        greenView.bottomAnchor.constraint(equalTo: yellowView.topAnchor).isActive = true
        greenView.centerXAnchor.constraint(equalTo: yellowView.centerXAnchor).isActive = true
        
        view.addSubview(blueView)
        blueView.widthAnchor.constraint(equalTo: greenView.widthAnchor, multiplier: 0.75).isActive = true
        blueView.heightAnchor.constraint(equalTo: greenView.heightAnchor, multiplier: 0.75).isActive = true
        blueView.bottomAnchor.constraint(equalTo: greenView.topAnchor).isActive = true
        blueView.centerXAnchor.constraint(equalTo: greenView.centerXAnchor).isActive = true
        
        
    }
    
    func turnOffAutoResizingOnAllViews() {
        [redView, orangeView, yellowView, greenView, blueView].forEach { colorView in
            colorView.translatesAutoresizingMaskIntoConstraints = false
            view.addSubview(colorView)
        }
    }
    
}


// MARK: Setting up Views
extension ViewController {
    
    func setupColors() {
        redView.backgroundColor = UIColor.red
        orangeView.backgroundColor = UIColor.orange
        yellowView.backgroundColor = UIColor.yellow
        greenView.backgroundColor = UIColor.green
        blueView.backgroundColor = UIColor.blue
    }
}
