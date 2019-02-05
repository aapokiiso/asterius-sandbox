Prerequisites:
- docker
- node >= v11.6.0

Links:
- https://github.com/tweag/asterius

Building:
```bash
$ docker run -i --rm -v $(pwd):/root/asterius/src terrorjack/asterius bash <<EOF
cd src
ahc-link --input-hs demo.hs --output-directory dist
EOF
```

Running:
```bash
$ cd dist; node --experimental-modules demo.mjs; cd ..
```
