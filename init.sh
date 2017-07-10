# !/bin/bash
docker-compose up -d &&
docker cp leanote_server_1:/usr/local/leanote/mongodb_backup/ mongodb_backup/ &&
docker-compose exec db mongorestore -h localhost -d leanote --dir /init_data

