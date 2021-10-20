/*
 The MIT License (MIT)

 Copyright © 2021 Frank Gregor <phranck@woodbytes.me>

 Permission is hereby granted, free of charge, to any person obtaining a copy
 of this software and associated documentation files (the “Software”), to deal
 in the Software without restriction, including without limitation the rights
 to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 copies of the Software, and to permit persons to whom the Software is
 furnished to do so, subject to the following conditions:

 The above copyright notice and this permission notice shall be included in
 all copies or substantial portions of the Software.

 THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 THE SOFTWARE.
 */

import Foundation

struct StationsResource: ApiResource {
    typealias ModelType = [Station]

    var endpoint: ApiEndpoints
    
    var path: String?
    var bitrateMax: Int?
    var bitrateMin: Int?
    var codec: String?
    var country: String?
    var countryCode: String?
    var hasExtendedInfo: Bool?
    var hasGeoInfo: Bool?
    var language: String?
    var limit: Int?
    var name: String?
    var offset: Int?
    var order: ApiResponseOrder?
    var reverse: Bool?
    var searchterm: String?
    var seconds: Int?
    var state: String?
    var tag: String?
    var tagList: String?
    var hideBroken: Bool?
}
