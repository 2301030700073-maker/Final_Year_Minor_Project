.class public final Lio/sentry/metrics/LocalMetricsAggregator;
.super Ljava/lang/Object;
.source "LocalMetricsAggregator.java"


# instance fields
.field private final buckets:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/sentry/metrics/GaugeMetric;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/sentry/metrics/LocalMetricsAggregator;->buckets:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;Lio/sentry/metrics/MetricType;Ljava/lang/String;DLio/sentry/MeasurementUnit;Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/sentry/metrics/MetricType;",
            "Ljava/lang/String;",
            "D",
            "Lio/sentry/MeasurementUnit;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 33
    invoke-static {p2, p3, p6}, Lio/sentry/metrics/MetricsHelper;->getExportKey(Lio/sentry/metrics/MetricType;Ljava/lang/String;Lio/sentry/MeasurementUnit;)Ljava/lang/String;

    move-result-object p2

    .line 35
    iget-object v0, p0, Lio/sentry/metrics/LocalMetricsAggregator;->buckets:Ljava/util/Map;

    monitor-enter v0

    .line 36
    :try_start_0
    iget-object v1, p0, Lio/sentry/metrics/LocalMetricsAggregator;->buckets:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-nez v1, :cond_0

    .line 39
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 40
    iget-object v2, p0, Lio/sentry/metrics/LocalMetricsAggregator;->buckets:Ljava/util/Map;

    invoke-interface {v2, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    :cond_0
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/sentry/metrics/GaugeMetric;

    if-nez p2, :cond_1

    .line 45
    new-instance p2, Lio/sentry/metrics/GaugeMetric;

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move-object v6, p6

    move-object v7, p7

    invoke-direct/range {v2 .. v7}, Lio/sentry/metrics/GaugeMetric;-><init>(Ljava/lang/String;DLio/sentry/MeasurementUnit;Ljava/util/Map;)V

    .line 46
    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 48
    :cond_1
    invoke-virtual {p2, p4, p5}, Lio/sentry/metrics/GaugeMetric;->add(D)V

    .line 50
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getSummaries()Ljava/util/Map;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lio/sentry/protocol/MetricSummary;",
            ">;>;"
        }
    .end annotation

    move-object/from16 v1, p0

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 56
    iget-object v2, v1, Lio/sentry/metrics/LocalMetricsAggregator;->buckets:Ljava/util/Map;

    monitor-enter v2

    .line 57
    :try_start_0
    iget-object v3, v1, Lio/sentry/metrics/LocalMetricsAggregator;->buckets:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 58
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 59
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 60
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lio/sentry/metrics/GaugeMetric;

    .line 61
    new-instance v15, Lio/sentry/protocol/MetricSummary;

    .line 63
    invoke-virtual {v7}, Lio/sentry/metrics/GaugeMetric;->getMin()D

    move-result-wide v9

    .line 64
    invoke-virtual {v7}, Lio/sentry/metrics/GaugeMetric;->getMax()D

    move-result-wide v11

    .line 65
    invoke-virtual {v7}, Lio/sentry/metrics/GaugeMetric;->getSum()D

    move-result-wide v13

    .line 66
    invoke-virtual {v7}, Lio/sentry/metrics/GaugeMetric;->getCount()I

    move-result v16

    .line 67
    invoke-virtual {v7}, Lio/sentry/metrics/GaugeMetric;->getTags()Ljava/util/Map;

    move-result-object v7

    move-object v8, v15

    move-object v1, v15

    move/from16 v15, v16

    move-object/from16 v16, v7

    invoke-direct/range {v8 .. v16}, Lio/sentry/protocol/MetricSummary;-><init>(DDDILjava/util/Map;)V

    .line 61
    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, p0

    goto :goto_1

    .line 69
    :cond_0
    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, p0

    goto :goto_0

    .line 71
    :cond_1
    monitor-exit v2

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
