

#import <Foundation/Foundation.h>

#import "JSONModelError.h"
#import "JSONValueTransformer.h"
#import "JSONKeyMapper.h"

#if TARGET_IPHONE_SIMULATOR
#define JMLog( s, ... ) NSLog( @"[%@:%d] %@", [[NSString stringWithUTF8String:__FILE__] \
lastPathComponent], __LINE__, [NSString stringWithFormat:(s), ##__VA_ARGS__] )
#else
#define JMLog( s, ... )
#endif

#pragma mark - Property Protocols

@protocol Ignore
@end
@protocol Optional
@end
@protocol Index
@end
@interface NSObject(JSONModelPropertyCompatibility)<Optional, Index, Ignore>
@end
@protocol ConvertOnDemand
@end
@interface NSArray(JSONModelPropertyCompatibility)<ConvertOnDemand>
@end

#pragma mark - JSONModel protocol

@protocol AbstractJSONModelProtocol <NSCopying, NSCoding>

@required
  
  -(instancetype)initWithDictionary:(NSDictionary*)dict error:(NSError**)err;

-(instancetype)initWithData:(NSData*)data error:(NSError**)error;
  -(NSDictionary*)toDictionary;

  
  -(NSDictionary*)toDictionaryWithKeys:(NSArray*)propertyNames;
@end

#pragma mark - JSONModel interface

@interface JSONModel : NSObject <AbstractJSONModelProtocol, NSSecureCoding>

  
  -(instancetype)initWithString:(NSString*)string error:(JSONModelError**)err;

  
  -(instancetype)initWithString:(NSString *)string usingEncoding:(NSStringEncoding)encoding error:(JSONModelError**)err;

  -(instancetype)initWithDictionary:(NSDictionary*)dict error:(NSError **)err;

  -(instancetype)initWithData:(NSData *)data error:(NSError **)error;

  
  -(NSDictionary*)toDictionary;

  
  -(NSString*)toJSONString;

  
  -(NSData*)toJSONData;

  
  -(NSDictionary*)toDictionaryWithKeys:(NSArray*)propertyNames;

  
  -(NSString*)toJSONStringWithKeys:(NSArray*)propertyNames;

  
  -(NSData*)toJSONDataWithKeys:(NSArray*)propertyNames;

  
  +(NSMutableArray*)arrayOfModelsFromDictionaries:(NSArray*)array;

  +(NSMutableArray*)arrayOfModelsFromDictionaries:(NSArray*)array error:(NSError**)err;

  +(NSMutableArray*)arrayOfModelsFromData:(NSData*)data error:(NSError**)err;

  
  +(NSMutableArray*)arrayOfDictionariesFromModels:(NSArray*)array;

  
  -(NSString*)indexPropertyName;

  
  -(BOOL)isEqual:(id)object;

  
  -(NSComparisonResult)compare:(id)object;

  
-(BOOL)validate:(NSError**)error;
  
+(JSONKeyMapper*)keyMapper;
+(void)setGlobalKeyMapper:(JSONKeyMapper*)globalKeyMapper;
+(BOOL)propertyIsOptional:(NSString*)propertyName;
+(BOOL)propertyIsIgnored:(NSString*)propertyName;
-(void)mergeFromDictionary:(NSDictionary*)dict useKeyMapping:(BOOL)useKeyMapping;

@end
