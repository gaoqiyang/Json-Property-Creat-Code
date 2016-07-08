#import "LLModel.h"

@implementation LLcircle_infoModel

- (void)setValue:(id)value forKey:(NSString *)key{
	if ([value isKindOfClass:[NSNumber class]]) {
		[self setValue:[NSString stringWithFormat:@"%@",value] forKey:key];
	}else{
		[super setValue:value forKey:key];
	}
}

- (void)setValue:(id)value forUndefinedKey:(NSString *)key{
}

-(id)valueForUndefinedKey:(NSString *)key{
	NSLog(@"error: LLcircle_infoModel数据模型中:未找到key = %@",key);
	return nil;
}

- (void)encodeWithCoder:(NSCoder *)aCoder{
	[aCoder encodeObject:self.cir_name forKey:@"cir_name"];
	[aCoder encodeObject:self.owner_id forKey:@"owner_id"];
	[aCoder encodeObject:self.class_id forKey:@"class_id"];
	[aCoder encodeObject:self.cir_logo forKey:@"cir_logo"];
	[aCoder encodeObject:self.cir_time forKey:@"cir_time"];
	[aCoder encodeObject:self.cir_themecount forKey:@"cir_themecount"];
	[aCoder encodeObject:self.isfollow forKey:@"isfollow"];
	[aCoder encodeObject:self.cir_ownner_headimg forKey:@"cir_ownner_headimg"];
	[aCoder encodeObject:self.cir_type forKey:@"cir_type"];
	[aCoder encodeObject:self.cir_score forKey:@"cir_score"];
	[aCoder encodeObject:self.cir_minbanner forKey:@"cir_minbanner"];
	[aCoder encodeObject:self.cir_long_description forKey:@"cir_long_description"];
	[aCoder encodeObject:self.cir_banner_t_id forKey:@"cir_banner_t_id"];
	[aCoder encodeObject:self.cir_wx forKey:@"cir_wx"];
	[aCoder encodeObject:self.cir_description forKey:@"cir_description"];
	[aCoder encodeObject:self.cir_is_recommend forKey:@"cir_is_recommend"];
	[aCoder encodeObject:self.cir_ispublic forKey:@"cir_ispublic"];
	[aCoder encodeObject:self.cir_id forKey:@"cir_id"];
	[aCoder encodeObject:self.cir_banner forKey:@"cir_banner"];
	[aCoder encodeObject:self.cir_isofficial forKey:@"cir_isofficial"];
	[aCoder encodeObject:self.cir_wb forKey:@"cir_wb"];
	[aCoder encodeObject:self.cir_web forKey:@"cir_web"];
	[aCoder encodeObject:self.cir_ownner_name forKey:@"cir_ownner_name"];
	[aCoder encodeObject:self.cir_ownner_uid forKey:@"cir_ownner_uid"];
}

- (id)initWithCoder:(NSCoder *)aDecoder{
	if (self = [super init]) {
		self.cir_name = [aDecoder decodeObjectForKey:@"cir_name"];
		self.owner_id = [aDecoder decodeObjectForKey:@"owner_id"];
		self.class_id = [aDecoder decodeObjectForKey:@"class_id"];
		self.cir_logo = [aDecoder decodeObjectForKey:@"cir_logo"];
		self.cir_time = [aDecoder decodeObjectForKey:@"cir_time"];
		self.cir_themecount = [aDecoder decodeObjectForKey:@"cir_themecount"];
		self.isfollow = [aDecoder decodeObjectForKey:@"isfollow"];
		self.cir_ownner_headimg = [aDecoder decodeObjectForKey:@"cir_ownner_headimg"];
		self.cir_type = [aDecoder decodeObjectForKey:@"cir_type"];
		self.cir_score = [aDecoder decodeObjectForKey:@"cir_score"];
		self.cir_minbanner = [aDecoder decodeObjectForKey:@"cir_minbanner"];
		self.cir_long_description = [aDecoder decodeObjectForKey:@"cir_long_description"];
		self.cir_banner_t_id = [aDecoder decodeObjectForKey:@"cir_banner_t_id"];
		self.cir_wx = [aDecoder decodeObjectForKey:@"cir_wx"];
		self.cir_description = [aDecoder decodeObjectForKey:@"cir_description"];
		self.cir_is_recommend = [aDecoder decodeObjectForKey:@"cir_is_recommend"];
		self.cir_ispublic = [aDecoder decodeObjectForKey:@"cir_ispublic"];
		self.cir_id = [aDecoder decodeObjectForKey:@"cir_id"];
		self.cir_banner = [aDecoder decodeObjectForKey:@"cir_banner"];
		self.cir_isofficial = [aDecoder decodeObjectForKey:@"cir_isofficial"];
		self.cir_wb = [aDecoder decodeObjectForKey:@"cir_wb"];
		self.cir_web = [aDecoder decodeObjectForKey:@"cir_web"];
		self.cir_ownner_name = [aDecoder decodeObjectForKey:@"cir_ownner_name"];
		self.cir_ownner_uid = [aDecoder decodeObjectForKey:@"cir_ownner_uid"];
	}
	return self;
}

- (NSString *)description{
	return [NSString stringWithFormat:@"cir_name=%@,owner_id=%@,class_id=%@,cir_logo=%@,cir_time=%@,cir_themecount=%@,isfollow=%@,cir_ownner_headimg=%@,cir_type=%@,cir_score=%@,cir_minbanner=%@,cir_long_description=%@,cir_banner_t_id=%@,cir_wx=%@,cir_description=%@,cir_is_recommend=%@,cir_ispublic=%@,cir_id=%@,cir_banner=%@,cir_isofficial=%@,cir_wb=%@,cir_web=%@,cir_ownner_name=%@,cir_ownner_uid=%@",_cir_name,_owner_id,_class_id,_cir_logo,_cir_time,_cir_themecount,_isfollow,_cir_ownner_headimg,_cir_type,_cir_score,_cir_minbanner,_cir_long_description,_cir_banner_t_id,_cir_wx,_cir_description,_cir_is_recommend,_cir_ispublic,_cir_id,_cir_banner,_cir_isofficial,_cir_wb,_cir_web,_cir_ownner_name,_cir_ownner_uid];
}

@end

@implementation LLrelate_collectionModel

- (void)setValue:(id)value forKey:(NSString *)key{
	if ([value isKindOfClass:[NSNumber class]]) {
		[self setValue:[NSString stringWithFormat:@"%@",value] forKey:key];
	}else{
		[super setValue:value forKey:key];
	}
}

- (void)setValue:(id)value forUndefinedKey:(NSString *)key{
	if ([key isEqualToString:@"id"]) {
		[self setValue:value forKey:@"Myid"];
	}
}

-(id)valueForUndefinedKey:(NSString *)key{
	NSLog(@"error: LLrelate_collectionModel数据模型中:未找到key = %@",key);
	return nil;
}

