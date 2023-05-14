defmodule EdocToExDoc.MixProject do
  use Mix.Project

  def project do
    [
      app: :edoc_to_ex_doc,
      version: "1.0.0",
      name: "EdocToExDoc",
      deps: deps()
    ]
  end

  defp deps do
    [
      {:ex_doc, "~> 0.19", only: :dev, runtime: false}
    ]
  end
end
