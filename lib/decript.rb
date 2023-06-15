# frozen_string_literal: true

require 'openssl'

# 暗号化クラス
class String_encrypt

  def use_case_hash
    # data, key 暗号化対象文字列
    data = ARGV[0]
    key = ARGV[1]
    digest = OpenSSL::HMAC.new(key, 'sha256')
    digest.update(data)
    puts digest.hexdigest #暗号化
  end
end

GC.start

__END__
