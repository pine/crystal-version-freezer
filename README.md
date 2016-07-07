# version-freezer

Freeze `YourLibrary::VERSION` from `shard.yml` at compile time!


## Installation

Add this to your application's `shard.yml`:

```yaml
dependencies:
  version-freezer:
    github: pine/crystal-version-freezer
```


## Usage

```crystal
require "version-freezer"

module YourLibrary
  VERSION = VersionFreezer.freeze(__DIR__)
end
```

The `freeze` method finds your `shard.yml` file recursively.


## Contributing

1. Fork it ( https://github.com/pine/crystal-version-freezer/fork )
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create a new Pull Request

## Contributors

- [[pine]](https://github.com/pine) Pine Mizune - creator, maintainer
