# "Computer Craft" turtle programs

Minecraft の mod である Computer Craft の turtle 用プログラム置き場

This software is released under the MIT License, see LICENSE.

## ac-fluix.lua

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


## ac-pure-crystal.lua

"Pure *** Crystal" のオートクラフト用プログラム

64個まで（素材64セット分まで）同時に要求可能。

turtle の下に水源、前面に "ME Interface" を設置し、下記レシピを登録したパターンを使用して要求。
水源を"Crystal Growth Accelerator" で囲む場合に "ME Toggle Bus" を利用して送る動力をON/OFFできるように、稼働中のみ前面にレッドストーン信号を発信するようにしています。

### パターン

| 素材                   |    | 完成品                          |
|:-----------------------|:--:|:-------------------------------|
| Certus Quartz Seed * 1 | -> | Pure Certus Quartz Crystal * 1 |

| 素材                   |    | 完成品                          |
|:-----------------------|:--:|:-------------------------------|
| Nether Quartz Seed * 1 | -> | Pure Nether Quartz Crystal * 1 |

| 素材           |    | 完成品                  |
|:---------------|:--:|:-----------------------|
| Fluix Seed * 1 | -> | Pure Fluix Crystal * 1 |


### コメント

Fluix Crystal 製造プログラム同様、もっとも ~~手抜き~~ シンプルな形で実装。
こちらも、気が向いたら大量に素材を搬入しても動く形に改良する･･･かも。
あと、Seed 製造も同一ラインに組み込むべきか悩み中。