defmodule ProdstoryWeb.Grids.ShowcaseLive do
  use ProdstoryWeb, :live_component

  def render(assigns) do
    ~H"""
    <div class="grid grid-cols-1 gap-4 lg:grid-cols-2 lg:gap-8">
      <div class="h-32 rounded-lg bg-gray-200">
      <p class="font-normal text-gray-700 dark:text-gray-400">
    <%= @summary %>
    </p>
      </div>
      <div class="h-32 rounded-lg bg-gray-200">
      <p class="font-normal text-gray-700 dark:text-gray-400">
    <%= @info %>
    </p>
      </div>
    </div>
    """
  end
end
