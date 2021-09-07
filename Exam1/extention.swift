//
//  extention.swift
//  Exam1
//
//  Created by Kevin Lathidadiya on 03/09/21.
//

import Foundation
import UIKit

extension UIView {
    public var height : CGFloat { return frame.size.height }
    public var width : CGFloat { return frame.size.width }
    public var top : CGFloat { return frame.origin.y }
    public var bottom : CGFloat { return frame.origin.y + frame.size.height }
    public var right : CGFloat { return frame.origin.x }
    public var left : CGFloat { return frame.origin.x + frame.size.width }
}
