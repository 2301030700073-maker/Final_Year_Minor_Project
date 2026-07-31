.class public final Lcom/google/firebase/perf/PerformanceKt;
.super Ljava/lang/Object;
.source "Performance.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPerformance.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Performance.kt\ncom/google/firebase/perf/PerformanceKt\n*L\n1#1,68:1\n49#1,5:69\n*S KotlinDebug\n*F\n+ 1 Performance.kt\ncom/google/firebase/perf/PerformanceKt\n*L\n61#1:69,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u001a)\u0010\u0005\u001a\u00020\u0006*\u00020\u00072\u0017\u0010\u0008\u001a\u0013\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00060\t\u00a2\u0006\u0002\u0008\nH\u0086\u0008\u00f8\u0001\u0000\u001a4\u0010\u0005\u001a\u0002H\u000b\"\u0004\u0008\u0000\u0010\u000b*\u00020\u000c2\u0017\u0010\u0008\u001a\u0013\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u0002H\u000b0\t\u00a2\u0006\u0002\u0008\nH\u0086\u0008\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\r\u001a8\u0010\u0005\u001a\u0002H\u000b\"\u0004\u0008\u0000\u0010\u000b2\u0006\u0010\u000e\u001a\u00020\u000f2\u0017\u0010\u0008\u001a\u0013\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u0002H\u000b0\t\u00a2\u0006\u0002\u0008\nH\u0086\u0008\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0010\"\u0015\u0010\u0000\u001a\u00020\u0001*\u00020\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008\u0003\u0010\u0004\u0082\u0002\u0007\n\u0005\u0008\u009920\u0001\u00a8\u0006\u0011"
    }
    d2 = {
        "performance",
        "Lcom/google/firebase/perf/FirebasePerformance;",
        "Lcom/google/firebase/Firebase;",
        "getPerformance",
        "(Lcom/google/firebase/Firebase;)Lcom/google/firebase/perf/FirebasePerformance;",
        "trace",
        "",
        "Lcom/google/firebase/perf/metrics/HttpMetric;",
        "block",
        "Lkotlin/Function1;",
        "Lkotlin/ExtensionFunctionType;",
        "T",
        "Lcom/google/firebase/perf/metrics/Trace;",
        "(Lcom/google/firebase/perf/metrics/Trace;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;",
        "name",
        "",
        "(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;",
        "com.google.firebase-firebase-perf"
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
.method public static final getPerformance(Lcom/google/firebase/Firebase;)Lcom/google/firebase/perf/FirebasePerformance;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-static {}, Lcom/google/firebase/perf/FirebasePerformance;->getInstance()Lcom/google/firebase/perf/FirebasePerformance;

    move-result-object p0

    const-string v0, "getInstance(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final trace(Lcom/google/firebase/perf/metrics/Trace;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/firebase/perf/metrics/Trace;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/google/firebase/perf/metrics/Trace;",
            "+TT;>;)TT;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Lcom/google/firebase/perf/metrics/Trace;->start()V

    .line 51
    :try_start_0
    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    invoke-virtual {p0}, Lcom/google/firebase/perf/metrics/Trace;->stop()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lcom/google/firebase/perf/metrics/Trace;->stop()V

    throw p1
.end method

.method public static final trace(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/google/firebase/perf/metrics/Trace;",
            "+TT;>;)TT;"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    invoke-static {p0}, Lcom/google/firebase/perf/metrics/Trace;->create(Ljava/lang/String;)Lcom/google/firebase/perf/metrics/Trace;

    move-result-object p0

    const-string v0, "create(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Lcom/google/firebase/perf/metrics/Trace;->start()V

    .line 71
    :try_start_0
    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    invoke-virtual {p0}, Lcom/google/firebase/perf/metrics/Trace;->stop()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lcom/google/firebase/perf/metrics/Trace;->stop()V

    throw p1
.end method

.method public static final trace(Lcom/google/firebase/perf/metrics/HttpMetric;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/perf/metrics/HttpMetric;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/google/firebase/perf/metrics/HttpMetric;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-virtual {p0}, Lcom/google/firebase/perf/metrics/HttpMetric;->start()V

    .line 38
    :try_start_0
    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    invoke-virtual {p0}, Lcom/google/firebase/perf/metrics/HttpMetric;->stop()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lcom/google/firebase/perf/metrics/HttpMetric;->stop()V

    throw p1
.end method
