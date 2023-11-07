defmodule HelloWeb.UploadLive do
    use HelloWeb, :live_view

    def init(_params) do
        initial_assigns = %{}  # Define initial_assigns here as a map, struct, or appropriate data structure
        {:ok, initial_assigns}
    end
  
    @impl Phoenix.LiveView
    def mount(_params, _session, socket) do
      {:ok,
      socket
      |> assign(:uploaded_files, [])
      |> allow_upload(:avatar, accept: ~w(.jpg .jpeg), max_entries: 2)}
    end
  
    @impl Phoenix.LiveView
    def handle_event("validate", _params, socket) do
      {:noreply, socket}
    end
  
    @impl Phoenix.LiveView
    def handle_event("cancel-upload", %{"ref" => ref}, socket) do
      {:noreply, cancel_upload(socket, :avatar, ref)}
    end
  
    @impl Phoenix.LiveView
    def handle_event("save", _params, socket) do
      uploaded_files =
        consume_uploaded_entries(socket, :avatar, fn %{path: path}, _entry ->
          dest = Path.join([:code.priv_dir(:my_app), "static", "uploads", Path.basename(path)])
          File.cp!(path, dest)
          {:ok, ~p"/uploads/#{Path.basename(dest)}"}
        end)
  
      {:noreply, update(socket, :uploaded_files, &(&1 ++ uploaded_files))}
    end

    defp error_to_string(:too_large), do: "Too large"
    defp error_to_string(:too_many_files), do: "You have selected too many files"
    defp error_to_string(:not_accepted), do: "You have selected an unacceptable file type"
  end
  
  