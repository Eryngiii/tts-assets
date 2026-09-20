# 呪欲の門 日本語版 — 使い方

## 遊び方
1. Tabletop Simulator を起動 → Create → Multiplayer（または Singleplayer）
2. Games → Save & Load → 「呪欲の門 日本語版」を選ぶ
3. 初回は画像の読み込みに1〜2分かかる。以降はキャッシュされて速い
4. リモートの相手も同じURLから自動で画像を取得する（ホストがこのセーブを開くだけでよい）

## 仕組み
- 元MOD（Workshop 2978710921）のカード画像URLを `https://raw.githubusercontent.com/Eryngiii/tts-assets/main/NNNN.jpg` に差し替えた保存データ
- 画像本体は GitHub リポジトリ `Eryngiii/tts-assets`（479枚・約130MB）
- 元のMODは一切いじっていない。Workshop側を購読し直しても影響なし
- `serve.bat` はローカル配信の予備。普段は不要

## カードを直したい時
1. `日本語化/translations/cards_ja.jsonl` の該当行を直す
2. `python render/run.py --n sl:123`（該当カードだけ再描画）→ 必要なら `python render/sheets_build.py`
3. `deploy/` の該当番号の jpg を差し替えて `git commit` → `git push`
4. TTS側は Mod Caching を一度クリアするか、セーブを開き直す

## 未翻訳のまま残しているもの
- シナリオブック（PDF, 剧本1/2）→ 遊ぶページを都度訳す運用。起源の地(p3)と目次(p1)は `out/pages/scen1_*.png`
- 地形カード50枚・HPカウンター盤・立ち絵 → 文字がないので原文のまま
