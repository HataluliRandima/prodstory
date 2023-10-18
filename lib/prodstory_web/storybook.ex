defmodule ProdstoryWeb.Storybook do
  use PhoenixStorybook,
    otp_app: :prodstory_web,
    # font_awesome_plan: :pro, # default value is :free
    #  font_awesome_kit_id: "foo8b41bar4625",
    content_path: Path.expand("../../storybook", __DIR__),
    title: "Tauspace standard UI",
    # assets path are remote path, not local file-system paths
    css_path: "/assets/storybook.css",
    js_path: "/assets/storybook.js",
    sandbox_class: "prodstory-web"
end
