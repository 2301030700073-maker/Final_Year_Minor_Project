.class public Lio/sentry/react/replay/RNSentryReplayMaskManager;
.super Lcom/facebook/react/uimanager/ViewGroupManager;
.source "RNSentryReplayMaskManager.java"

# interfaces
.implements Lcom/facebook/react/viewmanagers/RNSentryReplayMaskManagerInterface;


# annotations
.annotation runtime Lcom/facebook/react/module/annotations/ReactModule;
    name = "RNSentryReplayMask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/react/uimanager/ViewGroupManager<",
        "Lio/sentry/react/replay/RNSentryReplayMask;",
        ">;",
        "Lcom/facebook/react/viewmanagers/RNSentryReplayMaskManagerInterface<",
        "Lio/sentry/react/replay/RNSentryReplayMask;",
        ">;"
    }
.end annotation


# instance fields
.field private final delegate:Lcom/facebook/react/viewmanagers/RNSentryReplayMaskManagerDelegate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/react/viewmanagers/RNSentryReplayMaskManagerDelegate<",
            "Lio/sentry/react/replay/RNSentryReplayMask;",
            "Lio/sentry/react/replay/RNSentryReplayMaskManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Lcom/facebook/react/uimanager/ViewGroupManager;-><init>()V

    .line 14
    new-instance v0, Lcom/facebook/react/viewmanagers/RNSentryReplayMaskManagerDelegate;

    invoke-direct {v0, p0}, Lcom/facebook/react/viewmanagers/RNSentryReplayMaskManagerDelegate;-><init>(Lcom/facebook/react/uimanager/BaseViewManager;)V

    iput-object v0, p0, Lio/sentry/react/replay/RNSentryReplayMaskManager;->delegate:Lcom/facebook/react/viewmanagers/RNSentryReplayMaskManagerDelegate;

    return-void
.end method


# virtual methods
.method public bridge synthetic createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Landroid/view/View;
    .locals 0

    .line 11
    invoke-virtual {p0, p1}, Lio/sentry/react/replay/RNSentryReplayMaskManager;->createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lio/sentry/react/replay/RNSentryReplayMask;

    move-result-object p1

    return-object p1
.end method

.method public createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lio/sentry/react/replay/RNSentryReplayMask;
    .locals 1

    .line 31
    new-instance v0, Lio/sentry/react/replay/RNSentryReplayMask;

    invoke-direct {v0, p1}, Lio/sentry/react/replay/RNSentryReplayMask;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getDelegate()Lcom/facebook/react/uimanager/ViewManagerDelegate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/react/uimanager/ViewManagerDelegate<",
            "Lio/sentry/react/replay/RNSentryReplayMask;",
            ">;"
        }
    .end annotation

    .line 19
    iget-object v0, p0, Lio/sentry/react/replay/RNSentryReplayMaskManager;->delegate:Lcom/facebook/react/viewmanagers/RNSentryReplayMaskManagerDelegate;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 25
    const-string v0, "RNSentryReplayMask"

    return-object v0
.end method
