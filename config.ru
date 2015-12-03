require 'sinatra/base'

require('./controllers/application')
require('./controllers/items')
require('./models/item')

map('/') { run ItemsController }
