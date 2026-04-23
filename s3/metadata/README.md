## Create a bucket

```sh
aws s3 mb s3://metadata-bucket-gr-123
```

echo "Hello Mars" > hello.txt

aws s3api put-object --bucket="metadata-bucket-gr-123" --key="hello.txt" --body hello.txt --metadata Planet=Mars