- (void)encodeWithCoder:(NSCoder *)aCoder{
	[aCoder encodeObject:self.imgurl forKey:@"imgurl"];
	[aCoder encodeObject:self.cir_id forKey:@"cir_id"];
	[aCoder encodeObject:self.collection_tag_imgurl forKey:@"collection_tag_imgurl"];
	[aCoder encodeObject:self.Myid forKey:@"Myid"];
	[aCoder encodeObject:self.replycount forKey:@"replycount"];
	[aCoder encodeObject:self.readcount forKey:@"readcount"];
	[aCoder encodeObject:self.name forKey:@"name"];
	[aCoder encodeObject:self.desc forKey:@"desc"];
}

- (id)initWithCoder:(NSCoder *)aDecoder{
	if (self = [super init]) {
		self.imgurl = [aDecoder decodeObjectForKey:@"imgurl"];
		self.cir_id = [aDecoder decodeObjectForKey:@"cir_id"];
		self.collection_tag_imgurl = [aDecoder decodeObjectForKey:@"collection_tag_imgurl"];
		self.Myid = [aDecoder decodeObjectForKey:@"Myid"];
		self.replycount = [aDecoder decodeObjectForKey:@"replycount"];
		self.readcount = [aDecoder decodeObjectForKey:@"readcount"];
		self.name = [aDecoder decodeObjectForKey:@"name"];
		self.desc = [aDecoder decodeObjectForKey:@"desc"];
	}
	return self;
}

- (NSString *)description{
	return [NSString stringWithFormat:@"imgurl=%@,cir_id=%@,collection_tag_imgurl=%@,Myid=%@,replycount=%@,readcount=%@,name=%@,desc=%@",_imgurl,_cir_id,_collection_tag_imgurl,_Myid,_replycount,_readcount,_name,_desc];
}



@end
@implementation LLcollection_infoModel

- (void)setValue:(id)value forKey:(NSString *)key{
	if ([value isKindOfClass:[NSNumber class]]) {
		[self setValue:[NSString stringWithFormat:@"%@",value] forKey:key];
	}else{
		[super setValue:value forKey:key];
	}
}

- (void)setValue:(id)value forUndefinedKey:(NSString *)key{
	if ([key isEqualToString:@"id"]) {
		[self setValue:value forKey:@"Myid"];
	}
}

-(id)valueForUndefinedKey:(NSString *)key{
	NSLog(@"error: LLcollection_infoModel数据模型中:未找到key = %@",key);
	return nil;
}

- (void)encodeWithCoder:(NSCoder *)aCoder{
	[aCoder encodeObject:self.Myid forKey:@"Myid"];
	[aCoder encodeObject:self.readcount forKey:@"readcount"];
	[aCoder encodeObject:self.imgurl forKey:@"imgurl"];
	[aCoder encodeObject:self.cir_id forKey:@"cir_id"];
	[aCoder encodeObject:self.replycount forKey:@"replycount"];
	[aCoder encodeObject:self.url forKey:@"url"];
	[aCoder encodeObject:self.desc forKey:@"desc"];
	[aCoder encodeObject:self.recommend_type forKey:@"recommend_type"];
	[aCoder encodeObject:self.collection_tag_imgurl forKey:@"collection_tag_imgurl"];
	[aCoder encodeObject:self.is_favour forKey:@"is_favour"];
	[aCoder encodeObject:self.favour_count forKey:@"favour_count"];
	[aCoder encodeObject:self.name forKey:@"name"];
}

- (id)initWithCoder:(NSCoder *)aDecoder{
	if (self = [super init]) {
		self.Myid = [aDecoder decodeObjectForKey:@"Myid"];
		self.readcount = [aDecoder decodeObjectForKey:@"readcount"];
		self.imgurl = [aDecoder decodeObjectForKey:@"imgurl"];
		self.cir_id = [aDecoder decodeObjectForKey:@"cir_id"];
		self.replycount = [aDecoder decodeObjectForKey:@"replycount"];
		self.url = [aDecoder decodeObjectForKey:@"url"];
		self.desc = [aDecoder decodeObjectForKey:@"desc"];
		self.recommend_type = [aDecoder decodeObjectForKey:@"recommend_type"];
		self.collection_tag_imgurl = [aDecoder decodeObjectForKey:@"collection_tag_imgurl"];
		self.is_favour = [aDecoder decodeObjectForKey:@"is_favour"];
		self.favour_count = [aDecoder decodeObjectForKey:@"favour_count"];
		self.name = [aDecoder decodeObjectForKey:@"name"];
	}
	return self;
}

- (NSString *)description{
	return [NSString stringWithFormat:@"Myid=%@,readcount=%@,imgurl=%@,cir_id=%@,replycount=%@,url=%@,desc=%@,recommend_type=%@,collection_tag_imgurl=%@,is_favour=%@,favour_count=%@,name=%@",_Myid,_readcount,_imgurl,_cir_id,_replycount,_url,_desc,_recommend_type,_collection_tag_imgurl,_is_favour,_favour_count,_name];
}



@end
@implementation LLitem_infoModel

- (void)setValue:(id)value forKey:(NSString *)key{
	if ([value isKindOfClass:[NSNumber class]]) {
		[self setValue:[NSString stringWithFormat:@"%@",value] forKey:key];
	}else{
		[super setValue:value forKey:key];
	}
}

- (void)setValue:(id)value forUndefinedKey:(NSString *)key{
	if ([key isEqualToString:@"item_img_list"]) {
		for (id obj in value) {
			[self.Myitem_img_list addObject:obj];
		}
	}
}

-(id)valueForUndefinedKey:(NSString *)key{
	NSLog(@"error: LLitem_infoModel数据模型中:未找到key = %@",key);
	return nil;
}

