.class public final Lio/sentry/react/replay/RNSentryReplayMaskManagerImpl;
.super Ljava/lang/Object;
.source "RNSentryReplayMaskManagerImpl.java"


# static fields
.field public static final REACT_CLASS:Ljava/lang/String; = "RNSentryReplayMask"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lio/sentry/react/replay/RNSentryReplayMask;
    .locals 1

    .line 14
    new-instance v0, Lio/sentry/react/replay/RNSentryReplayMask;

    invoke-direct {v0, p0}, Lio/sentry/react/replay/RNSentryReplayMask;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
