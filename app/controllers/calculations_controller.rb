class CalculationsController < ApplicationController
  def instructions
    @title="Our little calculator"
    render("instructions.html.erb")
  end

def square_root
  @title="Square Root"
  @number=params[:number]
  @number=@number.to_i

end

def loan
  @title="Payment"
  @interest = params[:interest].to_f / 100
  @year = params[:year].to_f.round(0)
  @total = params[:total].to_f.round(0)

  @payment=((@interest/12/100*@total)/(1-(1+@interest/12/100)**(-@year*12))).round(1).to_f


end

def random
  @title="Random Number"
  @first=params[:first].to_i
  @second=params[:second].to_i

  @random=rand(@first..@second)

end

def square
  @title="Square"
  @number=params[:square_number].to_i
  @square=@number**2
end


end
