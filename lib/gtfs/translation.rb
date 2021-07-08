module GTFS
  class Translation
    include GTFS::Model

    has_required_attrs :id
    has_optional_attrs :lang, :translation
    column_prefix :trans_
    attr_accessor *attrs

    collection_name :translations
    required_file false
    uses_filename 'translations.txt'

    def self.parse_translations(data, options={})
      return parse_models(data, options)
    end
  end
end

