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

internal protocol ApiFetchable {
    func fetchStations()
}

public class ApiFetch: ApiFetchable {
    public let api: RadioBrowserAPI

    public init(api: RadioBrowserAPI) {
        self.api = api
    }

    internal func performRequest<Resource: NetworkResource>(with resource: Resource, withCompletion completion: @escaping (Resource.ModelType?) -> Void) {
        let request = ApiRequest(resource: resource)
        request.execute { result in
            switch result {
                case .success(let result):
                    completion(result)

                case .failure(let error):
                    log.error(error)
                    completion(nil)
                    break
            }
        }
    }

    // MARK: - ApiFetchable

    func fetchStations() {}
}
