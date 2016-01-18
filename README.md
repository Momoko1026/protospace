# Database

## User
### Association
- has_many: prototypes
### Colums
- nickname :string
- email :string
- avatar_image :string
- password :string
- profile :text
- works :string

## Prototype
### Association
- belongs_to: user
- has_many: likes
- has_many: comments
- has_many: captured_images
### Colums
- title :text
- catchcopy :text
- concept :text
- like_count :integer
- user_id :integer


## Captured_images
### Association
- belongs to: prototype
### Colums
- image :text
- prototype_id :integer
- property

## Comment
### Association
- belongs_to: prototype
- belongs_to: user
### Colums
- comment :text
- prototype_id :integer
- user_id :integer

## Like
### Association
- belongs-to: prototype
- belongs_to: user
### Colums
- prototype_id :integer
- user_id: integer

