puts "seeding useers"

User.create!([
    {
        username: "james",
        password_digest: "1234",
        email: "123@poo.com",
        admin: true
    },
    {
        username: "sean",
        password_digest: "2468",
        email: "sean@sean.com"
    }
])

puts "seeding categories"

Category.create!([
    {
       category_name: "Star Trek"
    },
    {
        category_name: "Drag"
    },
    {
        category_name: "Video Games"
    },
    {
        category_name: "Movies"
    }
])

puts "seedding products"
Product.create!([
    {
        category_id: 1,
        product_name: "Phaser",
        price: 3,
        description: "phases",
        image_url: "google.com",
        stock: 4
    },
    {
        category_id: 1,
        product_name: "Picard Funko",
        price: 10,
        description: "Giant headed Picard",
        image_url: "google.com",
        stock: 2
    },
    {
        category_id: 2,
        product_name: "Juno Birch statue",
        price: 5000,
        description: "gorgeous",
        image_url: "birchmerch.com",
        stock: 0
    }
])

puts "seeding purchases"

Purchase.create!([
    {
        user_id: 1,
        product_id: 1,
        quantity: 1,
        total_price: 3
    }
])

puts "all done!"