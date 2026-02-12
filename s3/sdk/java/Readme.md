# Create a maven project

```sh
mvn -B archetype:generate \
-DarchetypeGroupId=software.amazon.awssdk \
-DarchetypeArtifactId=archetype-lambda -Dservice=s3 -Dregion=US_WEST_2 \
-DarchetypeVersion=2.41.27 \
-DgroupId=com.example.myapp \
-DartifactId=myapp
```
