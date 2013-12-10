class MatrixDSL
	attr_accessor :option, :operand

  		def initialize(operacion, &block)
			@operacion = operacion
    	
			self.option = []
    			self.operad = []
    			@tipo = 'densa'
  			@mostrar = 'console'  

    			#if block_given?  
      			#	if block.arity == 1
        		#		yield self
      			#	else
        				instance_eval &block 
      			#	end
    			#end
			
			puts self
  		end
  
  	def to_s
 		salida = "\n #{@operacion} \n"
		
		case operacion
      			when "Suma" then salida << " #{(operador[0]+operandor[1]).to_s}\n"
      			when "Resta" then salida << " #{(operador[0]+operandor[1]).to_s}\n"
      			when "Producto" then salida << " #{(operador[0]+operandor[1]).to_s}\n"        
    		end 
		salida  
  	end

  	def option(opcion)
		case opcion
      			when 'densa','dispersa' then @tipo = opcion
      			when 'console','file' then @mostrar = opcion
    		end
  	end

  	def operand(array) 
		vector = []
    		array.each { |x| x.each { |y| vector << y } }
 
    		case @tipo
      			when "densa" then operandor << Matriz.new(array.size,array[0].size,aux)
      			when "dispersa" then operandor << Matriz_dispersa.new(array.size,array[0].size,aux,"COO")
    		end   			
				
		
  	end
end


