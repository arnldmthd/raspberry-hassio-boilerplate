echo "🧞‍♂  docker kill $(docker ps -q)"
docker kill $(docker ps -q) > /dev/null 2>&1
echo "🧞‍♂️  docker rm $(docker ps -a -q)"
docker rm $(docker ps -a -q) > /dev/null 2>&1