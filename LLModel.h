#import <Foundation/Foundation.h>

@interface LLcircle_infoModel : NSObject <NSCoding>

@property (nonatomic,copy)NSString *cir_name;
@property (nonatomic,copy)NSString *owner_id;
@property (nonatomic,copy)NSString *class_id;
@property (nonatomic,copy)NSString *cir_logo;
@property (nonatomic,copy)NSString *cir_time;
@property (nonatomic,copy)NSString *cir_themecount;
@property (nonatomic,copy)NSString *isfollow;
@property (nonatomic,copy)NSString *cir_ownner_headimg;
@property (nonatomic,copy)NSString *cir_type;
@property (nonatomic,copy)NSString *cir_score;
@property (nonatomic,copy)NSString *cir_minbanner;
@property (nonatomic,copy)NSString *cir_long_description;
@property (nonatomic,copy)NSString *cir_banner_t_id;
@property (nonatomic,copy)NSString *cir_wx;
@property (nonatomic,copy)NSString *cir_description;
@property (nonatomic,copy)NSString *cir_is_recommend;
@property (nonatomic,copy)NSString *cir_ispublic;
@property (nonatomic,copy)NSString *cir_id;
@property (nonatomic,copy)NSString *cir_banner;
@property (nonatomic,copy)NSString *cir_isofficial;
@property (nonatomic,copy)NSString *cir_wb;
@property (nonatomic,copy)NSString *cir_web;
@property (nonatomic,copy)NSString *cir_ownner_name;
@property (nonatomic,copy)NSString *cir_ownner_uid;

@end
@interface LLrelate_collectionModel : NSObject <NSCoding>

@property (nonatomic,copy)NSString *imgurl;
@property (nonatomic,copy)NSString *cir_id;
@property (nonatomic,copy)NSString *collection_tag_imgurl;
@property (nonatomic,copy)NSString *Myid;
@property (nonatomic,copy)NSString *replycount;
@property (nonatomic,copy)NSString *readcount;
@property (nonatomic,copy)NSString *name;
@property (nonatomic,copy)NSString *desc;

@end
@interface LLcollection_infoModel : NSObject <NSCoding>

@property (nonatomic,copy)NSString *Myid;
@property (nonatomic,copy)NSString *readcount;
@property (nonatomic,copy)NSString *imgurl;
@property (nonatomic,copy)NSString *cir_id;
@property (nonatomic,copy)NSString *replycount;
@property (nonatomic,copy)NSString *url;
@property (nonatomic,copy)NSString *desc;
@property (nonatomic,copy)NSString *recommend_type;
@property (nonatomic,copy)NSString *collection_tag_imgurl;
@property (nonatomic,copy)NSString *is_favour;
@property (nonatomic,copy)NSString *favour_count;
@property (nonatomic,copy)NSString *name;

@end
@interface LLitem_infoModel : NSObject <NSCoding>

@property (nonatomic,copy)NSString *readcount;
@property (nonatomic,copy)NSString *item_update_time;
@property (nonatomic,copy)NSString *expire_time;
@property (nonatomic,copy)NSString *ori_price;
@property (nonatomic,copy)NSString *from_answer;
@property (nonatomic,copy)NSString *ship_area;
@property (nonatomic,copy)NSString *item_tag;
@property (nonatomic,copy)NSString *platform;
@property (nonatomic,copy)NSString *item_imgurl;
@property (nonatomic,copy)NSString *item_name;
@property (nonatomic,copy)NSString *ship_transmit_fee;
@property (nonatomic,copy)NSString *ship_tax;
@property (nonatomic,copy)NSString *item_id;
@property (nonatomic,copy)NSString *hidden;
@property (nonatomic,copy)NSString *ship_time;
@property (nonatomic,copy)NSString *brand_id;
@property (nonatomic,copy)NSString *backend_id;
@property (nonatomic,copy)NSString *sellcount;
@property (nonatomic,copy)NSString *item_desc;
@property (nonatomic,copy)NSString *brand;
@property (nonatomic,strong)NSMutableArray *Myitem_img_list;
@property (nonatomic,copy)NSString *need_idcard;
@property (nonatomic,copy)NSString *ship_method;
@property (nonatomic,copy)NSString *ship_country;
@property (nonatomic,copy)NSString *prepare_sku;
@property (nonatomic,copy)NSString *sell_point;
@property (nonatomic,copy)NSString *ship_fee;
@property (nonatomic,copy)NSString *price;
@property (nonatomic,copy)NSString *item_created_at;
@property (nonatomic,copy)NSString *item_mark;
@property (nonatomic,copy)NSString *item_location;
@property (nonatomic,copy)NSString *item_comments;
@property (nonatomic,copy)NSString *seller_uid;
@property (nonatomic,copy)NSString *size_table_str;
@property (nonatomic,copy)NSString *item_insale;
@property (nonatomic,copy)NSString *seller_id;
@property (nonatomic,copy)NSString *stock;
@property (nonatomic,copy)NSString *item_tag_id;
@property (nonatomic,copy)NSString *item_ori_url;
@property (nonatomic,copy)NSString *buyurl;
@property (nonatomic,copy)NSString *size_table_imgurl;
@property (nonatomic,copy)NSString *class_id;
@property (nonatomic,copy)NSString *is_hot;

