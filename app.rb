require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/TEMPLATE')
require('pry')
require('launchy')


get('/') do
  erb(:form)
end

get('/RESULT') do
  @err = nil

  if Integer(params['TEMPLATE'].TEMPLATE()) == SOMETHING
    @err = "Argument not valid - #{params['TEMPLATE']}"
    erb(:RESULT)
  else
    @VAR = params['TEMPLATE'].to_i.TEMPLATE()
    erb(:RESULT)
  end

end
