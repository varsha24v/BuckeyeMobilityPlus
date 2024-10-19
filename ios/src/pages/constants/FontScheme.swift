import Foundation
import SwiftUI

class FontScheme : NSObject {

  static func kComfortaaRegular(size: CGFloat) -> Font {
    return Font.custom(FontConstant.kComfortaaRegular, size: size)}

  static func kComfortaaBold(size: CGFloat) -> Font {
    return Font.custom(FontConstant.kComfortaaBold, size: size)}

  static func fontFromConstant(fontName: String, size: CGFloat) -> Font {

    var result = Font.system(size: size)

    switch fontName {
    case "kComfortaaRegular": 
        result = self.kComfortaaRegular(size: size) 
         break
    case "kComfortaaBold": 
        result = self.kComfortaaBold(size: size) 
         break
    default:  
         result = self.kComfortaaRegular(size: size) 
         break
    }
    return result
  }

  struct FontConstant {

    /**
     * Please Add this fonts Manually
     */
    static let kComfortaaRegular: String = "Comfortaa-Regular"
    /**
     * Please Add this fonts Manually
     */
    static let kComfortaaBold: String = "Comfortaa-Bold"

  }

}
