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

get("/square_root/results")do
@input_sqrt=params.fetch(:user_number).to_f
@result_sqrt= Math.sqrt(@input_sqrt)

erb(:sqrt_results)
end

#payment
get("/payment/new") do
  erb(:payment)
    
end

#random
get("/random/new") do
  erb(:random)
      
end

get("/random/results")do
@input_min=params.fetch(:user_min).to_f
@input_max=params.fetch(:user_max).to_f

@random_number= rand(@input_min..@input_max)

erb(:random_results)
end

  