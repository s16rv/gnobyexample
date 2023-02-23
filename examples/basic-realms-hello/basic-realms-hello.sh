# Then, deploy the realm on our local gnoland.
$ gnokey maketx addpkg gnobyexample \
> --pkgpath "gno.land/r/gnobyexample/hello" \
> --pkgdir "gnobyexample/hello" \
> --gas-fee 1ugnot \
> --gas-wanted 1000000 \
> --broadcast true \
> --chainid "dev" \
> --remote localhost:26657
OK!
GAS WANTED: 1000000
GAS USED:   154037

$ cd gno
...

# Run gnoland website on local env.
$ ./build/website
Running on http://127.0.0.1:8888

# Head to `http://127.0.0.1:8888/r/gnobyexample/hello`
# to see our deployed realm!

# We can also call our smart contract using
# _maketx call_ option
$ gnokey maketx call gnobyexample \
> --pkgpath "gno.land/r/gnobyexample/hello" \
> --gas-fee 1ugnot \
> --gas-wanted 1000000 \
> --broadcast true \
> --chainid "dev" \
> --remote localhost:26657 --func "Render"
("Hello, world!" string)
OK!
GAS WANTED: 1000000
GAS USED:   70250