- (void)encodeWithCoder:(NSCoder *)aCoder{
	[aCoder encodeObject:self.readcount forKey:@"readcount"];
	[aCoder encodeObject:self.item_update_time forKey:@"item_update_time"];
	[aCoder encodeObject:self.expire_time forKey:@"expire_time"];
	[aCoder encodeObject:self.ori_price forKey:@"ori_price"];
	[aCoder encodeObject:self.from_answer forKey:@"from_answer"];
	[aCoder encodeObject:self.ship_area forKey:@"ship_area"];
	[aCoder encodeObject:self.item_tag forKey:@"item_tag"];
	[aCoder encodeObject:self.platform forKey:@"platform"];
	[aCoder encodeObject:self.item_imgurl forKey:@"item_imgurl"];
	[aCoder encodeObject:self.item_name forKey:@"item_name"];
	[aCoder encodeObject:self.ship_transmit_fee forKey:@"ship_transmit_fee"];
	[aCoder encodeObject:self.ship_tax forKey:@"ship_tax"];
	[aCoder encodeObject:self.item_id forKey:@"item_id"];
	[aCoder encodeObject:self.hidden forKey:@"hidden"];
	[aCoder encodeObject:self.ship_time forKey:@"ship_time"];
	[aCoder encodeObject:self.brand_id forKey:@"brand_id"];
	[aCoder encodeObject:self.backend_id forKey:@"backend_id"];
	[aCoder encodeObject:self.sellcount forKey:@"sellcount"];
	[aCoder encodeObject:self.item_desc forKey:@"item_desc"];
	[aCoder encodeObject:self.brand forKey:@"brand"];
	[aCoder encodeObject:self.need_idcard forKey:@"need_idcard"];
	[aCoder encodeObject:self.ship_method forKey:@"ship_method"];
	[aCoder encodeObject:self.ship_country forKey:@"ship_country"];
	[aCoder encodeObject:self.prepare_sku forKey:@"prepare_sku"];
	[aCoder encodeObject:self.sell_point forKey:@"sell_point"];
	[aCoder encodeObject:self.ship_fee forKey:@"ship_fee"];
	[aCoder encodeObject:self.price forKey:@"price"];
	[aCoder encodeObject:self.item_created_at forKey:@"item_created_at"];
	[aCoder encodeObject:self.item_mark forKey:@"item_mark"];
	[aCoder encodeObject:self.item_location forKey:@"item_location"];
	[aCoder encodeObject:self.item_comments forKey:@"item_comments"];
	[aCoder encodeObject:self.seller_uid forKey:@"seller_uid"];
	[aCoder encodeObject:self.size_table_str forKey:@"size_table_str"];
	[aCoder encodeObject:self.item_insale forKey:@"item_insale"];
	[aCoder encodeObject:self.seller_id forKey:@"seller_id"];
	[aCoder encodeObject:self.stock forKey:@"stock"];
	[aCoder encodeObject:self.item_tag_id forKey:@"item_tag_id"];
	[aCoder encodeObject:self.item_ori_url forKey:@"item_ori_url"];
	[aCoder encodeObject:self.buyurl forKey:@"buyurl"];
	[aCoder encodeObject:self.size_table_imgurl forKey:@"size_table_imgurl"];
	[aCoder encodeObject:self.class_id forKey:@"class_id"];
	[aCoder encodeObject:self.is_hot forKey:@"is_hot"];
	[aCoder encodeObject:self.Myitem_img_list forKey:@"Myitem_img_list"];
}

- (id)initWithCoder:(NSCoder *)aDecoder{
	if (self = [super init]) {
		self.readcount = [aDecoder decodeObjectForKey:@"readcount"];
		self.item_update_time = [aDecoder decodeObjectForKey:@"item_update_time"];
		self.expire_time = [aDecoder decodeObjectForKey:@"expire_time"];
		self.ori_price = [aDecoder decodeObjectForKey:@"ori_price"];
		self.from_answer = [aDecoder decodeObjectForKey:@"from_answer"];
		self.ship_area = [aDecoder decodeObjectForKey:@"ship_area"];
		self.item_tag = [aDecoder decodeObjectForKey:@"item_tag"];
		self.platform = [aDecoder decodeObjectForKey:@"platform"];
		self.item_imgurl = [aDecoder decodeObjectForKey:@"item_imgurl"];
		self.item_name = [aDecoder decodeObjectForKey:@"item_name"];
		self.ship_transmit_fee = [aDecoder decodeObjectForKey:@"ship_transmit_fee"];
		self.ship_tax = [aDecoder decodeObjectForKey:@"ship_tax"];
		self.item_id = [aDecoder decodeObjectForKey:@"item_id"];
		self.hidden = [aDecoder decodeObjectForKey:@"hidden"];
		self.ship_time = [aDecoder decodeObjectForKey:@"ship_time"];
		self.brand_id = [aDecoder decodeObjectForKey:@"brand_id"];
		self.backend_id = [aDecoder decodeObjectForKey:@"backend_id"];
		self.sellcount = [aDecoder decodeObjectForKey:@"sellcount"];
		self.item_desc = [aDecoder decodeObjectForKey:@"item_desc"];
		self.brand = [aDecoder decodeObjectForKey:@"brand"];
		self.need_idcard = [aDecoder decodeObjectForKey:@"need_idcard"];
		self.ship_method = [aDecoder decodeObjectForKey:@"ship_method"];
		self.ship_country = [aDecoder decodeObjectForKey:@"ship_country"];
		self.prepare_sku = [aDecoder decodeObjectForKey:@"prepare_sku"];
		self.sell_point = [aDecoder decodeObjectForKey:@"sell_point"];
		self.ship_fee = [aDecoder decodeObjectForKey:@"ship_fee"];
		self.price = [aDecoder decodeObjectForKey:@"price"];
		self.item_created_at = [aDecoder decodeObjectForKey:@"item_created_at"];
		self.item_mark = [aDecoder decodeObjectForKey:@"item_mark"];
		self.item_location = [aDecoder decodeObjectForKey:@"item_location"];
		self.item_comments = [aDecoder decodeObjectForKey:@"item_comments"];
		self.seller_uid = [aDecoder decodeObjectForKey:@"seller_uid"];
		self.size_table_str = [aDecoder decodeObjectForKey:@"size_table_str"];
		self.item_insale = [aDecoder decodeObjectForKey:@"item_insale"];
		self.seller_id = [aDecoder decodeObjectForKey:@"seller_id"];
		self.stock = [aDecoder decodeObjectForKey:@"stock"];
		self.item_tag_id = [aDecoder decodeObjectForKey:@"item_tag_id"];
		self.item_ori_url = [aDecoder decodeObjectForKey:@"item_ori_url"];
		self.buyurl = [aDecoder decodeObjectForKey:@"buyurl"];
		self.size_table_imgurl = [aDecoder decodeObjectForKey:@"size_table_imgurl"];
		self.class_id = [aDecoder decodeObjectForKey:@"class_id"];
		self.is_hot = [aDecoder decodeObjectForKey:@"is_hot"];
		self.Myitem_img_list = [aDecoder decodeObjectForKey:@"Myitem_img_list"];
	}
	return self;
}

- (NSString *)description{
	return [NSString stringWithFormat:@"readcount=%@,item_update_time=%@,expire_time=%@,ori_price=%@,from_answer=%@,ship_area=%@,item_tag=%@,platform=%@,item_imgurl=%@,item_name=%@,ship_transmit_fee=%@,ship_tax=%@,item_id=%@,hidden=%@,ship_time=%@,brand_id=%@,backend_id=%@,sellcount=%@,item_desc=%@,brand=%@,need_idcard=%@,ship_method=%@,ship_country=%@,prepare_sku=%@,sell_point=%@,ship_fee=%@,price=%@,item_created_at=%@,item_mark=%@,item_location=%@,item_comments=%@,seller_uid=%@,size_table_str=%@,item_insale=%@,seller_id=%@,stock=%@,item_tag_id=%@,item_ori_url=%@,buyurl=%@,size_table_imgurl=%@,class_id=%@,is_hot=%@,Myitem_img_list=%@",_readcount,_item_update_time,_expire_time,_ori_price,_from_answer,_ship_area,_item_tag,_platform,_item_imgurl,_item_name,_ship_transmit_fee,_ship_tax,_item_id,_hidden,_ship_time,_brand_id,_backend_id,_sellcount,_item_desc,_brand,_need_idcard,_ship_method,_ship_country,_prepare_sku,_sell_point,_ship_fee,_price,_item_created_at,_item_mark,_item_location,_item_comments,_seller_uid,_size_table_str,_item_insale,_seller_id,_stock,_item_tag_id,_item_ori_url,_buyurl,_size_table_imgurl,_class_id,_is_hot,_Myitem_img_list];
}



