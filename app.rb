require "sinatra"
require "sinatra/reloader"

get("/square/new") do
  erb(:square)
end

get("/square_root/new") do
  erb(:sqrt)
end

get("/payment/new") do
  erb(:payment)
    
end

get("/random/new") do
  erb(:random)
      
end
  