//
//  AccessibilityViewModifier.swift
//  SparkCommon
//
//  Created by robin.lemaire on 04/04/2023.
//  Copyright © 2023 Adevinta. All rights reserved.
//

import SwiftUI

@_spi(SI_SPI) public struct AccessibilityViewModifier: ViewModifier {

    // MARK: - Properties

    private let identifier: String?
    private let label: String?

    // MARK: - Initialization

    public init(identifier: String?,
         label: String?) {
        self.identifier = identifier
        self.label = label
    }

    // MARK: - View

    public func body(content: Content) -> some View {
        content
            .if(identifier != nil) {
                $0.accessibilityIdentifier(identifier ?? "")
            }
            .if(label != nil) {
                $0.accessibilityLabel(label ?? "")
            }
    }
}
