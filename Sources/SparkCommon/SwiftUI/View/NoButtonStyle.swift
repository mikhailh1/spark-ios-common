//
//  NoButtonStyle.swift
//  SparkCommon
//
//  Created by Michael Zimmermann on 04.01.24.
//  Copyright © 2024 Adevinta. All rights reserved.
//

import SwiftUI

@_spi(SI_SPI) public struct NoButtonStyle: ButtonStyle {

    public func makeBody(configuration: Configuration) -> some View {
        return configuration.label
    }
}
