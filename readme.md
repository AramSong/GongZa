## 특정 테이블 지우기

```ruby
rails g migration deleteTableTableName

- open the file generated and in the 'up' method you should enter this :
  def up
    drop_table :table_name
  end

- close the file en run
  rake db:migrate

And that's all  :)
-------------------------------------------------------------------------------
1. Rails DB -> SQL Editor
drop table 'table name'
2. ruby => $ rails d model 'table name'
-------------------------------------------------------------------------------
```

# 180706



1. 서울시 행정구역 추가
2. 닉네임용 형용사, 음식이름 추가