import UIKit

public extension DesignSystem {
    enum Typography {
        public static var largeTitle: UIFont { font(style: .largeTitle, weight: .bold) }
        public static var title: UIFont { font(style: .title1, weight: .bold) }
        public static var titleSecondary: UIFont { font(style: .title2, weight: .semibold) }
        public static var headline: UIFont { font(style: .headline, weight: .semibold) }
        public static var body: UIFont { font(style: .body, weight: .regular) }
        public static var bodyEmphasis: UIFont { font(style: .body, weight: .semibold) }
        public static var caption: UIFont { font(style: .caption1, weight: .regular) }

        private static func font(style: UIFont.TextStyle, weight: UIFont.Weight) -> UIFont {
            let preferred = UIFont.preferredFont(forTextStyle: style)
            let descriptor = preferred.fontDescriptor.addingAttributes([
                .traits: [UIFontDescriptor.TraitKey.weight: weight]
            ])
            return UIFont(descriptor: descriptor, size: 0)
        }
    }
}
