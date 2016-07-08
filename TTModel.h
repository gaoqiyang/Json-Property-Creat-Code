#import "JSONModel.h"

#pragma mark -TTcircle_infoModel
@protocol TTcircle_infoModel <NSObject>

@end

@interface TTcircle_infoModel : JSONModel <NSCoding>

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
#pragma mark -TTrelate_collectionModel
@protocol TTrelate_collectionModel <NSObject>

@end

@interface TTrelate_collectionModel : JSONModel <NSCoding>

@property (nonatomic,copy)NSString *imgurl;
@property (nonatomic,copy)NSString *cir_id;
@property (nonatomic,copy)NSString *collection_tag_imgurl;
@property (nonatomic,copy)NSString *Myid;
@property (nonatomic,copy)NSString *replycount;
@property (nonatomic,copy)NSString *readcount;
@property (nonatomic,copy)NSString *name;
@property (nonatomic,copy)NSString *desc;

@end
#pragma mark -TTcollection_infoModel
@protocol TTcollection_infoModel <NSObject>

@end

@interface TTcollection_infoModel : JSONModel <NSCoding>

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
#pragma mark -TTitem_infoModel
@protocol TTitem_infoModel <NSObject>

@end

@interface TTitem_infoModel : JSONModel <NSCoding>

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
#pragma mark -TTcollectionModel
@protocol TTcollectionModel <NSObject>

@end

@interface TTcollectionModel : JSONModel <NSCoding>

@property (nonatomic,strong)TTcircle_infoModel *circle_info;
@property (nonatomic,copy)NSString *t_push_time;
@property (nonatomic,strong)NSMutableArray <TTrelate_collectionModel> *Myrelate_collection;
@property (nonatomic,strong)TTcollection_infoModel *collection_info;
@property (nonatomic,copy)NSString *recommend_type;
@property (nonatomic,strong)NSMutableArray <TTitem_infoModel> *Myitem_info;
@property (nonatomic,strong)NSMutableArray *Myreply_info;

@end
#pragma mark -TTitem_listModel
@protocol TTitem_listModel <NSObject>

@end

@interface TTitem_listModel : JSONModel <NSCoding>

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
#pragma mark -TTbanner_listModel
@protocol TTbanner_listModel <NSObject>

@end

@interface TTbanner_listModel : JSONModel <NSCoding>

@property (nonatomic,copy)NSString *banner_imgurl;
@property (nonatomic,copy)NSString *p_type;
@property (nonatomic,copy)NSString *item_id;
@property (nonatomic,copy)NSString *open;

@end
#pragma mark -TTtopModel
@protocol TTtopModel <NSObject>

@end

@interface TTtopModel : JSONModel <NSCoding>

@property (nonatomic,strong)NSMutableArray <TTitem_listModel> *Myitem_list;
@property (nonatomic,copy)NSString *recommend_type;
@property (nonatomic,strong)NSMutableArray <TTbanner_listModel> *Mybanner_list;

@end
#pragma mark -TTdailyModel
@protocol TTdailyModel <NSObject>

@end

@interface TTdailyModel : JSONModel <NSCoding>

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
#pragma mark -TTcircleModel
@protocol TTcircleModel <NSObject>

@end

@interface TTcircleModel : JSONModel <NSCoding>

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
#pragma mark -TTfindModel
@protocol TTfindModel <NSObject>

@end

@interface TTfindModel : JSONModel <NSCoding>

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
#pragma mark -TTthemeModel
@protocol TTthemeModel <NSObject>

@end

@interface TTthemeModel : JSONModel <NSCoding>

@property (nonatomic,copy)NSString *o_name;
@property (nonatomic,copy)NSString *u_headimg;
@property (nonatomic,copy)NSString *u_isdaren;
@property (nonatomic,strong)TTcircleModel *circle;
@property (nonatomic,strong)NSMutableArray <TTfindModel> *Myfind;
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
#pragma mark -TTdataModel
@protocol TTdataModel <NSObject>

@end

@interface TTdataModel : JSONModel <NSCoding>

@property (nonatomic,strong)TTcollectionModel *collection;
@property (nonatomic,copy)NSString *recommend_type;
@property (nonatomic,strong)TTtopModel *top;
@property (nonatomic,strong)TTdailyModel *daily;
@property (nonatomic,strong)TTthemeModel *theme;

@end
#pragma mark -TTModel
@interface TTModel : JSONModel <NSCoding>

@property (nonatomic,copy)NSString *result;
@property (nonatomic,copy)NSString *msg;
@property (nonatomic,strong)NSMutableArray <TTdataModel> *Mydata;

@end
