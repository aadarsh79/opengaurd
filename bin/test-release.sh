if [ -z $1 ]; then
	TAG="latest"
else 
	TAG="$1"
fi

docker pull aadarsh79/opengaurd:${TAG}
docker rm -f ${TAG}-test
docker run -d --name "${TAG}-test" -e SKIPSYNC=true aadarsh79/opengaurd:${TAG}
docker logs -f "${TAG}-test"
