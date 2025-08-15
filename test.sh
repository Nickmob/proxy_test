#/bin/bash

for i in {1..10}
do
    wrk -t4 -c1000 -d20s --latency -H 'Accept-encoding: zstd' --timeout 5s https://test.mtdlb.ru/2kb.html
    #wrk -t4 -c1000 -d20s --latency -H 'Accept-encoding: gzip' --timeout 5s https://test.mtdlb.ru/2kb.html
    echo "--- 2KB $i Done! ---"
done

for i in {1..10}
do
    wrk -t4 -c1000 -d20s --latency -H 'Accept-encoding: zstd' --timeout 5s https://test.mtdlb.ru/100kb.html
    #wrk -t4 -c1000 -d20s --latency -H 'Accept-encoding: gzip' --timeout 5s https://test.mtdlb.ru/100kb.html
    echo "--- 100KB $i Done! ---"
done
