.class public final Lcom/braze/reactbridge/BrazeReactBridgeImpl$Companion;
.super Ljava/lang/Object;
.source "BrazeReactBridgeImpl.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/braze/reactbridge/BrazeReactBridgeImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/braze/reactbridge/BrazeReactBridgeImpl$Companion$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBrazeReactBridgeImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BrazeReactBridgeImpl.kt\ncom/braze/reactbridge/BrazeReactBridgeImpl$Companion\n+ 2 Iterators.kt\nkotlin/collections/CollectionsKt__IteratorsKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,1113:1\n32#2,2:1114\n1310#3,2:1116\n*S KotlinDebug\n*F\n+ 1 BrazeReactBridgeImpl.kt\ncom/braze/reactbridge/BrazeReactBridgeImpl$Companion\n*L\n988#1:1114,2\n1109#1:1116,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000^\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\n\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J&\u0010\u000f\u001a\u00020\u0010*\u0004\u0018\u00010\u00112\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00012\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0005H\u0002J\u0010\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017H\u0002J\u0010\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001bH\u0002J\u0014\u0010\u001c\u001a\u0004\u0018\u00010\u001d2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u0015H\u0002J\u0018\u0010\u001f\u001a\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030 2\u0006\u0010!\u001a\u00020\u0015H\u0002J\u0014\u0010\"\u001a\u0006\u0012\u0002\u0008\u00030#2\u0006\u0010$\u001a\u00020\u0019H\u0002J\u0010\u0010%\u001a\u0004\u0018\u00010&*\u0004\u0018\u00010\u0005H\u0002J\u0014\u0010\'\u001a\u0004\u0018\u00010(2\u0008\u0010)\u001a\u0004\u0018\u00010\u0005H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006*"
    }
    d2 = {
        "Lcom/braze/reactbridge/BrazeReactBridgeImpl$Companion;",
        "",
        "<init>",
        "()V",
        "NAME",
        "",
        "CARD_COUNT_TAG",
        "UNREAD_CARD_COUNT_TAG",
        "CONTENT_CARDS_UPDATED_EVENT_NAME",
        "BANNER_CARDS_UPDATED_EVENT_NAME",
        "FEATURE_FLAGS_UPDATED_EVENT_NAME",
        "NEWS_FEED_CARDS_UPDATED_EVENT_NAME",
        "SDK_AUTH_ERROR_EVENT_NAME",
        "IN_APP_MESSAGE_RECEIVED_EVENT_NAME",
        "PUSH_NOTIFICATION_EVENT_NAME",
        "reportResult",
        "",
        "Lcom/facebook/react/bridge/Callback;",
        "result",
        "error",
        "jsonToNativeMap",
        "Lcom/facebook/react/bridge/ReadableMap;",
        "jsonObject",
        "Lorg/json/JSONObject;",
        "jsonToNativeArray",
        "Lcom/facebook/react/bridge/ReadableArray;",
        "jsonArray",
        "Lorg/json/JSONArray;",
        "populateEventPropertiesFromReadableMap",
        "Lcom/braze/models/outgoing/BrazeProperties;",
        "eventProperties",
        "parseReadableMap",
        "",
        "readableMap",
        "parseReadableArray",
        "",
        "readableArray",
        "parseNotificationSubscriptionType",
        "Lcom/braze/enums/NotificationSubscriptionType;",
        "getCardCategoryFromString",
        "Lcom/braze/enums/CardCategory;",
        "categoryString",
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


# direct methods
.method public static synthetic $r8$lambda$OKjlzlgR0C1PaJrVgA0efiMLBMY()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/braze/reactbridge/BrazeReactBridgeImpl$Companion;->reportResult$lambda$0()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private constructor <init>()V
    .locals 0

    .line 952
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/braze/reactbridge/BrazeReactBridgeImpl$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$getCardCategoryFromString(Lcom/braze/reactbridge/BrazeReactBridgeImpl$Companion;Ljava/lang/String;)Lcom/braze/enums/CardCategory;
    .locals 0

    .line 952
    invoke-direct {p0, p1}, Lcom/braze/reactbridge/BrazeReactBridgeImpl$Companion;->getCardCategoryFromString(Ljava/lang/String;)Lcom/braze/enums/CardCategory;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$jsonToNativeMap(Lcom/braze/reactbridge/BrazeReactBridgeImpl$Companion;Lorg/json/JSONObject;)Lcom/facebook/react/bridge/ReadableMap;
    .locals 0

    .line 952
    invoke-direct {p0, p1}, Lcom/braze/reactbridge/BrazeReactBridgeImpl$Companion;->jsonToNativeMap(Lorg/json/JSONObject;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$parseNotificationSubscriptionType(Lcom/braze/reactbridge/BrazeReactBridgeImpl$Companion;Ljava/lang/String;)Lcom/braze/enums/NotificationSubscriptionType;
    .locals 0

    .line 952
    invoke-direct {p0, p1}, Lcom/braze/reactbridge/BrazeReactBridgeImpl$Companion;->parseNotificationSubscriptionType(Ljava/lang/String;)Lcom/braze/enums/NotificationSubscriptionType;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$parseReadableArray(Lcom/braze/reactbridge/BrazeReactBridgeImpl$Companion;Lcom/facebook/react/bridge/ReadableArray;)Ljava/util/List;
    .locals 0

    .line 952
    invoke-direct {p0, p1}, Lcom/braze/reactbridge/BrazeReactBridgeImpl$Companion;->parseReadableArray(Lcom/facebook/react/bridge/ReadableArray;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$parseReadableMap(Lcom/braze/reactbridge/BrazeReactBridgeImpl$Companion;Lcom/facebook/react/bridge/ReadableMap;)Ljava/util/Map;
    .locals 0

    .line 952
    invoke-direct {p0, p1}, Lcom/braze/reactbridge/BrazeReactBridgeImpl$Companion;->parseReadableMap(Lcom/facebook/react/bridge/ReadableMap;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$populateEventPropertiesFromReadableMap(Lcom/braze/reactbridge/BrazeReactBridgeImpl$Companion;Lcom/facebook/react/bridge/ReadableMap;)Lcom/braze/models/outgoing/BrazeProperties;
    .locals 0

    .line 952
    invoke-direct {p0, p1}, Lcom/braze/reactbridge/BrazeReactBridgeImpl$Companion;->populateEventPropertiesFromReadableMap(Lcom/facebook/react/bridge/ReadableMap;)Lcom/braze/models/outgoing/BrazeProperties;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$reportResult(Lcom/braze/reactbridge/BrazeReactBridgeImpl$Companion;Lcom/facebook/react/bridge/Callback;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 952
    invoke-direct {p0, p1, p2, p3}, Lcom/braze/reactbridge/BrazeReactBridgeImpl$Companion;->reportResult(Lcom/facebook/react/bridge/Callback;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private final getCardCategoryFromString(Ljava/lang/String;)Lcom/braze/enums/CardCategory;
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 1108
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "getDefault(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "toUpperCase(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    goto :goto_1

    .line 1109
    :cond_0
    invoke-static {}, Lcom/braze/enums/CardCategory;->values()[Lcom/braze/enums/CardCategory;

    move-result-object v1

    .line 1116
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 1109
    invoke-virtual {v4}, Lcom/braze/enums/CardCategory;->name()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v0, v4

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0
.end method

.method private final jsonToNativeArray(Lorg/json/JSONArray;)Lcom/facebook/react/bridge/ReadableArray;
    .locals 5

    .line 1007
    new-instance v0, Lcom/facebook/react/bridge/WritableNativeArray;

    invoke-direct {v0}, Lcom/facebook/react/bridge/WritableNativeArray;-><init>()V

    .line 1008
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_7

    .line 1009
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v3

    .line 1010
    instance-of v4, v3, Lorg/json/JSONObject;

    if-eqz v4, :cond_0

    check-cast v3, Lorg/json/JSONObject;

    invoke-direct {p0, v3}, Lcom/braze/reactbridge/BrazeReactBridgeImpl$Companion;->jsonToNativeMap(Lorg/json/JSONObject;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/facebook/react/bridge/WritableNativeArray;->pushMap(Lcom/facebook/react/bridge/ReadableMap;)V

    goto :goto_1

    .line 1011
    :cond_0
    instance-of v4, v3, Lorg/json/JSONArray;

    if-eqz v4, :cond_1

    check-cast v3, Lorg/json/JSONArray;

    invoke-direct {p0, v3}, Lcom/braze/reactbridge/BrazeReactBridgeImpl$Companion;->jsonToNativeArray(Lorg/json/JSONArray;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/facebook/react/bridge/WritableNativeArray;->pushArray(Lcom/facebook/react/bridge/ReadableArray;)V

    goto :goto_1

    .line 1012
    :cond_1
    instance-of v4, v3, Ljava/lang/Boolean;

    if-eqz v4, :cond_2

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/facebook/react/bridge/WritableNativeArray;->pushBoolean(Z)V

    goto :goto_1

    .line 1013
    :cond_2
    instance-of v4, v3, Ljava/lang/Integer;

    if-eqz v4, :cond_3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/facebook/react/bridge/WritableNativeArray;->pushInt(I)V

    goto :goto_1

    .line 1014
    :cond_3
    instance-of v4, v3, Ljava/lang/Double;

    if-eqz v4, :cond_4

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/facebook/react/bridge/WritableNativeArray;->pushDouble(D)V

    goto :goto_1

    .line 1015
    :cond_4
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_5

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/facebook/react/bridge/WritableNativeArray;->pushString(Ljava/lang/String;)V

    goto :goto_1

    .line 1016
    :cond_5
    sget-object v4, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v0}, Lcom/facebook/react/bridge/WritableNativeArray;->pushNull()V

    goto :goto_1

    .line 1017
    :cond_6
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/facebook/react/bridge/WritableNativeArray;->pushString(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1020
    :cond_7
    check-cast v0, Lcom/facebook/react/bridge/ReadableArray;

    return-object v0
.end method

.method private final jsonToNativeMap(Lorg/json/JSONObject;)Lcom/facebook/react/bridge/ReadableMap;
    .locals 5

    .line 987
    new-instance v0, Lcom/facebook/react/bridge/WritableNativeMap;

    invoke-direct {v0}, Lcom/facebook/react/bridge/WritableNativeMap;-><init>()V

    .line 988
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    const-string v2, "keys(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1114
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 989
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 990
    instance-of v4, v3, Lorg/json/JSONObject;

    if-eqz v4, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v4, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->Companion:Lcom/braze/reactbridge/BrazeReactBridgeImpl$Companion;

    check-cast v3, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lcom/braze/reactbridge/BrazeReactBridgeImpl$Companion;->jsonToNativeMap(Lorg/json/JSONObject;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/facebook/react/bridge/WritableNativeMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    goto :goto_0

    .line 991
    :cond_1
    instance-of v4, v3, Lorg/json/JSONArray;

    if-eqz v4, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v4, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->Companion:Lcom/braze/reactbridge/BrazeReactBridgeImpl$Companion;

    check-cast v3, Lorg/json/JSONArray;

    invoke-direct {v4, v3}, Lcom/braze/reactbridge/BrazeReactBridgeImpl$Companion;->jsonToNativeArray(Lorg/json/JSONArray;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/facebook/react/bridge/WritableNativeMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    goto :goto_0

    .line 992
    :cond_2
    instance-of v4, v3, Ljava/lang/Boolean;

    if-eqz v4, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/facebook/react/bridge/WritableNativeMap;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 993
    :cond_3
    instance-of v4, v3, Ljava/lang/Integer;

    if-eqz v4, :cond_4

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/facebook/react/bridge/WritableNativeMap;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 994
    :cond_4
    instance-of v4, v3, Ljava/lang/Double;

    if-eqz v4, :cond_5

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Lcom/facebook/react/bridge/WritableNativeMap;->putDouble(Ljava/lang/String;D)V

    goto :goto_0

    .line 995
    :cond_5
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_6

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/facebook/react/bridge/WritableNativeMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 996
    :cond_6
    sget-object v4, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Lcom/facebook/react/bridge/WritableNativeMap;->putNull(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 999
    :cond_7
    check-cast v0, Lcom/facebook/react/bridge/ReadableMap;

    return-object v0
.end method

.method private final parseNotificationSubscriptionType(Ljava/lang/String;)Lcom/braze/enums/NotificationSubscriptionType;
    .locals 2

    if-eqz p1, :cond_6

    .line 1093
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x4a7b74c9

    if-eq v0, v1, :cond_4

    const v1, -0x48b433a6

    if-eq v0, v1, :cond_2

    const v1, 0x35c12fb3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "unsubscribed"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 1098
    :cond_1
    sget-object p1, Lcom/braze/enums/NotificationSubscriptionType;->UNSUBSCRIBED:Lcom/braze/enums/NotificationSubscriptionType;

    goto :goto_1

    .line 1093
    :cond_2
    const-string/jumbo v0, "subscribed"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    .line 1095
    :cond_3
    sget-object p1, Lcom/braze/enums/NotificationSubscriptionType;->SUBSCRIBED:Lcom/braze/enums/NotificationSubscriptionType;

    goto :goto_1

    .line 1093
    :cond_4
    const-string/jumbo v0, "optedin"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    .line 1102
    :cond_5
    sget-object p1, Lcom/braze/enums/NotificationSubscriptionType;->OPTED_IN:Lcom/braze/enums/NotificationSubscriptionType;

    goto :goto_1

    :cond_6
    :goto_0
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method private final parseReadableArray(Lcom/facebook/react/bridge/ReadableArray;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/react/bridge/ReadableArray;",
            ")",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .line 1066
    invoke-interface {p1}, Lcom/facebook/react/bridge/ReadableArray;->toArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 1067
    invoke-interface {p1}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_5

    .line 1068
    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/ReadableArray;->getType(I)Lcom/facebook/react/bridge/ReadableType;

    move-result-object v3

    sget-object v4, Lcom/braze/reactbridge/BrazeReactBridgeImpl$Companion$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v3}, Lcom/facebook/react/bridge/ReadableType;->ordinal()I

    move-result v3

    aget v3, v4, v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    goto :goto_1

    .line 1082
    :cond_0
    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/ReadableArray;->getArray(I)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 1083
    sget-object v4, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->Companion:Lcom/braze/reactbridge/BrazeReactBridgeImpl$Companion;

    invoke-direct {v4, v3}, Lcom/braze/reactbridge/BrazeReactBridgeImpl$Companion;->parseReadableArray(Lcom/facebook/react/bridge/ReadableArray;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1070
    :cond_1
    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/ReadableArray;->getMap(I)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_1

    .line 1071
    :cond_2
    const-string/jumbo v4, "type"

    invoke-interface {v3, v4}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1072
    invoke-interface {v3, v4}, Lcom/facebook/react/bridge/ReadableMap;->getType(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableType;

    move-result-object v5

    sget-object v6, Lcom/facebook/react/bridge/ReadableType;->String:Lcom/facebook/react/bridge/ReadableType;

    if-ne v5, v6, :cond_3

    .line 1073
    invoke-interface {v3, v4}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "UNIX_timestamp"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1075
    const-string/jumbo v4, "value"

    invoke-interface {v3, v4}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    .line 1076
    new-instance v5, Ljava/util/Date;

    double-to-long v3, v3

    invoke-direct {v5, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v2, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1078
    :cond_3
    invoke-direct {p0, v3}, Lcom/braze/reactbridge/BrazeReactBridgeImpl$Companion;->parseReadableMap(Lcom/facebook/react/bridge/ReadableMap;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1089
    :cond_5
    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method private final parseReadableMap(Lcom/facebook/react/bridge/ReadableMap;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/react/bridge/ReadableMap;",
            ")",
            "Ljava/util/Map<",
            "**>;"
        }
    .end annotation

    .line 1036
    invoke-interface {p1}, Lcom/facebook/react/bridge/ReadableMap;->keySetIterator()Lcom/facebook/react/bridge/ReadableMapKeySetIterator;

    move-result-object v0

    .line 1037
    invoke-interface {p1}, Lcom/facebook/react/bridge/ReadableMap;->toHashMap()Ljava/util/HashMap;

    move-result-object v1

    .line 1038
    :cond_0
    :goto_0
    invoke-interface {v0}, Lcom/facebook/react/bridge/ReadableMapKeySetIterator;->hasNextKey()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1039
    invoke-interface {v0}, Lcom/facebook/react/bridge/ReadableMapKeySetIterator;->nextKey()Ljava/lang/String;

    move-result-object v2

    .line 1041
    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/ReadableMap;->getType(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableType;

    move-result-object v3

    sget-object v4, Lcom/braze/reactbridge/BrazeReactBridgeImpl$Companion$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v3}, Lcom/facebook/react/bridge/ReadableType;->ordinal()I

    move-result v3

    aget v3, v4, v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    goto :goto_0

    .line 1055
    :cond_1
    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/ReadableMap;->getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1056
    move-object v4, v1

    check-cast v4, Ljava/util/Map;

    sget-object v5, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->Companion:Lcom/braze/reactbridge/BrazeReactBridgeImpl$Companion;

    invoke-direct {v5, v3}, Lcom/braze/reactbridge/BrazeReactBridgeImpl$Companion;->parseReadableArray(Lcom/facebook/react/bridge/ReadableArray;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1043
    :cond_2
    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/ReadableMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v3

    if-nez v3, :cond_3

    goto :goto_0

    .line 1044
    :cond_3
    const-string/jumbo v4, "type"

    invoke-interface {v3, v4}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1045
    invoke-interface {v3, v4}, Lcom/facebook/react/bridge/ReadableMap;->getType(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableType;

    move-result-object v5

    sget-object v6, Lcom/facebook/react/bridge/ReadableType;->String:Lcom/facebook/react/bridge/ReadableType;

    if-ne v5, v6, :cond_4

    .line 1046
    invoke-interface {v3, v4}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "UNIX_timestamp"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1048
    const-string/jumbo v4, "value"

    invoke-interface {v3, v4}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    .line 1049
    move-object v5, v1

    check-cast v5, Ljava/util/Map;

    new-instance v6, Ljava/util/Date;

    double-to-long v3, v3

    invoke-direct {v6, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-interface {v5, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1051
    :cond_4
    move-object v4, v1

    check-cast v4, Ljava/util/Map;

    invoke-direct {p0, v3}, Lcom/braze/reactbridge/BrazeReactBridgeImpl$Companion;->parseReadableMap(Lcom/facebook/react/bridge/ReadableMap;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1062
    :cond_5
    check-cast v1, Ljava/util/Map;

    return-object v1
.end method

.method private final populateEventPropertiesFromReadableMap(Lcom/facebook/react/bridge/ReadableMap;)Lcom/braze/models/outgoing/BrazeProperties;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 1026
    :cond_0
    sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1027
    new-instance p1, Lcom/braze/models/outgoing/BrazeProperties;

    invoke-direct {p1}, Lcom/braze/models/outgoing/BrazeProperties;-><init>()V

    goto :goto_0

    .line 1030
    :cond_1
    new-instance v0, Lcom/braze/models/outgoing/BrazeProperties;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {p0, p1}, Lcom/braze/reactbridge/BrazeReactBridgeImpl$Companion;->parseReadableMap(Lcom/facebook/react/bridge/ReadableMap;)Ljava/util/Map;

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-direct {v0, v1}, Lcom/braze/models/outgoing/BrazeProperties;-><init>(Lorg/json/JSONObject;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method private final reportResult(Lcom/facebook/react/bridge/Callback;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 8

    if-eqz p1, :cond_1

    if-eqz p3, :cond_0

    .line 973
    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 975
    filled-new-array {p3, p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    goto :goto_0

    .line 978
    :cond_1
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v2, Lcom/braze/support/BrazeLogger$Priority;->W:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v5, Lcom/braze/reactbridge/BrazeReactBridgeImpl$Companion$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Lcom/braze/reactbridge/BrazeReactBridgeImpl$Companion$$ExternalSyntheticLambda0;-><init>()V

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method static synthetic reportResult$default(Lcom/braze/reactbridge/BrazeReactBridgeImpl$Companion;Lcom/facebook/react/bridge/Callback;Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 1

    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    move-object p3, v0

    .line 970
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/braze/reactbridge/BrazeReactBridgeImpl$Companion;->reportResult(Lcom/facebook/react/bridge/Callback;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private static final reportResult$lambda$0()Ljava/lang/String;
    .locals 1

    .line 978
    const-string v0, "Warning: BrazeReactBridge callback was null."

    return-object v0
.end method
