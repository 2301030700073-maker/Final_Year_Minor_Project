.class public final Lcom/allproperty/android/consumer/modules/ModulesPackage;
.super Ljava/lang/Object;
.source "ModulesPackage.kt"

# interfaces
.implements Lcom/facebook/react/ReactPackage;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0016\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00052\u0006\u0010\u0007\u001a\u00020\u0008H\u0016J\u001e\u0010\t\u001a\u0010\u0012\u000c\u0012\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\n0\u00052\u0006\u0010\u0007\u001a\u00020\u0008H\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/allproperty/android/consumer/modules/ModulesPackage;",
        "Lcom/facebook/react/ReactPackage;",
        "<init>",
        "()V",
        "createNativeModules",
        "",
        "Lcom/facebook/react/bridge/NativeModule;",
        "reactContext",
        "Lcom/facebook/react/bridge/ReactApplicationContext;",
        "createViewManagers",
        "Lcom/facebook/react/uimanager/ViewManager;",
        "app_myPublicRelease"
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
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createNativeModules(Lcom/facebook/react/bridge/ReactApplicationContext;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/react/bridge/ReactApplicationContext;",
            ")",
            "Ljava/util/List<",
            "Lcom/facebook/react/bridge/NativeModule;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "reactContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0xd

    .line 17
    new-array v0, v0, [Lcom/facebook/react/bridge/ReactContextBaseJavaModule;

    new-instance v1, Lcom/allproperty/android/consumer/modules/appmetrics/AppMetricsModule;

    invoke-direct {v1, p1}, Lcom/allproperty/android/consumer/modules/appmetrics/AppMetricsModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 18
    new-instance v1, Lcom/allproperty/android/consumer/modules/applesignin/AppleSignInModule;

    invoke-direct {v1, p1}, Lcom/allproperty/android/consumer/modules/applesignin/AppleSignInModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 19
    new-instance v1, Lcom/allproperty/android/consumer/modules/Application;

    invoke-direct {v1, p1}, Lcom/allproperty/android/consumer/modules/Application;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 20
    new-instance v1, Lcom/allproperty/android/consumer/modules/ContactsHelper;

    invoke-direct {v1, p1}, Lcom/allproperty/android/consumer/modules/ContactsHelper;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 21
    new-instance v1, Lcom/allproperty/android/consumer/modules/EventEmitter;

    invoke-direct {v1, p1}, Lcom/allproperty/android/consumer/modules/EventEmitter;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 22
    new-instance v1, Lcom/allproperty/android/consumer/modules/FeatureHelper;

    invoke-direct {v1, p1}, Lcom/allproperty/android/consumer/modules/FeatureHelper;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 23
    new-instance v1, Lcom/allproperty/android/consumer/modules/dfp/GoogleAdManager;

    invoke-direct {v1, p1}, Lcom/allproperty/android/consumer/modules/dfp/GoogleAdManager;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 24
    new-instance v1, Lcom/allproperty/android/consumer/modules/GoogleAnalytics;

    invoke-direct {v1, p1}, Lcom/allproperty/android/consumer/modules/GoogleAnalytics;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 25
    new-instance v1, Lcom/allproperty/android/consumer/modules/IPropertyMigration;

    invoke-direct {v1, p1}, Lcom/allproperty/android/consumer/modules/IPropertyMigration;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 26
    new-instance v1, Lcom/allproperty/android/consumer/modules/Notification;

    invoke-direct {v1, p1}, Lcom/allproperty/android/consumer/modules/Notification;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 27
    new-instance v1, Lcom/allproperty/android/consumer/modules/orientation/Orientation;

    invoke-direct {v1, p1}, Lcom/allproperty/android/consumer/modules/orientation/Orientation;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 28
    new-instance v1, Lcom/allproperty/android/consumer/modules/performance/PerformanceMonitorModule;

    invoke-direct {v1, p1}, Lcom/allproperty/android/consumer/modules/performance/PerformanceMonitorModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 29
    new-instance v1, Lcom/allproperty/android/consumer/modules/SplashScreen;

    invoke-direct {v1, p1}, Lcom/allproperty/android/consumer/modules/SplashScreen;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    const/16 p1, 0xc

    aput-object v1, v0, p1

    .line 16
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public createViewManagers(Lcom/facebook/react/bridge/ReactApplicationContext;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/react/bridge/ReactApplicationContext;",
            ")",
            "Ljava/util/List<",
            "Lcom/facebook/react/uimanager/ViewManager<",
            "**>;>;"
        }
    .end annotation

    const-string/jumbo v0, "reactContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    new-instance p1, Lcom/allproperty/android/consumer/modules/dfp/BannerAdViewManager;

    invoke-direct {p1}, Lcom/allproperty/android/consumer/modules/dfp/BannerAdViewManager;-><init>()V

    .line 34
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
