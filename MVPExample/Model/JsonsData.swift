//
//  JsonsData.swift
//  MVPExample
//
//  Created by takakura naohiro on 2018/10/24.
//  Copyright © 2018年 GeoMagnet. All rights reserved.
//


import Foundation
struct JsonsData : Codable {
	let cod : String?
	let message : Double?
	let cnt : Int?
	let list : [List]?
	let city : City?

	enum CodingKeys: String, CodingKey {

		case cod = "cod"
		case message = "message"
		case cnt = "cnt"
		case list = "list"
		case city = "city"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		cod = try values.decodeIfPresent(String.self, forKey: .cod)
		message = try values.decodeIfPresent(Double.self, forKey: .message)
		cnt = try values.decodeIfPresent(Int.self, forKey: .cnt)
		list = try values.decodeIfPresent([List].self, forKey: .list)
		city = try values.decodeIfPresent(City.self, forKey: .city)
	}

}
