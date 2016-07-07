require "../spec_helper"

describe VersionFreezer do
  describe "freeze" do
    it "self directory" do
      version = VersionFreezer.freeze({{ "#{__DIR__}/../data/self" }})
      version.should eq("1.2.3")
    end

    it "parent directory" do
      version = VersionFreezer.freeze({{ "#{__DIR__}/../data/parent/sub" }})
      version.should eq("1.2.3")
    end
  end
end
