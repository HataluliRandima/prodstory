defmodule Storybook.Grids do
  use PhoenixStorybook.Index

  def folder_name, do: "Grid"
  def folder_icon, do: {:fa, "image", :light}
  def folder_open?, do: true

  def entry("showcase"), do: [icon: {:fa, "file", :thin}] # the name of the sotory
  def entry("showcase_live"), do: [icon: {:fa, "bolt", :thin}]
end
