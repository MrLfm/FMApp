//
//  FMModuleBase.swift
//  FMModuleBase
//
//  Created by FumingLeo on 2025/11/12.
//

import Foundation

public class FMModuleBase {
    public init() {}
}

public extension Foundation.Bundle {
    static var base: Bundle = {
        let bundle = Bundle(for: FMModuleBase.self)
        let bundleURL = bundle.url(forResource: "FMModuleBaseBundle", withExtension: "bundle")
        let destBundle = bundleURL.flatMap { Bundle(url: $0) }
        return destBundle ?? Bundle.main
    }()
}
