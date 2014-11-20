class Parada < ActiveRecord::Base
	 
	def self.import(file)
	  CSV.foreach(file.path, headers: :true) do |row|
	  	row['endereco'].upcase!
	  	row['bairro'].upcase! unless row['bairro'].nil?
	  	hash = row.to_hash
	  	Parada.create! hash
	  end
	end
end
