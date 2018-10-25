//
//  Rain.swift
//  MVPExample
//
//  Created by takakura naohiro on 2018/10/24.
//  Copyright © 2018年 GeoMagnet. All rights reserved.
//

import Foundation

struct Rain : Codable {
    
	let hour : Double?

	enum CodingKeys: String, CodingKey {

		case hour = "3h"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
        hour = try values.decodeIfPresent(Double.self, forKey: Rain.CodingKeys(rawValue: "hour")!)
	}

}
