.class public final enum Lio/sentry/metrics/MetricType;
.super Ljava/lang/Enum;
.source "MetricType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/sentry/metrics/MetricType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/sentry/metrics/MetricType;

.field public static final enum Counter:Lio/sentry/metrics/MetricType;

.field public static final enum Distribution:Lio/sentry/metrics/MetricType;

.field public static final enum Gauge:Lio/sentry/metrics/MetricType;

.field public static final enum Set:Lio/sentry/metrics/MetricType;


# instance fields
.field final statsdCode:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lio/sentry/metrics/MetricType;
    .locals 4

    .line 7
    sget-object v0, Lio/sentry/metrics/MetricType;->Counter:Lio/sentry/metrics/MetricType;

    sget-object v1, Lio/sentry/metrics/MetricType;->Gauge:Lio/sentry/metrics/MetricType;

    sget-object v2, Lio/sentry/metrics/MetricType;->Distribution:Lio/sentry/metrics/MetricType;

    sget-object v3, Lio/sentry/metrics/MetricType;->Set:Lio/sentry/metrics/MetricType;

    filled-new-array {v0, v1, v2, v3}, [Lio/sentry/metrics/MetricType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 9
    new-instance v0, Lio/sentry/metrics/MetricType;

    const/4 v1, 0x0

    const-string v2, "c"

    const-string v3, "Counter"

    invoke-direct {v0, v3, v1, v2}, Lio/sentry/metrics/MetricType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/sentry/metrics/MetricType;->Counter:Lio/sentry/metrics/MetricType;

    .line 10
    new-instance v0, Lio/sentry/metrics/MetricType;

    const/4 v1, 0x1

    const-string v2, "g"

    const-string v3, "Gauge"

    invoke-direct {v0, v3, v1, v2}, Lio/sentry/metrics/MetricType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/sentry/metrics/MetricType;->Gauge:Lio/sentry/metrics/MetricType;

    .line 11
    new-instance v0, Lio/sentry/metrics/MetricType;

    const/4 v1, 0x2

    const-string v2, "d"

    const-string v3, "Distribution"

    invoke-direct {v0, v3, v1, v2}, Lio/sentry/metrics/MetricType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/sentry/metrics/MetricType;->Distribution:Lio/sentry/metrics/MetricType;

    .line 12
    new-instance v0, Lio/sentry/metrics/MetricType;

    const/4 v1, 0x3

    const-string v2, "s"

    const-string v3, "Set"

    invoke-direct {v0, v3, v1, v2}, Lio/sentry/metrics/MetricType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/sentry/metrics/MetricType;->Set:Lio/sentry/metrics/MetricType;

    .line 7
    invoke-static {}, Lio/sentry/metrics/MetricType;->$values()[Lio/sentry/metrics/MetricType;

    move-result-object v0

    sput-object v0, Lio/sentry/metrics/MetricType;->$VALUES:[Lio/sentry/metrics/MetricType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    iput-object p3, p0, Lio/sentry/metrics/MetricType;->statsdCode:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/sentry/metrics/MetricType;
    .locals 1

    .line 7
    const-class v0, Lio/sentry/metrics/MetricType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/sentry/metrics/MetricType;

    return-object p0
.end method

.method public static values()[Lio/sentry/metrics/MetricType;
    .locals 1

    .line 7
    sget-object v0, Lio/sentry/metrics/MetricType;->$VALUES:[Lio/sentry/metrics/MetricType;

    invoke-virtual {v0}, [Lio/sentry/metrics/MetricType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/sentry/metrics/MetricType;

    return-object v0
.end method
