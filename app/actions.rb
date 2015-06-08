# Homepage (Root path)
helpers do
  def current_user
  @current_user = User.find_by(id: session[:user_id]) if session[:user_id]
  end
end

get '/' do
  erb :index
end

get '/login' do
    erb :login
end

get '/signup' do
  erb :signup
end

get '/logout' do
  erb :logout
end

post '/login' do
  username = params[:username]
  password = params[:password]

  user = User.find_by(username: username)
  if user.password == password
    session[:user_id] = user.id
    redirect '/'
  else
    redirect '/login'
  end
end

post '/signup' do
    redirect '/'
end

post '/profile' do
    redirect '/'
end

get '/users/new' do
  erb :"users/new"

end

post '/users' do
  #create a new user with the data in params that was posted to us
  xuser = User.create(params)
  #logging in when we have a new user, create a session for them
  session[:user_id] = xuser.id
  #redirect user to their profile page
  redirect '/profile'
end
#form fields must match schema.rb***

get '/profile' do
  # find the user using the user_ID we saved in the session
  @user = User.find(session[:user_id])
  erb :profile
end

post '/signup' do
  username = params[:username]
  password = params[:password]

  user = User.find_by(username: username)
  if user
    redirect '/signup'
  else
    user = User.create(username: username, password: password)
    session[:user_id] = user.id
    redirect '/'
  end
end
