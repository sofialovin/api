module JsonApiHelpers
  def json
   JSON.parse(response.body.to_json)
  end

  def json_data
    json[data]
  end
end
