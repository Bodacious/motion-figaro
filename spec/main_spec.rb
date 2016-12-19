describe "Motion-Figaro" do

  it "sets general configurations in the ENV hash" do
    ENV["GENERAL"].should == "WORKS!"
  end

  it "sets general configurations in the ENV hash" do
    ENV["SPECIFIC"].should == "ALSO WORKS!"
  end

end
