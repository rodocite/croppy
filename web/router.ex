defmodule Croppy.Router do
  use Croppy.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", Croppy do
    pipe_through :browser

    get "/", PageController, :index
    resources "/images", ImageController
  end

  scope "/api", Croppy do
    pipe_through :api

    get "/images", ImageController, :index_json
  end
end
