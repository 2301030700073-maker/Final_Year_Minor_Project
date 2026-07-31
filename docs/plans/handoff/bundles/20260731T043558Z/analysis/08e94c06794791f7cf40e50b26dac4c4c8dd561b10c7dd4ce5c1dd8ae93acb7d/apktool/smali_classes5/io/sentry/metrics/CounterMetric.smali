.class public final Lio/sentry/metrics/CounterMetric;
.super Lio/sentry/metrics/Metric;
.source "CounterMetric.java"


# instance fields
.field private value:D


# direct methods
.method public constructor <init>(Ljava/lang/String;DLio/sentry/MeasurementUnit;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "D",
            "Lio/sentry/MeasurementUnit;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 20
    sget-object v0, Lio/sentry/metrics/MetricType;->Counter:Lio/sentry/metrics/MetricType;

    invoke-direct {p0, v0, p1, p4, p5}, Lio/sentry/metrics/Metric;-><init>(Lio/sentry/metrics/MetricType;Ljava/lang/String;Lio/sentry/MeasurementUnit;Ljava/util/Map;)V

    .line 21
    iput-wide p2, p0, Lio/sentry/metrics/CounterMetric;->value:D

    return-void
.end method


# virtual methods
.method public add(D)V
    .locals 2

    .line 30
    iget-wide v0, p0, Lio/sentry/metrics/CounterMetric;->value:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Lio/sentry/metrics/CounterMetric;->value:D

    return-void
.end method

.method public getValue()D
    .locals 2

    .line 25
    iget-wide v0, p0, Lio/sentry/metrics/CounterMetric;->value:D

    return-wide v0
.end method

.method public getWeight()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public serialize()Ljava/lang/Iterable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "*>;"
        }
    .end annotation

    .line 40
    iget-wide v0, p0, Lio/sentry/metrics/CounterMetric;->value:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
