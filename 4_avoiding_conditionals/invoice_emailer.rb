class InvoiceEmailer

  attr_accessor :config, :invoice

  def initialize(invoice, additional_content_enhancer: )
    self.config = config
    self.invoice = invoice
  end

  def generate_invoice_email
    base_email = build_email_for_invoice(invoice)
    additional_content_enhancer.(base_email)
  end

  def build_email_for_invoice(invoice)
    # ...
  end
end
