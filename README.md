## プログラミングで定理を示す ― 定理証明支援言語入門

このリポジトリは2026年度の大阪大学のいちょう祭の阪大作問サークルの部誌に掲載されている「プログラミングで定理を示す ― 定理証明支援言語入門」のサンプルコードをまとめたリポジトリです。

## 内容

- **Examples/** : サンプル集
- **lakefile.toml** : ビルド設定（Mathlib v4.26.0 を使用）

### サンプルコードの内容

| ファイル | 内容の目安 |
|----------|------------|
| example1.lean | 基本的な命題と証明 |
| example2.lean | 自然数と計算 |
| example3.lean | 偶数・倍数の定義と定理 |
| example4.lean | 等号の推移と calc / rw |
| example5.lean | 分配法則・単調性など |
| example6.lean | 割り算と掛け算 |
| example7.lean | congrArgの使用 |
| example8.lean | 平方根と複素数 |
| example9.lean | 数列と不等式 |
| example10.lean | Prod型 |

## 必要な環境

- VSCodeなどの『Lean4』の拡張機能があるエディター

### 環境構築の流れ

Leanの環境構築の方法をまとめます。
`Lean`というフォルダの中で、各プロジェクトごとに管理するとして書きます。

1. VSCodeをインストールする
2. Lean4の拡張機能を入れる
3. Leanフォルダを作成する
4. VSCodeでLeanフォルダを選択して開く
5. `lake new <プロジェクトのフォルダ(ここではProjectAとします)> math`を実行
6. `cd ProjectA && lake exe cache get` を実行




### ライセンス

本リポジトリは [LICENSE](LICENSE) に定める利用条件に従います。


> # ⚡️Author
>
> ## Tanaka Mikihisa
>
> ## X:@Mathmeganekun