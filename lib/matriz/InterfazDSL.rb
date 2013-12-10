# = DSL PARA MATRIZ DENSA Y DISPERSA
# Author::   Grupo M 24
# Copyright:: Copyright (c) 2013 
# License::   Misma que Ruby

# DSL para trabajar con matrices

class MatrixDSL
	# * +option+ - opcion
	attr_accessor :option
	
	# * +operador+ - operador 
	attr_accessor :operador
	
	# * +tipo+ - tipo de la matriz
	attr_accessor :tipo
	
	# * +mostrar+ - por donde se muestra
	attr_accessor :mostrar

        # === Descripcion
        #  Constructor de la clase
        # ==== Atributos
        #
        # * +operacion+ - operacion que se va a realizar
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
 
        # === Descripcion
        #  Devuelve un string con el resultado de operar la operacion especificada
  	def to_s
 		salida = "\n #{@operacion} \n"
		
		case @operacion
      			when "suma" then salida << "\n#{(@operador[0]+@operador[1]).to_s}\n"
      			when "producto" then salida << "\n#{(@operador[0]*@operador[1]).to_s}\n"        
    		end 
	
		salida  
  	end

        # === Descripcion
        #  Metodo para establecer las distintas opciones en @tipo y @mostrar
  	def option(opcion)
		case opcion
      			when 'densa','dispersa' then @tipo = opcion
      			when 'console','file' then @mostrar = opcion
    		end
  	end

        # === Descripcion
        #  Metodo para añadir matrices para usar como operadores
        # ==== Atributos
        #
        # * +array+ - array bidimensional con la matriz
  	def operand(array) 
		vector = []
    		
    		for i in 0...array.size
		   vector.push(array[i])
		end
		
    		#otra forma
 		#for i in 0...array.size
 			#for j in 0...array[i].size
   				#vector.push(array[i][j])
   			#end
		#end
		
		
    		case @tipo
      			when "densa" then @operador << Matrix.new(array.size,array[0].size,vector)
      			when "dispersa" then @operador << Matrix_dispersa.new(array.size,array[0].size,vector,"COO")
    		end   			
				
		
  	end
end


