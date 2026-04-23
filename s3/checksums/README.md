## Create a new s3 bucket

```md
aws s3 mb s3://checksums-examples-gr-123
```

## Create a file that we will do a checksum on

```
echo "Hello Mars!" > myfile.txt
```

## Get a checksum of a file for md5

```
md5sum myfile.txt
```

## Upload our file to s3

```
aws s3 cp myfile.txt s3://checksums-examples-gr-123
aws s3api head-object --bucket checksums-examples-gr-123 --key myfile.txt
```

## Lets upload a fiel with a different kind of checksum

```
aws s3api put-object --bucket checksums-examples-gr-123 --key myfilesha1.txt --body myfile.txt --checksum-algorithm="SHA1" --checksum-sha1="bc56445c045baf77e80b7ccc7c00b6906efafecc"
```