@end
@implementation LLcollectionModel

- (NSMutableArray *)Myrelate_collection{
	if(!_Myrelate_collection){
		_Myrelate_collection=[[NSMutableArray alloc]init];
	}
	return _Myrelate_collection;
}

- (NSMutableArray *)Myitem_info{
	if(!_Myitem_info){
		_Myitem_info=[[NSMutableArray alloc]init];
	}
	return _Myitem_info;
}

- (void)setValue:(id)value forKey:(NSString *)key{
	if ([value isKindOfClass:[NSNumber class]]) {
		[self setValue:[NSString stringWithFormat:@"%@",value] forKey:key];
	}else{
		[super setValue:value forKey:key];
	}
}

- (void)setValue:(id)value forUndefinedKey:(NSString *)key{
	if ([key isEqualToString:@"relate_collection"]) {
		for (NSDictionary *dic in value) {
			LLrelate_collectionModel *model = [LLrelate_collectionModel new];
			[model setValuesForKeysWithDictionary:dic];
			[self.Myrelate_collection addObject:model];
		}
	}
	else if ([key isEqualToString:@"item_info"]) {
		for (NSDictionary *dic in value) {
			LLitem_infoModel *model = [LLitem_infoModel new];
			[model setValuesForKeysWithDictionary:dic];
			[self.Myitem_info addObject:model];
		}
	}
	else if ([key isEqualToString:@"reply_info"]) {
		for (id obj in value) {
			[self.Myreply_info addObject:obj];
		}
	}
	else if ([key isEqualToString:@"circle_info"]) {
		LLcircle_infoModel *model = [LLcircle_infoModel new];
		[model setValuesForKeysWithDictionary:value];
		self.circle_info = model;
	}
	else if ([key isEqualToString:@"collection_info"]) {
		LLcollection_infoModel *model = [LLcollection_infoModel new];
		[model setValuesForKeysWithDictionary:value];
		self.collection_info = model;
	}
}

-(id)valueForUndefinedKey:(NSString *)key{
	NSLog(@"error: LLcollectionModel数据模型中:未找到key = %@",key);
	return nil;
}

- (void)encodeWithCoder:(NSCoder *)aCoder{
	[aCoder encodeObject:self.t_push_time forKey:@"t_push_time"];
	[aCoder encodeObject:self.recommend_type forKey:@"recommend_type"];
	[aCoder encodeObject:self.circle_info forKey:@"circle_info"];
	[aCoder encodeObject:self.Myrelate_collection forKey:@"Myrelate_collection"];
	[aCoder encodeObject:self.collection_info forKey:@"collection_info"];
	[aCoder encodeObject:self.Myitem_info forKey:@"Myitem_info"];
	[aCoder encodeObject:self.Myreply_info forKey:@"Myreply_info"];
}

- (id)initWithCoder:(NSCoder *)aDecoder{
	if (self = [super init]) {
		self.t_push_time = [aDecoder decodeObjectForKey:@"t_push_time"];
		self.recommend_type = [aDecoder decodeObjectForKey:@"recommend_type"];
		self.circle_info = [aDecoder decodeObjectForKey:@"circle_info"];
		self.Myrelate_collection = [aDecoder decodeObjectForKey:@"Myrelate_collection"];
		self.collection_info = [aDecoder decodeObjectForKey:@"collection_info"];
		self.Myitem_info = [aDecoder decodeObjectForKey:@"Myitem_info"];
		self.Myreply_info = [aDecoder decodeObjectForKey:@"Myreply_info"];
	}
	return self;
}

- (NSString *)description{
	return [NSString stringWithFormat:@"t_push_time=%@,recommend_type=%@,circle_info=%@,Myrelate_collection=%@,collection_info=%@,Myitem_info=%@,Myreply_info=%@",_t_push_time,_recommend_type,_circle_info,_Myrelate_collection,_collection_info,_Myitem_info,_Myreply_info];
}



@end
@implementation LLitem_listModel

- (void)setValue:(id)value forKey:(NSString *)key{
	if ([value isKindOfClass:[NSNumber class]]) {
		[self setValue:[NSString stringWithFormat:@"%@",value] forKey:key];
	}else{
		[super setValue:value forKey:key];
	}
}

- (void)setValue:(id)value forUndefinedKey:(NSString *)key{
}

-(id)valueForUndefinedKey:(NSString *)key{
	NSLog(@"error: LLitem_listModel数据模型中:未找到key = %@",key);
	return nil;
}

- (void)encodeWithCoder:(NSCoder *)aCoder{
	[aCoder encodeObject:self.sort_rate forKey:@"sort_rate"];
	[aCoder encodeObject:self.tag_imgurl forKey:@"tag_imgurl"];
	[aCoder encodeObject:self.item_desc forKey:@"item_desc"];
	[aCoder encodeObject:self.sort_score forKey:@"sort_score"];
	[aCoder encodeObject:self.open forKey:@"open"];
	[aCoder encodeObject:self.item_count forKey:@"item_count"];
	[aCoder encodeObject:self.item_title forKey:@"item_title"];
	[aCoder encodeObject:self.item_imgurl forKey:@"item_imgurl"];
	[aCoder encodeObject:self.item_end forKey:@"item_end"];
	[aCoder encodeObject:self.item_num forKey:@"item_num"];
}

- (id)initWithCoder:(NSCoder *)aDecoder{
	if (self = [super init]) {
		self.sort_rate = [aDecoder decodeObjectForKey:@"sort_rate"];
		self.tag_imgurl = [aDecoder decodeObjectForKey:@"tag_imgurl"];
		self.item_desc = [aDecoder decodeObjectForKey:@"item_desc"];
		self.sort_score = [aDecoder decodeObjectForKey:@"sort_score"];
		self.open = [aDecoder decodeObjectForKey:@"open"];
		self.item_count = [aDecoder decodeObjectForKey:@"item_count"];
		self.item_title = [aDecoder decodeObjectForKey:@"item_title"];
		self.item_imgurl = [aDecoder decodeObjectForKey:@"item_imgurl"];
		self.item_end = [aDecoder decodeObjectForKey:@"item_end"];
		self.item_num = [aDecoder decodeObjectForKey:@"item_num"];
	}
	return self;
}

- (NSString *)description{
	return [NSString stringWithFormat:@"sort_rate=%@,tag_imgurl=%@,item_desc=%@,sort_score=%@,open=%@,item_count=%@,item_title=%@,item_imgurl=%@,item_end=%@,item_num=%@",_sort_rate,_tag_imgurl,_item_desc,_sort_score,_open,_item_count,_item_title,_item_imgurl,_item_end,_item_num];
}



@end
@implementation LLbanner_listModel

- (void)setValue:(id)value forKey:(NSString *)key{
	if ([value isKindOfClass:[NSNumber class]]) {
		[self setValue:[NSString stringWithFormat:@"%@",value] forKey:key];
	}else{
		[super setValue:value forKey:key];
	}
}

- (void)setValue:(id)value forUndefinedKey:(NSString *)key{
}

