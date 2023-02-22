# Gnolang comes with cli tool suites to interact with
# the chain.
$ git clone git@github.com:gnolang/gno.git
...

# To build cli tools suites, clone gno repo and build it.
$ cd ./gno

$ make install

Installing gnodev
go install ./cmd/gnodev
Installing gnokey
go install ./cmd/gnokey

# _gnodev_ which provides multiple utilities to
# develop in Gnolang.
$ gnodev --help

available subcommands:
  build - build a gno package
  precompile - precompile .gno to .go
  test - test a gno package
  repl - start a GnoVM REPL

# _gnokey_ to create key, sign/broadcast transactions
# and make RPC queries.
$ gnokey --help

available subcommands:
  add - add key to keybase
  delete - delete key from keybase
  generate - generate a new private key
  list - list all known keys
  sign - sign a document
  verify - verify a document signature
  broadcast - broadcast a signed document
  query - make an ABCI query
  maketx - compose a tx document to sign

# Now that we can interact to gno with our local setup,
# let’s learn more about gno.
