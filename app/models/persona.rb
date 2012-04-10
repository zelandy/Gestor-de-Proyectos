class Persona < ActiveRecord::Base
	has_one :contacto, :as => :identificable
end
