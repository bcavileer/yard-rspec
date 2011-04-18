
module YARD::CodeObjects
  module RSpec
    
    class Context < NamespaceObject
    
      attr_accessor :value, :specifications, :owner
    
      def initialize(namespace,name)
        @specifications = []
        super(namespace,name)
      end
      
      def subcontexts
        children.find_all {|child| child.is_a?(Context) }
      end
      
    end
    
  end
end