-(id)valueForUndefinedKey:(NSString *)key{
	NSLog(@"error: LLbanner_listModel数据模型中:未找到key = %@",key);
	return nil;
}

- (void)encodeWithCoder:(NSCoder *)aCoder{
	[aCoder encodeObject:self.banner_imgurl forKey:@"banner_imgurl"];
	[aCoder encodeObject:self.p_type forKey:@"p_type"];
	[aCoder encodeObject:self.item_id forKey:@"item_id"];
	[aCoder encodeObject:self.open forKey:@"open"];
}

- (id)initWithCoder:(NSCoder *)aDecoder{
	if (self = [super init]) {
		self.banner_imgurl = [aDecoder decodeObjectForKey:@"banner_imgurl"];
		self.p_type = [aDecoder decodeObjectForKey:@"p_type"];
		self.item_id = [aDecoder decodeObjectForKey:@"item_id"];
		self.open = [aDecoder decodeObjectForKey:@"open"];
	}
	return self;
}

- (NSString *)description{
	return [NSString stringWithFormat:@"banner_imgurl=%@,p_type=%@,item_id=%@,open=%@",_banner_imgurl,_p_type,_item_id,_open];
}



@end
@implementation LLtopModel

- (NSMutableArray *)Myitem_list{
	if(!_Myitem_list){
		_Myitem_list=[[NSMutableArray alloc]init];
	}
	return _Myitem_list;
}

- (NSMutableArray *)Mybanner_list{
	if(!_Mybanner_list){
		_Mybanner_list=[[NSMutableArray alloc]init];
	}
	return _Mybanner_list;
}

- (void)setValue:(id)value forKey:(NSString *)key{
	if ([value isKindOfClass:[NSNumber class]]) {
		[self setValue:[NSString stringWithFormat:@"%@",value] forKey:key];
	}else{
		[super setValue:value forKey:key];
	}
}

- (void)setValue:(id)value forUndefinedKey:(NSString *)key{
	if ([key isEqualToString:@"item_list"]) {
		for (NSDictionary *dic in value) {
			LLitem_listModel *model = [LLitem_listModel new];
			[model setValuesForKeysWithDictionary:dic];
			[self.Myitem_list addObject:model];
		}
	}
	else if ([key isEqualToString:@"banner_list"]) {
		for (NSDictionary *dic in value) {
			LLbanner_listModel *model = [LLbanner_listModel new];
			[model setValuesForKeysWithDictionary:dic];
			[self.Mybanner_list addObject:model];
		}
	}
}

-(id)valueForUndefinedKey:(NSString *)key{
	NSLog(@"error: LLtopModel数据模型中:未找到key = %@",key);
	return nil;
}

- (void)encodeWithCoder:(NSCoder *)aCoder{
	[aCoder encodeObject:self.recommend_type forKey:@"recommend_type"];
	[aCoder encodeObject:self.Myitem_list forKey:@"Myitem_list"];
	[aCoder encodeObject:self.Mybanner_list forKey:@"Mybanner_list"];
}

- (id)initWithCoder:(NSCoder *)aDecoder{
	if (self = [super init]) {
		self.recommend_type = [aDecoder decodeObjectForKey:@"recommend_type"];
		self.Myitem_list = [aDecoder decodeObjectForKey:@"Myitem_list"];
		self.Mybanner_list = [aDecoder decodeObjectForKey:@"Mybanner_list"];
	}
	return self;
}

- (NSString *)description{
	return [NSString stringWithFormat:@"recommend_type=%@,Myitem_list=%@,Mybanner_list=%@",_recommend_type,_Myitem_list,_Mybanner_list];
}



@end
@implementation LLdailyModel

- (void)setValue:(id)value forKey:(NSString *)key{
	if ([value isKindOfClass:[NSNumber class]]) {
		[self setValue:[NSString stringWithFormat:@"%@",value] forKey:key];
	}else{
		[super setValue:value forKey:key];
	}
}

- (void)setValue:(id)value forUndefinedKey:(NSString *)key{
}

-(id)valueForUndefinedKey:(NSString *)key{
	NSLog(@"error: LLdailyModel数据模型中:未找到key = %@",key);
	return nil;
}

- (void)encodeWithCoder:(NSCoder *)aCoder{
	[aCoder encodeObject:self.daily_imgurl forKey:@"daily_imgurl"];
	[aCoder encodeObject:self.daily_time forKey:@"daily_time"];
	[aCoder encodeObject:self.daily_title forKey:@"daily_title"];
	[aCoder encodeObject:self.daily_cirimg forKey:@"daily_cirimg"];
	[aCoder encodeObject:self.daily_indeximg forKey:@"daily_indeximg"];
	[aCoder encodeObject:self.recommend_type forKey:@"recommend_type"];
	[aCoder encodeObject:self.daily_url forKey:@"daily_url"];
	[aCoder encodeObject:self.daily_id forKey:@"daily_id"];
	[aCoder encodeObject:self.daily_desc forKey:@"daily_desc"];
	[aCoder encodeObject:self.daily_likecount forKey:@"daily_likecount"];
	[aCoder encodeObject:self.daily_readcount forKey:@"daily_readcount"];
	[aCoder encodeObject:self.daily_ispublic forKey:@"daily_ispublic"];
}

- (id)initWithCoder:(NSCoder *)aDecoder{
	if (self = [super init]) {
		self.daily_imgurl = [aDecoder decodeObjectForKey:@"daily_imgurl"];
		self.daily_time = [aDecoder decodeObjectForKey:@"daily_time"];
		self.daily_title = [aDecoder decodeObjectForKey:@"daily_title"];
		self.daily_cirimg = [aDecoder decodeObjectForKey:@"daily_cirimg"];
		self.daily_indeximg = [aDecoder decodeObjectForKey:@"daily_indeximg"];
		self.recommend_type = [aDecoder decodeObjectForKey:@"recommend_type"];
		self.daily_url = [aDecoder decodeObjectForKey:@"daily_url"];
		self.daily_id = [aDecoder decodeObjectForKey:@"daily_id"];
		self.daily_desc = [aDecoder decodeObjectForKey:@"daily_desc"];
		self.daily_likecount = [aDecoder decodeObjectForKey:@"daily_likecount"];
		self.daily_readcount = [aDecoder decodeObjectForKey:@"daily_readcount"];
		self.daily_ispublic = [aDecoder decodeObjectForKey:@"daily_ispublic"];
	}
	return self;
}

- (NSString *)description{
	return [NSString stringWithFormat:@"daily_imgurl=%@,daily_time=%@,daily_title=%@,daily_cirimg=%@,daily_indeximg=%@,recommend_type=%@,daily_url=%@,daily_id=%@,daily_desc=%@,daily_likecount=%@,daily_readcount=%@,daily_ispublic=%@",_daily_imgurl,_daily_time,_daily_title,_daily_cirimg,_daily_indeximg,_recommend_type,_daily_url,_daily_id,_daily_desc,_daily_likecount,_daily_readcount,_daily_ispublic];
}



@end
@implementation LLcircleModel

