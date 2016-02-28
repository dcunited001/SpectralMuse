//
//  ViewController.swift
//  SpectralMuse
//
//  Created by David Conner on 2/27/16.
//  Copyright © 2016 Spectra. All rights reserved.
//

import Cocoa
import Spectra
import Swinject

class ViewController: NSViewController {
    
    var device: MTLDevice!
    var library: MTLLibrary!
    var descMan: DescriptorManager!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        device = MTLCreateSystemDefaultDevice()
        library = device!.newDefaultLibrary()
        let bundle = NSBundle(forClass: ViewController.self)
        let xmlData: NSData = S3DXML.readXML(bundle, filename: "DefaultPipeline")
        let s3d = S3DXML(data: xmlData)
        
        descMan = DescriptorManager(library: library!)
        descMan.parseS3DXML(s3d)
        
        // Do any additional setup after loading the view.
    }

    override var representedObject: AnyObject? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

