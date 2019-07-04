# Fanbytes Test Task
## Trailblazer (Campaign)

> The test task is as follows:
> Use the trailblazer methodology to create a Rails API with one Restful endpoint (/campaigns). The CRUD functionality should function completely.
> You can see the trailblazer docs here: http://trailblazer.to/
> 
> A campaign can have the following parameters:
> * Title
> * Start Date
> * Budget
> * Brief
> 
> There should be some validation on the start date to ensure it is in the future.

### Environment:
* Ruby version: 2.6.3
* Rails version: 5.2.3

### Concepts Structure:
```bash
app
├── concepts
│   └── campaign
│       ├── contract
│       │   ├── create.rb
│       │   └── update.rb
│       └── operation
│           ├── create.rb
│           ├── delete.rb
│           ├── index.rb
│           ├── show.rb
│           └── update.rb
├── controllers
│   ├── application_controller.rb
│   ├── campaigns_controller.rb
│   └── concerns
```

### Model:
```ruby
create_table "campaigns", force: :cascade do |t|
  t.string "title"
  t.date "start_date"
  t.decimal "budget"
  t.text "brief"
  t.datetime "created_at", null: false
  t.datetime "updated_at", null: false
end
```

### Test Case:
1. Index
  ![index](images/index.png)
2. Show
  ![show](images/show.png)
3. Update
  ![update](images/update.png)
4. Create
  ![create](images/create.png)
5. Destroy
  ![delete](images/delete.png)
6. Create Error (start_date)
  ![create_start_date_error](images/create_start_date_error.png)
7. Create Error (title)
  ![create_title_error](images/create_title_error.png)
8. Create Error (start_date & title)
  ![create_start_date_title_error](images/create_start_date_title_error.png)



