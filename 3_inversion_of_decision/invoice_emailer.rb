class InvoiceEmailer

  attr_accessor :config, :invoice

  def initialize(invoice, config)
    self.config = config
    self.invoice = invoice
  end

  def generate_invoice_email
    base_email = build_email_for_invoice(invoice)
    if config[:include_order_cancellation_in_email?]
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
