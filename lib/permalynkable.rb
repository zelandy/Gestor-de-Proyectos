module Permalynkable
	SIZE = 15

	module ClassMethods
		def exfind(*args)
			if !(_data = find_with_permalynks(*args) if args.to_s.length >= SIZE) || Array(_data).compact.empty?
				_data = self.find(*args)
			end
			return _data
  		end
  		
  		def find_with_permalynks(*plks)
			expects_array = plks.first.kind_of?(Array)
			return plks.first if expects_array && plks.first.empty?
			
			plks = plks.flatten.compact.uniq

			case plks.size
				when 0
					nil
				when 1
					result = self.where(['permalynk like ?', plks.first]).first
					expects_array ? [ result ] : result
				else
					self.where(['permalynk in (?)', plks]).all
			end
  		end
  	end
  	
  	def to_param
  		return respond_to?(:permalynk) || !permalynk.nil? || !permalynk.empty? ? permalynk : super
	end
	
	def	permalynk
		_permalynk = read_attribute(:permalynk)
		self.update_attribute('permalynk', rand(36**SIZE).to_s(36).insert(rand(SIZE),self.id.to_s(16))) if _permalynk.nil? || _permalynk.to_s.empty?
		read_attribute(:permalynk)
	end
	
	def reset_permalynk
		write_attribute(:permalynk, nil)
	end
end