//
//  FMModuleCenter.swift
//  FMModuleCenter
//
//  Created by FumingLeo on 2025/11/12.
//

public protocol FMModuleCenterProtocol {
    /// 注册服务
    static func registerService()
}

/// 组件中心
public class FMModuleCenter {
    @MainActor public static let shared = FMModuleCenter()
    private var services: [String: Any] = [:]
    private init() {}
    
    /// 注册服务
    public func register<Service>(_ type: Service.Type, serviceImpl: Service) {
        let key = String(describing: type)
        services[key] = serviceImpl
    }
    
    /// 获取组件
    public func get<Service>(_ type: Service.Type) -> Service? {
        let key = String(describing: type)
        return services[key] as? Service
    }
}
