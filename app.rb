require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/word_count')
require('pry')
require('launchy')


get('/') do
  erb(:form)
end

get('/word_count') do
    @text = params['text']
    @word_to_count = params['word_to_count']
    @count = @text.word_count(@word_to_count)
    erb(:word_count)
end
