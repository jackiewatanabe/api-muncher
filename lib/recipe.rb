class Recipe
  attr_reader :label, :uri, :image, :source, :ingredients, :url, :total_nutrients, :calories

  def initialize(label, uri, options = {})
    @label = label
    @uri = URI.escape(uri)


    @image = options["image"]
    @source = options["source"]
    @ingredients = options["ingredients"]
    @url = options["url"]
    @calories = options["calories"]
    @total_nutrients = options["total_nutrients"]

  end

end
