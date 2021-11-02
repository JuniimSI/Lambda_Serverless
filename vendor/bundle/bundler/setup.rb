require 'rbconfig'
ruby_engine = RUBY_ENGINE
ruby_version = RbConfig::CONFIG["ruby_version"]
path = File.expand_path('..', __FILE__)
kernel = (class << ::Kernel; self; end)
[kernel, ::Kernel].each do |k|
  if k.private_method_defined?(:gem_original_require)
    k.send(:remove_method, :require)
    k.send(:define_method, :require, k.instance_method(:gem_original_require))
    k.send(:private, :require)
  end
end
$:.unshift File.expand_path("#{path}/../#{ruby_engine}/#{ruby_version}/gems/rake-13.0.6/lib")
$:.unshift File.expand_path("#{path}/../#{ruby_engine}/#{ruby_version}/gems/public_suffix-4.0.6/lib")
$:.unshift File.expand_path("#{path}/../#{ruby_engine}/#{ruby_version}/gems/addressable-2.8.0/lib")
$:.unshift File.expand_path("#{path}/")
$:.unshift File.expand_path("#{path}/../#{ruby_engine}/#{ruby_version}/extensions/x86_64-linux/2.7.0/unf_ext-0.0.8")
$:.unshift File.expand_path("#{path}/../#{ruby_engine}/#{ruby_version}/gems/unf_ext-0.0.8/lib")
$:.unshift File.expand_path("#{path}/../#{ruby_engine}/#{ruby_version}/gems/unf-0.1.4/lib")
$:.unshift File.expand_path("#{path}/../#{ruby_engine}/#{ruby_version}/gems/domain_name-0.5.20190701/lib")
$:.unshift File.expand_path("#{path}/../#{ruby_engine}/#{ruby_version}/gems/http-cookie-1.0.4/lib")
$:.unshift File.expand_path("#{path}/../#{ruby_engine}/#{ruby_version}/gems/http-form_data-2.3.0/lib")
$:.unshift File.expand_path("#{path}/../#{ruby_engine}/#{ruby_version}/extensions/x86_64-linux/2.7.0/ffi-1.15.4")
$:.unshift File.expand_path("#{path}/../#{ruby_engine}/#{ruby_version}/gems/ffi-1.15.4/lib")
$:.unshift File.expand_path("#{path}/../#{ruby_engine}/#{ruby_version}/gems/ffi-compiler-1.0.1/lib")
$:.unshift File.expand_path("#{path}/../#{ruby_engine}/#{ruby_version}/extensions/x86_64-linux/2.7.0/http-parser-1.2.3")
$:.unshift File.expand_path("#{path}/../#{ruby_engine}/#{ruby_version}/gems/http-parser-1.2.3/lib")
$:.unshift File.expand_path("#{path}/../#{ruby_engine}/#{ruby_version}/gems/http-4.4.1/lib")
$:.unshift File.expand_path("#{path}/../#{ruby_engine}/#{ruby_version}/extensions/x86_64-linux/2.7.0/ox-2.14.5")
$:.unshift File.expand_path("#{path}/../#{ruby_engine}/#{ruby_version}/gems/ox-2.14.5/lib")
$:.unshift File.expand_path("#{path}/../#{ruby_engine}/#{ruby_version}/gems/ox-2.14.5/ext")
$:.unshift File.expand_path("#{path}/../#{ruby_engine}/#{ruby_version}/gems/correios-cep-0.8.0/lib")
