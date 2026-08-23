import XCTest
@testable import MarvelDesignSystem

final class DesignSystemTests: XCTestCase {
    func testSpacingScaleIsProgressive() {
        let values = [
            DesignSystem.Spacing.none,
            DesignSystem.Spacing.xSmall,
            DesignSystem.Spacing.small,
            DesignSystem.Spacing.medium,
            DesignSystem.Spacing.large,
            DesignSystem.Spacing.xLarge,
            DesignSystem.Spacing.xxLarge
        ]

        XCTAssertEqual(values, values.sorted())
        XCTAssertEqual(Set(values).count, values.count)
    }

    func testSemanticColorsSupportLightAndDarkMode() {
        let light = DesignSystem.Color.backgroundPrimary.resolvedColor(
            with: UITraitCollection(userInterfaceStyle: .light)
        )
        let dark = DesignSystem.Color.backgroundPrimary.resolvedColor(
            with: UITraitCollection(userInterfaceStyle: .dark)
        )

        XCTAssertNotEqual(light, dark)
    }

    func testTypographyUsesDynamicTextStyles() {
        XCTAssertEqual(DesignSystem.Typography.title.fontDescriptor.object(forKey: .textStyle) as? String, UIFont.TextStyle.title1.rawValue)
        XCTAssertEqual(DesignSystem.Typography.body.fontDescriptor.object(forKey: .textStyle) as? String, UIFont.TextStyle.body.rawValue)
    }

    func testShadowCanBeAppliedToLayer() {
        let layer = CALayer()
        layer.apply(.card)

        XCTAssertEqual(layer.shadowOpacity, DesignSystem.Shadow.card.opacity)
        XCTAssertEqual(layer.shadowRadius, DesignSystem.Shadow.card.radius)
        XCTAssertEqual(layer.shadowOffset, DesignSystem.Shadow.card.offset)
    }
}
