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

get("/payment/results")do
@user_apr=params.fetch(:user_apr).to_f
@apr_input=sprintf("%.4f%%", @user_apr)
@years_input_preconversion=params.fetch(:user_years).to_i
@principal_input=params.fetch(:user_pv).to_f
@years_input_months=@years_input_preconversion*12
@display_dollar= @principal_input.to_fs(:currency)
@r=@user_apr/100/12
@part_denominator=(1+@r)**(-@years_input_months)

@payment_output= (@r*@principal_input)/(1-@part_denominator)
@payment_output_rounded=@payment_output.round(2).to_fs(:currency)

  erb(:payment_results)
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

  