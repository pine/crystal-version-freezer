module VersionFreezer
  macro freeze(path)
    {{ run("./process", path).stringify }}
  end
end