- (void)setValue:(id)value forKey:(NSString *)key{
	if ([value isKindOfClass:[NSNumber class]]) {
		[self setValue:[NSString stringWithFormat:@"%@",value] forKey:key];
	}else{
		[super setValue:value forKey:key];
	}
}

- (void)setValue:(id)value forUndefinedKey:(NSString *)key{
}

-(id)valueForUndefinedKey:(NSString *)key{
	NSLog(@"error: LLcircleModel数据模型中:未找到key = %@",key);
	return nil;
}

- (void)encodeWithCoder:(NSCoder *)aCoder{
	[aCoder encodeObject:self.cir_name forKey:@"cir_name"];
	[aCoder encodeObject:self.owner_id forKey:@"owner_id"];
	[aCoder encodeObject:self.class_id forKey:@"class_id"];
	[aCoder encodeObject:self.cir_logo forKey:@"cir_logo"];
	[aCoder encodeObject:self.cir_time forKey:@"cir_time"];
	[aCoder encodeObject:self.cir_themecount forKey:@"cir_themecount"];
	[aCoder encodeObject:self.cir_type forKey:@"cir_type"];
	[aCoder encodeObject:self.cir_score forKey:@"cir_score"];
	[aCoder encodeObject:self.cir_minbanner forKey:@"cir_minbanner"];
	[aCoder encodeObject:self.cir_long_description forKey:@"cir_long_description"];
	[aCoder encodeObject:self.cir_banner_t_id forKey:@"cir_banner_t_id"];
	[aCoder encodeObject:self.cir_wx forKey:@"cir_wx"];
	[aCoder encodeObject:self.cir_description forKey:@"cir_description"];
	[aCoder encodeObject:self.cir_is_recommend forKey:@"cir_is_recommend"];
	[aCoder encodeObject:self.cir_ispublic forKey:@"cir_ispublic"];
	[aCoder encodeObject:self.cir_id forKey:@"cir_id"];
	[aCoder encodeObject:self.cir_banner forKey:@"cir_banner"];
	[aCoder encodeObject:self.cir_isofficial forKey:@"cir_isofficial"];
	[aCoder encodeObject:self.cir_wb forKey:@"cir_wb"];
	[aCoder encodeObject:self.cir_web forKey:@"cir_web"];
}

- (id)initWithCoder:(NSCoder *)aDecoder{
	if (self = [super init]) {
		self.cir_name = [aDecoder decodeObjectForKey:@"cir_name"];
		self.owner_id = [aDecoder decodeObjectForKey:@"owner_id"];
		self.class_id = [aDecoder decodeObjectForKey:@"class_id"];
		self.cir_logo = [aDecoder decodeObjectForKey:@"cir_logo"];
		self.cir_time = [aDecoder decodeObjectForKey:@"cir_time"];
		self.cir_themecount = [aDecoder decodeObjectForKey:@"cir_themecount"];
		self.cir_type = [aDecoder decodeObjectForKey:@"cir_type"];
		self.cir_score = [aDecoder decodeObjectForKey:@"cir_score"];
		self.cir_minbanner = [aDecoder decodeObjectForKey:@"cir_minbanner"];
		self.cir_long_description = [aDecoder decodeObjectForKey:@"cir_long_description"];
		self.cir_banner_t_id = [aDecoder decodeObjectForKey:@"cir_banner_t_id"];
		self.cir_wx = [aDecoder decodeObjectForKey:@"cir_wx"];
		self.cir_description = [aDecoder decodeObjectForKey:@"cir_description"];
		self.cir_is_recommend = [aDecoder decodeObjectForKey:@"cir_is_recommend"];
		self.cir_ispublic = [aDecoder decodeObjectForKey:@"cir_ispublic"];
		self.cir_id = [aDecoder decodeObjectForKey:@"cir_id"];
		self.cir_banner = [aDecoder decodeObjectForKey:@"cir_banner"];
		self.cir_isofficial = [aDecoder decodeObjectForKey:@"cir_isofficial"];
		self.cir_wb = [aDecoder decodeObjectForKey:@"cir_wb"];
		self.cir_web = [aDecoder decodeObjectForKey:@"cir_web"];
	}
	return self;
}

- (NSString *)description{
	return [NSString stringWithFormat:@"cir_name=%@,owner_id=%@,class_id=%@,cir_logo=%@,cir_time=%@,cir_themecount=%@,cir_type=%@,cir_score=%@,cir_minbanner=%@,cir_long_description=%@,cir_banner_t_id=%@,cir_wx=%@,cir_description=%@,cir_is_recommend=%@,cir_ispublic=%@,cir_id=%@,cir_banner=%@,cir_isofficial=%@,cir_wb=%@,cir_web=%@",_cir_name,_owner_id,_class_id,_cir_logo,_cir_time,_cir_themecount,_cir_type,_cir_score,_cir_minbanner,_cir_long_description,_cir_banner_t_id,_cir_wx,_cir_description,_cir_is_recommend,_cir_ispublic,_cir_id,_cir_banner,_cir_isofficial,_cir_wb,_cir_web];
}



@end
@implementation LLfindModel

- (void)setValue:(id)value forKey:(NSString *)key{
	if ([value isKindOfClass:[NSNumber class]]) {
		[self setValue:[NSString stringWithFormat:@"%@",value] forKey:key];
	}else{
		[super setValue:value forKey:key];
	}
}

- (void)setValue:(id)value forUndefinedKey:(NSString *)key{
}

-(id)valueForUndefinedKey:(NSString *)key{
	NSLog(@"error: LLfindModel数据模型中:未找到key = %@",key);
	return nil;
}

- (void)encodeWithCoder:(NSCoder *)aCoder{
	[aCoder encodeObject:self.prepare_sku forKey:@"prepare_sku"];
	[aCoder encodeObject:self.f_imgurl forKey:@"f_imgurl"];
	[aCoder encodeObject:self.ship_area forKey:@"ship_area"];
	[aCoder encodeObject:self.f_recommend_type forKey:@"f_recommend_type"];
	[aCoder encodeObject:self.unstable_stock forKey:@"unstable_stock"];
	[aCoder encodeObject:self.seller_uid forKey:@"seller_uid"];
	[aCoder encodeObject:self.isfollow forKey:@"isfollow"];
	[aCoder encodeObject:self.f_id forKey:@"f_id"];
	[aCoder encodeObject:self.f_ori_price forKey:@"f_ori_price"];
	[aCoder encodeObject:self.item_supply forKey:@"item_supply"];
	[aCoder encodeObject:self.f_time forKey:@"f_time"];
	[aCoder encodeObject:self.f_brand forKey:@"f_brand"];
	[aCoder encodeObject:self.f_buyurl forKey:@"f_buyurl"];
	[aCoder encodeObject:self.item_price forKey:@"item_price"];
	[aCoder encodeObject:self.item_id forKey:@"item_id"];
	[aCoder encodeObject:self.adminfollow forKey:@"adminfollow"];
	[aCoder encodeObject:self.brand_name forKey:@"brand_name"];
	[aCoder encodeObject:self.f_followcount forKey:@"f_followcount"];
	[aCoder encodeObject:self.f_ori_buyurl forKey:@"f_ori_buyurl"];
	[aCoder encodeObject:self.f_price forKey:@"f_price"];
}

