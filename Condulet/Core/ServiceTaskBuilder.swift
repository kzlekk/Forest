//
//  ServiceTaskBuilder.swift
//  Condulet
//
//  Created by Natan Zalkin on 11/10/2018.
//  Copyright © 2018 Natan Zalkin. All rights reserved.
//

/*
 * Copyright (c) 2018 Natan Zalkin
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in all
 * copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 * SOFTWARE.
 *
 */
 

import Foundation


open class ServiceTaskBuilder: ServiceTaskBuilding {
    
    public typealias Task = ServiceTask
    
    public var task: Task
    
    public init(task: Task = ServiceTask()) {
        self.task = task
    }
    
    public init(session: URLSession = URLSession.shared,
                url: URLComponents = URLComponents(),
                method: HTTPMethod? = nil,
                headers: [String: String] = [:],
                body: ServiceTaskContent? = nil,
                responseHandler: ServiceTaskResponseHandling? = nil,
                errorHandler: ServiceTaskErrorHandling? = nil,
                responseQueue: OperationQueue = OperationQueue.main,
                retrofitter: ServiceTaskRetrofitting? = nil) {
        
        self.task = ServiceTask(
            session: session,
            url: url,
            method: method,
            headers: headers,
            body: body,
            responseHandler: responseHandler,
            errorHandler: errorHandler,
            responseQueue: responseQueue,
            retrofitter: retrofitter)
    }
}
