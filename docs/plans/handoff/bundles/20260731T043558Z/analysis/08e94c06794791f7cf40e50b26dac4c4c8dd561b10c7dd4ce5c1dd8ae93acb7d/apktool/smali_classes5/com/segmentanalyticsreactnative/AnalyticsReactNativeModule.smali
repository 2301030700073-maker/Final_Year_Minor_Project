.class public final Lcom/segmentanalyticsreactnative/AnalyticsReactNativeModule;
.super Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.source "AnalyticsReactNativeModule.kt"

# interfaces
.implements Lcom/facebook/react/bridge/ActivityEventListener;
.implements Lcom/facebook/react/bridge/LifecycleEventListener;


# annotations
.annotation runtime Lcom/facebook/react/module/annotations/ReactModule;
    name = "AnalyticsReactNative"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAnalyticsReactNativeModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AnalyticsReactNativeModule.kt\ncom/segmentanalyticsreactnative/AnalyticsReactNativeModule\n+ 2 Strings.kt\nkotlin/text/StringsKt__StringsKt\n*L\n1#1,268:1\n108#2:269\n80#2,22:270\n*S KotlinDebug\n*F\n+ 1 AnalyticsReactNativeModule.kt\ncom/segmentanalyticsreactnative/AnalyticsReactNativeModule\n*L\n209#1:269\n209#1:270,22\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0012\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0007\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B\u0011\u0008\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0008\u0010\u000f\u001a\u00020\nH\u0016J\u0008\u0010\u0014\u001a\u00020\u0015H\u0016J\u0008\u0010\u0016\u001a\u00020\u0015H\u0002J\n\u0010\u0017\u001a\u00020\u0015*\u00020\u0018J\u0012\u0010\u0019\u001a\u0004\u0018\u00010\u00152\u0006\u0010\u001a\u001a\u00020\u0011H\u0002J\u0010\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001eH\u0002J\u0018\u0010\u001f\u001a\u00020\n2\u0006\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020#H\u0007J\u0010\u0010$\u001a\u0004\u0018\u00010%2\u0006\u0010&\u001a\u00020\'J\u0010\u0010(\u001a\u00020\n2\u0008\u0010)\u001a\u0004\u0018\u00010*J\u000e\u0010+\u001a\u00020\n2\u0006\u0010,\u001a\u00020\u0015J*\u0010-\u001a\u00020\n2\u0006\u0010&\u001a\u00020\'2\u0006\u0010.\u001a\u00020/2\u0006\u00100\u001a\u00020/2\u0008\u00101\u001a\u0004\u0018\u00010*H\u0016J\u0010\u00102\u001a\u00020\n2\u0006\u0010)\u001a\u00020*H\u0016J\u0008\u00103\u001a\u00020\nH\u0016J\u0008\u00104\u001a\u00020\nH\u0016J\u0008\u00105\u001a\u00020\nH\u0016R \u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u00066"
    }
    d2 = {
        "Lcom/segmentanalyticsreactnative/AnalyticsReactNativeModule;",
        "Lcom/facebook/react/bridge/ReactContextBaseJavaModule;",
        "Lcom/facebook/react/bridge/ActivityEventListener;",
        "Lcom/facebook/react/bridge/LifecycleEventListener;",
        "reactContext",
        "Lcom/facebook/react/bridge/ReactApplicationContext;",
        "<init>",
        "(Lcom/facebook/react/bridge/ReactApplicationContext;)V",
        "onInitialized",
        "Lkotlin/Function0;",
        "",
        "getOnInitialized",
        "()Lkotlin/jvm/functions/Function0;",
        "setOnInitialized",
        "(Lkotlin/jvm/functions/Function0;)V",
        "initialize",
        "isColdLaunch",
        "",
        "pInfo",
        "Landroid/content/pm/PackageInfo;",
        "getName",
        "",
        "getBuildNumber",
        "toHexString",
        "",
        "getUniqueId",
        "collectDeviceId",
        "getConnectionType",
        "Lcom/segmentanalyticsreactnative/ConnectionType;",
        "context",
        "Landroid/content/Context;",
        "getContextInfo",
        "config",
        "Lcom/facebook/react/bridge/ReadableMap;",
        "promise",
        "Lcom/facebook/react/bridge/Promise;",
        "getReferrer",
        "Landroid/net/Uri;",
        "activity",
        "Landroid/app/Activity;",
        "trackDeepLinks",
        "intent",
        "Landroid/content/Intent;",
        "setAnonymousId",
        "anonymousId",
        "onActivityResult",
        "requestCode",
        "",
        "resultCode",
        "data",
        "onNewIntent",
        "onHostResume",
        "onHostPause",
        "onHostDestroy",
        "segment_analytics-react-native_release"
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
.field private isColdLaunch:Z

.field private onInitialized:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final pInfo:Landroid/content/pm/PackageInfo;


# direct methods
.method public static synthetic $r8$lambda$DrubUehK3OpH24cbIP9nLv8KOhc(B)Ljava/lang/CharSequence;
    .locals 0

    invoke-static {p0}, Lcom/segmentanalyticsreactnative/AnalyticsReactNativeModule;->toHexString$lambda$1(B)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$K7D_H6MQcNX5KfqVWi0QylQxjPo()Lkotlin/Unit;
    .locals 1

    invoke-static {}, Lcom/segmentanalyticsreactnative/AnalyticsReactNativeModule;->onInitialized$lambda$0()Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 3

    const-string v0, "reactContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 34
    new-instance v0, Lcom/segmentanalyticsreactnative/AnalyticsReactNativeModule$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/segmentanalyticsreactnative/AnalyticsReactNativeModule$$ExternalSyntheticLambda1;-><init>()V

    iput-object v0, p0, Lcom/segmentanalyticsreactnative/AnalyticsReactNativeModule;->onInitialized:Lkotlin/jvm/functions/Function0;

    const/4 v0, 0x1

    .line 49
    iput-boolean v0, p0, Lcom/segmentanalyticsreactnative/AnalyticsReactNativeModule;->isColdLaunch:Z

    .line 37
    invoke-virtual {p1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/segmentanalyticsreactnative/AnalyticsReactNativeModule;->pInfo:Landroid/content/pm/PackageInfo;

    .line 39
    move-object v0, p0

    check-cast v0, Lcom/facebook/react/bridge/ActivityEventListener;

    invoke-virtual {p1, v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->addActivityEventListener(Lcom/facebook/react/bridge/ActivityEventListener;)V

    .line 41
    move-object v0, p0

    check-cast v0, Lcom/facebook/react/bridge/LifecycleEventListener;

    invoke-virtual {p1, v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->addLifecycleEventListener(Lcom/facebook/react/bridge/LifecycleEventListener;)V

    return-void
.end method

.method private final getBuildNumber()Ljava/lang/String;
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/segmentanalyticsreactnative/AnalyticsReactNativeModule;->pInfo:Landroid/content/pm/PackageInfo;

    invoke-static {v0}, Landroidx/core/content/pm/PackageInfoCompat;->getLongVersionCode(Landroid/content/pm/PackageInfo;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final getConnectionType(Landroid/content/Context;)Lcom/segmentanalyticsreactnative/ConnectionType;
    .locals 2

    .line 94
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    .line 95
    sget-object v0, Lcom/segmentanalyticsreactnative/ConnectionType;->Unknown:Lcom/segmentanalyticsreactnative/ConnectionType;

    if-eqz p1, :cond_2

    .line 99
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object p1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    .line 100
    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    sget-object p1, Lcom/segmentanalyticsreactnative/ConnectionType;->Wifi:Lcom/segmentanalyticsreactnative/ConnectionType;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 102
    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 103
    sget-object p1, Lcom/segmentanalyticsreactnative/ConnectionType;->Cellular:Lcom/segmentanalyticsreactnative/ConnectionType;

    goto :goto_0

    .line 105
    :cond_1
    sget-object p1, Lcom/segmentanalyticsreactnative/ConnectionType;->Unknown:Lcom/segmentanalyticsreactnative/ConnectionType;

    :goto_0
    move-object v0, p1

    :cond_2
    return-object v0
.end method

.method private final getUniqueId(Z)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 72
    new-instance p1, Ljava/util/UUID;

    const-wide v1, -0x121074568629b532L    # -3.563403477674908E221

    const-wide v3, -0x5c37d8232ae2de13L

    invoke-direct {p1, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    const/16 v1, 0x1c

    .line 75
    :try_start_0
    new-instance v2, Landroid/media/MediaDrm;

    invoke-direct {v2, p1}, Landroid/media/MediaDrm;-><init>(Ljava/util/UUID;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 76
    :try_start_1
    const-string p1, "deviceUniqueId"

    invoke-virtual {v2, p1}, Landroid/media/MediaDrm;->getPropertyByteArray(Ljava/lang/String;)[B

    move-result-object p1

    const-string v3, "getPropertyByteArray(...)"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    const-string v3, "SHA-256"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 78
    invoke-virtual {v3, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 79
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    const-string v3, "digest(...)"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/segmentanalyticsreactnative/AnalyticsReactNativeModule;->toHexString([B)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_0

    .line 84
    invoke-virtual {v2}, Landroid/media/MediaDrm;->release()V

    goto :goto_0

    .line 86
    :cond_0
    invoke-virtual {v2}, Landroid/media/MediaDrm;->release()V

    :goto_0
    return-object p1

    :catchall_0
    move-exception p1

    move-object v0, v2

    goto :goto_1

    :catchall_1
    move-exception p1

    .line 83
    :goto_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v1, :cond_1

    if-eqz v0, :cond_2

    .line 84
    invoke-virtual {v0}, Landroid/media/MediaDrm;->release()V

    goto :goto_2

    :cond_1
    if-eqz v0, :cond_2

    .line 86
    invoke-virtual {v0}, Landroid/media/MediaDrm;->release()V

    :cond_2
    :goto_2
    throw p1

    :catch_0
    move-object v2, v0

    .line 83
    :catch_1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v1, :cond_3

    if-eqz v2, :cond_4

    .line 84
    invoke-virtual {v2}, Landroid/media/MediaDrm;->release()V

    goto :goto_3

    :cond_3
    if-eqz v2, :cond_4

    .line 86
    invoke-virtual {v2}, Landroid/media/MediaDrm;->release()V

    :cond_4
    :goto_3
    return-object v0
.end method

.method private static final onInitialized$lambda$0()Lkotlin/Unit;
    .locals 1

    .line 34
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private static final toHexString$lambda$1(B)Ljava/lang/CharSequence;
    .locals 1

    .line 60
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    const-string v0, "%02x"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "format(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/CharSequence;

    return-object p0
.end method


# virtual methods
.method public final getContextInfo(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 17
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "config"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "promise"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    invoke-virtual/range {p0 .. p0}, Lcom/segmentanalyticsreactnative/AnalyticsReactNativeModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/react/bridge/ReactApplicationContext;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/segmentanalyticsreactnative/AnalyticsReactNativeModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/facebook/react/bridge/ReactApplicationContext;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 128
    iget-object v4, v0, Lcom/segmentanalyticsreactnative/AnalyticsReactNativeModule;->pInfo:Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 129
    invoke-direct/range {p0 .. p0}, Lcom/segmentanalyticsreactnative/AnalyticsReactNativeModule;->getBuildNumber()Ljava/lang/String;

    move-result-object v5

    .line 130
    invoke-virtual/range {p0 .. p0}, Lcom/segmentanalyticsreactnative/AnalyticsReactNativeModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v6

    invoke-virtual {v6}, Lcom/facebook/react/bridge/ReactApplicationContext;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 132
    invoke-virtual/range {p0 .. p0}, Lcom/segmentanalyticsreactnative/AnalyticsReactNativeModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v7

    const-string v8, "getReactApplicationContext(...)"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Landroid/content/Context;

    invoke-direct {v0, v7}, Lcom/segmentanalyticsreactnative/AnalyticsReactNativeModule;->getConnectionType(Landroid/content/Context;)Lcom/segmentanalyticsreactnative/ConnectionType;

    move-result-object v7

    .line 133
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v8

    const-string v9, "getDefault(...)"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v10

    invoke-static {v10, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    invoke-virtual {v10}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, "-"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 137
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    iget v11, v11, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 138
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v12

    iget v12, v12, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 140
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v13

    iget v13, v13, Landroid/util/DisplayMetrics;->density:F

    .line 142
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v14

    const-string v15, "createMap(...)"

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    const-string v15, "collectDeviceId"

    invoke-interface {v1, v15}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_2

    invoke-interface {v1, v15}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_2

    .line 146
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    move/from16 v16, v13

    const-string v13, "toString(...)"

    invoke-static {v2, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    invoke-interface {v1, v15}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-interface {v1, v15}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-direct {v0, v1}, Lcom/segmentanalyticsreactnative/AnalyticsReactNativeModule;->getUniqueId(Z)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    move-object v2, v1

    .line 149
    :goto_1
    const-string v1, "deviceId"

    invoke-interface {v14, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    move/from16 v16, v13

    .line 152
    :goto_2
    const-string v1, "appName"

    invoke-interface {v14, v1, v3}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    const-string v1, "appVersion"

    invoke-interface {v14, v1, v4}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const-string v1, "buildNumber"

    invoke-interface {v14, v1, v5}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    const-string v1, "bundleId"

    invoke-interface {v14, v1, v6}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    const-string v1, "deviceName"

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-interface {v14, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const-string v1, "deviceType"

    const-string v2, "android"

    invoke-interface {v14, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const-string v1, "manufacturer"

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-interface {v14, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    const-string v1, "model"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface {v14, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    const-string v1, "timezone"

    invoke-virtual {v8}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v14, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const-string v1, "locale"

    invoke-interface {v14, v1, v9}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    invoke-virtual {v7}, Lcom/segmentanalyticsreactnative/ConnectionType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "toLowerCase(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "networkType"

    invoke-interface {v14, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const-string v1, "osName"

    const-string v2, "Android"

    invoke-interface {v14, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const-string v1, "osVersion"

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-interface {v14, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    const-string v1, "screenWidth"

    invoke-interface {v14, v1, v11}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 170
    const-string v1, "screenHeight"

    invoke-interface {v14, v1, v12}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 171
    const-string v1, "screenDensity"

    move/from16 v2, v16

    float-to-double v2, v2

    invoke-interface {v14, v1, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    move-object/from16 v1, p2

    .line 173
    invoke-interface {v1, v14}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 53
    const-string v0, "AnalyticsReactNative"

    return-object v0
.end method

.method public final getOnInitialized()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/segmentanalyticsreactnative/AnalyticsReactNativeModule;->onInitialized:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public final getReferrer(Landroid/app/Activity;)Landroid/net/Uri;
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    invoke-virtual {p1}, Landroid/app/Activity;->getReferrer()Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method public initialize()V
    .locals 1

    .line 45
    invoke-super {p0}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;->initialize()V

    .line 46
    iget-object v0, p0, Lcom/segmentanalyticsreactnative/AnalyticsReactNativeModule;->onInitialized:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 0

    const-string p2, "activity"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onHostDestroy()V
    .locals 1

    const/4 v0, 0x1

    .line 264
    iput-boolean v0, p0, Lcom/segmentanalyticsreactnative/AnalyticsReactNativeModule;->isColdLaunch:Z

    return-void
.end method

.method public onHostPause()V
    .locals 0

    return-void
.end method

.method public onHostResume()V
    .locals 4

    .line 252
    invoke-virtual {p0}, Lcom/segmentanalyticsreactnative/AnalyticsReactNativeModule;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/segmentanalyticsreactnative/AnalyticsReactNativeModule;->isColdLaunch:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 253
    iput-boolean v0, p0, Lcom/segmentanalyticsreactnative/AnalyticsReactNativeModule;->isColdLaunch:Z

    .line 254
    invoke-virtual {p0}, Lcom/segmentanalyticsreactnative/AnalyticsReactNativeModule;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/segmentanalyticsreactnative/AnalyticsReactNativeModule;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onHostResume = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    invoke-virtual {p0}, Lcom/segmentanalyticsreactnative/AnalyticsReactNativeModule;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/segmentanalyticsreactnative/AnalyticsReactNativeModule;->trackDeepLinks(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 3

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 247
    invoke-virtual {p0}, Lcom/segmentanalyticsreactnative/AnalyticsReactNativeModule;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onNewIntent = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    invoke-virtual {p0, p1}, Lcom/segmentanalyticsreactnative/AnalyticsReactNativeModule;->trackDeepLinks(Landroid/content/Intent;)V

    return-void
.end method

.method public final setAnonymousId(Ljava/lang/String;)V
    .locals 2

    const-string v0, "anonymousId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 231
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    .line 232
    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    invoke-virtual {p0}, Lcom/segmentanalyticsreactnative/AnalyticsReactNativeModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 237
    const-class v0, Lcom/sovranreactnative/SovranModule;

    invoke-virtual {p1, v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->getNativeModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/NativeModule;

    move-result-object p1

    check-cast p1, Lcom/sovranreactnative/SovranModule;

    if-eqz p1, :cond_0

    .line 238
    const-string v0, "add-anonymous-id"

    invoke-virtual {p1, v0, v1}, Lcom/sovranreactnative/SovranModule;->dispatch(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public final setOnInitialized(Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    iput-object p1, p0, Lcom/segmentanalyticsreactnative/AnalyticsReactNativeModule;->onInitialized:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public final toHexString([B)Ljava/lang/String;
    .locals 10

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    const-string v0, ""

    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    new-instance v7, Lcom/segmentanalyticsreactnative/AnalyticsReactNativeModule$$ExternalSyntheticLambda0;

    invoke-direct {v7}, Lcom/segmentanalyticsreactnative/AnalyticsReactNativeModule$$ExternalSyntheticLambda0;-><init>()V

    const/16 v8, 0x1e

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v9}, Lkotlin/collections/ArraysKt;->joinToString$default([BLjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final trackDeepLinks(Landroid/content/Intent;)V
    .locals 13

    if-eqz p1, :cond_e

    .line 185
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_6

    .line 190
    :cond_0
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 192
    invoke-virtual {p0}, Lcom/segmentanalyticsreactnative/AnalyticsReactNativeModule;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_1

    .line 193
    invoke-virtual {p0}, Lcom/segmentanalyticsreactnative/AnalyticsReactNativeModule;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "No activity found"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 197
    :cond_1
    invoke-virtual {p0}, Lcom/segmentanalyticsreactnative/AnalyticsReactNativeModule;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Lcom/segmentanalyticsreactnative/AnalyticsReactNativeModule;->getReferrer(Landroid/app/Activity;)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 200
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "toString(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 201
    move-object v3, v0

    check-cast v3, Ljava/util/Map;

    const-string v4, "referring_application"

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    .line 206
    :try_start_0
    move-object v2, v0

    check-cast v2, Ljava/util/Map;

    const-string v3, "url"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 208
    invoke-virtual {p1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 269
    move-object v5, v4

    check-cast v5, Ljava/lang/CharSequence;

    .line 271
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    const/4 v8, 0x0

    move v9, v8

    move v10, v9

    :goto_1
    if-gt v9, v6, :cond_9

    if-nez v10, :cond_4

    move v11, v9

    goto :goto_2

    :cond_4
    move v11, v6

    .line 276
    :goto_2
    invoke-interface {v5, v11}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v11

    const/16 v12, 0x20

    .line 209
    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v11

    if-gtz v11, :cond_5

    move v11, v7

    goto :goto_3

    :cond_5
    move v11, v8

    :goto_3
    if-nez v10, :cond_7

    if-nez v11, :cond_6

    move v10, v7

    goto :goto_1

    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_7
    if-nez v11, :cond_8

    goto :goto_4

    :cond_8
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    :cond_9
    :goto_4
    add-int/lit8 v6, v6, 0x1

    .line 291
    invoke-interface {v5, v9, v6}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    .line 269
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 209
    check-cast v5, Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-lez v5, :cond_3

    .line 210
    move-object v5, v0

    check-cast v5, Ljava/util/Map;

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 219
    :cond_a
    invoke-virtual {p0}, Lcom/segmentanalyticsreactnative/AnalyticsReactNativeModule;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Sending Deeplink data to store: uri="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v3, ", referrer="

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    invoke-virtual {p0}, Lcom/segmentanalyticsreactnative/AnalyticsReactNativeModule;->getCurrentActivity()Landroid/app/Activity;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    goto :goto_5

    :cond_b
    move-object p1, v1

    :goto_5
    const-string v2, "null cannot be cast to non-null type com.facebook.react.ReactApplication"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/facebook/react/ReactApplication;

    .line 221
    invoke-interface {p1}, Lcom/facebook/react/ReactApplication;->getReactNativeHost()Lcom/facebook/react/ReactNativeHost;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 222
    invoke-virtual {p1}, Lcom/facebook/react/ReactNativeHost;->getReactInstanceManager()Lcom/facebook/react/ReactInstanceManager;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 223
    invoke-virtual {p1}, Lcom/facebook/react/ReactInstanceManager;->getCurrentReactContext()Lcom/facebook/react/bridge/ReactContext;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 224
    const-class v1, Lcom/sovranreactnative/SovranModule;

    invoke-virtual {p1, v1}, Lcom/facebook/react/bridge/ReactContext;->getNativeModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/NativeModule;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/sovranreactnative/SovranModule;

    :cond_c
    if-eqz v1, :cond_d

    .line 225
    const-string p1, "add-deepLink-data"

    check-cast v0, Ljava/util/Map;

    invoke-virtual {v1, p1, v0}, Lcom/sovranreactnative/SovranModule;->dispatch(Ljava/lang/String;Ljava/util/Map;)V

    :cond_d
    return-void

    :catch_0
    move-exception p1

    .line 215
    invoke-virtual {p0}, Lcom/segmentanalyticsreactnative/AnalyticsReactNativeModule;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error getting URL: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 186
    :cond_e
    :goto_6
    invoke-virtual {p0}, Lcom/segmentanalyticsreactnative/AnalyticsReactNativeModule;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "No Intent data found"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
