# To test deployments and interact with our contract
# locally, it is recommended to run a local gnoland node.
$ git clone git@github.com:gnolang/gno.git
...

$ cd ./gno

$ make
...

# Then, we can access node RPC on `127.0.0.1:26657` for
# interacting with our contract.
$ ./build/gnoland

# Note that our local gnoland node cache is stored in
# the `gno/testdir` directory. We can `rm` it to clean
# the cache (and therefore all deployments and actions
# made in our local environment).
