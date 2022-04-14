# <div align="center">Rails API for a tea subcription service</div>


# <div align="center">![Tea Time (8)](https://user-images.githubusercontent.com/87088092/163321616-2709dc54-55c5-4277-8496-249b8eeec256.png)
</div>

![-----------------------------------------------------](https://raw.githubusercontent.com/andreasbm/readme/master/assets/lines/rainbow.png)

<br>

## Overview


#### Framework
<p>
  <img src="https://img.shields.io/badge/Ruby%20On%20Rails-b81818.svg?&style=flat&logo=rubyonrails&logoColor=white" />
</p>

#### Languages
<p>
  <img src="https://img.shields.io/badge/Ruby-CC0000.svg?&style=flaste&logo=ruby&logoColor=white" />
  <img src="https://img.shields.io/badge/ActiveRecord-CC0000.svg?&style=flaste&logo=rubyonrails&logoColor=white" />
</p>

#### Tools
<p>
  <img src="https://img.shields.io/badge/Atom-66595C.svg?&style=flaste&logo=atom&logoColor=white" />  
  <img src="https://img.shields.io/badge/Git-F05032.svg?&style=flaste&logo=git&logoColor=white" />
  <img src="https://img.shields.io/badge/GitHub-181717.svg?&style=flaste&logo=github&logoColor=white" />
  <img src="https://img.shields.io/badge/Postman-FF6E4F.svg?&style=flat&logo=postman&logoColor=white" />
  <img src="https://img.shields.io/badge/PostgreSQL-%234169E1?logo=postgresql&logoColor=white" />
</p>

#### Gems
<p>
  <img src="https://img.shields.io/badge/rspec--rails-b81818.svg?&style=flaste&logo=rubygems&logoColor=white" />
  <img src="https://img.shields.io/badge/pry-b81818.svg?&style=flaste&logo=rubygems&logoColor=white" />   
  <img src="https://img.shields.io/badge/simplecov-b81818.svg?&style=flaste&logo=rubygems&logoColor=white" />  
  <img src="https://img.shields.io/badge/shoulda--matchers-b81818.svg?&style=flaste&logo=rubygems&logoColor=white" />
</p>

#### Development Principles
<p>
  <img src="https://img.shields.io/badge/OOP-b81818.svg?&style=flaste&logo=OOP&logoColor=white" />
  <img src="https://img.shields.io/badge/TDD-b87818.svg?&style=flaste&logo=TDD&logoColor=white" />
  <img src="https://img.shields.io/badge/MVC-FF6E4F.svg?&style=flaste&logo=MVC&logoColor=white" />
  <img src="https://img.shields.io/badge/REST-33b818.svg?&style=flaste&logo=REST&logoColor=white" />  
</p>

<hr>

### <ins>Contributors:</ins>

👨🏽‍💻 **Devin Pile**

- Follow my [Github](https://github.com/devin-p-lay)
- Connect with my [Linkedin](https://www.linkedin.com/in/devin-pile-162460165/)

<br>

<br>

![-----------------------------------------------------](https://raw.githubusercontent.com/andreasbm/readme/master/assets/lines/rainbow.png)

<br>

## Local Setup

1. Fork and Clone the repo
2. Install gems: run `bundle install`
3. Set up the database: run  `rails db:{drop,create,migrate,seed}`

<br>

<br>

![-----------------------------------------------------](https://raw.githubusercontent.com/andreasbm/readme/master/assets/lines/rainbow.png)

<br>

## <div align="center">Endpoints</div>

<div align="center"> get   |   patch   |     post </div>

<hr>

### Subscribe a customer to a tea subscription
  <details close="close">
  <summary>Request</summary>
  
```
    post "/api/v1/customers/#{customer.id}/subscriptions"
```
  
</details>

<details close="close">
  <summary>Response</summary>
  
#
  
</details>

<br>

<hr>
  
### Cancel a customer's tea subscription

 <details close="close">
  <summary>Request</summary>
  
```
    patch
```
  
</details>

<details close="close">
  <summary>Response</summary>
  
#
  
</details>

<br>

<hr>

### Index customer's subscriptions

 <details close="close">
  <summary>Request</summary>
  
```
    get
```
  
</details>

<details close="close">
  <summary>Response</summary>
  
#
  
</details>

<br>

<hr>

### Add a tea 

<details close="close">
  <summary>Request</summary>
  
```
    post "/api/v1/teas"
```
  
</details>

<details close="close">
  <summary>Response</summary>
  
# ![Screen Shot 2022-04-14 at 1 22 22 AM](https://user-images.githubusercontent.com/87088092/163334727-bfc144f7-f1af-45de-86a3-44510690a5b0.png)
  
</details>

<br> 

<hr>

### Add a customer

<details close="close">
  <summary>Request</summary>
  
```
    post "/api/v1/customers"
```
  
</details>

<details close="close">
  <summary>Response</summary>
  
# ![Screen Shot 2022-04-14 at 1 31 40 AM](https://user-images.githubusercontent.com/87088092/163336247-ccc73b02-4383-4f57-901b-2cd5570ef7c4.png)
  
</details>

<br>

<br>

![-----------------------------------------------------](https://raw.githubusercontent.com/andreasbm/readme/master/assets/lines/rainbow.png)

<br>

## <div align="center"> Database Schema </div>

# <div align="center">![Screen Shot 2022-04-11 at 3 09 33 PM](https://user-images.githubusercontent.com/87088092/163325076-c8d87205-5bbd-4851-99e7-48841be20313.png)</div>
