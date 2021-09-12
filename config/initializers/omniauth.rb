Rails.application.config.middleware.use OmniAuth::Builder do
  # 開発環境とテスト環境で使用
  if Rails.env.development? || Rails.env.test?
    provider :github, "2a0a33caeb6620d26da6", "e36321b694f4c7bafe639b7ed45a3d8f19e6dc66"
  else
    # 本番環境で使用
    provider :github,
      Rails.application.credentials.github[:client_id],
      Rails.application.credentials.github[:client_secret]
  end
end