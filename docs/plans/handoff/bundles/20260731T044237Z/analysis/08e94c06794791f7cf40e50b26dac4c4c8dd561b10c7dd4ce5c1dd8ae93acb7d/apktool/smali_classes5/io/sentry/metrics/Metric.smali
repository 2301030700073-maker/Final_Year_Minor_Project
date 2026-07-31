.class public abstract Lio/sentry/metrics/Metric;
.super Ljava/lang/Object;
.source "Metric.java"


# instance fields
.field private final key:Ljava/lang/String;

.field private final tags:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final type:Lio/sentry/metrics/MetricType;

.field private final unit:Lio/sentry/MeasurementUnit;


# direct methods
.method public constructor <init>(Lio/sentry/metrics/MetricType;Ljava/lang/String;Lio/sentry/MeasurementUnit;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/sentry/metrics/MetricType;",
            "Ljava/lang/String;",
            "Lio/sentry/MeasurementUnit;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lio/sentry/metrics/Metric;->type:Lio/sentry/metrics/MetricType;

    .line 32
    iput-object p2, p0, Lio/sentry/metrics/Metric;->key:Ljava/lang/String;

    .line 33
    iput-object p3, p0, Lio/sentry/metrics/Metric;->unit:Lio/sentry/MeasurementUnit;

    .line 34
    iput-object p4, p0, Lio/sentry/metrics/Metric;->tags:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public abstract add(D)V
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lio/sentry/metrics/Metric;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getTags()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lio/sentry/metrics/Metric;->tags:Ljava/util/Map;

    return-object v0
.end method

.method public getType()Lio/sentry/metrics/MetricType;
    .locals 1

    .line 42
    iget-object v0, p0, Lio/sentry/metrics/Metric;->type:Lio/sentry/metrics/MetricType;

    return-object v0
.end method

.method public getUnit()Lio/sentry/MeasurementUnit;
    .locals 1

    .line 54
    iget-object v0, p0, Lio/sentry/metrics/Metric;->unit:Lio/sentry/MeasurementUnit;

    return-object v0
.end method

.method public abstract getWeight()I
.end method

.method public abstract serialize()Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "*>;"
        }
    .end annotation
.end method
