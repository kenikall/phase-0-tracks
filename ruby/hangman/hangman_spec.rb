require_relative 'hangman'

describe Hangman do
  let(:hangman) { Hangman.new }

  it "Picks a random word with less than 5 letters" do
    expect(hangman.setup("easy")).be < 5
  end

  it "Picks a random word with 5 letters" do
    expect(hangman.setup("medium")).to eq 5
  end

  it "Picks a random word with more than 5 letters" do
    expect(hangman.setup("hard")).be > 5
  end
end