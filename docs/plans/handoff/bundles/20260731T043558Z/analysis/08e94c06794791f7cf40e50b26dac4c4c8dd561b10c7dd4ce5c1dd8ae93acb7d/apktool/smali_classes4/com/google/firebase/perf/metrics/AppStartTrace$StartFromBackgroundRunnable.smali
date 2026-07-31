.class public Lcom/google/firebase/perf/metrics/AppStartTrace$StartFromBackgroundRunnable;
.super Ljava/lang/Object;
.source "AppStartTrace.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/perf/metrics/AppStartTrace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StartFromBackgroundRunnable"
.end annotation


# instance fields
.field private final trace:Lcom/google/firebase/perf/metrics/AppStartTrace;


# direct methods
.method public constructor <init>(Lcom/google/firebase/perf/metrics/AppStartTrace;)V
    .locals 0

    .line 585
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 586
    iput-object p1, p0, Lcom/google/firebase/perf/metrics/AppStartTrace$StartFromBackgroundRunnable;->trace:Lcom/google/firebase/perf/metrics/AppStartTrace;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 592
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace$StartFromBackgroundRunnable;->trace:Lcom/google/firebase/perf/metrics/AppStartTrace;

    invoke-static {v0}, Lcom/google/firebase/perf/metrics/AppStartTrace;->access$100(Lcom/google/firebase/perf/metrics/AppStartTrace;)Lcom/google/firebase/perf/util/Timer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 593
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace$StartFromBackgroundRunnable;->trace:Lcom/google/firebase/perf/metrics/AppStartTrace;

    new-instance v1, Lcom/google/firebase/perf/util/Timer;

    invoke-direct {v1}, Lcom/google/firebase/perf/util/Timer;-><init>()V

    invoke-static {v0, v1}, Lcom/google/firebase/perf/metrics/AppStartTrace;->access$202(Lcom/google/firebase/perf/metrics/AppStartTrace;Lcom/google/firebase/perf/util/Timer;)Lcom/google/firebase/perf/util/Timer;

    :cond_0
    return-void
.end method
