[English](../../../README.md) | [한국어](../ko/README.md) | **日本語**

# synstagram-module-apiservice

Synstagram iOSアプリ向けのAPIサービスモジュールで、CocoaPods podとして配布します。

## モジュール

### Auth

ログインとログアウトのモデル、ネットワークターゲット、サービスレイヤーを含む認証サービスを提供します。

## 依存関係

- BinaryLoaderExtensions 1.0.3
- BinaryLoaderNetwork 1.0.5

## インストール

プライベートspec repoとpodを`Podfile`に追加します。

```ruby
source 'https://github.com/binaryloader/synstagram-module-cocoapods-specs.git'

pod 'APIService/Auth'
```

## 関連リポジトリ

- https://github.com/binaryloader/synstagram-app
- https://github.com/binaryloader/synstagram-module-cocoapods-specs

## ライセンス

This project is licensed under the MIT License - see the [LICENSE](../../../LICENSE) file for details.
