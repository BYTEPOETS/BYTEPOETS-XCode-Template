// Generated using SwiftGen, by O.Halligon — https://github.com/AliSoftware/SwiftGen

import UIKit

extension UIColor {
  convenience init(rgbaValue: UInt32) {
    let red   = CGFloat((rgbaValue >> 24) & 0xff) / 255.0
    let green = CGFloat((rgbaValue >> 16) & 0xff) / 255.0
    let blue  = CGFloat((rgbaValue >>  8) & 0xff) / 255.0
    let alpha = CGFloat((rgbaValue      ) & 0xff) / 255.0

    self.init(red: red, green: green, blue: blue, alpha: alpha)
  }
}

extension UIColor {
  enum Name {
    /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#747474"></span>
    /// Alpha: 100% <br/> (0x747474ff)
    case LightGray
    /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#0099da"></span>
    /// Alpha: 100% <br/> (0x0099daff)
    case Primary
    /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#005da4"></span>
    /// Alpha: 100% <br/> (0x005da4ff)
    case PrimaryDark
    /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#7fccec"></span>
    /// Alpha: 100% <br/> (0x7fccecff)
    case PrimaryLight

    var rgbaValue: UInt32! {
      switch self {
      case .LightGray: return 0x747474ff
      case .Primary: return 0x0099daff
      case .PrimaryDark: return 0x005da4ff
      case .PrimaryLight: return 0x7fccecff
      }
    }
  }

  convenience init(named name: Name) {
    self.init(rgbaValue: name.rgbaValue)
  }
}

