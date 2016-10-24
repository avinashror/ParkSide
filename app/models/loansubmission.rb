class Loansubmission < ActiveRecord::Base
	validates :loanamount, presence: true
	validates :propertyvalue, presence: true
	validates :ssn, presence: true

	before_save :process_loan

	def process_loan
		if self.loanamount < self.propertyvalue*0.4
			self.loanstatus = "accepted"
		else
			self.loanstatus = "rejected"
		end
		# self.save	 
	end
end
