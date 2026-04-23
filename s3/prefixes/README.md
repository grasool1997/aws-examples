## Create Bucket

```sh
aws s3 mb s3://prefixes-fun-gr-123
```

## Create Folder

```sh
aws s3api put-object --bucket="prefixes-fun-gr-123" --key="helllo/"
```

## Create many folders

```sh
aws s3api put-object --bucket="