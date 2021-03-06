/*
* Copyright IBM Corporation 2017-2019
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
* http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*/
import Foundation

public struct User: Codable, Equatable {
    public let id: Int
    public let name: String
    public let date: Date
    public init(id: Int, name: String, date: Date) {
        self.id = id
        self.name = name
        self.date = date
    }

    public static func ==(lhs: User, rhs: User) -> Bool {
        return (lhs.id == rhs.id) && (lhs.name == rhs.name) && (lhs.date == rhs.date)
    }

}

struct AccessToken: Codable {
    let accessToken: String
}

struct JWTUser: Codable, Equatable {
    let name: String

    public static func ==(lhs: JWTUser, rhs: JWTUser) -> Bool {
        return (lhs.name == rhs.name)
    }
}

public struct TestData: Codable {
    let name: String
    let age: Int
    let height: Double
    let address: TestAddress
}

public struct TestAddress: Codable {
    let number: Int
    let street: String
    let city: String
}

public struct FriendData: Codable {
    let friends: [String]
}
