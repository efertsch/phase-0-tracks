# require gems
require 'sinatra'
require 'sqlite3'


db = SQLite3::Database.new("students.db")
db.results_as_hash = true

#write a basic GET route
#add a query parameter
#GET /
# get '/' do
#   "#{params[:name]} is #{params[:age]} years old."
# end

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



get '/student/:id' do
  student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
  student.to_s
  params[:id].to_s
  student["campus"]
end


# RELEASE 0 CODE:

get '/contact/:number/:street/:city/:state/:zip' do
  "The address is #{params[:number]} #{params[:street]} located in #{params[:city]}, #{params[:state]} #{params[:zip]}."
end 


get '/' do
  name = params[:name]
  if name 
    "Good job, #{name}!"
  else
    "Good job!"
  end 
end 


get '/add/:number1/:number2' do
  number1 = params[:number1]
  num1_as_int = number1.to_i
  number2 = params[:number2]
  num2_as_int = number2.to_i
  result = num1_as_int + num2_as_int
  result.to_s
end 



#Optional Challenge:
# Select all students by a certain campus 

get '/students/:campus' do
  student_by_campus = db.execute("SELECT * FROM students WHERE campus=?", params[:campus])
  student_by_campus.to_s
end

