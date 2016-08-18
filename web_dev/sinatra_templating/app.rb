# require gems
require 'sinatra'
require 'sinatra/reloader'
require 'sqlite3'

set :public_folder, File.dirname(__FILE__) + '/static'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

db.execute("CREATE TABLE IF NOT EXISTS campus (
	id INTERGER PRIMART KEY,
	short_name VARCHAR(255),
	long_name VARCHAR(255))")
# show students on the home page
get '/' do
  @students = db.execute("SELECT * FROM students")
  @campus = db.execute("SELECT * FROM campus")
  erb :home
end

get '/ny' do
  @nystudents = db.execute("SELECT * FROM students WHERE campus = 'NYC'")
  erb :ny
end

get '/students/new' do
  erb :new_student
end

get '/campus/new' do
  erb :new_campus
end
# create new students via a form
post '/students' do
  db.execute("INSERT INTO students (name, campus, age) VALUES (?,?,?)", [params['name'], params['campus'], params['age'].to_i])
  redirect '/'
end

post '/campus' do
  db.execute("INSERT INTO campus (short_name, long_name) VALUES (?,?)", [params['short_name'], params['long_name']])
  redirect '/'
end
#add static resources