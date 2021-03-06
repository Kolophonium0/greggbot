# from https://gist.github.com/mattwynne/736421
RSpec::Matchers.define(:be_same_file_as) do |exected_file_path|
  match do |actual_file_path|
    md5_hash(actual_file_path).should == md5_hash(exected_file_path)
  end

  def md5_hash(file_path)
    Digest::MD5.hexdigest(File.read(file_path))
  end
end
