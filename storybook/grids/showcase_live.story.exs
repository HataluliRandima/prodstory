defmodule Storybook.Cards.ShowcaseLive do
  use PhoenixStorybook.Story, :live_component

  alias ProdstoryWeb.Grids.ShowcaseLive

  def component, do: ShowcaseLive

  def variations do
  [
    %Variation{
      id: :default,
      description: "Default grid showing",
      attributes: %{
        summary: "Grid 1",
        info: "Grid 2",
      }
    }
  ]
end
end
