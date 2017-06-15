defmodule Croppy.Image do
  use Croppy.Web, :model
  use Arc.Ecto.Schema

  schema "images" do
    field :image, Croppy.ImageUpload.Type

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:image])
    |> cast_attachments(params, [:image])
  end
end
