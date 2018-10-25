//
//  City.swift
//  MVPExample
//
//  Created by takakura naohiro on 2018/10/24.
//  Copyright © 2018年 GeoMagnet. All rights reserved.
//

import Foundation
struct City : Codable {
	let id : Int?
	let name : String?
	let coord : Coord?
	let country : String?
	let population : Int?

	enum CodingKeys: String, CodingKey {

		case id = "id"
		case name = "name"
		case coord = "coord"
		case country = "country"
		case population = "population"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		id = try values.decodeIfPresent(Int.self, forKey: .id)
		name = try values.decodeIfPresent(String.self, forKey: .name)
		coord = try values.decodeIfPresent(Coord.self, forKey: .coord)
		country = try values.decodeIfPresent(String.self, forKey: .country)
		population = try values.decodeIfPresent(Int.self, forKey: .population)
	}

}
