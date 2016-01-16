Database

##User
#has_many: prototypes

nickname :string
email :string
avatar_image :
password :string
profile :text
position :string
occupation :string
prototype_id :integer

##Prototype
#belongs_to: user
#has_many: likes
#has_many: comments
#has_many: prototypes_tags
#has_many: tags through: :prototypes_tags

title :text
main_thumbnail :text
sub_thumbnails :text
catchcopy :text
concept :text
user_id :integer
like_id :integer
comment_id :integer
tag_id :integer

##Prototypes_tags
belongs_to :tag
belongs_to :prototype

##Comment
#belongs_to: prototype
comment :text
prototype_id :integer

##Like
#belongs-to: prototype
#belongs_to: user
prototype_id :integer
user_id: integer

##Tag
#has_many: prototypes_tags
#has_many: prototypes through: :prototypes_tags

tag_name :string

##Prototypes_tages
prototype_id :integer
Tag_id :integer
