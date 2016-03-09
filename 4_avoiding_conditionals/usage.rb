factory = FeatureAwareFactory.create_feature_aware_factory_based_on(FeatureDecision.new(FeatureToggle.new))

invoice_emailer = factory.invoice_emailer(invoice)
invoice_emailer.generate_invoice_email
