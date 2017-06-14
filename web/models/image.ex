defmodule Croppy.Image do
  use Croppy.Web, :model
  use Arc.Ecto.Schema

  schema "images" do
    field :url, Croppy.ImageUploader.Type

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:url])
    |> cast_attachments(params, [:url])
    |> validate_required([:url])
  end
end
