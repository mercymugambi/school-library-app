Class Person
attr_reader :id

def
initialize(id, name = "Unknown", age, parent_permission = true)
  @id = id
  @name = name
  @age = age
  @parent_permission = parent_permission
end

def name
    @name
end
def age
    @age
end

def name (new_name)
    @name = new_name
end

def age (new_age)
    @age = new_age
end

end
