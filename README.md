# Capstone Project Report: 
 StyleHaven Fashion Catalogue
 Project Title: Prompt-Powered Kickstart: Building "StyleHaven" E-Commerce with Ruby on Rails and TailwindCSSProject 
 Data Details
 Technology Chosen: Ruby on Rails 7.x (Backend) & TailwindCSS (Frontend)
 Project Goal: Create a fully functional, interactive fashion catalogue with cart, search, and filtering, using AI prompts for rapid development.
 Submission Date: November 2025
 Author: Fortune Ngili
# Table of Contents. 
🎯 Overview & Objectives. 
✨ Features and Functionality. 
💻 System Requirements & Installation. 
🤖 AI Prompt Journa. 
🚨 Common Issues & Solutions. 
🔗 References. 
# Overview & ObjectivesProject Objective:
The primary objective was to leverage Generative AI (GenAI) prompts to quickly learn and implement a full-stack application using a new technology (Ruby on Rails). The resulting application, "StyleHaven," is an e-commerce catalogue demonstrating core shopping functionalities.
# Why This Tech Stack?
# Ruby on Rails: 
Chosen for its Model-View-Controller (MVC) structure and philosophy of Convention over Configuration.  This allowed for rapid scaffolding of a data-driven web application.
# TailwindCSS: 
A utility-first CSS framework used for efficient and modern styling. Its integration via the tailwindcss-rails gem demonstrates modern asset management techniques.
# End Goal
The final product is a fully functional, responsive catalogue that includes:25+ seeded products in the database.Interactive search (by name) and category filtering.A session-based shopping cart with total price calculation.
# II.  Features and Functionality
It has a search bar, filter bar, add to cart functionality and a product detail modal.
Functionality: the user can click add to cart and view the added items in the cart area.
# III. System Requirements & Installation
System Requirements- RubyVersion 3.0 or higher
RailsVersion 7.0 or higher
Node.js & npmLatest stable version (Crucial for Tailwind)
#  Installation & Setup Steps (Including Debugging Fixes)
1. Initialize Rails Application & ModelBashrails new style_haven
cd style_haven
rails generate scaffold Product name:string price:decimal category:string description:text image_url:string
rails db:migrate
2. Fix Routing and Add Cart RouteEdit config/routes.rb to set the homepage and define the cart route:Ruby# config/routes.rb
root "products#index"
resources :products do
  collection do
    post :add_to_cart
  end
end
3. Establish Node/npm Environment (Error Fix)Fix: This step was crucial to resolve the dependency error caused by the missing package.json.Bashnpm init -y  # Creates the missing package.json
npm install -D tailwindcss postcss autoprefixer
4. Install TailwindCSS IntegrationBashbundle add tailwindcss-rails
rails tailwindcss:install
5. Seed Database (25 Items)Bashrails db:seed
6. Run Application (Two Terminals Required)Terminal 1 (Compiler):Bash./bin/tailwindcss -i ./app/assets/stylesheets/application.tailwind.css -o ./app/assets/builds/tailwind.css --watch
Terminal 2 (Web Server):Bashrails server
IV. 
# AI Prompt Journal
This journal documents the strategic use of GenAI prompts.
1. Prompt Used (Context)Learning Outcome/Productivity ImpactEvaluation: "Give me Active Record code for search/filter logic in a Rails controller.
Response:
"Provided the syntax for chaining .where clauses, essential for the required search/filter feature.Evaluation:
Great
2. Prompt 2: "How do I create a session-based shopping cart and calculate the total price in Ruby?Response:
"Introduced the use of session[:cart] and the efficient sum method for calculation.
Evaluation: Great
3. Prompt 3:
"I am missing package.json and cannot run ./bin/tailwindcss in my Rails app. How do I fix the environment?
Response:
"Diagnosed the need for the npm init -y and npm install steps, debugging a complex cross-technology dependency issue.
Evaluation: Great
4. Prompt 4:
"Write a db/seeds.rb script to create 8 random fashion products...
Response:
"Generated boilerplate data to instantly fulfill the 5+ item requirement, saving significant data entry time.
Response: Great
# V.  Common Issues & Solutions
# Issue Encountered:
Cause Resolution Propshaft:
Missing Asset Error The HTML was trying to load tailwind.css, but the file was not built yet.
# Resolution: 
Start the Tailwind compiler watcher 
# Issue encountered:
(./bin/tailwindcss --watch)../bin/tailwindcss: No such file The Node environment was incomplete, preventing the installer from creating the executable script.
# Resolution: 
Manually initialize Node (npm init -y) then re-run rails tailwindcss:install.
# Issue encountered:
Welcome Page ShowingThe default Rails route was active.
# Resolution: 
Set root "products#index" in config/routes.rb.VI. 

# References:
https://github.com/Fortunengili/Fashion-app.git
# Screenshots:
<img width="954" height="438" alt="image" src="https://github.com/user-attachments/assets/e9be41d5-782d-40a6-aa31-a29a70fb83ad" />
<img width="896" height="385" alt="image" src="https://github.com/user-attachments/assets/800907cd-c405-47d1-a750-1326289039c7" />
<img width="865" height="434" alt="image" src="https://github.com/user-attachments/assets/eb114c1c-7ad0-4f5f-bac1-5a8a3f0619bb" />




