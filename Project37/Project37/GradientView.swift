//
//  GradientView.swift
//  Project37
//
//  Created by Bryan Besnyi on 12/01/2017.
//  Copyright © 2017 Bryan Besnyi. All rights reserved.
//

import UIKit

@IBDesignable class GradientView: UIView {
	@IBInspectable var topColor: UIColor = UIColor.white
	@IBInspectable var bottomColor: UIColor = UIColor.black

	override class var layerClass: AnyClass {
		return CAGradientLayer.self
	}

	override func layoutSubviews() {
		(layer as! CAGradientLayer).colors = [topColor.cgColor, bottomColor.cgColor]
	}
}
