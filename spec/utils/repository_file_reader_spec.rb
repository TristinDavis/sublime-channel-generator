require File.dirname(File.dirname(File.dirname(__FILE__))) + "/lib/utils/repository_file_reader"


describe RepositoryFileReader, ".create_from_file" do
  FIXTURE_JSON = File.dirname(File.dirname(File.dirname(__FILE__))) + "/fixtures/repository.json"

  it "should raise error if file does not exists" do
    expect { RepositoryFileReader.create_from_file("foo.json") }.to raise_error(ArgumentError, RepositoryFileReader::ERR_FILE_DOES_NOT_EXISTS)
  end

  it "should raise error if file is not readable" do
    File.chmod(0220, FIXTURE_JSON)

    expect { RepositoryFileReader.create_from_file(FIXTURE_JSON) }.to raise_error(ArgumentError, RepositoryFileReader::ERR_FILE_NOT_READABLE)

    File.chmod(0664, FIXTURE_JSON)
  end
end
