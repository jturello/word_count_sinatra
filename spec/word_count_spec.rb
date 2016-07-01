require('rspec')
require('word_count')

describe('String#word_count') do

  it('returns 1 when the word (="word") and text (="word") are the same single word') do
    expect(("word").word_count("word")).to(eq(1))
  end

  it('returns 0 when word (=word) is not found in text (=text)') do
    expect(("text").word_count("word")).to eq(0)
  end

  it('returns 0 when word being counted (=break) if only found as a substring in text (=breakneck)') do
    expect(("breakneck").word_count("break")).to eq(0)
  end

  it('returns 1 when word being counted (=word) only differs by capitalization from word in text (=Word)') do
    expect(("Word of the month club").word_count("word")).to eq(1)
  end

end
