#referencia a archivo calculadora
require './Calculadora'
	describe Calculadora do
	#antes de hacer cualquier cosa
		before do
		#instancia el objeto Calculadora
		@calculadora = Calculadora.new
		end
		#"#suma" es el nombre del metodo
		describe"#suma" do
			it "should return 0 when adding 0 to 0" do
				@calculadora.suma(0,0).should==0
			end		
		end
		
	describe "#suma" do
		it "should return 5 when adding 3 to 2" do
			@calculadora.suma(3,2).should==5
		end
	end
end
	
