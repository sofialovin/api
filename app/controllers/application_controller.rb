class ApplicationController < ActionController::API
  include ActionController::Serialization
  def render(options={})
    options[:json] = serializer.new(options[:json])
    super(options)
  end

end
