//
//  ComposeDelegate.swift
//  DelegatePattern
//
//  Created by JuSun Kang on 2020/10/21.
//  Copyright © 2020 Keun young Kim. All rights reserved.
//

import UIKit

protocol ComposeDelegate {
    func composer(_ vc: UIViewController, didInput value: String?)
    func composerDidCancel(_ vc: UIViewController)
}
