require "reform"
require "reform/form/dry"

module Campaign::Contract
  class Create < Reform::Form
    include Dry
    
    property :title
    property :start_date
    property :budget
    property :brief

    validation do 
      required(:title).filled(:str?)
      required(:start_date).filled(:date?)
      required(:budget).filled(:decimal?)
      required(:brief).filled(:str?)

      rule(:start_date) do
        value(:start_date).gt?(Date.today)
      end
    end
  end
end