defmodule EdocToExDoc do
  @moduledoc """
  The moduledoc for EdocToExDoc
  """
  alias ExDoc.Formatter.HTML
  alias ExDoc.{FunctionNode, ModuleNode}

  @spec build() :: :ok
  def build() do
    docs = [
      %FunctionNode{
        id: "at",
        doc_line: 104,
        specs: []
      }
    ]
    project_nodes = [
      %ModuleNode{
        type: :module,
        id: "binary",
        title: "binary",
        module: :binary,
        source_path: "binary.erl",
        doc_line: 100,
        language: ExDoc.Language.Erlang,
        docs: docs
      }
    ]
    # Config is the same information
    # placed in the `docs:` section of project in `mix.exs`
    config = %ExDoc.Config{
      #main: "binary",
      output: "./edoc",
      #assets: [],
      #authors: [],
      #before_closing_body_tag: fn _ -> "" end,
      #before_closing_head_tag: fn _ -> "" end,
      #canonical: nil,
      #extras: [],
      #extra_section: "",
      #formatters: [],
      #groups_for_extras: [],
      #homepage_url: "",
      #javascript_config_path: nil,
      #language: nil,
      #logo: nil,
      #package: nil,
      #proglang: :erlang,
      #project: nil,
      #skip_undefined_reference_warnings_on: nil,
      #source_url_pattern: "*.erl",
      #version: nil
    }
    HTML.run(project_nodes, config)
    :ok
  end
end
