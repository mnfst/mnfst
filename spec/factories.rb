FactoryGirl.define do
  factory :key do
    sequence(:keyid) { |n| "id#{n}" }
  end

  factory :signature do
    signed_key
    signing_key
  end

  factory :status do
    key
    body "MyText"
    signed_body <<-HERE
-----BEGIN PGP MESSAGE-----
Version: GnuPG v1

owEBSwG0/pANAwAKAQpSwNsUpakyAawbYgV0d2VldFMDn39UaGlzIGlzIGEgdHdl
ZXQKiQEcBAABCgAGBQJTA59/AAoJEApSwNsUpakyXzAH/iZTp9rDmxePEi6vnHdE
Hlu6+gR4ih8IiYysUrO+cRjrOmBQHLgfzobPCTjoleN6qCHoCyaJ94g4+ko7tiQE
HxMH6a48l9+g/0Qh4p7BXcSfoUz+XM8Lu3Do/g6k43Tng8hIi1pzhupDDB/hmFzJ
SjySkrqHm7DAHp6g2lpj2dZ5FmwbCX9pwva86Z1CzfWC2/F9u3KDcM/BPXYBGCNU
E3FVM9Fzj9E2ib7Wl+r08Bh1M8EQdmhxrhPgnncxSSzDoQR/kIEOjqm/gcMbuyQY
dgXKdL8aIZj5apMCzWth68ipW0uk7ZSQUQtBEkMDxRiGNfXB3Ib/vTBpJckvfMlZ
YMY=
=HlfM
-----END PGP MESSAGE-----
HERE
  end
end
