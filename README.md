# isucon7-qualify
ISUCON7 qualify repo: 人は何故生きるのか

## 変更点

### isubata

- アバター画像をファイルへ書き出し
  - dbをストレージサーバとしてNFSで共有
- N+1をいくつか修正
- パスワードをプレーンテキストで保存(効果の程は不明)
- ログ無効化
- UNIX domain socket

### nginx

- nginx 1.13.6へアップグレード
- 静的ファイルを配信
  - ETag
  - Cache-Control
- ログ無効化

### MySQL

- Percona Server 5.7へ移行
  - 事前のベンチマークで若干のパフォーマンス向上が見られたため
- index
- タレ

### Linux

- Linux Kernel 4.14-rc5へアップグレード
- タレ
