class MatrixDSL
	attr_accessor :option, :operandor, :tipo, :mostrar

  		def initialize(operacion, &block)
			@operacion = operacion
    			@operador = []
    			@tipo = 'densa'
  			@mostrar = 'console'  

    			#if block_given?  
      			#	if block.arity == 1
        		#		yield self
      			#	else
        				instance_eval &block 
      			#	end
    			#end
			
  		end
  
  	def to_s
 		salida = "\n #{@operacion} \n"
		
		case @operacion
      			when "suma" then salida << "\n#{(@operador[0]+@operador[1]).to_s}\n"
      			when "producto" then salida << "\n#{(@operador[0]*@operador[1]).to_s}\n"        
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
      			when "densa" then @operador << Matrix.new(array.size,array[0].size,vector)
      			when "dispersa" then @operador << Matrix_dispersa.new(array.size,array[0].size,vector,"COO")
    		end   			
				
		
  	end
end


