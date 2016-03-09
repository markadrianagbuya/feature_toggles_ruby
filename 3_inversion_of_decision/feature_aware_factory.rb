class FeatureAwareFactory
  def self.create_feature_aware_factory_based_on(feature_decisions)
    self.new(feature_decisions)
  end

  def invoice_emailer(invoice)
    InvoiceEmailer.new(invoice, {include_order_cancellation_in_email?: featureDecisions.include_order_cancellation_in_email?})
  end

  # ... other factory methods ...
end
