require('rspec')
require('word_count')

describe('String#word_count') do

  it('returns 1 when the word and text are the same single word') do
    expect(("word").word_count("word")).to(eq(1))
  end

end
