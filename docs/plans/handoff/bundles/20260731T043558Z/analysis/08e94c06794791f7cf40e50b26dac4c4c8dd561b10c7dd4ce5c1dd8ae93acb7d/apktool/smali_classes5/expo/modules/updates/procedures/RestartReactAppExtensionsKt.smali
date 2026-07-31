.class public final Lexpo/modules/updates/procedures/RestartReactAppExtensionsKt;
.super Ljava/lang/Object;
.source "RestartReactAppExtensions.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u001a\u001e\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0000\u00a8\u0006\u0007"
    }
    d2 = {
        "restart",
        "",
        "Lcom/facebook/react/ReactApplication;",
        "activity",
        "Landroid/app/Activity;",
        "reason",
        "",
        "expo-updates_release"
    }
    k = 0x2
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final restart(Lcom/facebook/react/ReactApplication;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reason"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    sget-object v0, Lexpo/modules/rncompatibility/ReactNativeFeatureFlags;->INSTANCE:Lexpo/modules/rncompatibility/ReactNativeFeatureFlags;

    invoke-virtual {v0}, Lexpo/modules/rncompatibility/ReactNativeFeatureFlags;->getEnableBridgelessArchitecture()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 16
    invoke-interface {p0}, Lcom/facebook/react/ReactApplication;->getReactHost()Lcom/facebook/react/ReactHost;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 18
    invoke-interface {p0}, Lcom/facebook/react/ReactHost;->getLifecycleState()Lcom/facebook/react/common/LifecycleState;

    move-result-object v0

    sget-object v1, Lcom/facebook/react/common/LifecycleState;->RESUMED:Lcom/facebook/react/common/LifecycleState;

    if-eq v0, v1, :cond_0

    if-eqz p1, :cond_0

    .line 19
    invoke-interface {p0, p1}, Lcom/facebook/react/ReactHost;->onHostResume(Landroid/app/Activity;)V

    .line 21
    :cond_0
    invoke-interface {p0, p2}, Lcom/facebook/react/ReactHost;->reload(Ljava/lang/String;)Lcom/facebook/react/interfaces/TaskInterface;

    return-void

    .line 17
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Check failed."

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 25
    :cond_2
    invoke-interface {p0}, Lcom/facebook/react/ReactApplication;->getReactNativeHost()Lcom/facebook/react/ReactNativeHost;

    move-result-object p0

    invoke-virtual {p0}, Lcom/facebook/react/ReactNativeHost;->getReactInstanceManager()Lcom/facebook/react/ReactInstanceManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/facebook/react/ReactInstanceManager;->recreateReactContextInBackground()V

    return-void
.end method
