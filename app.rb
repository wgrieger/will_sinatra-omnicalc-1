require "sinatra"
require "sinatra/reloader"

get("/square/new") do
  erb(:square)
end

get("/square/results")do
@input_sqr=params.fetch(:number).to_f
@result_sqr= @input_sqr*@input_sqr

erb(:square_results)
end

#square root
get("/square_root/new") do
  erb(:sqrt)
end

get("/payment/new") do
  erb(:payment)
    
end

get("/random/new") do
  erb(:random)
      
end
  