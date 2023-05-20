AdminUser.create!(email: 'admin@example.com', password: 'password',
 password_confirmation: 'password') if Rails.env.development?

User.create!(email:'user@example.com', password:'password', password_confirmation:'password', 
first_name:'User', last_name:'Test')