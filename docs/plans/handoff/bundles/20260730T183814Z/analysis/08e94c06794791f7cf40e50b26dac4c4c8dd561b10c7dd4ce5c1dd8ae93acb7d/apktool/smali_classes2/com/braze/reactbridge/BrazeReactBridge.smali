.class public final Lcom/braze/reactbridge/BrazeReactBridge;
.super Lcom/braze/reactbridge/NativeBrazeReactModuleSpec;
.source "BrazeReactBridge.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u001c\n\u0002\u0010\u0006\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0013\n\u0002\u0018\u0002\n\u0002\u0008C\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0008\u0010\n\u001a\u00020\u000bH\u0016J\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\u0010\u0010\u0010\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\u0010\u0010\u0011\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\u001a\u0010\u0012\u001a\u00020\r2\u0006\u0010\u0013\u001a\u00020\u000b2\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u000bH\u0016J\u0010\u0010\u0015\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\u0010\u0010\u0016\u001a\u00020\r2\u0006\u0010\u0014\u001a\u00020\u000bH\u0016J\u0018\u0010\u0017\u001a\u00020\r2\u0006\u0010\u0018\u001a\u00020\u000b2\u0006\u0010\u0019\u001a\u00020\u000bH\u0016J\u0010\u0010\u001a\u001a\u00020\r2\u0006\u0010\u001b\u001a\u00020\u000bH\u0016J\u0010\u0010\u001c\u001a\u00020\r2\u0006\u0010\u001d\u001a\u00020\u000bH\u0016J\u0010\u0010\u001e\u001a\u00020\r2\u0006\u0010\u001f\u001a\u00020\u000bH\u0016J\u001a\u0010 \u001a\u00020\r2\u0006\u0010!\u001a\u00020\u000b2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0016J\u0010\u0010\"\u001a\u00020\r2\u0006\u0010#\u001a\u00020\u000bH\u0016J\u0010\u0010$\u001a\u00020\r2\u0006\u0010%\u001a\u00020\u000bH\u0016J\u0010\u0010&\u001a\u00020\r2\u0006\u0010\'\u001a\u00020\u000bH\u0016J\u0010\u0010(\u001a\u00020\r2\u0006\u0010)\u001a\u00020\u000bH\u0016J \u0010*\u001a\u00020\r2\u0006\u0010+\u001a\u00020,2\u0006\u0010-\u001a\u00020,2\u0006\u0010.\u001a\u00020,H\u0016J\u0010\u0010/\u001a\u00020\r2\u0006\u00100\u001a\u00020\u000bH\u0016J\u001a\u00101\u001a\u00020\r2\u0006\u00102\u001a\u00020\u000b2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0016J\u001a\u00103\u001a\u00020\r2\u0006\u00102\u001a\u00020\u000b2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0016J\u001a\u00104\u001a\u00020\r2\u0006\u00105\u001a\u00020\u000b2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0016J\u001a\u00106\u001a\u00020\r2\u0006\u00105\u001a\u00020\u000b2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0016J\u001a\u00107\u001a\u00020\r2\u0006\u00108\u001a\u00020\u000b2\u0008\u00109\u001a\u0004\u0018\u00010:H\u0016J2\u0010;\u001a\u00020\r2\u0006\u0010<\u001a\u00020\u000b2\u0006\u0010=\u001a\u00020\u000b2\u0006\u0010>\u001a\u00020\u000b2\u0006\u0010?\u001a\u00020,2\u0008\u0010@\u001a\u0004\u0018\u00010:H\u0016J\"\u0010A\u001a\u00020\r2\u0006\u0010B\u001a\u00020\u000b2\u0006\u0010C\u001a\u00020,2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0016J\"\u0010D\u001a\u00020\r2\u0006\u0010B\u001a\u00020\u000b2\u0006\u0010C\u001a\u00020,2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0016J\"\u0010E\u001a\u00020\r2\u0006\u0010B\u001a\u00020\u000b2\u0006\u0010C\u001a\u00020F2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0016J\"\u0010G\u001a\u00020\r2\u0006\u0010B\u001a\u00020\u000b2\u0006\u0010C\u001a\u00020\u000b2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0016J\"\u0010H\u001a\u00020\r2\u0006\u0010B\u001a\u00020\u000b2\u0006\u0010C\u001a\u00020I2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0016J\"\u0010J\u001a\u00020\r2\u0006\u0010B\u001a\u00020\u000b2\u0006\u0010C\u001a\u00020I2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0016J\"\u0010K\u001a\u00020\r2\u0006\u0010B\u001a\u00020\u000b2\u0006\u0010C\u001a\u00020,2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0016J.\u0010L\u001a\u00020\r2\u0008\u0010B\u001a\u0004\u0018\u00010\u000b2\u0008\u0010C\u001a\u0004\u0018\u00010:2\u0006\u0010M\u001a\u00020F2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0016J\"\u0010N\u001a\u00020\r2\u0006\u0010B\u001a\u00020\u000b2\u0006\u0010C\u001a\u00020\u000b2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0016J\"\u0010O\u001a\u00020\r2\u0006\u0010B\u001a\u00020\u000b2\u0006\u0010C\u001a\u00020\u000b2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0016J\u001a\u0010P\u001a\u00020\r2\u0006\u0010B\u001a\u00020\u000b2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0016J\"\u0010Q\u001a\u00020\r2\u0006\u0010B\u001a\u00020\u000b2\u0006\u0010C\u001a\u00020,2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0016J0\u0010R\u001a\u00020\r2\u0008\u0010S\u001a\u0004\u0018\u00010\u000b2\u0008\u0010T\u001a\u0004\u0018\u00010\u000b2\u0008\u0010U\u001a\u0004\u0018\u00010\u000b2\u0008\u0010V\u001a\u0004\u0018\u00010\u000bH\u0016J\u0008\u0010W\u001a\u00020\rH\u0016J\u0010\u0010X\u001a\u00020\r2\u0006\u0010Y\u001a\u00020\u000bH\u0016J\u0010\u0010Z\u001a\u00020\r2\u0006\u0010Y\u001a\u00020\u000bH\u0016J\u0010\u0010[\u001a\u00020\r2\u0006\u0010\\\u001a\u00020]H\u0016J\u0010\u0010^\u001a\u00020\r2\u0006\u0010_\u001a\u00020FH\u0016J\u0008\u0010`\u001a\u00020\rH\u0016J\u0010\u0010a\u001a\u00020\r2\u0006\u0010Y\u001a\u00020\u000bH\u0016J\u0010\u0010b\u001a\u00020\r2\u0006\u0010Y\u001a\u00020\u000bH\u0016J\u0010\u0010c\u001a\u00020\r2\u0006\u0010Y\u001a\u00020\u000bH\u0016J\u0010\u0010d\u001a\u00020\r2\u0006\u0010Y\u001a\u00020\u000bH\u0016J\u0010\u0010e\u001a\u00020\r2\u0006\u0010\\\u001a\u00020]H\u0016J\u0010\u0010f\u001a\u00020\r2\u0006\u0010\\\u001a\u00020]H\u0016J\u001a\u0010g\u001a\u00020\r2\u0006\u0010h\u001a\u00020\u000b2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0016J\u001a\u0010i\u001a\u00020\r2\u0006\u0010h\u001a\u00020\u000b2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0016J\u0008\u0010j\u001a\u00020\rH\u0016J\u0018\u0010k\u001a\u00020\r2\u0006\u0010l\u001a\u00020\u000b2\u0006\u0010\\\u001a\u00020]H\u0016J\u0010\u0010m\u001a\u00020\r2\u0006\u0010n\u001a\u00020IH\u0016J\u0008\u0010o\u001a\u00020\rH\u0016J\u0008\u0010p\u001a\u00020\rH\u0016J\u0008\u0010q\u001a\u00020\rH\u0016J\u0008\u0010r\u001a\u00020\rH\u0016J\u0008\u0010s\u001a\u00020\rH\u0016J\u0018\u0010t\u001a\u00020\r2\u0006\u0010u\u001a\u00020,2\u0006\u0010v\u001a\u00020,H\u0016J*\u0010w\u001a\u00020\r2\u0006\u0010B\u001a\u00020\u000b2\u0006\u0010u\u001a\u00020,2\u0006\u0010v\u001a\u00020,2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0016J0\u0010x\u001a\u00020\r2\u0006\u0010u\u001a\u00020,2\u0006\u0010v\u001a\u00020,2\u0006\u0010y\u001a\u00020,2\u0006\u0010z\u001a\u00020,2\u0006\u0010{\u001a\u00020,H\u0016J\u001a\u0010|\u001a\u00020\r2\u0006\u0010}\u001a\u00020F2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0016J\u0008\u0010~\u001a\u00020\rH\u0016J\u0011\u0010\u007f\u001a\u00020\r2\u0007\u0010\u0080\u0001\u001a\u00020\u000bH\u0016J\u0012\u0010\u0081\u0001\u001a\u00020\r2\u0007\u0010\u0080\u0001\u001a\u00020\u000bH\u0016J\u001b\u0010\u0082\u0001\u001a\u00020\r2\u0007\u0010\u0080\u0001\u001a\u00020\u000b2\u0007\u0010\u0083\u0001\u001a\u00020,H\u0016J\u001b\u0010\u0084\u0001\u001a\u00020\r2\u0007\u0010\u0080\u0001\u001a\u00020\u000b2\u0007\u0010\u0083\u0001\u001a\u00020,H\u0016J\u0014\u0010\u0085\u0001\u001a\u00020\r2\t\u0010\u0086\u0001\u001a\u0004\u0018\u00010:H\u0016J\u0011\u0010\u0087\u0001\u001a\u00020\r2\u0006\u0010\\\u001a\u00020]H\u0016J\u001a\u0010\u0088\u0001\u001a\u00020\r2\u0007\u0010\u0089\u0001\u001a\u00020\u000b2\u0006\u0010\\\u001a\u00020]H\u0016J\"\u0010\u008a\u0001\u001a\u00020\r2\u0007\u0010\u0089\u0001\u001a\u00020\u000b2\u0006\u0010B\u001a\u00020\u000b2\u0006\u0010\\\u001a\u00020]H\u0016J\"\u0010\u008b\u0001\u001a\u00020\r2\u0007\u0010\u0089\u0001\u001a\u00020\u000b2\u0006\u0010B\u001a\u00020\u000b2\u0006\u0010\\\u001a\u00020]H\u0016J\"\u0010\u008c\u0001\u001a\u00020\r2\u0007\u0010\u0089\u0001\u001a\u00020\u000b2\u0006\u0010B\u001a\u00020\u000b2\u0006\u0010\\\u001a\u00020]H\u0016J\"\u0010\u008d\u0001\u001a\u00020\r2\u0007\u0010\u0089\u0001\u001a\u00020\u000b2\u0006\u0010B\u001a\u00020\u000b2\u0006\u0010\\\u001a\u00020]H\u0016J\"\u0010\u008e\u0001\u001a\u00020\r2\u0007\u0010\u0089\u0001\u001a\u00020\u000b2\u0006\u0010B\u001a\u00020\u000b2\u0006\u0010\\\u001a\u00020]H\u0016J\"\u0010\u008f\u0001\u001a\u00020\r2\u0007\u0010\u0089\u0001\u001a\u00020\u000b2\u0006\u0010B\u001a\u00020\u000b2\u0006\u0010\\\u001a\u00020]H\u0016J\t\u0010\u0090\u0001\u001a\u00020\rH\u0016J\u0012\u0010\u0091\u0001\u001a\u00020\r2\u0007\u0010\u0092\u0001\u001a\u00020\u000bH\u0016J\u001b\u0010\u0093\u0001\u001a\u00020\r2\u0007\u0010\u0094\u0001\u001a\u00020F2\u0007\u0010\u0095\u0001\u001a\u00020\u000bH\u0016J\u0012\u0010\u0096\u0001\u001a\u00020\r2\u0007\u0010\u0097\u0001\u001a\u00020\u000bH\u0016J\u0012\u0010\u0098\u0001\u001a\u00020\r2\u0007\u0010\u0099\u0001\u001a\u00020\u000bH\u0016J\u0012\u0010\u009a\u0001\u001a\u00020\r2\u0007\u0010\u009b\u0001\u001a\u00020:H\u0016J\u0012\u0010\u009c\u0001\u001a\u00020\r2\u0007\u0010\u009d\u0001\u001a\u00020\u000bH\u0016J\u0012\u0010\u009e\u0001\u001a\u00020\r2\u0007\u0010\u009f\u0001\u001a\u00020,H\u0016R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\u00a0\u0001"
    }
    d2 = {
        "Lcom/braze/reactbridge/BrazeReactBridge;",
        "Lcom/braze/reactbridge/NativeBrazeReactModuleSpec;",
        "reactContext",
        "Lcom/facebook/react/bridge/ReactApplicationContext;",
        "<init>",
        "(Lcom/facebook/react/bridge/ReactApplicationContext;)V",
        "brazeImpl",
        "Lcom/braze/reactbridge/BrazeReactBridgeImpl;",
        "getBrazeImpl",
        "()Lcom/braze/reactbridge/BrazeReactBridgeImpl;",
        "getName",
        "",
        "getInitialURL",
        "",
        "callback",
        "Lcom/facebook/react/bridge/Callback;",
        "getInitialPushPayload",
        "getDeviceId",
        "changeUser",
        "userId",
        "signature",
        "getUserId",
        "setSdkAuthenticationSignature",
        "addAlias",
        "aliasName",
        "aliasLabel",
        "setFirstName",
        "firstName",
        "setLastName",
        "lastName",
        "setEmail",
        "email",
        "setGender",
        "gender",
        "setLanguage",
        "language",
        "setCountry",
        "country",
        "setHomeCity",
        "homeCity",
        "setPhoneNumber",
        "phoneNumber",
        "setDateOfBirth",
        "year",
        "",
        "month",
        "day",
        "registerPushToken",
        "token",
        "addToSubscriptionGroup",
        "groupId",
        "removeFromSubscriptionGroup",
        "setPushNotificationSubscriptionType",
        "notificationSubscriptionType",
        "setEmailNotificationSubscriptionType",
        "logCustomEvent",
        "eventName",
        "eventProperties",
        "Lcom/facebook/react/bridge/ReadableMap;",
        "logPurchase",
        "productId",
        "price",
        "currencyCode",
        "quantity",
        "purchaseProperties",
        "setIntCustomUserAttribute",
        "key",
        "value",
        "setDoubleCustomUserAttribute",
        "setBoolCustomUserAttribute",
        "",
        "setStringCustomUserAttribute",
        "setCustomUserAttributeArray",
        "Lcom/facebook/react/bridge/ReadableArray;",
        "setCustomUserAttributeObjectArray",
        "setDateCustomUserAttribute",
        "setCustomUserAttributeObject",
        "merge",
        "addToCustomUserAttributeArray",
        "removeFromCustomUserAttributeArray",
        "unsetCustomUserAttribute",
        "incrementCustomUserAttribute",
        "setAttributionData",
        "network",
        "campaign",
        "adGroup",
        "creative",
        "launchNewsFeed",
        "logNewsFeedCardClicked",
        "cardId",
        "logNewsFeedCardImpression",
        "getNewsFeedCards",
        "promise",
        "Lcom/facebook/react/bridge/Promise;",
        "launchContentCards",
        "dismissAutomaticallyOnCardClick",
        "requestContentCardsRefresh",
        "logContentCardClicked",
        "logContentCardDismissed",
        "logContentCardImpression",
        "processContentCardClickAction",
        "getContentCards",
        "getCachedContentCards",
        "getCardCountForCategories",
        "category",
        "getUnreadCardCountForCategories",
        "requestFeedRefresh",
        "getBanner",
        "placementId",
        "requestBannersRefresh",
        "placementIds",
        "requestImmediateDataFlush",
        "wipeData",
        "disableSDK",
        "enableSDK",
        "requestLocationInitialization",
        "requestGeofences",
        "latitude",
        "longitude",
        "setLocationCustomAttribute",
        "setLastKnownLocation",
        "altitude",
        "horizontalAccuracy",
        "verticalAccuracy",
        "subscribeToInAppMessage",
        "useBrazeUI",
        "hideCurrentInAppMessage",
        "logInAppMessageClicked",
        "inAppMessageString",
        "logInAppMessageImpression",
        "logInAppMessageButtonClicked",
        "buttonId",
        "performInAppMessageAction",
        "requestPushPermission",
        "permissionOptions",
        "getAllFeatureFlags",
        "getFeatureFlag",
        "flagId",
        "getFeatureFlagBooleanProperty",
        "getFeatureFlagStringProperty",
        "getFeatureFlagNumberProperty",
        "getFeatureFlagTimestampProperty",
        "getFeatureFlagJSONProperty",
        "getFeatureFlagImageProperty",
        "refreshFeatureFlags",
        "logFeatureFlagImpression",
        "id",
        "setAdTrackingEnabled",
        "adTrackingEnabled",
        "googleAdvertisingId",
        "setIdentifierForAdvertiser",
        "identifierForAdvertiser",
        "setIdentifierForVendor",
        "identifierForVendor",
        "updateTrackingPropertyAllowList",
        "allowList",
        "addListener",
        "eventType",
        "removeListeners",
        "count",
        "braze_react-native-sdk_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final brazeImpl:Lcom/braze/reactbridge/BrazeReactBridgeImpl;


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 2

    const-string/jumbo v0, "reactContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0, p1}, Lcom/braze/reactbridge/NativeBrazeReactModuleSpec;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 6
    new-instance v0, Lcom/braze/reactbridge/BrazeReactBridgeImpl;

    invoke-virtual {p0}, Lcom/braze/reactbridge/BrazeReactBridge;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/braze/reactbridge/BrazeReactBridge;->brazeImpl:Lcom/braze/reactbridge/BrazeReactBridgeImpl;

    return-void
.end method


# virtual methods
.method public addAlias(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "aliasName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "aliasLabel"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lcom/braze/reactbridge/BrazeReactBridge;->brazeImpl:Lcom/braze/reactbridge/BrazeReactBridgeImpl;

    invoke-virtual {v0, p1, p2}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->addAlias(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public addListener(Ljava/lang/String;)V
    .locals 1

    const-string v0, "eventType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 381
    iget-object v0, p0, Lcom/braze/reactbridge/BrazeReactBridge;->brazeImpl:Lcom/braze/reactbridge/BrazeReactBridgeImpl;

    invoke-virtual {v0, p1}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->addListener(Ljava/lang/String;)V

    return-void
.end method

.method public addToCustomUserAttributeArray(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Callback;)V
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/braze/reactbridge/BrazeReactBridge;->brazeImpl:Lcom/braze/reactbridge/BrazeReactBridgeImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->addToCustomAttributeArray(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Callback;)V

    return-void
.end method

.method public addToSubscriptionGroup(Ljava/lang/String;Lcom/facebook/react/bridge/Callback;)V
    .locals 1

    const-string v0, "groupId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/braze/reactbridge/BrazeReactBridge;->brazeImpl:Lcom/braze/reactbridge/BrazeReactBridgeImpl;

    invoke-virtual {v0, p1, p2}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->addToSubscriptionGroup(Ljava/lang/String;Lcom/facebook/react/bridge/Callback;)V

    return-void
.end method

.method public changeUser(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "userId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    iget-object v0, p0, Lcom/braze/reactbridge/BrazeReactBridge;->brazeImpl:Lcom/braze/reactbridge/BrazeReactBridgeImpl;

    invoke-virtual {v0, p1, p2}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->changeUser(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public disableSDK()V
    .locals 1

    .line 262
    iget-object v0, p0, Lcom/braze/reactbridge/BrazeReactBridge;->brazeImpl:Lcom/braze/reactbridge/BrazeReactBridgeImpl;

    invoke-virtual {v0}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->disableSDK()V

    return-void
.end method

.method public enableSDK()V
    .locals 1

    .line 266
    iget-object v0, p0, Lcom/braze/reactbridge/BrazeReactBridge;->brazeImpl:Lcom/braze/reactbridge/BrazeReactBridgeImpl;

    invoke-virtual {v0}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->enableSDK()V

    return-void
.end method

.method public getAllFeatureFlags(Lcom/facebook/react/bridge/Promise;)V
    .locals 1

    const-string/jumbo v0, "promise"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 325
    iget-object v0, p0, Lcom/braze/reactbridge/BrazeReactBridge;->brazeImpl:Lcom/braze/reactbridge/BrazeReactBridgeImpl;

    invoke-virtual {v0, p1}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->getAllFeatureFlags(Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method public getBanner(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 1

    const-string/jumbo v0, "placementId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "promise"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 246
    iget-object v0, p0, Lcom/braze/reactbridge/BrazeReactBridge;->brazeImpl:Lcom/braze/reactbridge/BrazeReactBridgeImpl;

    invoke-virtual {v0, p1, p2}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->getBanner(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method public final getBrazeImpl()Lcom/braze/reactbridge/BrazeReactBridgeImpl;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/braze/reactbridge/BrazeReactBridge;->brazeImpl:Lcom/braze/reactbridge/BrazeReactBridgeImpl;

    return-object v0
.end method

.method public getCachedContentCards(Lcom/facebook/react/bridge/Promise;)V
    .locals 1

    const-string/jumbo v0, "promise"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 230
    iget-object v0, p0, Lcom/braze/reactbridge/BrazeReactBridge;->brazeImpl:Lcom/braze/reactbridge/BrazeReactBridgeImpl;

    invoke-virtual {v0, p1}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->getCachedContentCards(Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method public getCardCountForCategories(Ljava/lang/String;Lcom/facebook/react/bridge/Callback;)V
    .locals 1

    const-string v0, "category"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 234
    iget-object v0, p0, Lcom/braze/reactbridge/BrazeReactBridge;->brazeImpl:Lcom/braze/reactbridge/BrazeReactBridgeImpl;

    invoke-virtual {v0, p1, p2}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->getCardCountForCategories(Ljava/lang/String;Lcom/facebook/react/bridge/Callback;)V

    return-void
.end method

.method public getContentCards(Lcom/facebook/react/bridge/Promise;)V
    .locals 1

    const-string/jumbo v0, "promise"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lcom/braze/reactbridge/BrazeReactBridge;->brazeImpl:Lcom/braze/reactbridge/BrazeReactBridgeImpl;

    invoke-virtual {v0, p1}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->getContentCards(Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method public getDeviceId(Lcom/facebook/react/bridge/Callback;)V
    .locals 1

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    iget-object v0, p0, Lcom/braze/reactbridge/BrazeReactBridge;->brazeImpl:Lcom/braze/reactbridge/BrazeReactBridgeImpl;

    invoke-virtual {v0, p1}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->getDeviceId(Lcom/facebook/react/bridge/Callback;)V

    return-void
.end method

.method public getFeatureFlag(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 1

    const-string v0, "flagId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "promise"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 329
    iget-object v0, p0, Lcom/braze/reactbridge/BrazeReactBridge;->brazeImpl:Lcom/braze/reactbridge/BrazeReactBridgeImpl;

    invoke-virtual {v0, p1, p2}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->getFeatureFlag(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method public getFeatureFlagBooleanProperty(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 1

    const-string v0, "flagId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "promise"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 333
    iget-object v0, p0, Lcom/braze/reactbridge/BrazeReactBridge;->brazeImpl:Lcom/braze/reactbridge/BrazeReactBridgeImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->getFeatureFlagBooleanProperty(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method public getFeatureFlagImageProperty(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 1

    const-string v0, "flagId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "promise"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 353
    iget-object v0, p0, Lcom/braze/reactbridge/BrazeReactBridge;->brazeImpl:Lcom/braze/reactbridge/BrazeReactBridgeImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->getFeatureFlagImageProperty(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method public getFeatureFlagJSONProperty(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 1

    const-string v0, "flagId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "promise"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 349
    iget-object v0, p0, Lcom/braze/reactbridge/BrazeReactBridge;->brazeImpl:Lcom/braze/reactbridge/BrazeReactBridgeImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->getFeatureFlagJSONProperty(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method public getFeatureFlagNumberProperty(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 1

    const-string v0, "flagId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "promise"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 341
    iget-object v0, p0, Lcom/braze/reactbridge/BrazeReactBridge;->brazeImpl:Lcom/braze/reactbridge/BrazeReactBridgeImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->getFeatureFlagNumberProperty(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method public getFeatureFlagStringProperty(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 1

    const-string v0, "flagId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "promise"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 337
    iget-object v0, p0, Lcom/braze/reactbridge/BrazeReactBridge;->brazeImpl:Lcom/braze/reactbridge/BrazeReactBridgeImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->getFeatureFlagStringProperty(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method public getFeatureFlagTimestampProperty(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 1

    const-string v0, "flagId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "promise"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 345
    iget-object v0, p0, Lcom/braze/reactbridge/BrazeReactBridge;->brazeImpl:Lcom/braze/reactbridge/BrazeReactBridgeImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->getFeatureFlagTimestampProperty(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method public getInitialPushPayload(Lcom/facebook/react/bridge/Callback;)V
    .locals 1

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public getInitialURL(Lcom/facebook/react/bridge/Callback;)V
    .locals 1

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 9
    const-string v0, "BrazeReactBridge"

    return-object v0
.end method

.method public getNewsFeedCards(Lcom/facebook/react/bridge/Promise;)V
    .locals 1

    const-string/jumbo v0, "promise"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lcom/braze/reactbridge/BrazeReactBridge;->brazeImpl:Lcom/braze/reactbridge/BrazeReactBridgeImpl;

    invoke-virtual {v0, p1}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->getNewsFeedCards(Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method public getUnreadCardCountForCategories(Ljava/lang/String;Lcom/facebook/react/bridge/Callback;)V
    .locals 1

    const-string v0, "category"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 238
    iget-object v0, p0, Lcom/braze/reactbridge/BrazeReactBridge;->brazeImpl:Lcom/braze/reactbridge/BrazeReactBridgeImpl;

    invoke-virtual {v0, p1, p2}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->getUnreadCardCountForCategories(Ljava/lang/String;Lcom/facebook/react/bridge/Callback;)V

    return-void
.end method

.method public getUserId(Lcom/facebook/react/bridge/Callback;)V
    .locals 1

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    iget-object v0, p0, Lcom/braze/reactbridge/BrazeReactBridge;->brazeImpl:Lcom/braze/reactbridge/BrazeReactBridgeImpl;

    invoke-virtual {v0, p1}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->getUserId(Lcom/facebook/react/bridge/Callback;)V

    return-void
.end method

.method public hideCurrentInAppMessage()V
    .locals 1

    .line 301
    iget-object v0, p0, Lcom/braze/reactbridge/BrazeReactBridge;->brazeImpl:Lcom/braze/reactbridge/BrazeReactBridgeImpl;

    invoke-virtual {v0}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->hideCurrentInAppMessage()V

    return-void
.end method

.method public incrementCustomUserAttribute(Ljava/lang/String;DLcom/facebook/react/bridge/Callback;)V
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lcom/braze/reactbridge/BrazeReactBridge;->brazeImpl:Lcom/braze/reactbridge/BrazeReactBridgeImpl;

    double-to-int p2, p2

    invoke-virtual {v0, p1, p2, p4}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->incrementCustomUserAttribute(Ljava/lang/String;ILcom/facebook/react/bridge/Callback;)V

    return-void
.end method

.method public launchContentCards(Z)V
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/braze/reactbridge/BrazeReactBridge;->brazeImpl:Lcom/braze/reactbridge/BrazeReactBridgeImpl;

    invoke-virtual {v0, p1}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->launchContentCards(Z)V

    return-void
.end method

.method public launchNewsFeed()V
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/braze/reactbridge/BrazeReactBridge;->brazeImpl:Lcom/braze/reactbridge/BrazeReactBridgeImpl;

    invoke-virtual {v0}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->launchNewsFeed()V

    return-void
.end method

.method public logContentCardClicked(Ljava/lang/String;)V
    .locals 1

    const-string v0, "cardId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 210
    iget-object v0, p0, Lcom/braze/reactbridge/BrazeReactBridge;->brazeImpl:Lcom/braze/reactbridge/BrazeReactBridgeImpl;

    invoke-virtual {v0, p1}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->logContentCardClicked(Ljava/lang/String;)V

    return-void
.end method

.method public logContentCardDismissed(Ljava/lang/String;)V
    .locals 1

    const-string v0, "cardId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lcom/braze/reactbridge/BrazeReactBridge;->brazeImpl:Lcom/braze/reactbridge/BrazeReactBridgeImpl;

    invoke-virtual {v0, p1}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->logContentCardDismissed(Ljava/lang/String;)V

    return-void
.end method

.method public logContentCardImpression(Ljava/lang/String;)V
    .locals 1

    const-string v0, "cardId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 218
    iget-object v0, p0, Lcom/braze/reactbridge/BrazeReactBridge;->brazeImpl:Lcom/braze/reactbridge/BrazeReactBridgeImpl;

    invoke-virtual {v0, p1}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->logContentCardImpression(Ljava/lang/String;)V

    return-void
.end method

.method public logCustomEvent(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 1

    const-string v0, "eventName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/braze/reactbridge/BrazeReactBridge;->brazeImpl:Lcom/braze/reactbridge/BrazeReactBridgeImpl;

    invoke-virtual {v0, p1, p2}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->logCustomEvent(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    return-void
.end method

.method public logFeatureFlagImpression(Ljava/lang/String;)V
    .locals 1

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 361
    iget-object v0, p0, Lcom/braze/reactbridge/BrazeReactBridge;->brazeImpl:Lcom/braze/reactbridge/BrazeReactBridgeImpl;

    invoke-virtual {v0, p1}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->logFeatureFlagImpression(Ljava/lang/String;)V

    return-void
.end method

.method public logInAppMessageButtonClicked(Ljava/lang/String;D)V
    .locals 1

    const-string v0, "inAppMessageString"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 313
    iget-object v0, p0, Lcom/braze/reactbridge/BrazeReactBridge;->brazeImpl:Lcom/braze/reactbridge/BrazeReactBridgeImpl;

    double-to-int p2, p2

    invoke-virtual {v0, p1, p2}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->logInAppMessageButtonClicked(Ljava/lang/String;I)V

    return-void
.end method

.method public logInAppMessageClicked(Ljava/lang/String;)V
    .locals 1

    const-string v0, "inAppMessageString"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 305
    iget-object v0, p0, Lcom/braze/reactbridge/BrazeReactBridge;->brazeImpl:Lcom/braze/reactbridge/BrazeReactBridgeImpl;

    invoke-virtual {v0, p1}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->logInAppMessageClicked(Ljava/lang/String;)V

    return-void
.end method

.method public logInAppMessageImpression(Ljava/lang/String;)V
    .locals 1

    const-string v0, "inAppMessageString"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 309
    iget-object v0, p0, Lcom/braze/reactbridge/BrazeReactBridge;->brazeImpl:Lcom/braze/reactbridge/BrazeReactBridgeImpl;

    invoke-virtual {v0, p1}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->logInAppMessageImpression(Ljava/lang/String;)Ljava/lang/Boolean;

    return-void
.end method

.method public logNewsFeedCardClicked(Ljava/lang/String;)V
    .locals 1

    const-string v0, "cardId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lcom/braze/reactbridge/BrazeReactBridge;->brazeImpl:Lcom/braze/reactbridge/BrazeReactBridgeImpl;

    invoke-virtual {v0, p1}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->logNewsFeedCardClicked(Ljava/lang/String;)V

    return-void
.end method

.method public logNewsFeedCardImpression(Ljava/lang/String;)V
    .locals 1

    const-string v0, "cardId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lcom/braze/reactbridge/BrazeReactBridge;->brazeImpl:Lcom/braze/reactbridge/BrazeReactBridgeImpl;

    invoke-virtual {v0, p1}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->logNewsFeedCardImpression(Ljava/lang/String;)V

    return-void
.end method

.method public logPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLcom/facebook/react/bridge/ReadableMap;)V
    .locals 7

    const-string/jumbo v0, "productId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "price"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "currencyCode"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    iget-object v1, p0, Lcom/braze/reactbridge/BrazeReactBridge;->brazeImpl:Lcom/braze/reactbridge/BrazeReactBridgeImpl;

    double-to-int v5, p4

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p6

    invoke-virtual/range {v1 .. v6}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->logPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/facebook/react/bridge/ReadableMap;)V

    return-void
.end method

.method public performInAppMessageAction(Ljava/lang/String;D)V
    .locals 1

    const-string v0, "inAppMessageString"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 317
    iget-object v0, p0, Lcom/braze/reactbridge/BrazeReactBridge;->brazeImpl:Lcom/braze/reactbridge/BrazeReactBridgeImpl;

    double-to-int p2, p2

    invoke-virtual {v0, p1, p2}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->performInAppMessageAction(Ljava/lang/String;I)V

    return-void
.end method

.method public processContentCardClickAction(Ljava/lang/String;)V
    .locals 1

    const-string v0, "cardId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 222
    iget-object v0, p0, Lcom/braze/reactbridge/BrazeReactBridge;->brazeImpl:Lcom/braze/reactbridge/BrazeReactBridgeImpl;

    invoke-virtual {v0, p1}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->processContentCardClickAction(Ljava/lang/String;)V

    return-void
.end method

.method public refreshFeatureFlags()V
    .locals 1

    .line 357
    iget-object v0, p0, Lcom/braze/reactbridge/BrazeReactBridge;->brazeImpl:Lcom/braze/reactbridge/BrazeReactBridgeImpl;

    invoke-virtual {v0}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->refreshFeatureFlags()V

    return-void
.end method

.method public registerPushToken(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/braze/reactbridge/BrazeReactBridge;->brazeImpl:Lcom/braze/reactbridge/BrazeReactBridgeImpl;

    invoke-virtual {v0, p1}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->registerPushToken(Ljava/lang/String;)V

    return-void
.end method

.method public removeFromCustomUserAttributeArray(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Callback;)V
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lcom/braze/reactbridge/BrazeReactBridge;->brazeImpl:Lcom/braze/reactbridge/BrazeReactBridgeImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->removeFromCustomAttributeArray(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Callback;)V

    return-void
.end method

.method public removeFromSubscriptionGroup(Ljava/lang/String;Lcom/facebook/react/bridge/Callback;)V
    .locals 1

    const-string v0, "groupId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/braze/reactbridge/BrazeReactBridge;->brazeImpl:Lcom/braze/reactbridge/BrazeReactBridgeImpl;

    invoke-virtual {v0, p1, p2}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->removeFromSubscriptionGroup(Ljava/lang/String;Lcom/facebook/react/bridge/Callback;)V

    return-void
.end method

.method public removeListeners(D)V
    .locals 1

    .line 385
    iget-object v0, p0, Lcom/braze/reactbridge/BrazeReactBridge;->brazeImpl:Lcom/braze/reactbridge/BrazeReactBridgeImpl;

    double-to-int p1, p1

    invoke-virtual {v0, p1}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->removeListeners(I)V

    return-void
.end method

.method public requestBannersRefresh(Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 1

    const-string/jumbo v0, "placementIds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 250
    iget-object v0, p0, Lcom/braze/reactbridge/BrazeReactBridge;->brazeImpl:Lcom/braze/reactbridge/BrazeReactBridgeImpl;

    invoke-virtual {v0, p1}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->requestBannersRefresh(Lcom/facebook/react/bridge/ReadableArray;)V

    return-void
.end method

.method public requestContentCardsRefresh()V
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/braze/reactbridge/BrazeReactBridge;->brazeImpl:Lcom/braze/reactbridge/BrazeReactBridgeImpl;

    invoke-virtual {v0}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->requestContentCardsRefresh()V

    return-void
.end method

.method public requestFeedRefresh()V
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/braze/reactbridge/BrazeReactBridge;->brazeImpl:Lcom/braze/reactbridge/BrazeReactBridgeImpl;

    invoke-virtual {v0}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->requestFeedRefresh()V

    return-void
.end method

.method public requestGeofences(DD)V
    .locals 1

    .line 274
    iget-object v0, p0, Lcom/braze/reactbridge/BrazeReactBridge;->brazeImpl:Lcom/braze/reactbridge/BrazeReactBridgeImpl;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->requestGeofences(DD)V

    return-void
.end method

.method public requestImmediateDataFlush()V
    .locals 1

    .line 254
    iget-object v0, p0, Lcom/braze/reactbridge/BrazeReactBridge;->brazeImpl:Lcom/braze/reactbridge/BrazeReactBridgeImpl;

    invoke-virtual {v0}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->requestImmediateDataFlush()V

    return-void
.end method

.method public requestLocationInitialization()V
    .locals 1

    .line 270
    iget-object v0, p0, Lcom/braze/reactbridge/BrazeReactBridge;->brazeImpl:Lcom/braze/reactbridge/BrazeReactBridgeImpl;

    invoke-virtual {v0}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->requestLocationInitialization()V

    return-void
.end method

.method public requestPushPermission(Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 1

    .line 321
    iget-object v0, p0, Lcom/braze/reactbridge/BrazeReactBridge;->brazeImpl:Lcom/braze/reactbridge/BrazeReactBridgeImpl;

    invoke-virtual {v0, p1}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->requestPushPermission(Lcom/facebook/react/bridge/ReadableMap;)V

    return-void
.end method

.method public setAdTrackingEnabled(ZLjava/lang/String;)V
    .locals 1

    const-string v0, "googleAdvertisingId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 365
    iget-object v0, p0, Lcom/braze/reactbridge/BrazeReactBridge;->brazeImpl:Lcom/braze/reactbridge/BrazeReactBridgeImpl;

    invoke-virtual {v0, p1, p2}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->setAdTrackingEnabled(ZLjava/lang/String;)V

    return-void
.end method

.method public setAttributionData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/braze/reactbridge/BrazeReactBridge;->brazeImpl:Lcom/braze/reactbridge/BrazeReactBridgeImpl;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->setAttributionData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setBoolCustomUserAttribute(Ljava/lang/String;ZLcom/facebook/react/bridge/Callback;)V
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/braze/reactbridge/BrazeReactBridge;->brazeImpl:Lcom/braze/reactbridge/BrazeReactBridgeImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->setBoolCustomUserAttribute(Ljava/lang/String;ZLcom/facebook/react/bridge/Callback;)V

    return-void
.end method

.method public setCountry(Ljava/lang/String;)V
    .locals 1

    const-string v0, "country"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/braze/reactbridge/BrazeReactBridge;->brazeImpl:Lcom/braze/reactbridge/BrazeReactBridgeImpl;

    invoke-virtual {v0, p1}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->setCountry(Ljava/lang/String;)V

    return-void
.end method

.method public setCustomUserAttributeArray(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/Callback;)V
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/braze/reactbridge/BrazeReactBridge;->brazeImpl:Lcom/braze/reactbridge/BrazeReactBridgeImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->setCustomUserAttributeArray(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/Callback;)V

    return-void
.end method

.method public setCustomUserAttributeObject(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;ZLcom/facebook/react/bridge/Callback;)V
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/braze/reactbridge/BrazeReactBridge;->brazeImpl:Lcom/braze/reactbridge/BrazeReactBridgeImpl;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->setCustomUserAttributeObject(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;ZLcom/facebook/react/bridge/Callback;)V

    return-void
.end method

.method public setCustomUserAttributeObjectArray(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/Callback;)V
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lcom/braze/reactbridge/BrazeReactBridge;->brazeImpl:Lcom/braze/reactbridge/BrazeReactBridgeImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->setCustomUserAttributeObjectArray(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/Callback;)V

    return-void
.end method

.method public setDateCustomUserAttribute(Ljava/lang/String;DLcom/facebook/react/bridge/Callback;)V
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/braze/reactbridge/BrazeReactBridge;->brazeImpl:Lcom/braze/reactbridge/BrazeReactBridgeImpl;

    double-to-int p2, p2

    invoke-virtual {v0, p1, p2, p4}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->setDateCustomUserAttribute(Ljava/lang/String;ILcom/facebook/react/bridge/Callback;)V

    return-void
.end method

.method public setDateOfBirth(DDD)V
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/braze/reactbridge/BrazeReactBridge;->brazeImpl:Lcom/braze/reactbridge/BrazeReactBridgeImpl;

    double-to-int p1, p1

    double-to-int p2, p3

    double-to-int p3, p5

    invoke-virtual {v0, p1, p2, p3}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->setDateOfBirth(III)V

    return-void
.end method

.method public setDoubleCustomUserAttribute(Ljava/lang/String;DLcom/facebook/react/bridge/Callback;)V
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/braze/reactbridge/BrazeReactBridge;->brazeImpl:Lcom/braze/reactbridge/BrazeReactBridgeImpl;

    double-to-float p2, p2

    invoke-virtual {v0, p1, p2, p4}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->setDoubleCustomUserAttribute(Ljava/lang/String;FLcom/facebook/react/bridge/Callback;)V

    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 1

    const-string v0, "email"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/braze/reactbridge/BrazeReactBridge;->brazeImpl:Lcom/braze/reactbridge/BrazeReactBridgeImpl;

    invoke-virtual {v0, p1}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->setEmail(Ljava/lang/String;)V

    return-void
.end method

.method public setEmailNotificationSubscriptionType(Ljava/lang/String;Lcom/facebook/react/bridge/Callback;)V
    .locals 1

    const-string/jumbo v0, "notificationSubscriptionType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/braze/reactbridge/BrazeReactBridge;->brazeImpl:Lcom/braze/reactbridge/BrazeReactBridgeImpl;

    invoke-virtual {v0, p1, p2}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->setEmailNotificationSubscriptionType(Ljava/lang/String;Lcom/facebook/react/bridge/Callback;)V

    return-void
.end method

.method public setFirstName(Ljava/lang/String;)V
    .locals 1

    const-string v0, "firstName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcom/braze/reactbridge/BrazeReactBridge;->brazeImpl:Lcom/braze/reactbridge/BrazeReactBridgeImpl;

    invoke-virtual {v0, p1}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->setFirstName(Ljava/lang/String;)V

    return-void
.end method

.method public setGender(Ljava/lang/String;Lcom/facebook/react/bridge/Callback;)V
    .locals 1

    const-string v0, "gender"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/braze/reactbridge/BrazeReactBridge;->brazeImpl:Lcom/braze/reactbridge/BrazeReactBridgeImpl;

    invoke-virtual {v0, p1, p2}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->setGender(Ljava/lang/String;Lcom/facebook/react/bridge/Callback;)V

    return-void
.end method

.method public setHomeCity(Ljava/lang/String;)V
    .locals 1

    const-string v0, "homeCity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/braze/reactbridge/BrazeReactBridge;->brazeImpl:Lcom/braze/reactbridge/BrazeReactBridgeImpl;

    invoke-virtual {v0, p1}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->setHomeCity(Ljava/lang/String;)V

    return-void
.end method

.method public setIdentifierForAdvertiser(Ljava/lang/String;)V
    .locals 1

    const-string v0, "identifierForAdvertiser"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public setIdentifierForVendor(Ljava/lang/String;)V
    .locals 1

    const-string v0, "identifierForVendor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public setIntCustomUserAttribute(Ljava/lang/String;DLcom/facebook/react/bridge/Callback;)V
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/braze/reactbridge/BrazeReactBridge;->brazeImpl:Lcom/braze/reactbridge/BrazeReactBridgeImpl;

    double-to-int p2, p2

    invoke-virtual {v0, p1, p2, p4}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->setIntCustomUserAttribute(Ljava/lang/String;ILcom/facebook/react/bridge/Callback;)V

    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 1

    const-string v0, "language"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/braze/reactbridge/BrazeReactBridge;->brazeImpl:Lcom/braze/reactbridge/BrazeReactBridgeImpl;

    invoke-virtual {v0, p1}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->setLanguage(Ljava/lang/String;)V

    return-void
.end method

.method public setLastKnownLocation(DDDDD)V
    .locals 12

    move-object v0, p0

    .line 293
    iget-object v1, v0, Lcom/braze/reactbridge/BrazeReactBridge;->brazeImpl:Lcom/braze/reactbridge/BrazeReactBridgeImpl;

    move-wide v2, p1

    move-wide v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    invoke-virtual/range {v1 .. v11}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->setLastKnownLocation(DDDDD)V

    return-void
.end method

.method public setLastName(Ljava/lang/String;)V
    .locals 1

    const-string v0, "lastName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/braze/reactbridge/BrazeReactBridge;->brazeImpl:Lcom/braze/reactbridge/BrazeReactBridgeImpl;

    invoke-virtual {v0, p1}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->setLastName(Ljava/lang/String;)V

    return-void
.end method

.method public setLocationCustomAttribute(Ljava/lang/String;DDLcom/facebook/react/bridge/Callback;)V
    .locals 8

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 283
    iget-object v1, p0, Lcom/braze/reactbridge/BrazeReactBridge;->brazeImpl:Lcom/braze/reactbridge/BrazeReactBridgeImpl;

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    move-object v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->setLocationCustomAttribute(Ljava/lang/String;DDLcom/facebook/react/bridge/Callback;)V

    return-void
.end method

.method public setPhoneNumber(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "phoneNumber"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/braze/reactbridge/BrazeReactBridge;->brazeImpl:Lcom/braze/reactbridge/BrazeReactBridgeImpl;

    invoke-virtual {v0, p1}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->setPhoneNumber(Ljava/lang/String;)V

    return-void
.end method

.method public setPushNotificationSubscriptionType(Ljava/lang/String;Lcom/facebook/react/bridge/Callback;)V
    .locals 1

    const-string/jumbo v0, "notificationSubscriptionType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/braze/reactbridge/BrazeReactBridge;->brazeImpl:Lcom/braze/reactbridge/BrazeReactBridgeImpl;

    invoke-virtual {v0, p1, p2}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->setPushNotificationSubscriptionType(Ljava/lang/String;Lcom/facebook/react/bridge/Callback;)V

    return-void
.end method

.method public setSdkAuthenticationSignature(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "signature"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    iget-object v0, p0, Lcom/braze/reactbridge/BrazeReactBridge;->brazeImpl:Lcom/braze/reactbridge/BrazeReactBridgeImpl;

    invoke-virtual {v0, p1}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->setSdkAuthenticationSignature(Ljava/lang/String;)V

    return-void
.end method

.method public setStringCustomUserAttribute(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Callback;)V
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/braze/reactbridge/BrazeReactBridge;->brazeImpl:Lcom/braze/reactbridge/BrazeReactBridgeImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->setStringCustomUserAttribute(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Callback;)V

    return-void
.end method

.method public subscribeToInAppMessage(ZLcom/facebook/react/bridge/Callback;)V
    .locals 0

    .line 297
    iget-object p2, p0, Lcom/braze/reactbridge/BrazeReactBridge;->brazeImpl:Lcom/braze/reactbridge/BrazeReactBridgeImpl;

    invoke-virtual {p2, p1}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->subscribeToInAppMessage(Z)V

    return-void
.end method

.method public unsetCustomUserAttribute(Ljava/lang/String;Lcom/facebook/react/bridge/Callback;)V
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lcom/braze/reactbridge/BrazeReactBridge;->brazeImpl:Lcom/braze/reactbridge/BrazeReactBridgeImpl;

    invoke-virtual {v0, p1, p2}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->unsetCustomUserAttribute(Ljava/lang/String;Lcom/facebook/react/bridge/Callback;)V

    return-void
.end method

.method public updateTrackingPropertyAllowList(Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 1

    const-string v0, "allowList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public wipeData()V
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/braze/reactbridge/BrazeReactBridge;->brazeImpl:Lcom/braze/reactbridge/BrazeReactBridgeImpl;

    invoke-virtual {v0}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->wipeData()V

    return-void
.end method
