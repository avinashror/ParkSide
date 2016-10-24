class LoansubmissionController < ApplicationController
	
    def index
    end


  	def show
  		@status = Loansubmission.find(params[:id]).loanstatus
  		@id = Loansubmission.find(params[:id]).id
  	end

  	def submit_loan
  		@loan = Loansubmission.new
  		@loan.loanamount = params[:loanamount]
  		@loan.propertyvalue = params[:propertyvalue]
  		@loan.ssn = params[:ssn]
  		if @loan.save
  			flash[:message] = "Loan has been processed successfully"
  			redirect_to loansubmission_url(@loan)
  		else
  			flash[:message] = "Unable to Save the Loan"
  			redirect_to :root

  		end	
  	end	

end
