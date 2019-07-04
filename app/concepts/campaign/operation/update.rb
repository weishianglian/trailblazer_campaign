class Campaign::Update < Trailblazer::Operation
  step Model(Campaign, :find_by)
  step Contract::Build(constant: Campaign::Contract::Update)
  step Contract::Validate()
  step Contract::Persist()

  failure :report_error!

  def report_error!(options, *)
    options[:error] = options['result.contract.default'].errors
    puts "Update Campaign Failed: #{options[:error]}"
  end
end