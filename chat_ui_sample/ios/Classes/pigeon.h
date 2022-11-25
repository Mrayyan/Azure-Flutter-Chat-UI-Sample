// Autogenerated from Pigeon (v4.2.6), do not edit directly.
// See also: https://pub.dev/packages/pigeon
#import <Foundation/Foundation.h>
@protocol FlutterBinaryMessenger;
@protocol FlutterMessageCodec;
@class FlutterError;
@class FlutterStandardTypedData;

NS_ASSUME_NONNULL_BEGIN

@class FLTInput;

@interface FLTInput : NSObject
/// `init` unavailable to enforce nonnull fields, see the `make` class method.
- (instancetype)init NS_UNAVAILABLE;
+ (instancetype)makeWithDisplayName:(nullable NSString *)displayName
    instanceId:(NSNumber *)instanceId
    threadId:(NSString *)threadId
    identity:(NSString *)identity
    endpointUrl:(NSString *)endpointUrl
    acsToken:(NSString *)acsToken;
@property(nonatomic, copy, nullable) NSString * displayName;
@property(nonatomic, strong) NSNumber * instanceId;
@property(nonatomic, copy) NSString * threadId;
@property(nonatomic, copy) NSString * identity;
@property(nonatomic, copy) NSString * endpointUrl;
@property(nonatomic, copy) NSString * acsToken;
@end

/// The codec used by FLTAzureCommunicationUIHostApi.
NSObject<FlutterMessageCodec> *FLTAzureCommunicationUIHostApiGetCodec(void);

@protocol FLTAzureCommunicationUIHostApi
- (void)startChatCompositeOptions:(FLTInput *)options error:(FlutterError *_Nullable *_Nonnull)error;
@end

extern void FLTAzureCommunicationUIHostApiSetup(id<FlutterBinaryMessenger> binaryMessenger, NSObject<FLTAzureCommunicationUIHostApi> *_Nullable api);

NS_ASSUME_NONNULL_END