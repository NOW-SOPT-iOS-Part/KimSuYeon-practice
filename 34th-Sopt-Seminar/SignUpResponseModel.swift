//
//  SignUpResponseModel.swift
//  34th-Sopt-Seminar
//
//  Created by 예삐 on 4/27/24.
//

import Foundation

//회원가입 API 결과
struct SignUpResponseModel: Codable {
    let code: Int
    let message: String
}
