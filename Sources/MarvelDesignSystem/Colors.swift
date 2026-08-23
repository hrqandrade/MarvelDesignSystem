import UIKit

public extension DesignSystem {
    enum Color {
        public static let backgroundPrimary = dynamic(light: 0xFFFFFF, dark: 0x121212)
        public static let backgroundSecondary = dynamic(light: 0xF4F4F4, dark: 0x1E1E1E)
        public static let surface = dynamic(light: 0xFFFFFF, dark: 0x242424)
        public static let textPrimary = dynamic(light: 0x151515, dark: 0xFFFFFF)
        public static let textSecondary = dynamic(light: 0x5C5C5C, dark: 0xB8B8B8)
        public static let border = dynamic(light: 0xD8D8D8, dark: 0x3D3D3D)
        public static let accent = UIColor(hex: 0xED1D24)
        public static let onAccent = UIColor.white
        public static let success = UIColor(hex: 0x2E7D32)
        public static let warning = UIColor(hex: 0xF9A825)
        public static let error = UIColor(hex: 0xC62828)

        private static func dynamic(light: UInt32, dark: UInt32) -> UIColor {
            UIColor { traits in
                traits.userInterfaceStyle == .dark ? UIColor(hex: dark) : UIColor(hex: light)
            }
        }
    }
}

private extension UIColor {
    convenience init(hex: UInt32) {
        let red = CGFloat((hex >> 16) & 0xFF) / 255
        let green = CGFloat((hex >> 8) & 0xFF) / 255
        let blue = CGFloat(hex & 0xFF) / 255
        self.init(red: red, green: green, blue: blue, alpha: 1)
    }
}
