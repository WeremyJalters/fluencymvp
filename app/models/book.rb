class Book < ActiveRecord::Base
   belongs_to :student

   def accuracy
  	(self.total_words.to_f - self.words_wrong.to_f)/self.total_words.to_f
   end

  def scrate
  	self.self_corrections.to_f/(self.self_corrections.to_f + self.words_wrong.to_f)
  end

  



  def self.to_csv(options = {})
   CSV.generate(options) do |csv|
    csv << column_names
    all.each do |book|
      csv << book.attributes.values_at(*column_names)
    end
  end
end

  
end
