//
//  AuthNetworkTarget.swift
//  Auth
//
//  Created by BinaryLoader on 10/11/20.
//

import Foundation
import BinaryLoaderExtensions
import BinaryLoaderNetwork

struct AuthNetworkTarget {

    enum Route {

        case isAlreadyLogin
        case login(request: AuthLoginModel.Request)
        case logout
    }

    private let route: Route

    init(route: Route) {
        self.route = route
    }
}

extension AuthNetworkTarget: NetworkTarget {

    var baseURL: URL {
        let URLString = "https://photo.domain.com/photo/webapi"
        return URLString.toAPIURL
    }

    var path: String {
        return "/auth.php"
    }

    var method: BinaryLoaderNetwork.Method {
        return .get
    }

    var sampleData: Data {
        return Data()
    }

    var task: BinaryLoaderNetwork.Task {
        var parameters: [String: Any] = [
            "api": "SYNO.PhotoStation.Auth",
            "version": "1"
        ]

        switch route {
        case .isAlreadyLogin:
            parameters["method"] = "checkauth"
        case .login(let request):
            parameters["method"] = "login"
            parameters["username"] = request.username
            parameters["password"] = request.password
            parameters["remember_me"] = request.isRemember ? "yes" : "no"
        case .logout:
            parameters["method"] = "logout"
        }

        return .requestParameters(
            parameters: parameters,
            encoding: URLEncoding.queryString
        )
    }

    var headers: [String: String]? {
        return nil
    }

    var timeoutInterval: TimeInterval {
        return 10
    }
}
