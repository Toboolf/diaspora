defmodule GitHub.Users do
  alias GitHub.Api

  def follows(login) do
    Api.following!(login)
    |> Enum.map(& &1["login"])
  end

  def follows_in_common(one_user, another_user) do
    follows(one_user)
    |> intersect_lists(follows(another_user))
  end

  def intersect_lists(first_list, second_list) do
    MapSet.new(first_list)
    |> MapSet.intersection(MapSet.new(second_list))
    |> MapSet.to_list()
  end

end
