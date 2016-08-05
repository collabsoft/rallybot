defmodule Rallybot.SlackRtm do
  use Slack

  def handle_connect(slack) do
    IO.puts "Connected as #{slack.me.name}"
  end

  def handle_message(message = %{type: "message"}, slack) do
    IO.puts "=== Received message ==="
    IO.inspect message

    #TODO: match incoming messages
  end
  def handle_message(_,_), do: :ok

  def handle_info({:message, text, channel}, slack) do
    IO.puts "Sending your message"
    send_message(text, channel, slack)

    {:ok}
  end
  def handle_info(_,_), do: :ok
end
