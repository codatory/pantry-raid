seed = {
    "Personal Care": [
        "Shampoo & Conditioner",
        "Lotion",
        "Shaving Cream",
        "Toothpaste & Toothbrush",
        "Cotton Swabs",
        "Hairspray",
        "Hair Combs",
        "Bar Soap",
        "Shaving Razor",
        "Deoderant",
        "Feminine Wash",
        "Pads & Tampons",
        "Adult Diapers",
        "Baby Diapers",
        "Baby Formula",
        "Baby Wipes"
    ],
    "Household": [
        "Laundry Soap",
        "Dish Soap",
        "Paper Towels",
        "Toilet Paper"
    ],
    "Canned Vegitables": [
        "Tomatoes",
        "Carrots",
        "Potatoes",
        "Green Beans",
        "Corn",
        "Artichokes"
    ],
    "Canned Fruit": [
        "Pears",
        "Peaches",
        "Pumpkin",
        "Mandarin Oranges",
        "Applesauce"
    ],
    "Packaged Protein": [
        "Peanut Butter",
        "Kidney Beans",
        "Refried Beans",
        "Baked Beans",
        "Pork",
        "Beef Stew",
        "Black Beans",
        "Salmon",
        "Tuna",
        "Chicken"
    ],
    "Meal Starters": [
        "Vegetable Soup",
        "Tomato Soup",
        "Cheesy Tuna",
        "Lasagna Skillet",
        "Beef Skillet"
    ],
    "Dry Product": [
        "Pistacios",
        "Maple Syrup",
        "Pancake Mix",
        "Potato Flake",
        "Instant Milk",
        "Sea Salt",
        "Raisins",
        "Plums",
        "Cranberries",
        "Fruit & Nut Mix",
        "Hazlenuts"
    ],
    "Frozen": [
        "Chicken",
        "Ground Turkey",
        "White Fish"
    ]
}
ActiveRecord::Base.transaction do
    seed.each do |category,items|
        c = Category.find_or_create_by(name: category, limit: 3)
        items.each do |item|
            c.items.find_or_create_by(name: item)
        end
    end
end