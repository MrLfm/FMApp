//
//  FMModuleServiceProtocol.swift
//  FMModuleCenter
//
//  Created by FumingLeo on 2025/11/12.
//

import Foundation

/// 组件A提供的服务
public protocol FMModuleAServiceProtocol {
    func getAViewController() -> UIViewController
    // 其他服务...
}

/// 组件B提供的服务
public protocol FMModuleBServiceProtocol {
    func getBViewController() -> UIViewController
    // 其他服务...
}
