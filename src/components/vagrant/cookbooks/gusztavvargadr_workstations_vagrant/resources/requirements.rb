property :requirements_options, Hash

default_action :ensure

action :ensure do
  return if requirements_options.nil?

  gusztavvargadr_workstations_core_requirements '' do
    requirements_options new_resource.requirements_options
    action :ensure
  end
end
