require "./resolver"

path = ARGV[0].as(String)
version = VersionFreezer.resolve(path) || ""

print version
