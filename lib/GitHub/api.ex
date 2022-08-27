defmodule GitHub.Api do
  use Tesla

  plug(Tesla.Middleware.BaseUrl, "https://api.github.com")

  plug(Tesla.Middleware.Headers, [
    {"User-Agent", "https://api.github.com/meta"},
    {"Authorization", "token "}
  ])

  plug(Tesla.Middleware.JSON)

  def user_info(user), do: get("/users/#{user}")

  def user_info!(user) do
    {:ok, response} = get("/users/#{user}")
    response.body
  end

  def following(user), do: get("/users/#{user}/following")

  def following!(user) do
    {:ok, response} = get("/users/#{user}/following")
    response.body
  end
end
