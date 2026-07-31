.class public final Lexpo/modules/ReactNativeHostWrapper;
.super Lexpo/modules/ReactNativeHostWrapperBase;
.source "ReactNativeHostWrapper.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/ReactNativeHostWrapper$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \u00162\u00020\u0001:\u0001\u0016B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\n\u0010\u0008\u001a\u0004\u0018\u00010\tH\u0014J\n\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0014J\n\u0010\u000c\u001a\u0004\u0018\u00010\rH\u0014J\n\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0016J\u0008\u0010\u0010\u001a\u00020\u0011H\u0016J\u0008\u0010\u0012\u001a\u00020\u0013H\u0016J\n\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0014\u00a8\u0006\u0017"
    }
    d2 = {
        "Lexpo/modules/ReactNativeHostWrapper;",
        "Lexpo/modules/ReactNativeHostWrapperBase;",
        "application",
        "Landroid/app/Application;",
        "host",
        "Lcom/facebook/react/ReactNativeHost;",
        "<init>",
        "(Landroid/app/Application;Lcom/facebook/react/ReactNativeHost;)V",
        "getDevSupportManagerFactory",
        "Lcom/facebook/react/devsupport/DevSupportManagerFactory;",
        "getReactPackageTurboModuleManagerDelegateBuilder",
        "Lcom/facebook/react/ReactPackageTurboModuleManagerDelegate$Builder;",
        "getUIManagerProvider",
        "Lcom/facebook/react/bridge/UIManagerProvider;",
        "getJSEngineResolutionAlgorithm",
        "Lcom/facebook/react/JSEngineResolutionAlgorithm;",
        "getShouldRequireActivity",
        "",
        "getSurfaceDelegateFactory",
        "Lcom/facebook/react/common/SurfaceDelegateFactory;",
        "getRedBoxHandler",
        "Lcom/facebook/react/devsupport/interfaces/RedBoxHandler;",
        "Companion",
        "expo_release"
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
.field public static final Companion:Lexpo/modules/ReactNativeHostWrapper$Companion;


# direct methods
.method public static synthetic $r8$lambda$YISS2WdgtOEnMriALNifEhWiGdE(Lexpo/modules/core/interfaces/ReactNativeHostHandler;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Lexpo/modules/ReactNativeHostWrapper;->getDevSupportManagerFactory$lambda$0(Lexpo/modules/core/interfaces/ReactNativeHostHandler;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lexpo/modules/ReactNativeHostWrapper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lexpo/modules/ReactNativeHostWrapper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lexpo/modules/ReactNativeHostWrapper;->Companion:Lexpo/modules/ReactNativeHostWrapper$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;Lcom/facebook/react/ReactNativeHost;)V
    .locals 1

    const-string v0, "application"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "host"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0, p1, p2}, Lexpo/modules/ReactNativeHostWrapperBase;-><init>(Landroid/app/Application;Lcom/facebook/react/ReactNativeHost;)V

    return-void
.end method

.method public static final createReactHost(Landroid/content/Context;Lcom/facebook/react/ReactNativeHost;)Lcom/facebook/react/ReactHost;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lexpo/modules/ReactNativeHostWrapper;->Companion:Lexpo/modules/ReactNativeHostWrapper$Companion;

    invoke-virtual {v0, p0, p1}, Lexpo/modules/ReactNativeHostWrapper$Companion;->createReactHost(Landroid/content/Context;Lcom/facebook/react/ReactNativeHost;)Lcom/facebook/react/ReactHost;

    move-result-object p0

    return-object p0
.end method

.method private static final getDevSupportManagerFactory$lambda$0(Lexpo/modules/core/interfaces/ReactNativeHostHandler;)Ljava/lang/Object;
    .locals 0

    .line 21
    invoke-interface {p0}, Lexpo/modules/core/interfaces/ReactNativeHostHandler;->getDevSupportManagerFactory()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected getDevSupportManagerFactory()Lcom/facebook/react/devsupport/DevSupportManagerFactory;
    .locals 2

    .line 19
    invoke-virtual {p0}, Lexpo/modules/ReactNativeHostWrapper;->getReactNativeHostHandlers()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 20
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->asSequence(Ljava/lang/Iterable;)Lkotlin/sequences/Sequence;

    move-result-object v0

    new-instance v1, Lexpo/modules/ReactNativeHostWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lexpo/modules/ReactNativeHostWrapper$$ExternalSyntheticLambda0;-><init>()V

    .line 21
    invoke-static {v0, v1}, Lkotlin/sequences/SequencesKt;->mapNotNull(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v0

    .line 22
    invoke-static {v0}, Lkotlin/sequences/SequencesKt;->firstOrNull(Lkotlin/sequences/Sequence;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/devsupport/DevSupportManagerFactory;

    if-nez v0, :cond_0

    .line 23
    const-string v0, "getDevSupportManagerFactory"

    invoke-virtual {p0, v0}, Lexpo/modules/ReactNativeHostWrapper;->invokeDelegateMethod$expo_release(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/devsupport/DevSupportManagerFactory;

    :cond_0
    return-object v0
.end method

.method public getJSEngineResolutionAlgorithm()Lcom/facebook/react/JSEngineResolutionAlgorithm;
    .locals 1

    .line 35
    const-string v0, "getJSEngineResolutionAlgorithm"

    invoke-virtual {p0, v0}, Lexpo/modules/ReactNativeHostWrapper;->invokeDelegateMethod$expo_release(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/JSEngineResolutionAlgorithm;

    return-object v0
.end method

.method protected getReactPackageTurboModuleManagerDelegateBuilder()Lcom/facebook/react/ReactPackageTurboModuleManagerDelegate$Builder;
    .locals 1

    .line 27
    const-string v0, "getReactPackageTurboModuleManagerDelegateBuilder"

    invoke-virtual {p0, v0}, Lexpo/modules/ReactNativeHostWrapper;->invokeDelegateMethod$expo_release(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/ReactPackageTurboModuleManagerDelegate$Builder;

    return-object v0
.end method

.method protected getRedBoxHandler()Lcom/facebook/react/devsupport/interfaces/RedBoxHandler;
    .locals 1

    .line 47
    const-string v0, "getRedBoxHandler"

    invoke-virtual {p0, v0}, Lexpo/modules/ReactNativeHostWrapper;->invokeDelegateMethod$expo_release(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/devsupport/interfaces/RedBoxHandler;

    return-object v0
.end method

.method public getShouldRequireActivity()Z
    .locals 1

    .line 39
    invoke-virtual {p0}, Lexpo/modules/ReactNativeHostWrapper;->getHost()Lcom/facebook/react/ReactNativeHost;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/react/ReactNativeHost;->getShouldRequireActivity()Z

    move-result v0

    return v0
.end method

.method public getSurfaceDelegateFactory()Lcom/facebook/react/common/SurfaceDelegateFactory;
    .locals 2

    .line 43
    invoke-virtual {p0}, Lexpo/modules/ReactNativeHostWrapper;->getHost()Lcom/facebook/react/ReactNativeHost;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/react/ReactNativeHost;->getSurfaceDelegateFactory()Lcom/facebook/react/common/SurfaceDelegateFactory;

    move-result-object v0

    const-string v1, "getSurfaceDelegateFactory(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method protected getUIManagerProvider()Lcom/facebook/react/bridge/UIManagerProvider;
    .locals 1

    .line 31
    const-string v0, "getUIManagerProvider"

    invoke-virtual {p0, v0}, Lexpo/modules/ReactNativeHostWrapper;->invokeDelegateMethod$expo_release(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/bridge/UIManagerProvider;

    return-object v0
.end method
