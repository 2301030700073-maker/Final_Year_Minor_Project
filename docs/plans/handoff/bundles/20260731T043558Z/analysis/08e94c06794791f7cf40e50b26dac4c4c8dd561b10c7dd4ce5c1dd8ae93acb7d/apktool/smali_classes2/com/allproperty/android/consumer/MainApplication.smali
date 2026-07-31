.class public final Lcom/allproperty/android/consumer/MainApplication;
.super Landroid/app/Application;
.source "MainApplication.kt"

# interfaces
.implements Lcom/facebook/react/ReactApplication;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/allproperty/android/consumer/MainApplication$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 \u00132\u00020\u00012\u00020\u0002:\u0001\u0013B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0008\u0010\r\u001a\u00020\u000eH\u0017J\u0010\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\u0008\u0010\u0012\u001a\u00020\u000eH\u0002R\u0014\u0010\u0005\u001a\u00020\u0006X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0014\u0010\t\u001a\u00020\n8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/allproperty/android/consumer/MainApplication;",
        "Landroid/app/Application;",
        "Lcom/facebook/react/ReactApplication;",
        "<init>",
        "()V",
        "reactNativeHost",
        "Lcom/facebook/react/ReactNativeHost;",
        "getReactNativeHost",
        "()Lcom/facebook/react/ReactNativeHost;",
        "reactHost",
        "Lcom/facebook/react/ReactHost;",
        "getReactHost",
        "()Lcom/facebook/react/ReactHost;",
        "onCreate",
        "",
        "onConfigurationChanged",
        "newConfig",
        "Landroid/content/res/Configuration;",
        "initializePicasso",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/allproperty/android/consumer/MainApplication$Companion;

.field private static nativeStartTime:J

.field private static final performanceMonitor:Lcom/allproperty/android/consumer/modules/performance/PerformanceMonitor;


# instance fields
.field private final reactNativeHost:Lcom/facebook/react/ReactNativeHost;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/allproperty/android/consumer/MainApplication$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/allproperty/android/consumer/MainApplication$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/allproperty/android/consumer/MainApplication;->Companion:Lcom/allproperty/android/consumer/MainApplication$Companion;

    .line 29
    new-instance v0, Lcom/allproperty/android/consumer/modules/performance/PerformanceMonitor;

    invoke-direct {v0}, Lcom/allproperty/android/consumer/modules/performance/PerformanceMonitor;-><init>()V

    sput-object v0, Lcom/allproperty/android/consumer/MainApplication;->performanceMonitor:Lcom/allproperty/android/consumer/modules/performance/PerformanceMonitor;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 26
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 33
    new-instance v0, Lexpo/modules/ReactNativeHostWrapper;

    move-object v1, p0

    check-cast v1, Landroid/app/Application;

    new-instance v2, Lcom/allproperty/android/consumer/MainApplication$reactNativeHost$1;

    invoke-direct {v2, p0}, Lcom/allproperty/android/consumer/MainApplication$reactNativeHost$1;-><init>(Lcom/allproperty/android/consumer/MainApplication;)V

    check-cast v2, Lcom/facebook/react/ReactNativeHost;

    invoke-direct {v0, v1, v2}, Lexpo/modules/ReactNativeHostWrapper;-><init>(Landroid/app/Application;Lcom/facebook/react/ReactNativeHost;)V

    check-cast v0, Lcom/facebook/react/ReactNativeHost;

    iput-object v0, p0, Lcom/allproperty/android/consumer/MainApplication;->reactNativeHost:Lcom/facebook/react/ReactNativeHost;

    return-void
.end method

.method public static final synthetic access$getNativeStartTime$cp()J
    .locals 2

    .line 26
    sget-wide v0, Lcom/allproperty/android/consumer/MainApplication;->nativeStartTime:J

    return-wide v0
.end method

.method public static final synthetic access$getPerformanceMonitor$cp()Lcom/allproperty/android/consumer/modules/performance/PerformanceMonitor;
    .locals 1

    .line 26
    sget-object v0, Lcom/allproperty/android/consumer/MainApplication;->performanceMonitor:Lcom/allproperty/android/consumer/modules/performance/PerformanceMonitor;

    return-object v0
.end method

.method public static final synthetic access$setNativeStartTime$cp(J)V
    .locals 0

    .line 26
    sput-wide p0, Lcom/allproperty/android/consumer/MainApplication;->nativeStartTime:J

    return-void
.end method

.method private final initializePicasso()V
    .locals 5

    .line 78
    new-instance v0, Lcom/squareup/picasso/Picasso$Builder;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/squareup/picasso/Picasso$Builder;-><init>(Landroid/content/Context;)V

    .line 79
    new-instance v2, Lcom/jakewharton/picasso/OkHttp3Downloader;

    const-wide/32 v3, 0x7fffffff

    invoke-direct {v2, v1, v3, v4}, Lcom/jakewharton/picasso/OkHttp3Downloader;-><init>(Landroid/content/Context;J)V

    check-cast v2, Lcom/squareup/picasso/Downloader;

    invoke-virtual {v0, v2}, Lcom/squareup/picasso/Picasso$Builder;->downloader(Lcom/squareup/picasso/Downloader;)Lcom/squareup/picasso/Picasso$Builder;

    .line 80
    invoke-virtual {v0}, Lcom/squareup/picasso/Picasso$Builder;->build()Lcom/squareup/picasso/Picasso;

    move-result-object v0

    const/4 v1, 0x0

    .line 81
    invoke-virtual {v0, v1}, Lcom/squareup/picasso/Picasso;->setIndicatorsEnabled(Z)V

    .line 82
    invoke-static {v0}, Lcom/squareup/picasso/Picasso;->setSingletonInstance(Lcom/squareup/picasso/Picasso;)V

    return-void
