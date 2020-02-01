/* 
Copyright (c) 2020 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar

*/

import Foundation
public struct PayloadMessage : Codable {
	public let id : String?
    public let voice : String?
	public let timestamp : Int?
	public let text : String?
	public let endtext : String?
	public let textcolor : String?
	public let attachment : Attachment?
	public let actions : [Actions]?
    public let suggestions : [Actions]?


	enum CodingKeys: String, CodingKey {
		case id = "id"
		case timestamp = "timestamp"
        case voice = "voice"
		case text = "text"
		case endtext = "end-text"
		case textcolor = "text-color"
		case attachment = "attachment"
		case actions = "actions"
        case suggestions = "suggestions"
	}

	public init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		id = try values.decodeIfPresent(String.self, forKey: .id)
		timestamp = try values.decodeIfPresent(Int.self, forKey: .timestamp)
		text = try values.decodeIfPresent(String.self, forKey: .text)
        voice = try values.decodeIfPresent(String.self, forKey: .voice)
		endtext = try values.decodeIfPresent(String.self, forKey: .endtext)
		textcolor = try values.decodeIfPresent(String.self, forKey: .textcolor)
		attachment = try values.decodeIfPresent(Attachment.self, forKey: .attachment)
		actions = try values.decodeIfPresent([Actions].self, forKey: .actions)
        suggestions = try values.decodeIfPresent([Actions].self, forKey: .suggestions)
	}

}
