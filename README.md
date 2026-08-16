# Codex personal skills

移植用にまとめたCodexのカスタムスキルです。

## 含まれるスキル

- `mobishiro-slides`: 白基調、9:16、スマホ閲覧向けの単一HTMLスライドを作成・編集します。
- `flat-noline`: 面塗り中心、外周線なしの2Dアニメ調で画像を統一します。

## 別端末へのインストール

CodexをインストールしたWindows端末で、リポジトリのフォルダから次を実行します。

```powershell
powershell -ExecutionPolicy Bypass -File .\install.ps1
```

インストーラーは、次の場所へ2つのスキルを配置します。

```text
C:\Users\<ユーザー名>\.codex\skills\
```

配置後にCodexを再起動してください。

## 更新

```powershell
git pull
powershell -ExecutionPolicy Bypass -File .\install.ps1
```

モビシロはスキル定義だけでなく、`assets`のテンプレートと`references`の仕様資料も含めて移植します。

フラノラの参考画像はこのリポジトリに含めていません。必要な場合は、移植先端末のプロジェクト内にある参考画像を使ってください。参考画像がなくても、定義済みのフラノラ仕様で動作します。
