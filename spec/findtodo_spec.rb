require 'findtodo'

RSpec.describe "returns a task if the task string includes TODO' " do
  it "returns true when TODO found in string" do
    expect(check_string("TODO: walking the dog")).to eq true
  end
    
  it "returns true when Todo (not all letters are upcase) found in string" do
    expect(check_string("go shop! Todo!")).to eq true
  end
  
  it "search item not found if a space is added" do
    expect(check_string("TO DO: walking the dog")).to eq true
  end

  it "input string is empty" do
    expect(check_string("")).to eq false
  end

  it "Todo not found in string" do
    expect(check_string("walking the cat")).to eq false
  end

  it "input is nil" do
    expect { check_string(nil) }.to raise_error "there is no input"
  end
end

