module Konacha
  module SpecsHelper
    def spec_include_tag(*specs)
      assets = specs.map do |spec|
        asset_paths.asset_for(spec.asset_name, "js").to_a
      end.flatten.map(&:logical_path).uniq

      javascript_include_tag *(assets << {:body => true, :debug => false})
    end

    def spec_modules(*specs)
      specs.map do |spec|
        asset_paths.asset_for(spec.asset_name, "js").to_a
      end.flatten.map(&:logical_path).map {|a| a.sub(/\.js$/, '') }.uniq
    end

    def dependency_modules
      deps = ['mocha', 'chai', "konacha/#{Konacha.mode}", "konacha"]
      deps << 'konacha_config' if Rails.application.assets.find_asset('konacha_config')
    end
  end
end
