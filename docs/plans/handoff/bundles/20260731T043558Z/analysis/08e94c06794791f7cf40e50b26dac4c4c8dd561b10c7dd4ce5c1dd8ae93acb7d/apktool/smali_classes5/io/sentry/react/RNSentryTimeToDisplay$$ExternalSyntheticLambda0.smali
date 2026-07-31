.class public final synthetic Lio/sentry/react/RNSentryTimeToDisplay$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# instance fields
.field public final synthetic f$0:Lio/sentry/SentryDateProvider;

.field public final synthetic f$1:Lcom/facebook/react/bridge/Promise;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/SentryDateProvider;Lcom/facebook/react/bridge/Promise;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/react/RNSentryTimeToDisplay$$ExternalSyntheticLambda0;->f$0:Lio/sentry/SentryDateProvider;

    iput-object p2, p0, Lio/sentry/react/RNSentryTimeToDisplay$$ExternalSyntheticLambda0;->f$1:Lcom/facebook/react/bridge/Promise;

    return-void
.end method


# virtual methods
.method public final doFrame(J)V
    .locals 2

    .line 0
    iget-object v0, p0, Lio/sentry/react/RNSentryTimeToDisplay$$ExternalSyntheticLambda0;->f$0:Lio/sentry/SentryDateProvider;

    iget-object v1, p0, Lio/sentry/react/RNSentryTimeToDisplay$$ExternalSyntheticLambda0;->f$1:Lcom/facebook/react/bridge/Promise;

    invoke-static {v0, v1, p1, p2}, Lio/sentry/react/RNSentryTimeToDisplay;->lambda$getTimeToDisplay$0(Lio/sentry/SentryDateProvider;Lcom/facebook/react/bridge/Promise;J)V

    return-void
.end method
