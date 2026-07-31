.class public final Lcom/allproperty/android/consumer/modules/appmetrics/AppMetricsModule;
.super Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.source "AppMetricsModule.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/allproperty/android/consumer/modules/appmetrics/AppMetricsModule$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0006\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 \u00102\u00020\u0001:\u0001\u0010B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0008\u0010\u0006\u001a\u00020\u0007H\u0016J \u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0007J\u0010\u0010\u000f\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\u000eH\u0007\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/allproperty/android/consumer/modules/appmetrics/AppMetricsModule;",
        "Lcom/facebook/react/bridge/ReactContextBaseJavaModule;",
        "reactContext",
        "Lcom/facebook/react/bridge/ReactApplicationContext;",
        "<init>",
        "(Lcom/facebook/react/bridge/ReactApplicationContext;)V",
        "getName",
        "",
        "addMetric",
        "",
        "key",
        "value",
        "",
        "promise",
        "Lcom/facebook/react/bridge/Promise;",
        "getMetrics",
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
.field public static final Companion:Lcom/allproperty/android/consumer/modules/appmetrics/AppMetricsModule$Companion;

.field private static final REACT_CLASS:Ljava/lang/String; = "AppMetricsModule"

.field private static final appMetrics:Lcom/allproperty/android/consumer/modules/appmetrics/AppMetrics;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/allproperty/android/consumer/modules/appmetrics/AppMetricsModule$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/allproperty/android/consumer/modules/appmetrics/AppMetricsModule$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/allproperty/android/consumer/modules/appmetrics/AppMetricsModule;->Companion:Lcom/allproperty/android/consumer/modules/appmetrics/AppMetricsModule$Companion;

    .line 8
    sget-object v0, Lcom/allproperty/android/consumer/modules/appmetrics/AppMetrics;->Companion:Lcom/allproperty/android/consumer/modules/appmetrics/AppMetrics$Companion;

    invoke-virtual {v0}, Lcom/allproperty/android/consumer/modules/appmetrics/AppMetrics$Companion;->getInstance()Lcom/allproperty/android/consumer/modules/appmetrics/AppMetrics;

    move-result-object v0

    sput-object v0, Lcom/allproperty/android/consumer/modules/appmetrics/AppMetricsModule;->appMetrics:Lcom/allproperty/android/consumer/modules/appmetrics/AppMetrics;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 1

    const-string/jumbo v0, "reactContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    return-void
.end method

.method public static final synthetic access$getAppMetrics$cp()Lcom/allproperty/android/consumer/modules/appmetrics/AppMetrics;
    .locals 1

    .line 5
    sget-object v0, Lcom/allproperty/android/consumer/modules/appmetrics/AppMetricsModule;->appMetrics:Lcom/allproperty/android/consumer/modules/appmetrics/AppMetrics;

    return-object v0
.end method


# virtual methods
.method public final addMetric(Ljava/lang/String;DLcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "promise"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    sget-object v0, Lcom/allproperty/android/consumer/modules/appmetrics/AppMetricsModule;->appMetrics:Lcom/allproperty/android/consumer/modules/appmetrics/AppMetrics;

    invoke-virtual {v0, p1, p2, p3}, Lcom/allproperty/android/consumer/modules/appmetrics/AppMetrics;->addMetric(Ljava/lang/String;D)V

    const/4 p1, 0x0

    .line 16
    invoke-interface {p4, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method

.method public final getMetrics(Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const-string/jumbo v0, "promise"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    sget-object v0, Lcom/allproperty/android/consumer/modules/appmetrics/AppMetricsModule;->appMetrics:Lcom/allproperty/android/consumer/modules/appmetrics/AppMetrics;

    invoke-virtual {v0}, Lcom/allproperty/android/consumer/modules/appmetrics/AppMetrics;->getMetrics()Ljava/util/Map;

    move-result-object v0

    .line 22
    invoke-static {v0}, Lcom/facebook/react/bridge/Arguments;->makeNativeMap(Ljava/util/Map;)Lcom/facebook/react/bridge/WritableNativeMap;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 11
    const-string v0, "AppMetricsModule"

    return-object v0
.end method
