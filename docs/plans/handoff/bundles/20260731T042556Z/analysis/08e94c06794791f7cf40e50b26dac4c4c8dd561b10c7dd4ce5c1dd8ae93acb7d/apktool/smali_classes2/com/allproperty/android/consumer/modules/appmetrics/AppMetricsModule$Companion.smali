.class public final Lcom/allproperty/android/consumer/modules/appmetrics/AppMetricsModule$Companion;
.super Ljava/lang/Object;
.source "AppMetricsModule.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/allproperty/android/consumer/modules/appmetrics/AppMetricsModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/allproperty/android/consumer/modules/appmetrics/AppMetricsModule$Companion;",
        "",
        "<init>",
        "()V",
        "REACT_CLASS",
        "",
        "appMetrics",
        "Lcom/allproperty/android/consumer/modules/appmetrics/AppMetrics;",
        "getAppMetrics",
        "()Lcom/allproperty/android/consumer/modules/appmetrics/AppMetrics;",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/allproperty/android/consumer/modules/appmetrics/AppMetricsModule$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAppMetrics()Lcom/allproperty/android/consumer/modules/appmetrics/AppMetrics;
    .locals 1

    .line 8
    invoke-static {}, Lcom/allproperty/android/consumer/modules/appmetrics/AppMetricsModule;->access$getAppMetrics$cp()Lcom/allproperty/android/consumer/modules/appmetrics/AppMetrics;

    move-result-object v0

    return-object v0
.end method
