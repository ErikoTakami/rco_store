User.create!(name: "管理者",
             name_kana: "カンリシャ",
             email: ENV["RCO_ADMIN_EMAIL"],
             password: ENV["RCO_ADMIN_PASSWORD"],
             password_confirmation: ENV["RCO_ADMIN_PASSWORD"],
             admin: true)