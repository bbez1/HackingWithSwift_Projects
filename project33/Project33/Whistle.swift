//
//  Whistle.swift
//  Project33
//
//  Created by Bryan Besnyi on 12/01/2017.
//  Copyright © 2017 Bryan Besnyi. All rights reserved.
//

import CloudKit
import UIKit

class Whistle: NSObject {
	var recordID: CKRecordID!
	var genre: String!
	var comments: String!
	var audio: URL!
}
