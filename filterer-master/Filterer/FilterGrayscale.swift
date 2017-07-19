//
//  FilterBase.swift
//  Filterer
//
//  Created by Neeraj Lamba on 7/19/17.
//  Copyright © 2017 UofT. All rights reserved.
//


import UIKit

//
// FilterGrayscale.swift
//
public class FilterGrayscale: FilterBase {
    
    // Make the image grayscale
    override public var filtername: String {
        return "Grayscale Filter"
    }
    
    override public func run(rgbaImage: RGBAImage) -> RGBAImage {
        // apply a filter to each pixel of the image
        let intensity = self.intensity / 5
        for y in 0..<rgbaImage.height {
            for x in 0..<rgbaImage.width {
                let index = y * rgbaImage.width + x
                var pixel = rgbaImage.pixels[index]
                
                
                let red = 0.2126 * intensity * Double(pixel.red)
                let green = 0.5870 * intensity * Double(pixel.green)
                let blue = 0.1140 * intensity * Double(pixel.blue)
                let l = red + green + blue
                
                pixel.red = UInt8(min(l, 255))
                pixel.green = UInt8(min(l, 255))
                pixel.blue = UInt8(min(l, 255))
                rgbaImage.pixels[index] = pixel
            }
        }
        return rgbaImage
    }
}
