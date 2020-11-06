defmodule SPECabm.Agents.Agent do
  use GenServer, restart: :transient

  def init(init_arg) do
    {:ok, init_arg}
  end

  # Public API
  def start(start_args) do
    {:ok, start_args}
  end

  def stop(stop_args) do
    {:ok, stop_args}
  end

  def report(rp_args) do
    {:ok, rp_args}
  end

  # Private API
  defp loop(loop_args) do
    {:ok, loop_args}
  end

  defp cause(ac_args) do
    {:ok, ac_args}
  end

  defp effect(ye_args) do
    {:ok, ye_args}
  end

  defp process(pr_args) do
    {:ok, pr_args}
  end

  # Server implementation
end
