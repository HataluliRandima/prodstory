defmodule Storybook.Grids.Showcase do
  use PhoenixStorybook.Story, :component

  alias ProdstoryWeb.Grids.Showcase

  def function, do: &Showcase.showcase_grid/1

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
