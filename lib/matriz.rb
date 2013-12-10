require "./matriz/version.rb"
require './matriz/fr.rb'
require './matriz/metodos.rb'
require './matriz/matrices.rb'
require "./matriz/InterfazDSL.rb"

ejemplo = MatrixDSL.new("suma") do 
  option "densa" 
  #option "console"
  operand [[1,2,3],[4,5,6],[7,8,9]]  
  operand [[1,1,1],[1,1,1],[1,1,1]]  
end

puts ejemplo 
