class FeatureToggle
  FEATURE_TOGGLES = {
    next_gen_ecomm: true
  }

  def is_enabled?(feature)
    FEATURE_TOGGLES[feature]
  end
end
