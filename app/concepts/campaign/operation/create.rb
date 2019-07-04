class Campaign::Create < Trailblazer::Operation
  step Model(Campaign, :new)
  step Contract::Build(constant: Campaign::Contract::Create)
  step Contract.Validate()
  step Contract::Persist()
  failure :report_error!

  def report_error!(options, *)
    options[:error] = options['result.contract.default'].errors
    puts "Create Campaign Failed: #{options[:error]}"
  end

end