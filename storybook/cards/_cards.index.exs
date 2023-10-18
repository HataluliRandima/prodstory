defmodule Storybook.Cards do
  use PhoenixStorybook.Index

#  "fa fa-github"

  def folder_name, do: "Album cards"
  def folder_icon, do: {:fa, "fa-github", :light}
  def folder_open?, do: true

  def entry("summary"), do: [icon: {:fa, "file", :thin}, name: "Hata"] # the name of the sotory
  def entry("summary_live"), do: [icon: {:fa, "bolt", :thin}]

end
