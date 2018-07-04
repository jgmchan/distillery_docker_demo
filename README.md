# DistilleryDockerDemo

Simple project to demonstrate building an Elixir App with Distillery inside docker.

To start your Phoenix server in Dev:

  * Install dependencies with `mix deps.get`
  * Start Phoenix endpoint with `mix phx.server`

# Docker and Distillery

Build your docker image:
```
docker build --tag=distillery_demo .
```

Start your docker image with the required environment variables:
```
docker run -it -e REPLACE_OS_VARS=true -e EXAMPLE_VARIABLE=foofoofoo -e PORT=4000 -p 4000:4000 distillery_demo
```

Now you can curl `localhost:4000` to see the `EXAMPLE_VARIABLE`:
```
$ curl localhost:4000
foofoofoo%
```

# Ecto Migrations
This project doesn't have a migration example but there is a really good guide in the
doco (https://hexdocs.pm/distillery/running-migrations.html) on how to set up your own
release tasks to do it.
