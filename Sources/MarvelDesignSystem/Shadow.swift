import UIKit

public extension DesignSystem {
    struct Shadow {
        public let color: UIColor
        public let opacity: Float
        public let radius: CGFloat
        public let offset: CGSize

        public static let card = Shadow(
            color: .black,
            opacity: 0.12,
            radius: 8,
            offset: CGSize(width: 0, height: 2)
        )

        public init(color: UIColor, opacity: Float, radius: CGFloat, offset: CGSize) {
            self.color = color
            self.opacity = opacity
            self.radius = radius
            self.offset = offset
        }
    }
}

public extension CALayer {
    func apply(_ shadow: DesignSystem.Shadow) {
        shadowColor = shadow.color.cgColor
        shadowOpacity = shadow.opacity
        shadowRadius = shadow.radius
        shadowOffset = shadow.offset
    }
}
