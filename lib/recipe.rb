class Recipe
  attr_reader :label, :uri, :image, :source, :ingredients, :url, :diet_labels

  def initialize(label, uri, options = {})
    @label = label
    @uri = URI.escape(uri)

    @image = options["image"]
    @source = options["source"]
    @ingredients = options["ingredients"]
    @url = options["url"]
    @diet_labels = options["diet_labels"]

  end

end
