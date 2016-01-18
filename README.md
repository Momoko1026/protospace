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

### Colums
- title :text
- main_thumbnail :text
- sub_thumbnails :text
- catchcopy :text
- concept :text
- like_count :integer
- user_id :integer

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

## Prototypes_tages
### Colums
- prototype_id :integer
- Tag_id :integer
