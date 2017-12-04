//
//  Move.swift
//  Project34
//
//  Created by Bryan Besnyi on 12/01/2017.
//  Copyright © 2017 Bryan Besnyi. All rights reserved.
//

import GameplayKit
import UIKit

class Move: NSObject, GKGameModelUpdate {
	var value: Int = 0
	var column: Int

	init(column: Int) {
		self.column = column
	}
}
