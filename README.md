# Swift-Extensions
Swiftの便利な拡張

```swift
‪⭐️ Date().文() //2020-05-12
‪⭐️ Date().取得(.month)
⭐️ tableView.最上部()‬
⭐️ tableView.最下部()
⭐️ "こんにちは".アラートを表示(on: self). ‬
⭐️ view1.丸みのあるボーダー()
⭐️ view2.丸め()
⭐️ 123.文() //"123"
⭐️ "ネコノヒー".保存(キーワード: "名前")
⭐️ self.view.スクリーンショット()
⭐️ self.getUISceneDelegate()
⭐️ self.getUIApplicationDelegate()
```

## インストール方法：
このパッケージをインストールするには：
1. Xcode内からプロジェクトを開く
2. 上部のシステムバーの"File"をクリック
3.  "Swift Packages"をクリック、次いで"Add package dependency…"をクリック
4. 以下のURLをペースト：`https://github.com/mszopensource/Swift-Extensions.git`
5. "Next"をクリック
6. "branch"オプションを選択し、"master"に設定されていることを確認
7. "Done"をクリック。

## 使い方：
フレームワークの使い方は以下のサンプルコードを参照してください

```swift
import UIKit
import SwiftExtensions

class ViewController: UIViewController {
    
    @IBOutlet weak var buttonView: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // 文字列を渡してシンプルなUIAlertControllerを表示する。
        "success!".アラートを表示(on: self)
        // 丸みのあるボーダー
        buttonView.丸みのあるボーダー()
    }

}

```
## 皆様の貢献を歓迎します！
"Pull Requests"を開き、改善を提案してください。お気軽に、ご遠慮なくどうぞ。

よろしくお願いします！
