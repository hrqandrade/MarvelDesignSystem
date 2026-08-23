# MarvelDesignSystem

Design System para aplicações iOS do universo Marvel, distribuído por Swift Package Manager.

O pacote centraliza decisões visuais e reduz valores literais espalhados por telas e componentes.

## Requisitos

- iOS 13 ou superior
- Swift 5.9 ou superior
- Xcode 15 ou superior

## Foundation

- espaçamentos
- raios de borda
- cores semânticas com suporte a Dark Mode
- tipografia baseada em Dynamic Type
- sombras

## Instalação

No Xcode, acesse **File > Add Package Dependencies** e informe a URL deste repositório.

## Uso

```swift
import MarvelDesignSystem

containerView.backgroundColor = DesignSystem.Color.backgroundPrimary
titleLabel.font = DesignSystem.Typography.title
stackView.spacing = DesignSystem.Spacing.medium
cardView.layer.cornerRadius = DesignSystem.Radius.medium
cardView.layer.apply(.card)
```

Os nomes são semânticos sempre que representam intenção visual. Isso permite evoluir temas sem alterar cada tela consumidora.

## Responsabilidades

O pacote contém apenas tokens e componentes visuais reutilizáveis. Textos específicos do produto permanecem no aplicativo consumidor usando `Localizable.xcstrings`.

## Branches

- `master`: versões estáveis
- `develop`: integração das próximas entregas
- `feat/{nome-da-feature}`: desenvolvimento de funcionalidades

Features retornam para `develop` por Pull Request. Versões estabilizadas seguem de `develop` para `master`.
