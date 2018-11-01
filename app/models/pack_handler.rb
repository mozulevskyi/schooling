class PackHandler

   def initialize
      @processed_items = []
      @should_proc = nil
      @identifier = nil
   end

   def proc_items(items, &block)
      items.each do |item|
         next unless should_be_processed?(items, item)

         block.call(item)
         @processed_items << item
      end

      @processed_items
   end

   def identify(identifier)
      @identifier = identifier
   end

   def should_proc(&block)
      @should_proc = block
   end

   def reset
      @processed_items = []
   end

   private

   def all_hashes?(items)
      items.all? { |item| item.is_a?(Hash) }
   end


   def include?(items, item)
      if all_hashes?(items)
         return @processed_items.find { |processed_item| processed_item[@identifier] == item[@identifier] }
      else
         return @processed_items.find { |processed_item| processed_item.send(@identifier) == item.send(@identifier) }
      end
   end

   def should_be_processed?(items, item)
      return !@processed_items.include?(item) if @identifier.nil? && @should_proc.nil?
      return !@processed_items.include?(item) && @should_proc.call(item) if @identifier.nil? && !@should_proc.nil?

      return !include?(items, item) if !@identifier.nil? && @should_proc.nil?

      !include?(items, item) && @should_proc.call(item) if !@identifier.nil? && !@should_proc.nil?
   end

end

# This is a handler class that will take an array of elements and perform an action for each element,
# but only if the element has not yet been processed.
# The idea is that this class will be useful for processing multiple batches of elements,
# ensuring that each element is processed once,
# even if the element is included in several batches.