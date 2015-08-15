class Calculate
	
	#Calculate  total expense without loan mortgage-----------
	def self.expense(tax, ins, mnt)
		tax.to_i + ins.to_i + mnt.to_i
	end

	def self.netexpense(expense, rent)
		
		rent.to_i - expense.to_i 
	end

	def self.caprate(purchase, netexpense, inflation)
		
		if inflation is true ?
			(((((netexpense.to_i * 12) / purchase.to_i) * inflation.to_i) * 100)
		else
			(((netexpense.to_i * 12) / purchase.to_i) * 100)
		end
	end
	
	#Calculate  new total expense with loan mortgage---------------
	def self.newexpense(expense, mrtgd)
		
		expense.to_i + mrtgd.to_i
	end
	
	def self.newnetincome(rent, newexpense)
		
		rent.to_i - newexpense.to_i
	end

	def self.cashoncash(newnetincome, downpayment, inflation)
		
		if inflation is true ?
			((((newnetincome.to_i * 12) / downpayment.to_i) * inflation.to_i) * 100)
		else
			(((newnetincome.to_i * 12) / downpayment.to_i) * 100)
		end

	end

end