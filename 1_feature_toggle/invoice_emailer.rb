class InvoiceEmailer
  attr_accessor :features, :invoice

  def initialize(invoice, features: FeatureToggle.new)
    self.features = features
    self.invoice = invoice
  end

  def generate_invoice_email
    base_email = build_email_for_invoice(invoice);
    if features.is_enabled?(:next_gen_ecomm)
      add_order_cancellation_content_to_email(base_email)
    else
      base_email
    end
  end

  def build_email_for_invoice(invoice)
    # ...
  end

  def add_order_cancellation_content_to_email(base_email)
    # ...
  end

end
