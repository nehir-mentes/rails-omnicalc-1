class ZebraController < ApplicationController
  
  def homepage
    render({:template => "zebra/new_square"})
  end

  def square
    @the_num = params.fetch("number").to_f
    @the_square = @the_num ** 2
    render({:template => "zebra/square_results"})
  end  

  def new_square_root
    render({:template => "zebra/new_square_root"})
  end 

  def square_root
    @the_num = params.fetch("number").to_f
    @the_square = @the_num ** 0.5
    render({:template => "zebra/square_root_results"})
  end

  def new_payment
    render({:template => "zebra/new_payment"})
  end 

  def payment
    @user_apr = params.fetch("user_apr").to_f.to_fs(:percentage, { :precision => 4 } )
    @user_years = params.fetch("user_years").to_f
    @user_pv = params.fetch("user_pv").to_f.to_fs(:currency)
    
    r_term = (params.fetch("user_apr").to_f / 100 / 12)
    nominator = r_term * params.fetch("user_pv").to_f
    loan_term = params.fetch("user_years").to_f * 12
    denominator = 1-((1+r_term) ** (-1*loan_term)) 
  
    @the_payment = (nominator / denominator).to_fs(:currency)

    render({:template => "zebra/payment_results"})
  end

  def new_random
    render({:template => "zebra/new_random"})
  end

  def random
    @user_min = params.fetch("user_min").to_f
    @user_max = params.fetch("user_max").to_f
    @random_number = rand(@user_min..@user_max)

    render({:template => "zebra/random_results"})
  end
end
