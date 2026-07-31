.class final Lexpo/modules/ExpoReactHostFactory$ExpoReactHostDelegate;
.super Ljava/lang/Object;
.source "ExpoReactHostFactory.kt"

# interfaces
.implements Lcom/facebook/react/runtime/ReactHostDelegate;


# annotations
.annotation runtime Lcom/facebook/react/common/annotations/UnstableReactNativeAPI;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexpo/modules/ExpoReactHostFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ExpoReactHostDelegate"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nExpoReactHostFactory.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ExpoReactHostFactory.kt\nexpo/modules/ExpoReactHostFactory$ExpoReactHostDelegate\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,127:1\n1863#2,2:128\n*S KotlinDebug\n*F\n+ 1 ExpoReactHostFactory.kt\nexpo/modules/ExpoReactHostFactory$ExpoReactHostDelegate\n*L\n76#1:128,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0003\u0018\u00002\u00020\u0001B3\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\n\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0014\u0010#\u001a\u00020$2\n\u0010%\u001a\u00060&j\u0002`\'H\u0016R\u0014\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0014\u0010\t\u001a\u00020\nX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0013\u001a\u00020\u00128VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0014\u0010\u0015R\u0014\u0010\u0016\u001a\u00020\u00178VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0018\u0010\u0019R\u0014\u0010\u001a\u001a\u00020\u001b8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001c\u0010\u001dR\u001a\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020 0\u001f8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008!\u0010\"\u00a8\u0006("
    }
    d2 = {
        "Lexpo/modules/ExpoReactHostFactory$ExpoReactHostDelegate;",
        "Lcom/facebook/react/runtime/ReactHostDelegate;",
        "weakContext",
        "Ljava/lang/ref/WeakReference;",
        "Landroid/content/Context;",
        "reactNativeHostWrapper",
        "Lexpo/modules/ReactNativeHostWrapper;",
        "bindingsInstaller",
        "Lcom/facebook/react/runtime/BindingsInstaller;",
        "turboModuleManagerDelegateBuilder",
        "Lcom/facebook/react/ReactPackageTurboModuleManagerDelegate$Builder;",
        "<init>",
        "(Ljava/lang/ref/WeakReference;Lexpo/modules/ReactNativeHostWrapper;Lcom/facebook/react/runtime/BindingsInstaller;Lcom/facebook/react/ReactPackageTurboModuleManagerDelegate$Builder;)V",
        "getBindingsInstaller",
        "()Lcom/facebook/react/runtime/BindingsInstaller;",
        "getTurboModuleManagerDelegateBuilder",
        "()Lcom/facebook/react/ReactPackageTurboModuleManagerDelegate$Builder;",
        "_jsBundleLoader",
        "Lcom/facebook/react/bridge/JSBundleLoader;",
        "jsBundleLoader",
        "getJsBundleLoader",
        "()Lcom/facebook/react/bridge/JSBundleLoader;",
        "jsMainModulePath",
        "",
        "getJsMainModulePath",
        "()Ljava/lang/String;",
        "jsRuntimeFactory",
        "Lcom/facebook/react/runtime/JSRuntimeFactory;",
        "getJsRuntimeFactory",
        "()Lcom/facebook/react/runtime/JSRuntimeFactory;",
        "reactPackages",
        "",
        "Lcom/facebook/react/ReactPackage;",
        "getReactPackages",
        "()Ljava/util/List;",
        "handleInstanceException",
        "",
        "error",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
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
.field private _jsBundleLoader:Lcom/facebook/react/bridge/JSBundleLoader;

.field private final bindingsInstaller:Lcom/facebook/react/runtime/BindingsInstaller;

.field private final reactNativeHostWrapper:Lexpo/modules/ReactNativeHostWrapper;

.field private final turboModuleManagerDelegateBuilder:Lcom/facebook/react/ReactPackageTurboModuleManagerDelegate$Builder;

.field private final weakContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;Lexpo/modules/ReactNativeHostWrapper;Lcom/facebook/react/runtime/BindingsInstaller;Lcom/facebook/react/ReactPackageTurboModuleManagerDelegate$Builder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;",
            "Lexpo/modules/ReactNativeHostWrapper;",
            "Lcom/facebook/react/runtime/BindingsInstaller;",
            "Lcom/facebook/react/ReactPackageTurboModuleManagerDelegate$Builder;",
            ")V"
        }
    .end annotation

    const-string v0, "weakContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reactNativeHostWrapper"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "turboModuleManagerDelegateBuilder"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lexpo/modules/ExpoReactHostFactory$ExpoReactHostDelegate;->weakContext:Ljava/lang/ref/WeakReference;

    .line 32
    iput-object p2, p0, Lexpo/modules/ExpoReactHostFactory$ExpoReactHostDelegate;->reactNativeHostWrapper:Lexpo/modules/ReactNativeHostWrapper;

    .line 33
    iput-object p3, p0, Lexpo/modules/ExpoReactHostFactory$ExpoReactHostDelegate;->bindingsInstaller:Lcom/facebook/react/runtime/BindingsInstaller;

    .line 34
    iput-object p4, p0, Lexpo/modules/ExpoReactHostFactory$ExpoReactHostDelegate;->turboModuleManagerDelegateBuilder:Lcom/facebook/react/ReactPackageTurboModuleManagerDelegate$Builder;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/ref/WeakReference;Lexpo/modules/ReactNativeHostWrapper;Lcom/facebook/react/runtime/BindingsInstaller;Lcom/facebook/react/ReactPackageTurboModuleManagerDelegate$Builder;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    const/4 p3, 0x0

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    .line 35
    new-instance p4, Lcom/facebook/react/defaults/DefaultTurboModuleManagerDelegate$Builder;

    invoke-direct {p4}, Lcom/facebook/react/defaults/DefaultTurboModuleManagerDelegate$Builder;-><init>()V

    check-cast p4, Lcom/facebook/react/ReactPackageTurboModuleManagerDelegate$Builder;

    .line 30
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lexpo/modules/ExpoReactHostFactory$ExpoReactHostDelegate;-><init>(Ljava/lang/ref/WeakReference;Lexpo/modules/ReactNativeHostWrapper;Lcom/facebook/react/runtime/BindingsInstaller;Lcom/facebook/react/ReactPackageTurboModuleManagerDelegate$Builder;)V

    return-void
