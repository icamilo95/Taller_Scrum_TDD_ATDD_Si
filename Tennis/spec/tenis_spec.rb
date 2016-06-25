describe Tennis do
  it "el marcador debe ser 15-0" do
    tennis = Tennis.new "Alex","Laura"
    tennis.marcar "j1"
    tennis.marcador.should == "15-0" 
  end
end
