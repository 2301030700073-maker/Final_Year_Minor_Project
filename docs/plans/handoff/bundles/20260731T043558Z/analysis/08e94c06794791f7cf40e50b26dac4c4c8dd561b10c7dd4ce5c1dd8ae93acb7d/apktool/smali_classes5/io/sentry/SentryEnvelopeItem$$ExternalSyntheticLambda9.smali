.class public final synthetic Lio/sentry/SentryEnvelopeItem$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lio/sentry/metrics/EncodedMetrics;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/metrics/EncodedMetrics;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/SentryEnvelopeItem$$ExternalSyntheticLambda9;->f$0:Lio/sentry/metrics/EncodedMetrics;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lio/sentry/SentryEnvelopeItem$$ExternalSyntheticLambda9;->f$0:Lio/sentry/metrics/EncodedMetrics;

    invoke-static {v0}, Lio/sentry/SentryEnvelopeItem;->lambda$fromMetrics$12(Lio/sentry/metrics/EncodedMetrics;)[B

    move-result-object v0

    return-object v0
.end method
