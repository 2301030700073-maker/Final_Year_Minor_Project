.class public Lcom/shopify/reactnative/skia/RNSkiaPackage;
.super Lcom/facebook/react/TurboReactPackage;
.source "RNSkiaPackage.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/facebook/react/TurboReactPackage;-><init>()V

    return-void
.end method


# virtual methods
.method public createNativeModules(Lcom/facebook/react/bridge/ReactApplicationContext;)Ljava/util/List;
    .locals 2
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

    const/4 v0, 0x1

    .line 29
    new-array v0, v0, [Lcom/facebook/react/bridge/NativeModule;

    new-instance v1, Lcom/shopify/reactnative/skia/RNSkiaModule;

    invoke-direct {v1, p1}, Lcom/shopify/reactnative/skia/RNSkiaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    const/4 p1, 0x0

    aput-object v1, v0, p1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public createViewManagers(Lcom/facebook/react/bridge/ReactApplicationContext;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/react/bridge/ReactApplicationContext;",
            ")",
            "Ljava/util/List<",
            "Lcom/facebook/react/uimanager/ViewManager;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x1

    .line 45
    new-array p1, p1, [Lcom/facebook/react/uimanager/ViewManager;

    new-instance v0, Lcom/shopify/reactnative/skia/SkiaPictureViewManager;

    invoke-direct {v0}, Lcom/shopify/reactnative/skia/SkiaPictureViewManager;-><init>()V

    const/4 v1, 0x0

    aput-object v0, p1, v1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getModule(Ljava/lang/String;Lcom/facebook/react/bridge/ReactApplicationContext;)Lcom/facebook/react/bridge/NativeModule;
    .locals 1

    .line 35
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "RNSkiaModule"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 37
    :cond_0
    new-instance p1, Lcom/shopify/reactnative/skia/RNSkiaModule;

    invoke-direct {p1, p2}, Lcom/shopify/reactnative/skia/RNSkiaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    return-object p1
.end method

.method public getReactModuleInfoProvider()Lcom/facebook/react/module/model/ReactModuleInfoProvider;
    .locals 1

    .line 50
    new-instance v0, Lcom/shopify/reactnative/skia/RNSkiaPackage$1;

    invoke-direct {v0, p0}, Lcom/shopify/reactnative/skia/RNSkiaPackage$1;-><init>(Lcom/shopify/reactnative/skia/RNSkiaPackage;)V

    return-object v0
.end method
