docker build -t dragon/redis .

if [ $? -eq 0 ];then
    echo "docker build success"
else
    echo "docker build fail"
    exit -1
fi

docker run -d -p 6379:8888 --name dragon-redis dragon/redis
