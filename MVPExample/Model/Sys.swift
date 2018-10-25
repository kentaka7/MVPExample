//
//  City.swift
//  MVPExample
//
//  Created by takakura naohiro on 2018/10/24.
//  Copyright © 2018年 GeoMagnet. All rights reserved.
//

import Foundation
struct Sys : Codable {
	let pod : String?

	enum CodingKeys: String, CodingKey {

		case pod = "pod"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		pod = try values.decodeIfPresent(String.self, forKey: .pod)
	}

}
