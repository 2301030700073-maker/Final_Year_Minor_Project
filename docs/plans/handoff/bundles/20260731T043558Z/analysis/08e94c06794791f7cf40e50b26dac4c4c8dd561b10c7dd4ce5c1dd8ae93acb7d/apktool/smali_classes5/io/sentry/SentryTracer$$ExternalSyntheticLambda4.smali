.class public final synthetic Lio/sentry/SentryTracer$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/sentry/ScopeCallback;


# instance fields
.field public final synthetic f$0:Ljava/util/concurrent/atomic/AtomicReference;

.field public final synthetic f$1:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/SentryTracer$$ExternalSyntheticLambda4;->f$0:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p2, p0, Lio/sentry/SentryTracer$$ExternalSyntheticLambda4;->f$1:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public final run(Lio/sentry/IScope;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lio/sentry/SentryTracer$$ExternalSyntheticLambda4;->f$0:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v1, p0, Lio/sentry/SentryTracer$$ExternalSyntheticLambda4;->f$1:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, v1, p1}, Lio/sentry/SentryTracer;->lambda$updateBaggageValues$4(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;Lio/sentry/IScope;)V

    return-void
.end method
