class RepositoryFileReader
  ERR_FILE_DOES_NOT_EXISTS = "File does not exists"
  ERR_FILE_NOT_READABLE = "File not readable"

  def self.create_from_file(file)
    if !File.exists?(file)
      raise ArgumentError, ERR_FILE_DOES_NOT_EXISTS
    end

    if !File.readable?(file)
      raise ArgumentError, ERR_FILE_NOT_READABLE
    end
  end
end
