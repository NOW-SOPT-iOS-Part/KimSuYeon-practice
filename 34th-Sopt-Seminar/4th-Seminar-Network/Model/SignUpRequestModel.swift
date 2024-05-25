//
//  SignUpRequestModel.swift
//  34th-Sopt-Seminar
//
//  Created by 예삐 on 4/27/24.
//

import Foundation

//회원가입 API Request Body
struct SignUpRequestModel: Codable {
    let authenticationId: String
    let password: String
    let nickname: String
    let phone: String
}
