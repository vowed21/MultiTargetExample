//
//  AppManager.swift
//  RedApp
//
//  Created by HyunWoo Kim on 2017. 6. 8..
//  Copyright © 2017년 KokohApps.com. All rights reserved.
//

import UIKit

enum AppType {
    case RedApp
    case BlueApp
}

class AppManager {
    static var themeColor: UIColor!
    static var currentAppType: AppType!
}
