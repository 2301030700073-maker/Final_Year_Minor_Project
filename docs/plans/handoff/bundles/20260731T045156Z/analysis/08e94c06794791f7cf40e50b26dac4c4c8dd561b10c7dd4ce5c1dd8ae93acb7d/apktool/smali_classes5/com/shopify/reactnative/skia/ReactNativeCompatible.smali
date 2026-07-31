.class final Lcom/shopify/reactnative/skia/ReactNativeCompatible;
.super Ljava/lang/Object;
.source "ReactNativeCompatible.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRuntimeExecutor(Lcom/facebook/react/bridge/ReactContext;)Lcom/facebook/react/bridge/RuntimeExecutor;
    .locals 0

    .line 8
    invoke-virtual {p0}, Lcom/facebook/react/bridge/ReactContext;->getCatalystInstance()Lcom/facebook/react/bridge/CatalystInstance;

    move-result-object p0

    invoke-interface {p0}, Lcom/facebook/react/bridge/CatalystInstance;->getRuntimeExecutor()Lcom/facebook/react/bridge/RuntimeExecutor;

    move-result-object p0

    return-object p0
.end method
