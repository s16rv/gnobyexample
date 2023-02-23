# Before interacting with the chain, we need to create
# an account by generating a seed or mnemonic code and
# adding to an account as your preferred KEYNAME.
$ gnokey add KEYNAME

Enter a passphrase to encrypt your key to disk:
Repeat the passphrase:

* KEYNAME (local) - addr: g14gc7je0fgpw4sz9vud604txwqj
n8u3jc3xjgj5 pub: gpub1pgfj7ard9eg82cjtv4u4xetrwqer2dn
txyfzxz3pq22guqqjm5r39tyqnnjn75vdkfk7cak5sadxmvgl3pd55
mqqzjx3kx4ykr3, path: <nil>

**IMPORTANT** write this mnemonic phrase in a safe place.
It is the only way to recover your account if you ever
forget your password.

kid rose ...

# We can get our account balance using this command,
# replace ACCOUNT_ADDR with your address.
$ gnokey query auth/accounts/ACCOUNT_ADDR \
> --remote test3.gno.land:36657

height: 0
data: {
  "BaseAccount": {
    "address": "g1jg8mtutu9khhfwc4nxmuhcpftf0pajdhfvsqf5",
    "coins": "298037880ugnot",
    "public_key": {
      "@type": "/tm.PubKeySecp256k1",
      "value": "A+FhNtsXHjLfSJk1lB8FbiL4mGPjc50Kt81J7EKDn
      J2y"
    },
    "account_number": "3222",
    "sequence": "42"
  }
}
