class FeatureDecision
  def initialize(feature_toggle)
    self.feature_toggle = feature_toggle
  end

  def include_order_cancellation_in_email?
    feature_toggle.is_enabled?(:next_gen_ecomm)
  end

  # ... additional decision functions also live here ...

end
