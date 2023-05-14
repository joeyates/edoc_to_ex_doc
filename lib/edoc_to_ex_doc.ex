defmodule EdocToExDoc do
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
        module: :binary,
        source_path: "binary.erl",
        doc_line: 100,
        language: ExDoc.Language.Erlang,
        docs: docs
      }
    ]
    apps = []
    deps = []
    config = %{
      main: "binary",
      output: "./doc",
      apps: apps,
      deps: deps,
      extras: [],
      skip_undefined_reference_warnings_on: nil
    }
    HTML.run(project_nodes, config)
    :ok
  end
end
