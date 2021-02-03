curl -H "Authorization: token $token" https://api.github.com/repos/misogihagi/sand/git/refs/heads/master
curl -H "Authorization: token $token" https://api.github.com/repos/misogihagi/sand/git/commits/2a2fcf6dbaa50c9424aaabd04a8c6e52dda32f9a

curl -X POST   -H "Accept: application/vnd.github.v3+json" -H "Authorization: token $token"  https://api.github.com/repos/misogihagi/sand/git/blobs  -d "{ \"content\": \"VHVlLCBTZXAgIDUsIDIwMTcgIDM6MTQ6MzIgUE0K\",  \"encoding\": \"base64\"}"
curl   -X POST   -H "Accept: application/vnd.github.v3+json" -H "Authorization: token $token"  https://api.github.com/repos/misogihagi/sand/git/trees  -d "{\"base_tree\": \"3c6da21eb9fbc41969464f9b07845fdc483fa265\",\"tree\":[{\"path\":\"file.rb\",\"mode\":\"100644\",\"type\":\"blob\",\"sha\":\"83bf64bec811a89102e03a5bc22095813ecff6a0\"}]}"

curl ^
  -X POST ^
  -H "Accept: application/vnd.github.v3+json" ^
  -H "Authorization: token $token" ^
  https://api.github.com/repos/misogihagi/sand/git/commits ^
  -d "{\"message\":\"message\",\"tree\":\"033f080637249ec1f9305ca77b384fbe646550fa\"}"


curl ^
  -X PATCH ^
  -H "Accept: application/vnd.github.v3+json" ^
  -H "Authorization: token $token" ^
  https://api.github.com/repos/misogihagi/sand/git/refs/heads/main ^
  -d "{\"sha\":\"9094a56304e5b4e0f1c604194fcdf97bb2bf1439\",\"force\":true}"








curl -H "Authorization: token $token" https://api.github.com/repos/misogihagi/sand/pulls --data '
{
  "title": "Amazing new feature",
  "body": "Please pull these awesome changes in!",
  "head": "head",
  "base": "E'"
}'
