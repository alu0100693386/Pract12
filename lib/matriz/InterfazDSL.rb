class MatrixDSL
  attr_accessor :option, :operand

  def initialize(operacion, &block)
    self.option = []
    self.operand = []

    if block_given?  
      if block.arity == 1
        yield self
      else
        instance_eval &block 
      end
    end
  end
  
  def to_s
    
  end

  def option(opcion)
  end

  def operand(array) 
  end
end


