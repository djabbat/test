# Define a module to encapsulate your seeding logic
defmodule Hello.Seeds do

  def seed do
      IO.puts("Seeding users...")

      # Define user data
      users_data = [
        %Hello.Accounts.User{
          email: "admin@gmail.com",
          hashed_password: Bcrypt.hash_pwd_salt("123"),
          confirmed_at: ~N[2000-01-01 23:00:07],
          role: ["admin"]
        },

        %Hello.Accounts.User{
          email: "user@gmail.com",
          hashed_password: Bcrypt.hash_pwd_salt("123"),
          confirmed_at: ~N[2000-01-01 23:00:08],
          role: ["viewer"]
        },
        # Add more user records as needed
      ]

      # Insert users into the database
      Enum.each(users_data, fn user ->
        Hello.Repo.insert!(user)
      end)

      IO.puts("User seeding complete.")
    end
  end

  # You can call Hello.Seeds.seed/0 to start seeding
  Hello.Seeds.seed()

    for title <- ["Home Improvement", "Power Tools", "Gardening", "Books"] do
      {:ok, _} = Hello.Catalog.create_category(%{title: title})
    end