- (id)initWithCoder:(NSCoder *)aDecoder{
	if (self = [super init]) {
		self.prepare_sku = [aDecoder decodeObjectForKey:@"prepare_sku"];
		self.f_imgurl = [aDecoder decodeObjectForKey:@"f_imgurl"];
		self.ship_area = [aDecoder decodeObjectForKey:@"ship_area"];
		self.f_recommend_type = [aDecoder decodeObjectForKey:@"f_recommend_type"];
		self.unstable_stock = [aDecoder decodeObjectForKey:@"unstable_stock"];
		self.seller_uid = [aDecoder decodeObjectForKey:@"seller_uid"];
		self.isfollow = [aDecoder decodeObjectForKey:@"isfollow"];
		self.f_id = [aDecoder decodeObjectForKey:@"f_id"];
		self.f_ori_price = [aDecoder decodeObjectForKey:@"f_ori_price"];
		self.item_supply = [aDecoder decodeObjectForKey:@"item_supply"];
		self.f_time = [aDecoder decodeObjectForKey:@"f_time"];
		self.f_brand = [aDecoder decodeObjectForKey:@"f_brand"];
		self.f_buyurl = [aDecoder decodeObjectForKey:@"f_buyurl"];
		self.item_price = [aDecoder decodeObjectForKey:@"item_price"];
		self.item_id = [aDecoder decodeObjectForKey:@"item_id"];
		self.adminfollow = [aDecoder decodeObjectForKey:@"adminfollow"];
		self.brand_name = [aDecoder decodeObjectForKey:@"brand_name"];
		self.f_followcount = [aDecoder decodeObjectForKey:@"f_followcount"];
		self.f_ori_buyurl = [aDecoder decodeObjectForKey:@"f_ori_buyurl"];
		self.f_price = [aDecoder decodeObjectForKey:@"f_price"];
	}
	return self;
}

- (NSString *)description{
	return [NSString stringWithFormat:@"prepare_sku=%@,f_imgurl=%@,ship_area=%@,f_recommend_type=%@,unstable_stock=%@,seller_uid=%@,isfollow=%@,f_id=%@,f_ori_price=%@,item_supply=%@,f_time=%@,f_brand=%@,f_buyurl=%@,item_price=%@,item_id=%@,adminfollow=%@,brand_name=%@,f_followcount=%@,f_ori_buyurl=%@,f_price=%@",_prepare_sku,_f_imgurl,_ship_area,_f_recommend_type,_unstable_stock,_seller_uid,_isfollow,_f_id,_f_ori_price,_item_supply,_f_time,_f_brand,_f_buyurl,_item_price,_item_id,_adminfollow,_brand_name,_f_followcount,_f_ori_buyurl,_f_price];
}



@end
@implementation LLthemeModel

- (NSMutableArray *)Myfind{
	if(!_Myfind){
		_Myfind=[[NSMutableArray alloc]init];
	}
	return _Myfind;
}

- (void)setValue:(id)value forKey:(NSString *)key{
	if ([value isKindOfClass:[NSNumber class]]) {
		[self setValue:[NSString stringWithFormat:@"%@",value] forKey:key];
	}else{
		[super setValue:value forKey:key];
	}
}

- (void)setValue:(id)value forUndefinedKey:(NSString *)key{
	if ([key isEqualToString:@"find"]) {
		for (NSDictionary *dic in value) {
			LLfindModel *model = [LLfindModel new];
			[model setValuesForKeysWithDictionary:dic];
			[self.Myfind addObject:model];
		}
	}
	else if ([key isEqualToString:@"circle"]) {
		LLcircleModel *model = [LLcircleModel new];
		[model setValuesForKeysWithDictionary:value];
		self.circle = model;
	}
}

-(id)valueForUndefinedKey:(NSString *)key{
	NSLog(@"error: LLthemeModel数据模型中:未找到key = %@",key);
	return nil;
}

- (void)encodeWithCoder:(NSCoder *)aCoder{
	[aCoder encodeObject:self.o_name forKey:@"o_name"];
	[aCoder encodeObject:self.u_headimg forKey:@"u_headimg"];
	[aCoder encodeObject:self.u_isdaren forKey:@"u_isdaren"];
	[aCoder encodeObject:self.t_time forKey:@"t_time"];
	[aCoder encodeObject:self.t_title forKey:@"t_title"];
	[aCoder encodeObject:self.ud_id forKey:@"ud_id"];
	[aCoder encodeObject:self.u_username forKey:@"u_username"];
	[aCoder encodeObject:self.ud_desc forKey:@"ud_desc"];
	[aCoder encodeObject:self.cy_id forKey:@"cy_id"];
	[aCoder encodeObject:self.style_id forKey:@"style_id"];
	[aCoder encodeObject:self.u_id forKey:@"u_id"];
	[aCoder encodeObject:self.t_style_created_at forKey:@"t_style_created_at"];
	[aCoder encodeObject:self.t_price forKey:@"t_price"];
	[aCoder encodeObject:self.t_findcount forKey:@"t_findcount"];
	[aCoder encodeObject:self.t_hunttype forKey:@"t_hunttype"];
	[aCoder encodeObject:self.t_id forKey:@"t_id"];
	[aCoder encodeObject:self.t_push_time forKey:@"t_push_time"];
	[aCoder encodeObject:self.t_tmp_circle forKey:@"t_tmp_circle"];
	[aCoder encodeObject:self.t_followcount forKey:@"t_followcount"];
	[aCoder encodeObject:self.ud_isrelate forKey:@"ud_isrelate"];
	[aCoder encodeObject:self.cir_id forKey:@"cir_id"];
	[aCoder encodeObject:self.ud_ispgc forKey:@"ud_ispgc"];
	[aCoder encodeObject:self.u_tag forKey:@"u_tag"];
	[aCoder encodeObject:self.recommend_type forKey:@"recommend_type"];
	[aCoder encodeObject:self.is_hide_circle forKey:@"is_hide_circle"];
	[aCoder encodeObject:self.t_istop forKey:@"t_istop"];
	[aCoder encodeObject:self.t_imgurl forKey:@"t_imgurl"];
	[aCoder encodeObject:self.circle forKey:@"circle"];
	[aCoder encodeObject:self.Myfind forKey:@"Myfind"];
}