.end method


# virtual methods
.method public getReactHost()Lcom/facebook/react/ReactHost;
    .locals 3

    .line 50
    sget-object v0, Lexpo/modules/ReactNativeHostWrapper;->Companion:Lexpo/modules/ReactNativeHostWrapper$Companion;

    invoke-virtual {p0}, Lcom/allproperty/android/consumer/MainApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "getApplicationContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/allproperty/android/consumer/MainApplication;->getReactNativeHost()Lcom/facebook/react/ReactNativeHost;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lexpo/modules/ReactNativeHostWrapper$Companion;->createReactHost(Landroid/content/Context;Lcom/facebook/react/ReactNativeHost;)Lcom/facebook/react/ReactHost;

    move-result-object v0

    return-object v0
.end method

.method public getReactNativeHost()Lcom/facebook/react/ReactNativeHost;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/allproperty/android/consumer/MainApplication;->reactNativeHost:Lcom/facebook/react/ReactNativeHost;

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    const-string/jumbo v0, "newConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    invoke-super {p0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 74
    move-object v0, p0

    check-cast v0, Landroid/app/Application;

    invoke-static {v0, p1}, Lexpo/modules/ApplicationLifecycleDispatcher;->onConfigurationChanged(Landroid/app/Application;Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate()V
    .locals 10

    invoke-static {p0}, Lio/sentry/android/core/performance/AppStartMetrics;->onApplicationCreate(Landroid/app/Application;)V

    const-string/jumbo v0, "nativeApplicationLoad"

    invoke-static {v0}, Lcom/google/firebase/perf/FirebasePerformance;->startTrace(Ljava/lang/String;)Lcom/google/firebase/perf/metrics/Trace;

    move-result-object v0

    .line 54
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 55
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sput-wide v1, Lcom/allproperty/android/consumer/MainApplication;->nativeStartTime:J

    .line 56
    sget-object v1, Lcom/allproperty/android/consumer/MainApplication;->performanceMonitor:Lcom/allproperty/android/consumer/modules/performance/PerformanceMonitor;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/allproperty/android/consumer/modules/performance/PerformanceMonitor;->nativeAppTrace(Z)V

    .line 57
    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    sget-object v3, Lcom/facebook/react/soloader/OpenSourceMergedSoMapping;->INSTANCE:Lcom/facebook/react/soloader/OpenSourceMergedSoMapping;

    check-cast v3, Lcom/facebook/soloader/ExternalSoMapping;

    invoke-static {v1, v3}, Lcom/facebook/soloader/SoLoader;->init(Landroid/content/Context;Lcom/facebook/soloader/ExternalSoMapping;)V

    const/4 v3, 0x7

    const/4 v4, 0x0

    .line 60
    invoke-static {v2, v2, v2, v3, v4}, Lcom/facebook/react/defaults/DefaultNewArchitectureEntryPoint;->load$default(ZZZILjava/lang/Object;)V

    .line 62
    invoke-direct {p0}, Lcom/allproperty/android/consumer/MainApplication;->initializePicasso()V

    .line 63
    sget-object v2, Lcom/allproperty/android/consumer/modules/SplashScreen;->Companion:Lcom/allproperty/android/consumer/modules/SplashScreen$Companion;

    invoke-virtual {v2, v1}, Lcom/allproperty/android/consumer/modules/SplashScreen$Companion;->preloadImage(Landroid/content/Context;)V

    .line 64
    new-instance v1, Lcom/braze/BrazeActivityLifecycleCallbackListener;

    const/16 v8, 0xf

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/braze/BrazeActivityLifecycleCallbackListener;-><init>(ZZLjava/util/Set;Ljava/util/Set;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v1, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {p0, v1}, Lcom/allproperty/android/consumer/MainApplication;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 65
    sget-object v1, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;->Companion:Lcom/braze/ui/inappmessage/BrazeInAppMessageManager$Companion;

    invoke-virtual {v1}, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager$Companion;->getInstance()Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;

    move-result-object v1

    .line 66
    new-instance v2, Lcom/allproperty/android/consumer/CustomInAppMessageManagerListener;

    invoke-direct {v2}, Lcom/allproperty/android/consumer/CustomInAppMessageManagerListener;-><init>()V

    check-cast v2, Lcom/braze/ui/inappmessage/listeners/IInAppMessageManagerListener;

    invoke-virtual {v1, v2}, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;->setCustomInAppMessageManagerListener(Lcom/braze/ui/inappmessage/listeners/IInAppMessageManagerListener;)V

    .line 67
    move-object v1, p0

    check-cast v1, Landroid/app/Application;

    invoke-static {v1}, Lexpo/modules/ApplicationLifecycleDispatcher;->onApplicationCreate(Landroid/app/Application;)V

    .line 69
    sget-object v1, Lasia/rea/android/apps/searchapp/modules/braze/BrazeGtmTagProvider;->Companion:Lasia/rea/android/apps/searchapp/modules/braze/BrazeGtmTagProvider$Companion;

    invoke-virtual {p0}, Lcom/allproperty/android/consumer/MainApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lasia/rea/android/apps/searchapp/modules/braze/BrazeGtmTagProvider$Companion;->setApplicationContext(Landroid/content/Context;)V

    .line 70
    invoke-virtual {v0}, Lcom/google/firebase/perf/metrics/Trace;->stop()V

    invoke-static {p0}, Lio/sentry/android/core/performance/AppStartMetrics;->onApplicationPostCreate(Landroid/app/Application;)V

    return-void
.end method