.end method


# virtual methods
.method public getBindingsInstaller()Lcom/facebook/react/runtime/BindingsInstaller;
    .locals 1

    .line 33
    iget-object v0, p0, Lexpo/modules/ExpoReactHostFactory$ExpoReactHostDelegate;->bindingsInstaller:Lcom/facebook/react/runtime/BindingsInstaller;

    return-object v0
.end method

.method public getJsBundleLoader()Lcom/facebook/react/bridge/JSBundleLoader;
    .locals 8

    .line 42
    iget-object v0, p0, Lexpo/modules/ExpoReactHostFactory$ExpoReactHostDelegate;->_jsBundleLoader:Lcom/facebook/react/bridge/JSBundleLoader;

    if-eqz v0, :cond_0

    return-object v0

    .line 46
    :cond_0
    iget-object v0, p0, Lexpo/modules/ExpoReactHostFactory$ExpoReactHostDelegate;->weakContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_3

    .line 47
    iget-object v1, p0, Lexpo/modules/ExpoReactHostFactory$ExpoReactHostDelegate;->reactNativeHostWrapper:Lexpo/modules/ReactNativeHostWrapper;

    invoke-virtual {v1}, Lexpo/modules/ReactNativeHostWrapper;->getJSBundleFile()Ljava/lang/String;

    move-result-object v1

    const-string v2, "createAssetLoader(...)"

    const/4 v3, 0x1

    const-string v4, "assets://"

    if-eqz v1, :cond_2

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 48
    invoke-static {v1, v4, v7, v5, v6}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 49
    invoke-static {v0, v1, v3}, Lcom/facebook/react/bridge/JSBundleLoader;->createAssetLoader(Landroid/content/Context;Ljava/lang/String;Z)Lcom/facebook/react/bridge/JSBundleLoader;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 51
    :cond_1
    invoke-static {v1}, Lcom/facebook/react/bridge/JSBundleLoader;->createFileLoader(Ljava/lang/String;)Lcom/facebook/react/bridge/JSBundleLoader;

    move-result-object v0

    const-string v1, "createFileLoader(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 53
    :cond_2
    iget-object v1, p0, Lexpo/modules/ExpoReactHostFactory$ExpoReactHostDelegate;->reactNativeHostWrapper:Lexpo/modules/ReactNativeHostWrapper;

    invoke-virtual {v1}, Lexpo/modules/ReactNativeHostWrapper;->getBundleAssetName()Ljava/lang/String;

    move-result-object v1

    .line 54
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/facebook/react/bridge/JSBundleLoader;->createAssetLoader(Landroid/content/Context;Ljava/lang/String;Z)Lcom/facebook/react/bridge/JSBundleLoader;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 46
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unable to get concrete Context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getJsMainModulePath()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lexpo/modules/ExpoReactHostFactory$ExpoReactHostDelegate;->reactNativeHostWrapper:Lexpo/modules/ReactNativeHostWrapper;

    invoke-virtual {v0}, Lexpo/modules/ReactNativeHostWrapper;->getJSMainModuleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getJsRuntimeFactory()Lcom/facebook/react/runtime/JSRuntimeFactory;
    .locals 2

    .line 61
    iget-object v0, p0, Lexpo/modules/ExpoReactHostFactory$ExpoReactHostDelegate;->reactNativeHostWrapper:Lexpo/modules/ReactNativeHostWrapper;

    invoke-virtual {v0}, Lexpo/modules/ReactNativeHostWrapper;->getJSEngineResolutionAlgorithm()Lcom/facebook/react/JSEngineResolutionAlgorithm;

    move-result-object v0

    sget-object v1, Lcom/facebook/react/JSEngineResolutionAlgorithm;->HERMES:Lcom/facebook/react/JSEngineResolutionAlgorithm;

    if-ne v0, v1, :cond_0

    .line 62
    new-instance v0, Lcom/facebook/react/runtime/hermes/HermesInstance;

    invoke-direct {v0}, Lcom/facebook/react/runtime/hermes/HermesInstance;-><init>()V

    check-cast v0, Lcom/facebook/react/runtime/JSRuntimeFactory;

    goto :goto_0

    .line 64
    :cond_0
    new-instance v0, Lcom/facebook/react/runtime/JSCInstance;

    invoke-direct {v0}, Lcom/facebook/react/runtime/JSCInstance;-><init>()V

    check-cast v0, Lcom/facebook/react/runtime/JSRuntimeFactory;

    :goto_0
    return-object v0