@end
@interface LLcollectionModel : NSObject <NSCoding>

@property (nonatomic,strong)LLcircle_infoModel *circle_info;
@property (nonatomic,copy)NSString *t_push_time;
@property (nonatomic,strong)NSMutableArray *Myrelate_collection;
@property (nonatomic,strong)LLcollection_infoModel *collection_info;
@property (nonatomic,copy)NSString *recommend_type;
@property (nonatomic,strong)NSMutableArray *Myitem_info;
@property (nonatomic,strong)NSMutableArray *Myreply_info;

@end
@interface LLitem_listModel : NSObject <NSCoding>

@property (nonatomic,copy)NSString *sort_rate;
@property (nonatomic,copy)NSString *tag_imgurl;
@property (nonatomic,copy)NSString *item_desc;
@property (nonatomic,copy)NSString *sort_score;
@property (nonatomic,copy)NSString *open;
@property (nonatomic,copy)NSString *item_count;
@property (nonatomic,copy)NSString *item_title;
@property (nonatomic,copy)NSString *item_imgurl;
@property (nonatomic,copy)NSString *item_end;
@property (nonatomic,copy)NSString *item_num;

@end
@interface LLbanner_listModel : NSObject <NSCoding>

@property (nonatomic,copy)NSString *banner_imgurl;
@property (nonatomic,copy)NSString *p_type;
@property (nonatomic,copy)NSString *item_id;
@property (nonatomic,copy)NSString *open;

@end
@interface LLtopModel : NSObject <NSCoding>

@property (nonatomic,strong)NSMutableArray *Myitem_list;
@property (nonatomic,copy)NSString *recommend_type;
@property (nonatomic,strong)NSMutableArray *Mybanner_list;

@end
@interface LLdailyModel : NSObject <NSCoding>

@property (nonatomic,copy)NSString *daily_imgurl;
@property (nonatomic,copy)NSString *daily_time;
@property (nonatomic,copy)NSString *daily_title;
@property (nonatomic,copy)NSString *daily_cirimg;
@property (nonatomic,copy)NSString *daily_indeximg;
@property (nonatomic,copy)NSString *recommend_type;
@property (nonatomic,copy)NSString *daily_url;
@property (nonatomic,copy)NSString *daily_id;
@property (nonatomic,copy)NSString *daily_desc;
@property (nonatomic,copy)NSString *daily_likecount;
@property (nonatomic,copy)NSString *daily_readcount;
@property (nonatomic,copy)NSString *daily_ispublic;

@end
@interface LLcircleModel : NSObject <NSCoding>

