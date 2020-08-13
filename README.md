# Elk
An experiment into Go 2 generics, using the go2go tool. The goal of this project is to explore the design space created
by the upcoming introduction of generics in Go. The goal is to be able to produce ergonomic and performant interfaces
around common functional programming patterns and data structures.

* Blog [post](https://blog.golang.org/generics-next-step) about the state of generics.
* Latest [draft design](https://go.googlesource.com/proposal/+/refs/heads/master/design/go2draft-type-parameters.md) for
  generics.
* VSCode [extension](https://github.com/golang/go/issues/39619) for Go 2 files.
* Go 2 [examples](https://github.com/golang/go/tree/dev.go2go/src/cmd/go2go/testdata/go2path/src)

## Experiments
* Iterators
    * Create from slice
    * Create from channel
    * Create from map
    * Map over iterator
    * Filter over iterator
    * ForEach over iterator
    * Collect into a slice
    * Collect into a map
* Sets
* Synchronized Maps
* Channels that can be closed by the receiver.

## Testing it out
The `Makefile` has what you need to get started. All you need is `make` and a working Go compiler.

`make compiler` will pull the Go compiler from Github, checkout the branch containing the go2go tool and compile it.
The compiler will end up in `goroot/bin/go`.

Note that the `go2go` tool does not support Go modules.
