defmodule DistilleryDockerDemoWeb.Router do
  use Plug.Router

  plug(:match)
  plug(:dispatch)

  # Just returns the value of the `EXAMPLE_VARIABLE` environment variable
  get _ do
    var = Application.get_env(:distillery_docker_demo, :example_variable)
    send_resp(conn, 200, var)
  end
end
