module Bug7805
  #This is really a duplicate of 8302

  context "Stubs should correctly restore module methods" do
    specify "1 - stub the open method" do
      File.stub!(:open).and_return("something")
      File.open.should == "something"
    end
    specify "2 - use File.open to create example.txt" do
      filename = "#{File.dirname(__FILE__)}/example-#{Time.new.to_i}.txt"
      File.exist?(filename).should be_false
      file = File.open(filename,'w')
      file.close
      File.exist?(filename).should be_true
      File.delete(filename)
      File.exist?(filename).should be_false
    end
  end

end