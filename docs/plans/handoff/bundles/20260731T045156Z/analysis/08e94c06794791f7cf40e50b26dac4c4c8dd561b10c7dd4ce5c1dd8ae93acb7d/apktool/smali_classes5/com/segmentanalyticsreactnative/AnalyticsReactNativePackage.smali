.class public final Lcom/segmentanalyticsreactnative/AnalyticsReactNativePackage;
.super Ljava/lang/Object;
.source "AnalyticsReactNativePackage.kt"

# interfaces
.implements Lcom/facebook/react/ReactPackage;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0016\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000b2\u0006\u0010\r\u001a\u00020\u000eH\u0016J\u001e\u0010\u000f\u001a\u0010\u0012\u000c\u0012\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u00100\u000b2\u0006\u0010\r\u001a\u00020\u000eH\u0016J\u000e\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0007R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/segmentanalyticsreactnative/AnalyticsReactNativePackage;",
        "Lcom/facebook/react/ReactPackage;",
        "<init>",
        "()V",
        "isInitialized",
        "",
        "anonymousId",
        "",
        "module",
        "Lcom/segmentanalyticsreactnative/AnalyticsReactNativeModule;",
        "createNativeModules",
        "",
        "Lcom/facebook/react/bridge/NativeModule;",
        "reactContext",
        "Lcom/facebook/react/bridge/ReactApplicationContext;",
        "createViewManagers",
        "Lcom/facebook/react/uimanager/ViewManager;",
        "setAnonymousId",
        "",
        "nativeAnonymousId",
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
.field private anonymousId:Ljava/lang/String;

.field private isInitialized:Z

.field private module:Lcom/segmentanalyticsreactnative/AnalyticsReactNativeModule;


# direct methods
.method public static synthetic $r8$lambda$gAPOkZVRG3WI1Yb0aZ5MVcHwcDU(Lcom/segmentanalyticsreactnative/AnalyticsReactNativePackage;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/segmentanalyticsreactnative/AnalyticsReactNativePackage;->createNativeModules$lambda$1(Lcom/segmentanalyticsreactnative/AnalyticsReactNativePackage;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final createNativeModules$lambda$1(Lcom/segmentanalyticsreactnative/AnalyticsReactNativePackage;)Lkotlin/Unit;
    .locals 1

    const/4 v0, 0x1

    .line 21
    iput-boolean v0, p0, Lcom/segmentanalyticsreactnative/AnalyticsReactNativePackage;->isInitialized:Z

    .line 22
    iget-object v0, p0, Lcom/segmentanalyticsreactnative/AnalyticsReactNativePackage;->anonymousId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 23
    iget-object p0, p0, Lcom/segmentanalyticsreactnative/AnalyticsReactNativePackage;->module:Lcom/segmentanalyticsreactnative/AnalyticsReactNativeModule;

    if-eqz p0, :cond_0

    invoke-virtual {p0, v0}, Lcom/segmentanalyticsreactnative/AnalyticsReactNativeModule;->setAnonymousId(Ljava/lang/String;)V

    .line 25
    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public createNativeModules(Lcom/facebook/react/bridge/ReactApplicationContext;)Ljava/util/List;
    .locals 1
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

    const-string v0, "reactContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    new-instance v0, Lcom/segmentanalyticsreactnative/AnalyticsReactNativeModule;

    invoke-direct {v0, p1}, Lcom/segmentanalyticsreactnative/AnalyticsReactNativeModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    iput-object v0, p0, Lcom/segmentanalyticsreactnative/AnalyticsReactNativePackage;->module:Lcom/segmentanalyticsreactnative/AnalyticsReactNativeModule;

    .line 20
    new-instance p1, Lcom/segmentanalyticsreactnative/AnalyticsReactNativePackage$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/segmentanalyticsreactnative/AnalyticsReactNativePackage$$ExternalSyntheticLambda0;-><init>(Lcom/segmentanalyticsreactnative/AnalyticsReactNativePackage;)V

    invoke-virtual {v0, p1}, Lcom/segmentanalyticsreactnative/AnalyticsReactNativeModule;->setOnInitialized(Lkotlin/jvm/functions/Function0;)V

    .line 26
    iget-object p1, p0, Lcom/segmentanalyticsreactnative/AnalyticsReactNativePackage;->module:Lcom/segmentanalyticsreactnative/AnalyticsReactNativeModule;

    const-string v0, "null cannot be cast to non-null type com.facebook.react.bridge.NativeModule"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/facebook/react/bridge/NativeModule;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

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

    const-string v0, "reactContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final setAnonymousId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "nativeAnonymousId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    iget-boolean v0, p0, Lcom/segmentanalyticsreactnative/AnalyticsReactNativePackage;->isInitialized:Z

    if-eqz v0, :cond_0

    .line 35
    iput-object p1, p0, Lcom/segmentanalyticsreactnative/AnalyticsReactNativePackage;->anonymousId:Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 37
    iget-object v0, p0, Lcom/segmentanalyticsreactnative/AnalyticsReactNativePackage;->module:Lcom/segmentanalyticsreactnative/AnalyticsReactNativeModule;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/segmentanalyticsreactnative/AnalyticsReactNativeModule;->setAnonymousId(Ljava/lang/String;)V

    goto :goto_0

    .line 40
    :cond_0
    iput-object p1, p0, Lcom/segmentanalyticsreactnative/AnalyticsReactNativePackage;->anonymousId:Ljava/lang/String;

    :cond_1
    :goto_0
    return-void
.end method
