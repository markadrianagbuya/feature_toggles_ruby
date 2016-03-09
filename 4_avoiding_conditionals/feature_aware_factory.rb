class FeatureAwareFactory
  def self.create_feature_aware_factory_based_on(feature_decisions)
    self.new(feature_decisions)
  end

  def initialize(feature_decisions)
    self.feature_decisions = feature_decisions
  end

  def invoice_emailer(invoice)
    identity_function ->(x) { x }
    add_order_cancellation_content_to_email_function ->(x) { x + "cancel"}
    if featureDecisions.include_order_cancellation_in_email?
      InvoiceEmailer.new(invoice, additional_content_enhancer: add_order_cancellation_content_to_email_function)
    else
      InvoiceEmailer.new(invoice, additional_content_enhancer: identity_function)
    end
  end

  # ... other factory methods ...
end