@property (nonatomic,copy)NSString *cir_name;
@property (nonatomic,copy)NSString *owner_id;
@property (nonatomic,copy)NSString *class_id;
@property (nonatomic,copy)NSString *cir_logo;
@property (nonatomic,copy)NSString *cir_time;
@property (nonatomic,copy)NSString *cir_themecount;
@property (nonatomic,copy)NSString *cir_type;
@property (nonatomic,copy)NSString *cir_score;
@property (nonatomic,copy)NSString *cir_minbanner;
@property (nonatomic,copy)NSString *cir_long_description;
@property (nonatomic,copy)NSString *cir_banner_t_id;
@property (nonatomic,copy)NSString *cir_wx;
@property (nonatomic,copy)NSString *cir_description;
@property (nonatomic,copy)NSString *cir_is_recommend;
@property (nonatomic,copy)NSString *cir_ispublic;
@property (nonatomic,copy)NSString *cir_id;
@property (nonatomic,copy)NSString *cir_banner;
@property (nonatomic,copy)NSString *cir_isofficial;
@property (nonatomic,copy)NSString *cir_wb;
@property (nonatomic,copy)NSString *cir_web;

@end
@interface LLfindModel : NSObject <NSCoding>

@property (nonatomic,copy)NSString *prepare_sku;
@property (nonatomic,copy)NSString *f_imgurl;
@property (nonatomic,copy)NSString *ship_area;
@property (nonatomic,copy)NSString *f_recommend_type;
@property (nonatomic,copy)NSString *unstable_stock;
@property (nonatomic,copy)NSString *seller_uid;
@property (nonatomic,copy)NSString *isfollow;
@property (nonatomic,copy)NSString *f_id;
@property (nonatomic,copy)NSString *f_ori_price;
@property (nonatomic,copy)NSString *item_supply;
@property (nonatomic,copy)NSString *f_time;
@property (nonatomic,copy)NSString *f_brand;
@property (nonatomic,copy)NSString *f_buyurl;
@property (nonatomic,copy)NSString *item_price;
@property (nonatomic,copy)NSString *item_id;
@property (nonatomic,copy)NSString *adminfollow;
@property (nonatomic,copy)NSString *brand_name;
@property (nonatomic,copy)NSString *f_followcount;
@property (nonatomic,copy)NSString *f_ori_buyurl;
@property (nonatomic,copy)NSString *f_price;

@end
@interface LLthemeModel : NSObject <NSCoding>

@property (nonatomic,copy)NSString *o_name;
@property (nonatomic,copy)NSString *u_headimg;
@property (nonatomic,copy)NSString *u_isdaren;
@property (nonatomic,strong)LLcircleModel *circle;
@property (nonatomic,strong)NSMutableArray *Myfind;
@property (nonatomic,copy)NSString *t_time;
@property (nonatomic,copy)NSString *t_title;
@property (nonatomic,copy)NSString *ud_id;
@property (nonatomic,copy)NSString *u_username;
@property (nonatomic,copy)NSString *ud_desc;
@property (nonatomic,copy)NSString *cy_id;
@property (nonatomic,copy)NSString *style_id;
@property (nonatomic,copy)NSString *u_id;
@property (nonatomic,copy)NSString *t_style_created_at;
@property (nonatomic,copy)NSString *t_price;
@property (nonatomic,copy)NSString *t_findcount;
@property (nonatomic,copy)NSString *t_hunttype;
@property (nonatomic,copy)NSString *t_id;
@property (nonatomic,copy)NSString *t_push_time;
@property (nonatomic,copy)NSString *t_tmp_circle;
@property (nonatomic,copy)NSString *t_followcount;
@property (nonatomic,copy)NSString *ud_isrelate;
@property (nonatomic,copy)NSString *cir_id;
@property (nonatomic,copy)NSString *ud_ispgc;
@property (nonatomic,copy)NSString *u_tag;
@property (nonatomic,copy)NSString *recommend_type;
@property (nonatomic,copy)NSString *is_hide_circle;
@property (nonatomic,copy)NSString *t_istop;
@property (nonatomic,copy)NSString *t_imgurl;

@end
@interface LLdataModel : NSObject <NSCoding>

@property (nonatomic,strong)LLcollectionModel *collection;
@property (nonatomic,copy)NSString *recommend_type;
@property (nonatomic,strong)LLtopModel *top;
@property (nonatomic,strong)LLdailyModel *daily;
@property (nonatomic,strong)LLthemeModel *theme;

@end
@interface LLModel : NSObject <NSCoding>

@property (nonatomic,copy)NSString *result;
@property (nonatomic,copy)NSString *msg;
@property (nonatomic,strong)NSMutableArray *Mydata;

@end
