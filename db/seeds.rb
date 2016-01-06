User.create!([
  {email: "admin@email.com", encrypted_password: "$2a$10$d8JaIe7vUM9ewefU8DenLuyyey/3FItAjVTmx1xK4V5xWKgShIPam", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 3, current_sign_in_at: "2016-01-06 20:09:54", last_sign_in_at: "2016-01-06 19:36:59", current_sign_in_ip: "::1", last_sign_in_ip: "::1", role: "admin"},
  {email: "author@email.com", encrypted_password: "$2a$10$DsZscCP5oJ7pd.nmlDE0Q.kXEgNFRGw32SxY7FXhIaySl8oyvc0JG", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, role: "author"},
  {email: "user@email.com", encrypted_password: "$2a$10$I5Bad7iv9piUUvtwfb76Ueb/W6P7XlwrFm1OPBUA3IlHINLue7Kiy", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2016-01-06 20:04:10", last_sign_in_at: "2016-01-06 20:04:10", current_sign_in_ip: "::1", last_sign_in_ip: "::1", role: "user"}
])
Article.create!([
  {title: "AdminTest", content: "test", user_id: 1},
  {title: "AuthorTest", content: "test", user_id: 2}
])
Comment.create!([
  {user_id: 3, article_id: 1, content: "user says hi"}
])
