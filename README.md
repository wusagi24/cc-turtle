# "Computer Craft" turtle programs

Minecraft の mod である Computer Craft の turtle 用プログラム置き場


## ac-fluix

"Fluix Crystal" のオートクラフト用プログラム

128個まで（素材64セット分まで）同時に要求可能。

turtle の下に水源、前面に "ME Interface" を設置し、下記レシピを登録したパターンを使用して要求する。

### パターン

| 素材                      |    | 完成品            |
|:--------------------------|:--:|:------------------|
| Nether Quartz * 1         |    | Fluix Crystal * 2 |
| Charged Certus Quartz * 1 | -> | -                 |
| Redstone * 1              |    | -                 |

### コメント

一度に大量に発注することがなさそうなので、もっとも ~~手抜き~~ シンプルな形で実装。
気が向いたら大量に素材を搬入しても動く形に改良する･･･かも。