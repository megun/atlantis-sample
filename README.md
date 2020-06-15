# 事前準備
- atlantis用のbotユーザ準備
- 上記botでgithub-token発行しておく

# atlantis構築
- tfstate用バケット作成する
```
aws s3 mb s3://megun-atlantis-sample-tfstate
aws s3api put-public-access-block \
  --bucket megun-atlantis-sample-tfstate \
  --public-access-block-configuration \
    "BlockPublicAcls=true,
    IgnorePublicAcls=true,
    BlockPublicPolicy=true,
    RestrictPublicBuckets=true"
```

- terraform実行
```
cd atlantis

terraform aply
var.atlantis_github_token
  Enter a value: atlantis-botのgithub-token入力
```

# github webhook作成
- 対象リポジトリにwebhook作る
```
Payload URL: https://atlantis.megunlabo.net/events
Content type: application/json
Secret: ParameterStoreの/atlantis/webhook/secret を参照
Let me select individual events:
- Pull request reviews
- Pushes
- Issue comments
- Pull requests
```
