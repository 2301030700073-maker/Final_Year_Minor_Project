.class public Lexpo/modules/ReactNativeHostWrapperBase;
.super Lcom/facebook/react/defaults/DefaultReactNativeHost;
.source "ReactNativeHostWrapperBase.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nReactNativeHostWrapperBase.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ReactNativeHostWrapperBase.kt\nexpo/modules/ReactNativeHostWrapperBase\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,108:1\n1368#2:109\n1454#2,5:110\n1863#2,2:115\n1863#2,2:117\n*S KotlinDebug\n*F\n+ 1 ReactNativeHostWrapperBase.kt\nexpo/modules/ReactNativeHostWrapperBase\n*L\n20#1:109\n20#1:110,5\n25#1:115,2\n31#1:117,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u0016\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0008\u0010\u0014\u001a\u00020\u0015H\u0014J\n\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0014J\u0008\u0010\u0018\u001a\u00020\u0012H\u0016J\n\u0010\u0019\u001a\u0004\u0018\u00010\u0012H\u0016J\n\u0010\u001a\u001a\u0004\u0018\u00010\u0012H\u0016J\u0008\u0010\u001b\u001a\u00020\u001cH\u0016J\u000e\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u001f0\u001eH\u0016J\u001d\u0010 \u001a\u0002H!\"\u0004\u0008\u0000\u0010!2\u0006\u0010\"\u001a\u00020\u0012H\u0000\u00a2\u0006\u0004\u0008#\u0010$J\u0010\u0010%\u001a\u00020&2\u0006\u0010\'\u001a\u00020\u0015H\u0002R\u0014\u0010\u0004\u001a\u00020\u0005X\u0084\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u001f\u0010\n\u001a\u0010\u0012\u000c\u0012\n \r*\u0004\u0018\u00010\u000c0\u000c0\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u001a\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u00130\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006("
    }
    d2 = {
        "Lexpo/modules/ReactNativeHostWrapperBase;",
        "Lcom/facebook/react/defaults/DefaultReactNativeHost;",
        "application",
        "Landroid/app/Application;",
        "host",
        "Lcom/facebook/react/ReactNativeHost;",
        "<init>",
        "(Landroid/app/Application;Lcom/facebook/react/ReactNativeHost;)V",
        "getHost",
        "()Lcom/facebook/react/ReactNativeHost;",
        "reactNativeHostHandlers",
        "",
        "Lexpo/modules/core/interfaces/ReactNativeHostHandler;",
        "kotlin.jvm.PlatformType",
        "getReactNativeHostHandlers",
        "()Ljava/util/List;",
        "methodMap",
        "Landroidx/collection/ArrayMap;",
        "",
        "Ljava/lang/reflect/Method;",
        "createReactInstanceManager",
        "Lcom/facebook/react/ReactInstanceManager;",
        "getJavaScriptExecutorFactory",
        "Lcom/facebook/react/bridge/JavaScriptExecutorFactory;",
        "getJSMainModuleName",
        "getJSBundleFile",
        "getBundleAssetName",
        "getUseDeveloperSupport",
        "",
        "getPackages",
        "",
        "Lcom/facebook/react/ReactPackage;",
        "invokeDelegateMethod",
        "T",
        "name",
        "invokeDelegateMethod$expo_release",
        "(Ljava/lang/String;)Ljava/lang/Object;",
        "injectHostReactInstanceManager",
        "",
        "reactInstanceManager",
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


# instance fields
.field private final host:Lcom/facebook/react/ReactNativeHost;

.field private final methodMap:Landroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field private final reactNativeHostHandlers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lexpo/modules/core/interfaces/ReactNativeHostHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$7YBxcqii4aYEAFrDQILcDvJjuFY(Lexpo/modules/ReactNativeHostWrapperBase;Lexpo/modules/core/interfaces/ReactNativeHostHandler;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lexpo/modules/ReactNativeHostWrapperBase;->getJSBundleFile$lambda$4(Lexpo/modules/ReactNativeHostWrapperBase;Lexpo/modules/core/interfaces/ReactNativeHostHandler;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$cFJV46KmMuKD7Ma8f8N62Liw-iw(Lexpo/modules/core/interfaces/ReactNativeHostHandler;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p0}, Lexpo/modules/ReactNativeHostWrapperBase;->getUseDeveloperSupport$lambda$6(Lexpo/modules/core/interfaces/ReactNativeHostHandler;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$hdKrY3brWzGwxBR4BfRqIfySdEo(Lexpo/modules/core/interfaces/ReactNativeHostHandler;)Lcom/facebook/react/bridge/JavaScriptExecutorFactory;
    .locals 0

    invoke-static {p0}, Lexpo/modules/ReactNativeHostWrapperBase;->getJavaScriptExecutorFactory$lambda$3(Lexpo/modules/core/interfaces/ReactNativeHostHandler;)Lcom/facebook/react/bridge/JavaScriptExecutorFactory;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ysnhkFs1f5VQP7k0jLthMrsiGjI(Lexpo/modules/ReactNativeHostWrapperBase;Lexpo/modules/core/interfaces/ReactNativeHostHandler;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lexpo/modules/ReactNativeHostWrapperBase;->getBundleAssetName$lambda$5(Lexpo/modules/ReactNativeHostWrapperBase;Lexpo/modules/core/interfaces/ReactNativeHostHandler;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/app/Application;Lcom/facebook/react/ReactNativeHost;)V
    .locals 3

    const-string v0, "application"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "host"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0, p1}, Lcom/facebook/react/defaults/DefaultReactNativeHost;-><init>(Landroid/app/Application;)V

    .line 16
    iput-object p2, p0, Lexpo/modules/ReactNativeHostWrapperBase;->host:Lcom/facebook/react/ReactNativeHost;

    .line 19
    sget-object p2, Lexpo/modules/ExpoModulesPackage;->Companion:Lexpo/modules/ExpoModulesPackage$Companion;

    invoke-virtual {p2}, Lexpo/modules/ExpoModulesPackage$Companion;->getPackageList()Ljava/util/List;

    move-result-object p2

    check-cast p2, Ljava/lang/Iterable;

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/Collection;

    .line 110
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 111
    check-cast v1, Lexpo/modules/core/interfaces/Package;

    .line 20
    move-object v2, p1

    check-cast v2, Landroid/content/Context;

    invoke-interface {v1, v2}, Lexpo/modules/core/interfaces/Package;->createReactNativeHostHandlers(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    const-string v2, "createReactNativeHostHandlers(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Iterable;

    .line 112
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_0

    .line 114
    :cond_0
    check-cast v0, Ljava/util/List;

    .line 20
    iput-object v0, p0, Lexpo/modules/ReactNativeHostWrapperBase;->reactNativeHostHandlers:Ljava/util/List;

    .line 21
    new-instance p1, Landroidx/collection/ArrayMap;

    invoke-direct {p1}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object p1, p0, Lexpo/modules/ReactNativeHostWrapperBase;->methodMap:Landroidx/collection/ArrayMap;

    return-void
.end method

.method private static final getBundleAssetName$lambda$5(Lexpo/modules/ReactNativeHostWrapperBase;Lexpo/modules/core/interfaces/ReactNativeHostHandler;)Ljava/lang/String;
    .locals 0

    .line 66
    invoke-virtual {p0}, Lexpo/modules/ReactNativeHostWrapperBase;->getUseDeveloperSupport()Z

    move-result p0

    invoke-interface {p1, p0}, Lexpo/modules/core/interfaces/ReactNativeHostHandler;->getBundleAssetName(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final getJSBundleFile$lambda$4(Lexpo/modules/ReactNativeHostWrapperBase;Lexpo/modules/core/interfaces/ReactNativeHostHandler;)Ljava/lang/String;
    .locals 0

    .line 60
    invoke-virtual {p0}, Lexpo/modules/ReactNativeHostWrapperBase;->getUseDeveloperSupport()Z

    move-result p0

    invoke-interface {p1, p0}, Lexpo/modules/core/interfaces/ReactNativeHostHandler;->getJSBundleFile(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final getJavaScriptExecutorFactory$lambda$3(Lexpo/modules/core/interfaces/ReactNativeHostHandler;)Lcom/facebook/react/bridge/JavaScriptExecutorFactory;
    .locals 0

    .line 50
    invoke-interface {p0}, Lexpo/modules/core/interfaces/ReactNativeHostHandler;->getJavaScriptExecutorFactory()Lcom/facebook/react/bridge/JavaScriptExecutorFactory;

    move-result-object p0

    return-object p0
.end method

.method private static final getUseDeveloperSupport$lambda$6(Lexpo/modules/core/interfaces/ReactNativeHostHandler;)Ljava/lang/Boolean;
    .locals 0

    .line 72
    invoke-interface {p0}, Lexpo/modules/core/interfaces/ReactNativeHostHandler;->getUseDeveloperSupport()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private final injectHostReactInstanceManager(Lcom/facebook/react/ReactInstanceManager;)V
    .locals 2

    .line 101
    const-class v0, Lcom/facebook/react/ReactNativeHost;

    const-string v1, "mReactInstanceManager"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 102
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 103
    iget-object v1, p0, Lexpo/modules/ReactNativeHostWrapperBase;->host:Lcom/facebook/react/ReactNativeHost;

    invoke-virtual {v0, v1, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected createReactInstanceManager()Lcom/facebook/react/ReactInstanceManager;
    .locals 5

    .line 24
    invoke-virtual {p0}, Lexpo/modules/ReactNativeHostWrapperBase;->getUseDeveloperSupport()Z

    move-result v0

    .line 25
    iget-object v1, p0, Lexpo/modules/ReactNativeHostWrapperBase;->reactNativeHostHandlers:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    .line 115
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lexpo/modules/core/interfaces/ReactNativeHostHandler;

    .line 26
    invoke-interface {v2, v0}, Lexpo/modules/core/interfaces/ReactNativeHostHandler;->onWillCreateReactInstance(Z)V

    goto :goto_0

    .line 29
    :cond_0
    invoke-super {p0}, Lcom/facebook/react/defaults/DefaultReactNativeHost;->createReactInstanceManager()Lcom/facebook/react/ReactInstanceManager;

    move-result-object v1

    .line 31
    iget-object v2, p0, Lexpo/modules/ReactNativeHostWrapperBase;->reactNativeHostHandlers:Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    .line 117
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lexpo/modules/core/interfaces/ReactNativeHostHandler;

    .line 32
    invoke-virtual {v1}, Lcom/facebook/react/ReactInstanceManager;->getDevSupportManager()Lcom/facebook/react/devsupport/interfaces/DevSupportManager;

    move-result-object v4

    invoke-interface {v3, v4}, Lexpo/modules/core/interfaces/ReactNativeHostHandler;->onDidCreateDevSupportManager(Lcom/facebook/react/devsupport/interfaces/DevSupportManager;)V

    goto :goto_1

    .line 35
    :cond_1
    new-instance v2, Lexpo/modules/ReactNativeHostWrapperBase$createReactInstanceManager$3;

    invoke-direct {v2, p0, v0}, Lexpo/modules/ReactNativeHostWrapperBase$createReactInstanceManager$3;-><init>(Lexpo/modules/ReactNativeHostWrapperBase;Z)V

    check-cast v2, Lcom/facebook/react/ReactInstanceEventListener;

    invoke-virtual {v1, v2}, Lcom/facebook/react/ReactInstanceManager;->addReactInstanceEventListener(Lcom/facebook/react/ReactInstanceEventListener;)V

    .line 43
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, v1}, Lexpo/modules/ReactNativeHostWrapperBase;->injectHostReactInstanceManager(Lcom/facebook/react/ReactInstanceManager;)V

    return-object v1
.end method

.method public getBundleAssetName()Ljava/lang/String;
    .locals 2

    .line 65
    iget-object v0, p0, Lexpo/modules/ReactNativeHostWrapperBase;->reactNativeHostHandlers:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->asSequence(Ljava/lang/Iterable;)Lkotlin/sequences/Sequence;

    move-result-object v0

    .line 66
    new-instance v1, Lexpo/modules/ReactNativeHostWrapperBase$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lexpo/modules/ReactNativeHostWrapperBase$$ExternalSyntheticLambda3;-><init>(Lexpo/modules/ReactNativeHostWrapperBase;)V

    invoke-static {v0, v1}, Lkotlin/sequences/SequencesKt;->mapNotNull(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v0

    .line 67
    invoke-static {v0}, Lkotlin/sequences/SequencesKt;->firstOrNull(Lkotlin/sequences/Sequence;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "getBundleAssetName"

    invoke-virtual {p0, v0}, Lexpo/modules/ReactNativeHostWrapperBase;->invokeDelegateMethod$expo_release(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method protected final getHost()Lcom/facebook/react/ReactNativeHost;
    .locals 1

    .line 16
    iget-object v0, p0, Lexpo/modules/ReactNativeHostWrapperBase;->host:Lcom/facebook/react/ReactNativeHost;

    return-object v0
.end method

.method public getJSBundleFile()Ljava/lang/String;
    .locals 2

    .line 59
    iget-object v0, p0, Lexpo/modules/ReactNativeHostWrapperBase;->reactNativeHostHandlers:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->asSequence(Ljava/lang/Iterable;)Lkotlin/sequences/Sequence;

    move-result-object v0

    .line 60
    new-instance v1, Lexpo/modules/ReactNativeHostWrapperBase$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lexpo/modules/ReactNativeHostWrapperBase$$ExternalSyntheticLambda1;-><init>(Lexpo/modules/ReactNativeHostWrapperBase;)V

    invoke-static {v0, v1}, Lkotlin/sequences/SequencesKt;->mapNotNull(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v0

    .line 61
    invoke-static {v0}, Lkotlin/sequences/SequencesKt;->firstOrNull(Lkotlin/sequences/Sequence;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "getJSBundleFile"

    invoke-virtual {p0, v0}, Lexpo/modules/ReactNativeHostWrapperBase;->invokeDelegateMethod$expo_release(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method public getJSMainModuleName()Ljava/lang/String;
    .locals 1

    .line 55
    const-string v0, "getJSMainModuleName"

    invoke-virtual {p0, v0}, Lexpo/modules/ReactNativeHostWrapperBase;->invokeDelegateMethod$expo_release(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method protected getJavaScriptExecutorFactory()Lcom/facebook/react/bridge/JavaScriptExecutorFactory;
    .locals 2

    .line 49
    iget-object v0, p0, Lexpo/modules/ReactNativeHostWrapperBase;->reactNativeHostHandlers:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->asSequence(Ljava/lang/Iterable;)Lkotlin/sequences/Sequence;

    move-result-object v0

    new-instance v1, Lexpo/modules/ReactNativeHostWrapperBase$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lexpo/modules/ReactNativeHostWrapperBase$$ExternalSyntheticLambda2;-><init>()V

    .line 50
    invoke-static {v0, v1}, Lkotlin/sequences/SequencesKt;->mapNotNull(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v0

    .line 51
    invoke-static {v0}, Lkotlin/sequences/SequencesKt;->firstOrNull(Lkotlin/sequences/Sequence;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/bridge/JavaScriptExecutorFactory;

    if-nez v0, :cond_0

    const-string v0, "getJavaScriptExecutorFactory"

    invoke-virtual {p0, v0}, Lexpo/modules/ReactNativeHostWrapperBase;->invokeDelegateMethod$expo_release(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/bridge/JavaScriptExecutorFactory;

    :cond_0
    return-object v0
.end method

.method public getPackages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/facebook/react/ReactPackage;",
            ">;"
        }
    .end annotation

    .line 77
    const-string v0, "getPackages"

    invoke-virtual {p0, v0}, Lexpo/modules/ReactNativeHostWrapperBase;->invokeDelegateMethod$expo_release(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final getReactNativeHostHandlers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lexpo/modules/core/interfaces/ReactNativeHostHandler;",
            ">;"
        }
    .end annotation

    .line 19
    iget-object v0, p0, Lexpo/modules/ReactNativeHostWrapperBase;->reactNativeHostHandlers:Ljava/util/List;

    return-object v0
.end method

.method public getUseDeveloperSupport()Z
    .locals 2

    .line 71
    iget-object v0, p0, Lexpo/modules/ReactNativeHostWrapperBase;->reactNativeHostHandlers:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->asSequence(Ljava/lang/Iterable;)Lkotlin/sequences/Sequence;

    move-result-object v0

    new-instance v1, Lexpo/modules/ReactNativeHostWrapperBase$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lexpo/modules/ReactNativeHostWrapperBase$$ExternalSyntheticLambda0;-><init>()V

    .line 72
    invoke-static {v0, v1}, Lkotlin/sequences/SequencesKt;->mapNotNull(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v0

    .line 73
    invoke-static {v0}, Lkotlin/sequences/SequencesKt;->firstOrNull(Lkotlin/sequences/Sequence;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    .line 73
    :cond_0
    iget-object v0, p0, Lexpo/modules/ReactNativeHostWrapperBase;->host:Lcom/facebook/react/ReactNativeHost;

    invoke-virtual {v0}, Lcom/facebook/react/ReactNativeHost;->getUseDeveloperSupport()Z

    move-result v0

    :goto_0
    return v0
.end method

.method public final invokeDelegateMethod$expo_release(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lexpo/modules/ReactNativeHostWrapperBase;->methodMap:Landroidx/collection/ArrayMap;

    invoke-virtual {v0, p1}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 89
    const-class v0, Lcom/facebook/react/ReactNativeHost;

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, p1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x1

    .line 90
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 91
    iget-object v2, p0, Lexpo/modules/ReactNativeHostWrapperBase;->methodMap:Landroidx/collection/ArrayMap;

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    :cond_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p1, p0, Lexpo/modules/ReactNativeHostWrapperBase;->host:Lcom/facebook/react/ReactNativeHost;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
