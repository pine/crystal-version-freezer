require "../spec_helper"

describe VersionFreezer do
  describe "VERSION" do
    it "valid" do
      VersionFreezer::VERSION.should match(/\d+.\d+.\d+/)
    end
  end
end
