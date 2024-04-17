@apr_input=params.fetch(user_apr).to_f
@years_input_preconversion=params.fetch(user_years).to_f
@principal_input=params.fetch(user_pv).to_f
@years_input_months=@years_input_preconversion*12


@r=@apr_input/100/12
@part_denominator=(1+@r)**(-@years_input_months)

@payment_output= (@r*@principal_input)/(1-@part_denominator)

pp @payment_output
