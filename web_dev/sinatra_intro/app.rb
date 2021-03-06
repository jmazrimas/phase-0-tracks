# require gems
require 'sinatra'
require 'sqlite3'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET route
# add a query parameter
# GET /
get '/' do
  "#{params[:name]} is #{params[:age]} years old."
end

# write a GET route with
# route parameters
get '/about/:person' do
  person = params[:person]
  "#{person} is a programmer, and #{person} is learning Sinatra."
end

get '/:person_1/loves/:person_2' do
  "#{params[:person_1]} loves #{params[:person_2]}"
end

# write a GET route that retrieves
# all student data
get '/students' do
  students = db.execute("SELECT * FROM students")
  response = ""
  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end

# write a GET route that retrieves
# a particular student

get '/students/:id' do
  student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
  student.to_s
end

get '/contact' do
  "123 Made Up Lane, Anywhere, USA"
end

get '/great_job' do
  name = params[:name]
  if params[:name]
    "Good job, #{name}!"
  else 
    "Good job"
  end
end

# Old school
  # http://localhost:9393/add?num1=4&num2=5
get '/add' do
  num1 = params[:num1].to_i
  num2 = params[:num2].to_i
  "#{num1+num2}"
end

# New school
  # http://localhost:9393/5/plus/9
get '/:num1/plus/:num2' do
  "#{params[:num1].to_i+params[:num2].to_i}"
end

#Search for students with name like
get '/students/search/:namelike' do
  namelike=params[:namelike]
  students_like = db.execute("SELECT name, id FROM STUDENTS WHERE name LIKE ?",'%'+namelike+'%')
  student_list=""
  students_like.each do |student_hash|
    student_list<<student_hash["name"].to_s+"<br>"
  end
  student_list
end