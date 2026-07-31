.class public final Lcom/allproperty/android/consumer/modules/appmetrics/AppMetrics;
.super Ljava/lang/Object;
.source "AppMetrics.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/allproperty/android/consumer/modules/appmetrics/AppMetrics$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010$\n\u0002\u0008\u0002\u0018\u0000 \u000e2\u00020\u0001:\u0001\u000eB\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0016\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u0007J\u0012\u0010\u000c\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\rR\u001a\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/allproperty/android/consumer/modules/appmetrics/AppMetrics;",
        "",
        "<init>",
        "()V",
        "data",
        "",
        "",
        "",
        "addMetric",
        "",
        "key",
        "value",
        "getMetrics",
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
.field public static final Companion:Lcom/allproperty/android/consumer/modules/appmetrics/AppMetrics$Companion;

.field private static volatile INSTANCE:Lcom/allproperty/android/consumer/modules/appmetrics/AppMetrics;


# instance fields
.field private final data:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/allproperty/android/consumer/modules/appmetrics/AppMetrics$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/allproperty/android/consumer/modules/appmetrics/AppMetrics$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/allproperty/android/consumer/modules/appmetrics/AppMetrics;->Companion:Lcom/allproperty/android/consumer/modules/appmetrics/AppMetrics$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/allproperty/android/consumer/modules/appmetrics/AppMetrics;->data:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/allproperty/android/consumer/modules/appmetrics/AppMetrics;-><init>()V

    return-void
.end method

.method public static final synthetic access$getINSTANCE$cp()Lcom/allproperty/android/consumer/modules/appmetrics/AppMetrics;
    .locals 1

    .line 3
    sget-object v0, Lcom/allproperty/android/consumer/modules/appmetrics/AppMetrics;->INSTANCE:Lcom/allproperty/android/consumer/modules/appmetrics/AppMetrics;

    return-object v0
.end method

.method public static final synthetic access$setINSTANCE$cp(Lcom/allproperty/android/consumer/modules/appmetrics/AppMetrics;)V
    .locals 0

    .line 3
    sput-object p0, Lcom/allproperty/android/consumer/modules/appmetrics/AppMetrics;->INSTANCE:Lcom/allproperty/android/consumer/modules/appmetrics/AppMetrics;

    return-void
.end method


# virtual methods
.method public final addMetric(Ljava/lang/String;D)V
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    .line 19
    iget-object p3, p0, Lcom/allproperty/android/consumer/modules/appmetrics/AppMetrics;->data:Ljava/util/Map;

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final getMetrics()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lcom/allproperty/android/consumer/modules/appmetrics/AppMetrics;->data:Ljava/util/Map;

    invoke-static {v0}, Lkotlin/collections/MapsKt;->toMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
