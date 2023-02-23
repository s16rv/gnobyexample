// Before we dive in, let's first study the differences
// between realms and packages. A realm is a specific
// instance of a *smart contract* written in the Gnolang
// programming language. On the other hand, a package
// contains functionalities and utilities that can be
// used in realms.

/// gnobyexample/hello/hello.gno
package hello

func world() string {
  return "world!"
}

// Our first realm will print the classic
// "hello world" message.
func Render() string {
  return "Hello, " + world()
}
