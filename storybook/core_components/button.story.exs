defmodule Storybook.CoreComponents.Button do
  use PhoenixStorybook.Story, :component

  def function, do: &Elixir.ProdstoryWeb.CoreComponents.button/1

  def variations do
    [
      %Variation{
        id: :default,
        slots: [
          "Button"
        ],
        attributes: %{
          class: "button-default"
        },
      },
      %Variation{
        id: :button_pills,
        attributes: %{
          class: "button-pills"
        },
        slots: ["Button Pill"]
      },
      %Variation{
        id: :social_button,
        attributes: %{
          class: "social-button fa-brands fa-github"
        },
        slots: ["Sign in to Github"]
      },
      %Variation{
        id: :icon_button,
        attributes: %{
          class: "icon-button fa-solid fa-arrow-right"
        },
        slots: [""]
      }
    ]
  end
end
