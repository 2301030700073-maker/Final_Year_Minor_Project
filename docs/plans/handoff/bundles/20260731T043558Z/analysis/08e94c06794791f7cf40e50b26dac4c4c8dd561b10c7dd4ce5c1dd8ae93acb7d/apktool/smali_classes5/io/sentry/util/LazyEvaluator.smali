.class public final Lio/sentry/util/LazyEvaluator;
.super Ljava/lang/Object;
.source "LazyEvaluator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/util/LazyEvaluator$Evaluator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final evaluator:Lio/sentry/util/LazyEvaluator$Evaluator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/sentry/util/LazyEvaluator$Evaluator<",
            "TT;>;"
        }
    .end annotation
.end field

.field private volatile value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/sentry/util/LazyEvaluator$Evaluator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/sentry/util/LazyEvaluator$Evaluator<",
            "TT;>;)V"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lio/sentry/util/LazyEvaluator;->value:Ljava/lang/Object;

    .line 24
    iput-object p1, p0, Lio/sentry/util/LazyEvaluator;->evaluator:Lio/sentry/util/LazyEvaluator$Evaluator;

    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lio/sentry/util/LazyEvaluator;->value:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 35
    monitor-enter p0

    .line 36
    :try_start_0
    iget-object v0, p0, Lio/sentry/util/LazyEvaluator;->value:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 37
    iget-object v0, p0, Lio/sentry/util/LazyEvaluator;->evaluator:Lio/sentry/util/LazyEvaluator$Evaluator;

    invoke-interface {v0}, Lio/sentry/util/LazyEvaluator$Evaluator;->evaluate()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/util/LazyEvaluator;->value:Ljava/lang/Object;

    .line 39
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 43
    :cond_1
    :goto_0
    iget-object v0, p0, Lio/sentry/util/LazyEvaluator;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public resetValue()V
    .locals 1

    .line 57
    monitor-enter p0

    const/4 v0, 0x0

    .line 58
    :try_start_0
    iput-object v0, p0, Lio/sentry/util/LazyEvaluator;->value:Ljava/lang/Object;

    .line 59
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 47
    monitor-enter p0

    .line 48
    :try_start_0
    iput-object p1, p0, Lio/sentry/util/LazyEvaluator;->value:Ljava/lang/Object;

    .line 49
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
