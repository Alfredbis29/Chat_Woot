class ApplicationRecord < ActiveRecord::Base
  # Designate this as the base class for application models. Rails uses
  # `primary_abstract_class` for engines and namespaced models; keep it
  # to avoid accidental table mapping for subclasses.
  primary_abstract_class

  # Utility: run a block with a small retry loop for transient DB deadlocks.
  # Usage: `ApplicationRecord.with_deadlock_retry { model.save! }`
  def self.with_deadlock_retry(max_attempts = 3)
    attempts = 0
    begin
      yield
    rescue ActiveRecord::Deadlocked
      attempts += 1
      raise if attempts >= max_attempts
      sleep(0.5 * attempts)
      retry
    end
  end
end
