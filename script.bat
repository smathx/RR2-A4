@echo off

::call rails generate scaffold User username:string password_digest:string
::call rake db:migrate

::call rails generate scaffold Profile gender:string birth_year:integer first_name:string last_name:string user:references
::call rake db:migrate

::call rails generate scaffold TodoList list_name:string list_due_date:date
::call rake db:migrate

::rails generate migration AddUserToTodoList user:references
::call rake db:migrate

::call rails generate scaffold TodoItem due_date:date title:string description:text completed:boolean todo_list:references
::call rake db:migrate

call rails generate scaffold_controller TodoList list_name:string list_due_date:date
call rails generate scaffold_controller TodoItem title:string due_date:date description:text completed:boolean

:next
