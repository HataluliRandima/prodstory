defmodule Storybook.Cards do
  use PhoenixStorybook.Index

  def folder_name, do: "Album cards"
  def folder_icon, do: {:fa, "image", :light}
  def folder_open?, do: true

  def entry("summary"), do: [icon: {:fa, "file", :thin}, name: "Hata"] # the name of the sotory
  def entry("summary_live"), do: [icon: {:fa, "bolt", :thin}]

end
