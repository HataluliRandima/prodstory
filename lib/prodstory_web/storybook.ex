defmodule ProdstoryWeb.Storybook do
  use PhoenixStorybook,
    otp_app: :prodstory_web,
    content_path: Path.expand("../../storybook", __DIR__),
    title: "Storybook for Product Studio",
    # assets path are remote path, not local file-system paths
    css_path: "/assets/storybook.css",
    js_path: "/assets/storybook.js",
    sandbox_class: "prodstory-web"
end
