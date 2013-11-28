class Roman

	def self.generate remaining_total, roman_str=""
		if remaining_total == 0
			return roman_str
		else
			if remaining_total >= 1000
				generate((remaining_total - 1000), (roman_str + "M"))
			elsif remaining_total >= 900
				generate((remaining_total - 900), (roman_str + "CM"))
			elsif remaining_total >= 500
				generate((remaining_total - 500), (roman_str + "D"))
			elsif remaining_total >= 400
				generate((remaining_total - 400), (roman_str + "CD"))
			elsif remaining_total >= 100
				generate((remaining_total - 100), (roman_str + "C"))
			elsif remaining_total >= 90
				generate((remaining_total - 90), (roman_str + "XC"))
			elsif remaining_total >= 50
				generate((remaining_total - 50), (roman_str + "L"))
			elsif remaining_total >= 40
				generate((remaining_total - 40), (roman_str + "XL"))
			elsif remaining_total >= 10
				generate((remaining_total - 10), (roman_str + "X"))
			elsif remaining_total >= 9
				generate((remaining_total - 9), (roman_str + "IX"))
			elsif remaining_total >= 5
				generate((remaining_total - 5), (roman_str + "V"))
			elsif remaining_total >= 4
				generate((remaining_total - 4), (roman_str + "IV"))
			else
				generate((remaining_total - 1), (roman_str + "I"))
			end
		end
	end
end

class Object
	def to_roman
		if self.respond_to? :to_i
			if self.to_i > 0
				Roman.generate( self.to_i )
			else
				raise "RomanNumeral must be a positive integer"
			end
		else
			raise "no implicit conversion of #{self.class} to RomanNumeral"
		end
	end
end
