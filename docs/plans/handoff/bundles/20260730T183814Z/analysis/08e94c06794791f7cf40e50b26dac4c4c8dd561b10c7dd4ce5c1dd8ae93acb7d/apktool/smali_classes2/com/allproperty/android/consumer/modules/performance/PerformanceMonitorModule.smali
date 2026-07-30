.class public final Lcom/allproperty/android/consumer/modules/performance/PerformanceMonitorModule;
.super Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.source "PerformanceMonitorModule.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/allproperty/android/consumer/modules/performance/PerformanceMonitorModule$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0018\u0000 \u00112\u00020\u0001:\u0001\u0011B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0008\u0010\u0006\u001a\u00020\u0007H\u0016J\u0018\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u000cH\u0007J\u0018\u0010\r\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u000cH\u0007J\u0010\u0010\u000e\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\u000cH\u0007J\u0010\u0010\u000f\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\u0010H\u0007\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/allproperty/android/consumer/modules/performance/PerformanceMonitorModule;",
        "Lcom/facebook/react/bridge/ReactContextBaseJavaModule;",
        "reactContext",
        "Lcom/facebook/react/bridge/ReactApplicationContext;",
        "<init>",
        "(Lcom/facebook/react/bridge/ReactApplicationContext;)V",
        "getName",
        "",
        "startTrace",
        "",
        "identifier",
        "promise",
        "Lcom/facebook/react/bridge/Promise;",
        "stopTrace",
        "getNativeStartTime",
        "nativeAppTrace",
        "",
        "Companion",
        "app_myPublicRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/allproperty/android/consumer/modules/performance/PerformanceMonitorModule$Companion;

.field private static final REACT_CLASS:Ljava/lang/String; = "PerformanceMonitorModule"

.field private static final performanceMonitor:Lcom/allproperty/android/consumer/modules/performance/PerformanceMonitor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/allproperty/android/consumer/modules/performance/PerformanceMonitorModule$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/allproperty/android/consumer/modules/performance/PerformanceMonitorModule$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/allproperty/android/consumer/modules/performance/PerformanceMonitorModule;->Companion:Lcom/allproperty/android/consumer/modules/performance/PerformanceMonitorModule$Companion;

    .line 9
    new-instance v0, Lcom/allproperty/android/consumer/modules/performance/PerformanceMonitor;

    invoke-direct {v0}, Lcom/allproperty/android/consumer/modules/performance/PerformanceMonitor;-><init>()V

    sput-object v0, Lcom/allproperty/android/consumer/modules/performance/PerformanceMonitorModule;->performanceMonitor:Lcom/allproperty/android/consumer/modules/performance/PerformanceMonitor;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 1

    const-string/jumbo v0, "reactContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    return-void
.end method

.method public static final synthetic access$getPerformanceMonitor$cp()Lcom/allproperty/android/consumer/modules/performance/PerformanceMonitor;
    .locals 1

    .line 6
    sget-object v0, Lcom/allproperty/android/consumer/modules/performance/PerformanceMonitorModule;->performanceMonitor:Lcom/allproperty/android/consumer/modules/performance/PerformanceMonitor;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 12
    const-string v0, "PerformanceMonitorModule"

    return-object v0
.end method

.method public final getNativeStartTime(Lcom/facebook/react/bridge/Promise;)V
    .locals 3
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const-string/jumbo v0, "promise"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    :try_start_0
    sget-object v0, Lcom/allproperty/android/consumer/MainApplication;->Companion:Lcom/allproperty/android/consumer/MainApplication$Companion;

    invoke-virtual {v0}, Lcom/allproperty/android/consumer/MainApplication$Companion;->getNativeStartTime()J

    move-result-wide v0

    long-to-double v0, v0

    .line 38
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 40
    const-string v1, "Failed to retrieve native launch time"

    check-cast v0, Ljava/lang/Throwable;

    const-string v2, "ERROR"

    invoke-interface {p1, v2, v1, v0}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final nativeAppTrace(Z)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 46
    sget-object v0, Lcom/allproperty/android/consumer/modules/performance/PerformanceMonitorModule;->performanceMonitor:Lcom/allproperty/android/consumer/modules/performance/PerformanceMonitor;

    invoke-virtual {v0, p1}, Lcom/allproperty/android/consumer/modules/performance/PerformanceMonitor;->nativeAppTrace(Z)V

    return-void
.end method

.method public final startTrace(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const-string v0, "identifier"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "promise"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    :try_start_0
    sget-object v0, Lcom/allproperty/android/consumer/modules/performance/PerformanceMonitorModule;->performanceMonitor:Lcom/allproperty/android/consumer/modules/performance/PerformanceMonitor;

    invoke-virtual {v0, p1}, Lcom/allproperty/android/consumer/modules/performance/PerformanceMonitor;->startTrace(Ljava/lang/String;)Lcom/google/firebase/perf/metrics/Trace;

    .line 18
    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 20
    const-string v0, "StartTraceError"

    check-cast p1, Ljava/lang/Throwable;

    invoke-interface {p2, v0, p1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final stopTrace(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const-string v0, "identifier"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "promise"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    :try_start_0
    sget-object v0, Lcom/allproperty/android/consumer/modules/performance/PerformanceMonitorModule;->performanceMonitor:Lcom/allproperty/android/consumer/modules/performance/PerformanceMonitor;

    invoke-virtual {v0, p1}, Lcom/allproperty/android/consumer/modules/performance/PerformanceMonitor;->stopTrace(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 28
    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 30
    const-string v0, "StopTraceError"

    check-cast p1, Ljava/lang/Throwable;

    invoke-interface {p2, v0, p1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
