defmodule Croppy.ImageView do
  use Croppy.Web, :view

  def render("index.json", %{images: images}) do
    %{data: render_many(images, Croppy.ImageView, "image.json")}
  end

  def render("show.json", %{image: image}) do
    %{data: render_one(image, Croppy.ImageView, "image.json")}
  end

  def render("image.json", %{image: image}) do
    %{
      id: image.id,
      image: image.image
    }
  end
end