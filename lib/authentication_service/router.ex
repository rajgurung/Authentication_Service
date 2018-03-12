defmodule AuthenticationService.Router do
  use Plug.Router
  use Plug.ErrorHandler

  plug Plug.RequestId
  plug Plug.Parsers, parsers: [:urlencoded, :json, :multipart],
                     pass:  ["application/json", "multipart/form-data"],
                     json_decoder: Jason

  plug :match
  plug :dispatch

  get "/" do
    conn
    |> put_resp_header("content-type", "text/plain")
    |> send_resp(200, "OK")
  end
end
