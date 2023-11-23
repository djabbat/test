# Hello

To start your Phoenix server:
  * Run to create postgres container `docker run --name postgres-container -e POSTGRES_PASSWORD=postgres -d -p 5432:5432 -v /home/jaba/Documents/hello/db_data:/var/lib/postgresql/data postgres:latest`. Check container if runs `docker ps`, check container if stoped `docker ps -a`, start stoped container `docker start postgres-container`.
  * Run `mix deps.get` to install and setup dependencies
  * Run `npm install esbuild --save-dev` to install esbuild via Node.JS inside the ./assets directory
  * Run `npm install ../deps/phoenix ../deps/phoenix_html ../deps/phoenix_live_view --save` inside the ./assets directory
  * Run `mix ecto.setup`
  * Run `mix test`
  * Start Phoenix endpoint with `mix phx.server` or inside IEx with `iex -S mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](https://hexdocs.pm/phoenix/deployment.html).

## Learn more

  * Official website: https://www.phoenixframework.org/
  * Guides: https://hexdocs.pm/phoenix/overview.html
  * Docs: https://hexdocs.pm/phoenix
  * Forum: https://elixirforum.com/c/phoenix-forum
  * Source: https://github.com/phoenixframework/phoenix

Developed and maintained a development platform for managing online stores, with a custom in-house CMS, marketing automation, analytics and social media
Implemented a DevOps methodology for continuous deployment, allowing for multiple developers and business teams to collaborate and release changes simultaneously
Ran project meetings and assigned tasks to specialized teams and project managers to ensure smooth communication and execution
Created a customer relationship management system for tracking email and web-based sales leads
Created a website for the company that included a custom domain, video, product imagery and integrated email marketing
Implemented online surveys to collect customer feedback and track satisfaction, which resulted in a 35% increase in online sales
Created a system for tracking customer orders from receipt to delivery
Designed and compiled data for monthly reports that prioritize and track progress on initiatives, such as website performance, digital marketing and social media
