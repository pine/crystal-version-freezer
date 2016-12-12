require "semantic_version"
require "yaml"

module VersionFreezer
  def self.resolve(path : String) : String?
    loop do
      shard_path = File.join(path, "shard.yml")

      if File.readable? shard_path
        begin
          obj = YAML.parse(File.read(shard_path))
          version_str = obj["version"].as_s
          version = SemanticVersion.parse(version_str)

          return version_str
        rescue YAML::ParseException
          raise "invalid YAML format: #{shard_path}"
        rescue KeyError
          raise "`version` key not found: #{shard_path}"
        rescue ArgumentError
          raise "invalid `version` value: #{shard_path}"
        end
      end

      parent_path = File.dirname(path)
      return nil if parent_path == path

      path = parent_path
    end
  end
end
