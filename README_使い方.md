# 呪欲の門 日本語版 — 使い方

## 遊ぶ前に（毎回）
1. このフォルダの `serve.bat` をダブルクリック（黒い窓が開く。閉じない）
2. Tabletop Simulator を起動 → Create → Singleplayer（または Multiplayer）
3. Games → Save & Load → 「呪欲の門 日本語版」を選ぶ
4. 初回は画像の読み込みに1〜2分かかる。以降はキャッシュされて速い

## 仕組み
- 元MOD（Workshop 2978710921）のカード画像URLを、このPCの `http://localhost:8765/NNNN.jpg` に差し替えた保存データ
- 画像本体は `deploy/*.jpg`（479枚・約130MB）。`serve.bat` が配信する
- 元のMODは一切いじっていない。Workshop側を購読し直しても影響なし

## 友達と遊ぶ場合
- localhost はホストのPCからしか見えないので、リモートの相手には画像が届かない
- その時は画像を外部ホスト（Steam Cloud / GitHub Pages / Cloudflare R2 等）に置いて
  `python render/make_mod.py https://<公開URL>` で保存データを作り直す（10秒）

## 未翻訳のまま残しているもの
- シナリオブック（PDF, 剧本1/2）→ 遊ぶページを都度訳す運用。起源の地(p3)と目次(p1)は `out/pages/scen1_*.png`
- 地形カード50枚・HPカウンター盤・立ち絵 → 文字がないので原文のまま
