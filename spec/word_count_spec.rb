require('rspec')
require('word_count')

describe('String#word_count') do

  it('returns 1 when word (="word") and text (="word") are the same') do
    expect(("word").word_count("word")).to(eq(1))
  end

  it('returns 0 when word (=word) not found in text (=text)') do
    expect(("text").word_count("word")).to eq(0)
  end

  it('returns 0 when word (=break) is a substring or word in text (=breakneck)') do
    expect(("breakneck").word_count("break")).to eq(0)
  end

  it('returns 1 when word (=word) differs by capitalization only in text (=Word)') do
    expect(("Word of the month club").word_count("word")).to eq(1)
  end

  it('returns 0 when word (=term) is part of a hyphenated compound text (=near-term)') do
    expect(("near-term").word_count("term")).to eq(0)
  end

  it('returns 0 when word (=years) is next to and touching a number in text (=2years)') do
    expect(("2years").word_count("years")).to eq(0)
  end

  it('returns 0 when word (=years) has a preceding underscore in text (=_years)') do
    expect(("_years").word_count("years")).to eq(0)
  end

  it('returns 0 when word (=near) has a trailing hyphen in text (=near-term)') do
    expect(("near-term").word_count("near")).to eq(0)
  end

  it('counts all instances of word in text (case insensitive)') do
    expect(("Like, you're not likely to like this dormitory-like life we lead here.").word_count("like")).to eq(2)
  end

end
