defmodule RumblWeb.UserController do
    use RumblWeb, :controller

    alias Rumbl.Accounts

    def index(conn, _params) do
        users = Accounts.list_users()
        render(conn, "index.html", users: users)
      end
  
    #   def show(conn, :id => id) do

    #       render conn, "show.html"
    #   end
end