class Parada < ActiveRecord::Base
	 
	def self.import(file)
	  CSV.foreach(file.path, headers: :true) do |row|
	  	Parada.create! row.to_hash
	  end
	end
end
