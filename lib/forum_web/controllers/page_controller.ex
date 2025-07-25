defmodule ForumWeb.PageController do
  use ForumWeb, :controller

  def home(conn, _params) do
    # The home page is often custom made,
    # so skip the default app layout.
    render(conn, :home, layout: false)
  end

  def users(conn, _params) do
    users = [
      %{id: 1, name: "Pete", email: "alice@email.com"},
      %{id: 2, name: "Mary", email: "mary@email.com"},
      %{id: 3, name: "John", email: "john@email.com"},
      %{id: 4, name: "Deng", email: "deng@email.com"},
      %{id: 5, name: "Matt", email: "matt@email.com"},
      %{id: 6, name: "Luke", email: "luke@email.com"},
      %{id: 7, name: "Jane", email: "jane@email.com"},
      %{id: 8, name: "Chark", email: "chark@email.com"},
      %{id: 9, name: "Mark", email:  "mark@email.com"},
      %{id: 10, name: "Osok", email: "osok@email.com"},
    ]

    json(conn, %{users: users})
  end
end
