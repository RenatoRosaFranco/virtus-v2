# frozen_string_literal: true

class GenerateReferralCodeService
  CODE_LENGTH = ENV.fetch("REFERRAL_CODE_LENGTH", 8).to_i
  MAX_ATTEMPTS = ENV.fetch("REFERRAL_CODE_MAX_ATTEMPTS", 10).to_i

  def self.call
    new.call
  end

  def call
    attempts = 0
    unique_code = nil

    while attempts < MAX_ATTEMPTS && unique_code.nil?
      codes = generate_code_batch
      existing_codes = User.where(referral_code: codes).pluck(:referral_code)
      unique_code = (codes - existing_codes).first
      log_attempt(attempts, unique_code, existing_codes)
      attempts += 1
    end

    unique_code || handle_failure
  end

  private

  def generate_code_batch(size = 10)
    Array.new(size) { SecureRandom.alphanumeric(CODE_LENGTH) }
  end

  def handle_failure
    Rails.logger.error("GenerateReferralCodeService: Failed to generate a unique referral code after #{MAX_ATTEMPTS} attempts.")
    raise GenerateReferralCodeError, 'Failed to generate a unique referral code after multiple attempts'
  end

  def log_attempt(attempts, unique_code, existing_codes)
    if unique_code
      Rails.logger.info("GenerateReferralCodeService: Successfully generated a unique referral code #{unique_code} on attempt #{attempts + 1}.")
    else
      Rails.logger.warn("GenerateReferralCodeService: Attempt #{attempts + 1} failed to generate a unique referral code. Collisions: #{existing_codes.join(', ')}")
    end
  end
end