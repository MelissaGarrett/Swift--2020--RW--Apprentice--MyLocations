//
//  Functions.swift
//  MyLocations
//
//  Created by Melissa  Garrett on 8/11/20.
//  Copyright © 2020 MelissaGarrett. All rights reserved.
//

import Foundation

func afterDelay(_ seconds: Double, run: @escaping () -> Void) {
    DispatchQueue.main.asyncAfter(deadline: .now() + seconds, execute: run)
}
