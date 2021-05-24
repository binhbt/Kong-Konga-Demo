BASE_URL=http://localhost
# Register auth service API
curl -i -X POST \
  --url $BASE_URL:8001/services/ \
  --data 'name=user-service' \
  --data 'host=user'\
  --data 'port=5000'

curl -i -X POST \
  --url $BASE_URL:8001/services/user-service/routes \
  --data 'paths[]=/user/'\
  --data 'name=user-route'\
  --data 'strip_path=true'


 curl -i -X POST \
  --url $BASE_URL:8001/services/ \
  --data 'name=provider-service' \
  --data 'host=provider'\
  --data 'port=5000'

curl -i -X POST \
  --url $BASE_URL:8001/services/provider-service/routes \
  --data 'paths[]=/provider/'\
  --data 'name=provider-route'\
  --data 'strip_path=true'


 curl -i -X POST \
  --url $BASE_URL:8001/services/ \
  --data 'name=admin-service' \
  --data 'host=admin'\
  --data 'port=5000'

curl -i -X POST \
  --url $BASE_URL:8001/services/admin-service/routes \
  --data 'paths[]=/admin/'\
  --data 'name=admin-route'\
  --data 'strip_path=true'

curl http://localhost:8000/user/homepage
curl http://localhost:8000/provider/homepage
curl http://localhost:8000/admin/homepage