- (id)initWithCoder:(NSCoder *)aDecoder{
	if (self = [super init]) {
		self.o_name = [aDecoder decodeObjectForKey:@"o_name"];
		self.u_headimg = [aDecoder decodeObjectForKey:@"u_headimg"];
		self.u_isdaren = [aDecoder decodeObjectForKey:@"u_isdaren"];
		self.t_time = [aDecoder decodeObjectForKey:@"t_time"];
		self.t_title = [aDecoder decodeObjectForKey:@"t_title"];
		self.ud_id = [aDecoder decodeObjectForKey:@"ud_id"];
		self.u_username = [aDecoder decodeObjectForKey:@"u_username"];
		self.ud_desc = [aDecoder decodeObjectForKey:@"ud_desc"];
		self.cy_id = [aDecoder decodeObjectForKey:@"cy_id"];
		self.style_id = [aDecoder decodeObjectForKey:@"style_id"];
		self.u_id = [aDecoder decodeObjectForKey:@"u_id"];
		self.t_style_created_at = [aDecoder decodeObjectForKey:@"t_style_created_at"];
		self.t_price = [aDecoder decodeObjectForKey:@"t_price"];
		self.t_findcount = [aDecoder decodeObjectForKey:@"t_findcount"];
		self.t_hunttype = [aDecoder decodeObjectForKey:@"t_hunttype"];
		self.t_id = [aDecoder decodeObjectForKey:@"t_id"];
		self.t_push_time = [aDecoder decodeObjectForKey:@"t_push_time"];
		self.t_tmp_circle = [aDecoder decodeObjectForKey:@"t_tmp_circle"];
		self.t_followcount = [aDecoder decodeObjectForKey:@"t_followcount"];
		self.ud_isrelate = [aDecoder decodeObjectForKey:@"ud_isrelate"];
		self.cir_id = [aDecoder decodeObjectForKey:@"cir_id"];
		self.ud_ispgc = [aDecoder decodeObjectForKey:@"ud_ispgc"];
		self.u_tag = [aDecoder decodeObjectForKey:@"u_tag"];
		self.recommend_type = [aDecoder decodeObjectForKey:@"recommend_type"];
		self.is_hide_circle = [aDecoder decodeObjectForKey:@"is_hide_circle"];
		self.t_istop = [aDecoder decodeObjectForKey:@"t_istop"];
		self.t_imgurl = [aDecoder decodeObjectForKey:@"t_imgurl"];
		self.circle = [aDecoder decodeObjectForKey:@"circle"];
		self.Myfind = [aDecoder decodeObjectForKey:@"Myfind"];
	}
	return self;
}

- (NSString *)description{
	return [NSString stringWithFormat:@"o_name=%@,u_headimg=%@,u_isdaren=%@,t_time=%@,t_title=%@,ud_id=%@,u_username=%@,ud_desc=%@,cy_id=%@,style_id=%@,u_id=%@,t_style_created_at=%@,t_price=%@,t_findcount=%@,t_hunttype=%@,t_id=%@,t_push_time=%@,t_tmp_circle=%@,t_followcount=%@,ud_isrelate=%@,cir_id=%@,ud_ispgc=%@,u_tag=%@,recommend_type=%@,is_hide_circle=%@,t_istop=%@,t_imgurl=%@,circle=%@,Myfind=%@",_o_name,_u_headimg,_u_isdaren,_t_time,_t_title,_ud_id,_u_username,_ud_desc,_cy_id,_style_id,_u_id,_t_style_created_at,_t_price,_t_findcount,_t_hunttype,_t_id,_t_push_time,_t_tmp_circle,_t_followcount,_ud_isrelate,_cir_id,_ud_ispgc,_u_tag,_recommend_type,_is_hide_circle,_t_istop,_t_imgurl,_circle,_Myfind];
}



@end
@implementation LLdataModel

- (void)setValue:(id)value forKey:(NSString *)key{
	if ([value isKindOfClass:[NSNumber class]]) {
		[self setValue:[NSString stringWithFormat:@"%@",value] forKey:key];
	}else{
		[super setValue:value forKey:key];
	}
}

- (void)setValue:(id)value forUndefinedKey:(NSString *)key{
	if ([key isEqualToString:@"collection"]) {
		LLcollectionModel *model = [LLcollectionModel new];
		[model setValuesForKeysWithDictionary:value];
		self.collection = model;
	}
	else if ([key isEqualToString:@"top"]) {
		LLtopModel *model = [LLtopModel new];
		[model setValuesForKeysWithDictionary:value];
		self.top = model;
	}
	else if ([key isEqualToString:@"daily"]) {
		LLdailyModel *model = [LLdailyModel new];
		[model setValuesForKeysWithDictionary:value];
		self.daily = model;
	}
	else if ([key isEqualToString:@"theme"]) {
		LLthemeModel *model = [LLthemeModel new];
		[model setValuesForKeysWithDictionary:value];
		self.theme = model;
	}
}

-(id)valueForUndefinedKey:(NSString *)key{
	NSLog(@"error: LLdataModel数据模型中:未找到key = %@",key);
	return nil;
}

- (void)encodeWithCoder:(NSCoder *)aCoder{
	[aCoder encodeObject:self.recommend_type forKey:@"recommend_type"];
	[aCoder encodeObject:self.collection forKey:@"collection"];
	[aCoder encodeObject:self.top forKey:@"top"];
	[aCoder encodeObject:self.daily forKey:@"daily"];
	[aCoder encodeObject:self.theme forKey:@"theme"];
}

- (id)initWithCoder:(NSCoder *)aDecoder{
	if (self = [super init]) {
		self.recommend_type = [aDecoder decodeObjectForKey:@"recommend_type"];
		self.collection = [aDecoder decodeObjectForKey:@"collection"];
		self.top = [aDecoder decodeObjectForKey:@"top"];
		self.daily = [aDecoder decodeObjectForKey:@"daily"];
		self.theme = [aDecoder decodeObjectForKey:@"theme"];
	}
	return self;
}

- (NSString *)description{
	return [NSString stringWithFormat:@"recommend_type=%@,collection=%@,top=%@,daily=%@,theme=%@",_recommend_type,_collection,_top,_daily,_theme];
}



@end

@implementation LLModel

- (NSMutableArray *)Mydata{
	if(!_Mydata){
		_Mydata=[[NSMutableArray alloc]init];
	}
	return _Mydata;
}

- (void)setValue:(id)value forKey:(NSString *)key{
	if ([value isKindOfClass:[NSNumber class]]) {
		[self setValue:[NSString stringWithFormat:@"%@",value] forKey:key];
	}else{
		[super setValue:value forKey:key];
	}
}

- (void)setValue:(id)value forUndefinedKey:(NSString *)key{
	if ([key isEqualToString:@"data"]) {
		for (NSDictionary *dic in value) {
			LLdataModel *model = [LLdataModel new];
			[model setValuesForKeysWithDictionary:dic];
			[self.Mydata addObject:model];
		}
	}
}

-(id)valueForUndefinedKey:(NSString *)key{
	NSLog(@"error: LLModel数据模型中:未找到key = %@",key);
	return nil;
}

- (void)encodeWithCoder:(NSCoder *)aCoder{
	[aCoder encodeObject:self.result forKey:@"result"];
	[aCoder encodeObject:self.msg forKey:@"msg"];
	[aCoder encodeObject:self.Mydata forKey:@"Mydata"];
}

- (id)initWithCoder:(NSCoder *)aDecoder{
	if (self = [super init]) {
		self.result = [aDecoder decodeObjectForKey:@"result"];
		self.msg = [aDecoder decodeObjectForKey:@"msg"];
		self.Mydata = [aDecoder decodeObjectForKey:@"Mydata"];
	}
	return self;
}

- (NSString *)description{
	return [NSString stringWithFormat:@"result=%@,msg=%@,Mydata=%@",_result,_msg,_Mydata];
}



@end
