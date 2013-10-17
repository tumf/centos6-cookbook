

node["stop-services"].each { |name|
  service name do
    ignore_failure true
    action [:disable, :stop]
  end
}
