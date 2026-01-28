return {

  {
    'saghen/blink.cmp',
    optional = true,
    opts = {
      completion = {
        list = {
          selection = {
            preselect = false,
            auto_insert = false,
          },
        },
      },
    },
  },
  {
    'mason-org/mason.nvim',
    opts = {
      ensure_installed = {
        'ansible-lint',
        'bandit',
        'biome',
        'ruff',
        'docker-compose-language-service',
        'docker-language-server',
        'dockerfile-language-server',
        'hadolint',
        'typescript-language-server',
        'terraform-ls',
        'tflint',
        'tfsec',
        'kube-linter',
        'beancount-language-server',
      },
    },
  },
  {
    'neovim/nvim-lspconfig',
    opts = {
      servers = {
        beancount = {
          filetypes = { 'bean', 'beancount' },
          init_options = {
            journal_file = 'main.bean',
            formatting = {
              currency_column = 70,
              number_currency_spacing = 1,
            },
          },
        },
        yamlls = {
          settings = {
            yaml = {
              schemaStore = {
                enable = true,
                url = 'https://www.schemastore.org/api/json/catalog.json',
              },
              format = { enabled = false },
              -- enabling this conflicts between Kubernetes resources, kustomization.yaml, and Helmreleases
              validate = false,
              schemas = {
                kubernetes = '*.yaml',
                ['http://json.schemastore.org/github-workflow'] = '.github/workflows/*',
                ['http://json.schemastore.org/github-action'] = '.github/action.{yml,yaml}',
                ['https://raw.githubusercontent.com/microsoft/azure-pipelines-vscode/master/service-schema.json'] = 'azure-pipelines*.{yml,yaml}',
                ['https://raw.githubusercontent.com/ansible/ansible-lint/main/src/ansiblelint/schemas/ansible.json#/$defs/tasks'] = 'roles/tasks/*.{yml,yaml}',
                ['https://raw.githubusercontent.com/ansible/ansible-lint/main/src/ansiblelint/schemas/ansible.json#/$defs/playbook'] = '*play*.{yml,yaml}',
                ['http://json.schemastore.org/prettierrc'] = '.prettierrc.{yml,yaml}',
                ['http://json.schemastore.org/kustomization'] = 'kustomization.{yml,yaml}',
                ['http://json.schemastore.org/chart'] = 'Chart.{yml,yaml}',
                ['https://json.schemastore.org/dependabot-v2'] = '.github/dependabot.{yml,yaml}',
                ['https://gitlab.com/gitlab-org/gitlab/-/raw/master/app/assets/javascripts/editor/schema/ci.json'] = '*gitlab-ci*.{yml,yaml}',
                ['https://raw.githubusercontent.com/OAI/OpenAPI-Specification/main/schemas/v3.1/schema.json'] = '*api*.{yml,yaml}',
                ['https://raw.githubusercontent.com/compose-spec/compose-spec/master/schema/compose-spec.json'] = '*docker-compose*.{yml,yaml}',
                ['https://raw.githubusercontent.com/argoproj/argo-workflows/master/api/jsonschema/schema.json'] = '*flow*.{yml,yaml}',
              },
            },
          },
        },
      },
    },
  },
}
