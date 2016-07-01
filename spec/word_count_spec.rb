require('rspec')
require('word_count')

describe('String#word_count') do

  it('returns 1 when the word (="word") and text (="word") are the same single word') do
    expect(("word").word_count("word")).to(eq(1))
  end

  it('returns 0 when word (=word) is not found in text (=text)') do
    expect(("text").word_count("word")).to eq(0)
  end

  it('returns 0 when word being counted (=break) is only found as a substring in text (=breakneck)') do
    expect(("breakneck").word_count("break")).to eq(0)
  end

  it('returns 1 when word being counted (=word) only differs by capitalization from word in text (=Word)') do
    expect(("Word of the month club").word_count("word")).to eq(1)
  end

  it('returns 0 if word being counted (=term) only appears as part of a hyphenated compound word in text (=near-term)') do
    expect(("near-term").word_count("term")).to eq(0)
  end

  it('returns 0 if word being counted (=years) only appears directly following a number with no space between in text (=2years)') do
    expect(("2years").word_count("years")).to eq(0)
  end

  it('returns 0 if word being counted (=years) only appears in text with a preceding underscore with no space (=_years)') do
    expect(("_years").word_count("years")).to eq(0)
  end

  it('returns 0 if word counted only appears with trailing hyphen in text') do
    expect(("near-term").word_count("near")).to eq(0)
  end

  it('increments count for every instance of word encountered in text (case insensitive) when not immediately preceeded/followed by hyphen, number, or underscore') do
    expect(("Like, you're not likely to like this dormitory-like life we live here.").word_count("like")).to eq(2)
  end

end
