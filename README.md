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
- position :string
- occupation :string
- prototype_id :integer

## Prototype
### Association
- belongs_to: user
- has_many: likes
- has_many: comments
- has_many: prototypes_tags
- has_many: tags through: :prototypes_tags
### Colums
- title :text
- main_thumbnail :text
- sub_thumbnails :text
- catchcopy :text
- concept :text
- user_id :integer
- like_id :integer
- comment_id :integer
- tag_id :integer

## Prototypes_tags
### Association
- belongs_to :tag
- belongs_to :prototype

## Comment
### Association
- belongs_to: prototype
### Colums
- comment :text
- prototype_id :integer

## Like
### Association
- belongs-to: prototype
- belongs_to: user
### Colums
- prototype_id :integer
- user_id: integer

## Tag
### Association
- has_many: prototypes_tags
- has_many: prototypes through: :prototypes_tags
### Colums
- tag_name :string

## Prototypes_tages
### Colums
- prototype_id :integer
- Tag_id :integer