.end method

.method public getReactPackages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/facebook/react/ReactPackage;",
            ">;"
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lexpo/modules/ExpoReactHostFactory$ExpoReactHostDelegate;->reactNativeHostWrapper:Lexpo/modules/ReactNativeHostWrapper;

    invoke-virtual {v0}, Lexpo/modules/ReactNativeHostWrapper;->getPackages()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTurboModuleManagerDelegateBuilder()Lcom/facebook/react/ReactPackageTurboModuleManagerDelegate$Builder;
    .locals 1

    .line 34
    iget-object v0, p0, Lexpo/modules/ExpoReactHostFactory$ExpoReactHostDelegate;->turboModuleManagerDelegateBuilder:Lcom/facebook/react/ReactPackageTurboModuleManagerDelegate$Builder;

    return-object v0
.end method

.method public handleInstanceException(Ljava/lang/Exception;)V
    .locals 3

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lexpo/modules/ExpoReactHostFactory$ExpoReactHostDelegate;->reactNativeHostWrapper:Lexpo/modules/ReactNativeHostWrapper;

    invoke-virtual {v0}, Lexpo/modules/ReactNativeHostWrapper;->getReactNativeHostHandlers()Ljava/util/List;

    move-result-object v0

    .line 72
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 75
    iget-object v1, p0, Lexpo/modules/ExpoReactHostFactory$ExpoReactHostDelegate;->reactNativeHostWrapper:Lexpo/modules/ReactNativeHostWrapper;

    invoke-virtual {v1}, Lexpo/modules/ReactNativeHostWrapper;->getUseDeveloperSupport()Z

    move-result v1

    .line 76
    check-cast v0, Ljava/lang/Iterable;

    .line 128
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lexpo/modules/core/interfaces/ReactNativeHostHandler;

    .line 77
    invoke-interface {v2, v1, p1}, Lexpo/modules/core/interfaces/ReactNativeHostHandler;->onReactInstanceException(ZLjava/lang/Exception;)V

    goto :goto_0

    :cond_0
    return-void

    .line 73
    :cond_1
    throw p1
.end method
