Datadog.configure do |c|
  # This will activate auto-instrumentation for Rails
  c.use :rails, {'analytics_enabled': true, 'service_name': 'storefrontend', 'cache_service': 'storefrontendcache', 'database_service': 'storefrontendsqlite'}
  # Make sure requests are also instrumented
  c.use :http, {'analytics_enabled': true, 'service_name': 'storefrontend'}
  c.tracer hostname: 'agent', :env 'rubyshop'
end
