require_relative 'base_decorator'
# define capitalize secorator
class CapitalizeDecorator < BaseDecorator
  def correct_name
    super&.capitalize
  end
end
