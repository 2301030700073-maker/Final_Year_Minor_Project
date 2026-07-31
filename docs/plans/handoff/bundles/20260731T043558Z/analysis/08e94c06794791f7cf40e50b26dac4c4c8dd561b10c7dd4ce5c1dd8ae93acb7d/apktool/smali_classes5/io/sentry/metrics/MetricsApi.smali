.class public final Lio/sentry/metrics/MetricsApi;
.super Ljava/lang/Object;
.source "MetricsApi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/metrics/MetricsApi$IMetricsInterface;
    }
.end annotation


# instance fields
.field private final aggregator:Lio/sentry/metrics/MetricsApi$IMetricsInterface;


# direct methods
.method public constructor <init>(Lio/sentry/metrics/MetricsApi$IMetricsInterface;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lio/sentry/metrics/MetricsApi;->aggregator:Lio/sentry/metrics/MetricsApi$IMetricsInterface;

    return-void
.end method


# virtual methods
.method public distribution(Ljava/lang/String;D)V
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    .line 187
    invoke-virtual/range {v0 .. v6}, Lio/sentry/metrics/MetricsApi;->distribution(Ljava/lang/String;DLio/sentry/MeasurementUnit;Ljava/util/Map;Ljava/lang/Long;)V

    return-void
.end method

.method public distribution(Ljava/lang/String;DLio/sentry/MeasurementUnit;)V
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    .line 200
    invoke-virtual/range {v0 .. v6}, Lio/sentry/metrics/MetricsApi;->distribution(Ljava/lang/String;DLio/sentry/MeasurementUnit;Ljava/util/Map;Ljava/lang/Long;)V

    return-void
.end method

.method public distribution(Ljava/lang/String;DLio/sentry/MeasurementUnit;Ljava/util/Map;)V
    .locals 7
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

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    .line 217
    invoke-virtual/range {v0 .. v6}, Lio/sentry/metrics/MetricsApi;->distribution(Ljava/lang/String;DLio/sentry/MeasurementUnit;Ljava/util/Map;Ljava/lang/Long;)V

    return-void
.end method

.method public distribution(Ljava/lang/String;DLio/sentry/MeasurementUnit;Ljava/util/Map;Ljava/lang/Long;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "D",
            "Lio/sentry/MeasurementUnit;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Long;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    if-eqz p6, :cond_0

    .line 237
    invoke-virtual/range {p6 .. p6}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    :goto_0
    move-wide v9, v1

    .line 238
    iget-object v1, v0, Lio/sentry/metrics/MetricsApi;->aggregator:Lio/sentry/metrics/MetricsApi$IMetricsInterface;

    .line 239
    invoke-interface {v1}, Lio/sentry/metrics/MetricsApi$IMetricsInterface;->getDefaultTagsForMetrics()Ljava/util/Map;

    move-result-object v1

    move-object/from16 v2, p5

    invoke-static {v2, v1}, Lio/sentry/metrics/MetricsHelper;->mergeTags(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v8

    .line 240
    iget-object v1, v0, Lio/sentry/metrics/MetricsApi;->aggregator:Lio/sentry/metrics/MetricsApi$IMetricsInterface;

    .line 241
    invoke-interface {v1}, Lio/sentry/metrics/MetricsApi$IMetricsInterface;->getLocalMetricsAggregator()Lio/sentry/metrics/LocalMetricsAggregator;

    move-result-object v11

    .line 243
    iget-object v1, v0, Lio/sentry/metrics/MetricsApi;->aggregator:Lio/sentry/metrics/MetricsApi$IMetricsInterface;

    .line 244
    invoke-interface {v1}, Lio/sentry/metrics/MetricsApi$IMetricsInterface;->getMetricsAggregator()Lio/sentry/IMetricsAggregator;

    move-result-object v3

    move-object v4, p1

    move-wide v5, p2

    move-object/from16 v7, p4

    .line 245
    invoke-interface/range {v3 .. v11}, Lio/sentry/IMetricsAggregator;->distribution(Ljava/lang/String;DLio/sentry/MeasurementUnit;Ljava/util/Map;JLio/sentry/metrics/LocalMetricsAggregator;)V

    return-void
.end method

.method public gauge(Ljava/lang/String;D)V
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    .line 120
    invoke-virtual/range {v0 .. v6}, Lio/sentry/metrics/MetricsApi;->gauge(Ljava/lang/String;DLio/sentry/MeasurementUnit;Ljava/util/Map;Ljava/lang/Long;)V

    return-void
.end method

.method public gauge(Ljava/lang/String;DLio/sentry/MeasurementUnit;)V
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    .line 132
    invoke-virtual/range {v0 .. v6}, Lio/sentry/metrics/MetricsApi;->gauge(Ljava/lang/String;DLio/sentry/MeasurementUnit;Ljava/util/Map;Ljava/lang/Long;)V

    return-void
.end method

.method public gauge(Ljava/lang/String;DLio/sentry/MeasurementUnit;Ljava/util/Map;)V
    .locals 7
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

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    .line 149
    invoke-virtual/range {v0 .. v6}, Lio/sentry/metrics/MetricsApi;->gauge(Ljava/lang/String;DLio/sentry/MeasurementUnit;Ljava/util/Map;Ljava/lang/Long;)V

    return-void
.end method

.method public gauge(Ljava/lang/String;DLio/sentry/MeasurementUnit;Ljava/util/Map;Ljava/lang/Long;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "D",
            "Lio/sentry/MeasurementUnit;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Long;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    if-eqz p6, :cond_0

    .line 169
    invoke-virtual/range {p6 .. p6}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    :goto_0
    move-wide v9, v1

    .line 170
    iget-object v1, v0, Lio/sentry/metrics/MetricsApi;->aggregator:Lio/sentry/metrics/MetricsApi$IMetricsInterface;

    .line 171
    invoke-interface {v1}, Lio/sentry/metrics/MetricsApi$IMetricsInterface;->getDefaultTagsForMetrics()Ljava/util/Map;

    move-result-object v1

    move-object/from16 v2, p5

    invoke-static {v2, v1}, Lio/sentry/metrics/MetricsHelper;->mergeTags(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v8

    .line 172
    iget-object v1, v0, Lio/sentry/metrics/MetricsApi;->aggregator:Lio/sentry/metrics/MetricsApi$IMetricsInterface;

    .line 173
    invoke-interface {v1}, Lio/sentry/metrics/MetricsApi$IMetricsInterface;->getLocalMetricsAggregator()Lio/sentry/metrics/LocalMetricsAggregator;

    move-result-object v11

    .line 175
    iget-object v1, v0, Lio/sentry/metrics/MetricsApi;->aggregator:Lio/sentry/metrics/MetricsApi$IMetricsInterface;

    .line 176
    invoke-interface {v1}, Lio/sentry/metrics/MetricsApi$IMetricsInterface;->getMetricsAggregator()Lio/sentry/IMetricsAggregator;

    move-result-object v3

    move-object v4, p1

    move-wide v5, p2

    move-object/from16 v7, p4

    .line 177
    invoke-interface/range {v3 .. v11}, Lio/sentry/IMetricsAggregator;->gauge(Ljava/lang/String;DLio/sentry/MeasurementUnit;Ljava/util/Map;JLio/sentry/metrics/LocalMetricsAggregator;)V

    return-void
.end method

.method public increment(Ljava/lang/String;)V
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 42
    invoke-virtual/range {v0 .. v6}, Lio/sentry/metrics/MetricsApi;->increment(Ljava/lang/String;DLio/sentry/MeasurementUnit;Ljava/util/Map;Ljava/lang/Long;)V

    return-void
.end method

.method public increment(Ljava/lang/String;D)V
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    .line 52
    invoke-virtual/range {v0 .. v6}, Lio/sentry/metrics/MetricsApi;->increment(Ljava/lang/String;DLio/sentry/MeasurementUnit;Ljava/util/Map;Ljava/lang/Long;)V

    return-void
.end method

.method public increment(Ljava/lang/String;DLio/sentry/MeasurementUnit;)V
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    .line 65
    invoke-virtual/range {v0 .. v6}, Lio/sentry/metrics/MetricsApi;->increment(Ljava/lang/String;DLio/sentry/MeasurementUnit;Ljava/util/Map;Ljava/lang/Long;)V

    return-void
.end method

.method public increment(Ljava/lang/String;DLio/sentry/MeasurementUnit;Ljava/util/Map;)V
    .locals 7
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

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    .line 82
    invoke-virtual/range {v0 .. v6}, Lio/sentry/metrics/MetricsApi;->increment(Ljava/lang/String;DLio/sentry/MeasurementUnit;Ljava/util/Map;Ljava/lang/Long;)V

    return-void
.end method

.method public increment(Ljava/lang/String;DLio/sentry/MeasurementUnit;Ljava/util/Map;Ljava/lang/Long;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "D",
            "Lio/sentry/MeasurementUnit;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Long;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    if-eqz p6, :cond_0

    .line 102
    invoke-virtual/range {p6 .. p6}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    :goto_0
    move-wide v9, v1

    .line 103
    iget-object v1, v0, Lio/sentry/metrics/MetricsApi;->aggregator:Lio/sentry/metrics/MetricsApi$IMetricsInterface;

    .line 104
    invoke-interface {v1}, Lio/sentry/metrics/MetricsApi$IMetricsInterface;->getDefaultTagsForMetrics()Ljava/util/Map;

    move-result-object v1

    move-object/from16 v2, p5

    invoke-static {v2, v1}, Lio/sentry/metrics/MetricsHelper;->mergeTags(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v8

    .line 105
    iget-object v1, v0, Lio/sentry/metrics/MetricsApi;->aggregator:Lio/sentry/metrics/MetricsApi$IMetricsInterface;

    .line 106
    invoke-interface {v1}, Lio/sentry/metrics/MetricsApi$IMetricsInterface;->getLocalMetricsAggregator()Lio/sentry/metrics/LocalMetricsAggregator;

    move-result-object v11

    .line 108
    iget-object v1, v0, Lio/sentry/metrics/MetricsApi;->aggregator:Lio/sentry/metrics/MetricsApi$IMetricsInterface;

    .line 109
    invoke-interface {v1}, Lio/sentry/metrics/MetricsApi$IMetricsInterface;->getMetricsAggregator()Lio/sentry/IMetricsAggregator;

    move-result-object v3

    move-object v4, p1

    move-wide v5, p2

    move-object/from16 v7, p4

    .line 110
    invoke-interface/range {v3 .. v11}, Lio/sentry/IMetricsAggregator;->increment(Ljava/lang/String;DLio/sentry/MeasurementUnit;Ljava/util/Map;JLio/sentry/metrics/LocalMetricsAggregator;)V

    return-void
.end method

.method public set(Ljava/lang/String;I)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    .line 255
    invoke-virtual/range {v0 .. v5}, Lio/sentry/metrics/MetricsApi;->set(Ljava/lang/String;ILio/sentry/MeasurementUnit;Ljava/util/Map;Ljava/lang/Long;)V

    return-void
.end method

.method public set(Ljava/lang/String;ILio/sentry/MeasurementUnit;)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    .line 268
    invoke-virtual/range {v0 .. v5}, Lio/sentry/metrics/MetricsApi;->set(Ljava/lang/String;ILio/sentry/MeasurementUnit;Ljava/util/Map;Ljava/lang/Long;)V

    return-void
.end method

.method public set(Ljava/lang/String;ILio/sentry/MeasurementUnit;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lio/sentry/MeasurementUnit;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 285
    invoke-virtual/range {v0 .. v5}, Lio/sentry/metrics/MetricsApi;->set(Ljava/lang/String;ILio/sentry/MeasurementUnit;Ljava/util/Map;Ljava/lang/Long;)V

    return-void
.end method

.method public set(Ljava/lang/String;ILio/sentry/MeasurementUnit;Ljava/util/Map;Ljava/lang/Long;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lio/sentry/MeasurementUnit;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Long;",
            ")V"
        }
    .end annotation

    if-eqz p5, :cond_0

    .line 305
    invoke-virtual {p5}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :goto_0
    move-wide v7, v0

    .line 306
    iget-object p5, p0, Lio/sentry/metrics/MetricsApi;->aggregator:Lio/sentry/metrics/MetricsApi$IMetricsInterface;

    .line 307
    invoke-interface {p5}, Lio/sentry/metrics/MetricsApi$IMetricsInterface;->getDefaultTagsForMetrics()Ljava/util/Map;

    move-result-object p5

    invoke-static {p4, p5}, Lio/sentry/metrics/MetricsHelper;->mergeTags(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v6

    .line 308
    iget-object p4, p0, Lio/sentry/metrics/MetricsApi;->aggregator:Lio/sentry/metrics/MetricsApi$IMetricsInterface;

    .line 309
    invoke-interface {p4}, Lio/sentry/metrics/MetricsApi$IMetricsInterface;->getLocalMetricsAggregator()Lio/sentry/metrics/LocalMetricsAggregator;

    move-result-object v9

    .line 311
    iget-object p4, p0, Lio/sentry/metrics/MetricsApi;->aggregator:Lio/sentry/metrics/MetricsApi$IMetricsInterface;

    .line 312
    invoke-interface {p4}, Lio/sentry/metrics/MetricsApi$IMetricsInterface;->getMetricsAggregator()Lio/sentry/IMetricsAggregator;

    move-result-object v2

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    .line 313
    invoke-interface/range {v2 .. v9}, Lio/sentry/IMetricsAggregator;->set(Ljava/lang/String;ILio/sentry/MeasurementUnit;Ljava/util/Map;JLio/sentry/metrics/LocalMetricsAggregator;)V

    return-void
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 323
    invoke-virtual/range {v0 .. v5}, Lio/sentry/metrics/MetricsApi;->set(Ljava/lang/String;Ljava/lang/String;Lio/sentry/MeasurementUnit;Ljava/util/Map;Ljava/lang/Long;)V

    return-void
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;Lio/sentry/MeasurementUnit;)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 338
    invoke-virtual/range {v0 .. v5}, Lio/sentry/metrics/MetricsApi;->set(Ljava/lang/String;Ljava/lang/String;Lio/sentry/MeasurementUnit;Ljava/util/Map;Ljava/lang/Long;)V

    return-void
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;Lio/sentry/MeasurementUnit;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lio/sentry/MeasurementUnit;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 355
    invoke-virtual/range {v0 .. v5}, Lio/sentry/metrics/MetricsApi;->set(Ljava/lang/String;Ljava/lang/String;Lio/sentry/MeasurementUnit;Ljava/util/Map;Ljava/lang/Long;)V

    return-void
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;Lio/sentry/MeasurementUnit;Ljava/util/Map;Ljava/lang/Long;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lio/sentry/MeasurementUnit;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Long;",
            ")V"
        }
    .end annotation

    if-eqz p5, :cond_0

    .line 375
    invoke-virtual {p5}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :goto_0
    move-wide v7, v0

    .line 376
    iget-object p5, p0, Lio/sentry/metrics/MetricsApi;->aggregator:Lio/sentry/metrics/MetricsApi$IMetricsInterface;

    .line 377
    invoke-interface {p5}, Lio/sentry/metrics/MetricsApi$IMetricsInterface;->getDefaultTagsForMetrics()Ljava/util/Map;

    move-result-object p5

    invoke-static {p4, p5}, Lio/sentry/metrics/MetricsHelper;->mergeTags(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v6

    .line 378
    iget-object p4, p0, Lio/sentry/metrics/MetricsApi;->aggregator:Lio/sentry/metrics/MetricsApi$IMetricsInterface;

    .line 379
    invoke-interface {p4}, Lio/sentry/metrics/MetricsApi$IMetricsInterface;->getLocalMetricsAggregator()Lio/sentry/metrics/LocalMetricsAggregator;

    move-result-object v9

    .line 381
    iget-object p4, p0, Lio/sentry/metrics/MetricsApi;->aggregator:Lio/sentry/metrics/MetricsApi$IMetricsInterface;

    .line 382
    invoke-interface {p4}, Lio/sentry/metrics/MetricsApi$IMetricsInterface;->getMetricsAggregator()Lio/sentry/IMetricsAggregator;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    .line 383
    invoke-interface/range {v2 .. v9}, Lio/sentry/IMetricsAggregator;->set(Ljava/lang/String;Ljava/lang/String;Lio/sentry/MeasurementUnit;Ljava/util/Map;JLio/sentry/metrics/LocalMetricsAggregator;)V

    return-void
.end method

.method public timing(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x0

    .line 394
    invoke-virtual {p0, p1, p2, v0, v0}, Lio/sentry/metrics/MetricsApi;->timing(Ljava/lang/String;Ljava/lang/Runnable;Lio/sentry/MeasurementUnit$Duration;Ljava/util/Map;)V

    return-void
.end method

.method public timing(Ljava/lang/String;Ljava/lang/Runnable;Lio/sentry/MeasurementUnit$Duration;)V
    .locals 1

    const/4 v0, 0x0

    .line 409
    invoke-virtual {p0, p1, p2, p3, v0}, Lio/sentry/metrics/MetricsApi;->timing(Ljava/lang/String;Ljava/lang/Runnable;Lio/sentry/MeasurementUnit$Duration;Ljava/util/Map;)V

    return-void
.end method

.method public timing(Ljava/lang/String;Ljava/lang/Runnable;Lio/sentry/MeasurementUnit$Duration;Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Runnable;",
            "Lio/sentry/MeasurementUnit$Duration;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p3, :cond_0

    goto :goto_0

    .line 427
    :cond_0
    sget-object p3, Lio/sentry/MeasurementUnit$Duration;->SECOND:Lio/sentry/MeasurementUnit$Duration;

    :goto_0
    move-object v4, p3

    .line 428
    iget-object p3, p0, Lio/sentry/metrics/MetricsApi;->aggregator:Lio/sentry/metrics/MetricsApi$IMetricsInterface;

    .line 429
    invoke-interface {p3}, Lio/sentry/metrics/MetricsApi$IMetricsInterface;->getDefaultTagsForMetrics()Ljava/util/Map;

    move-result-object p3

    invoke-static {p4, p3}, Lio/sentry/metrics/MetricsHelper;->mergeTags(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v5

    .line 432
    iget-object p3, p0, Lio/sentry/metrics/MetricsApi;->aggregator:Lio/sentry/metrics/MetricsApi$IMetricsInterface;

    const-string v0, "metric.timing"

    invoke-interface {p3, v0, p1}, Lio/sentry/metrics/MetricsApi$IMetricsInterface;->startSpanForMetric(Ljava/lang/String;Ljava/lang/String;)Lio/sentry/ISpan;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 435
    invoke-interface {p3}, Lio/sentry/ISpan;->getLocalMetricsAggregator()Lio/sentry/metrics/LocalMetricsAggregator;

    move-result-object v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lio/sentry/metrics/MetricsApi;->aggregator:Lio/sentry/metrics/MetricsApi$IMetricsInterface;

    invoke-interface {v0}, Lio/sentry/metrics/MetricsApi$IMetricsInterface;->getLocalMetricsAggregator()Lio/sentry/metrics/LocalMetricsAggregator;

    move-result-object v0

    :goto_1
    move-object v8, v0

    if-eqz p3, :cond_2

    if-eqz p4, :cond_2

    .line 438
    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_2
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 439
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p3, v1, v0}, Lio/sentry/ISpan;->setTag(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 442
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 443
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 445
    :try_start_0
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p3, :cond_4

    .line 450
    invoke-interface {p3}, Lio/sentry/ISpan;->finish()V

    .line 453
    invoke-interface {p3}, Lio/sentry/ISpan;->getFinishDate()Lio/sentry/SentryDate;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-interface {p3}, Lio/sentry/ISpan;->getFinishDate()Lio/sentry/SentryDate;

    move-result-object p2

    goto :goto_3

    :cond_3
    new-instance p2, Lio/sentry/SentryNanotimeDate;

    invoke-direct {p2}, Lio/sentry/SentryNanotimeDate;-><init>()V

    .line 454
    :goto_3
    invoke-interface {p3}, Lio/sentry/ISpan;->getStartDate()Lio/sentry/SentryDate;

    move-result-object p3

    invoke-virtual {p2, p3}, Lio/sentry/SentryDate;->diff(Lio/sentry/SentryDate;)J

    move-result-wide p2

    goto :goto_4

    .line 456
    :cond_4
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p2

    sub-long/2addr p2, v0

    .line 458
    :goto_4
    invoke-static {v4, p2, p3}, Lio/sentry/metrics/MetricsHelper;->convertNanosTo(Lio/sentry/MeasurementUnit$Duration;J)D

    move-result-wide v2

    .line 459
    iget-object p2, p0, Lio/sentry/metrics/MetricsApi;->aggregator:Lio/sentry/metrics/MetricsApi$IMetricsInterface;

    .line 460
    invoke-interface {p2}, Lio/sentry/metrics/MetricsApi$IMetricsInterface;->getMetricsAggregator()Lio/sentry/IMetricsAggregator;

    move-result-object v0

    move-object v1, p1

    .line 461
    invoke-interface/range {v0 .. v8}, Lio/sentry/IMetricsAggregator;->distribution(Ljava/lang/String;DLio/sentry/MeasurementUnit;Ljava/util/Map;JLio/sentry/metrics/LocalMetricsAggregator;)V

    return-void

    :catchall_0
    move-exception p2

    if-eqz p3, :cond_6

    .line 450
    invoke-interface {p3}, Lio/sentry/ISpan;->finish()V

    .line 453
    invoke-interface {p3}, Lio/sentry/ISpan;->getFinishDate()Lio/sentry/SentryDate;

    move-result-object p4

    if-eqz p4, :cond_5

    invoke-interface {p3}, Lio/sentry/ISpan;->getFinishDate()Lio/sentry/SentryDate;

    move-result-object p4

    goto :goto_5

    :cond_5
    new-instance p4, Lio/sentry/SentryNanotimeDate;

    invoke-direct {p4}, Lio/sentry/SentryNanotimeDate;-><init>()V

    .line 454
    :goto_5
    invoke-interface {p3}, Lio/sentry/ISpan;->getStartDate()Lio/sentry/SentryDate;

    move-result-object p3

    invoke-virtual {p4, p3}, Lio/sentry/SentryDate;->diff(Lio/sentry/SentryDate;)J

    move-result-wide p3

    goto :goto_6

    .line 456
    :cond_6
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p3

    sub-long/2addr p3, v0

    .line 458
    :goto_6
    invoke-static {v4, p3, p4}, Lio/sentry/metrics/MetricsHelper;->convertNanosTo(Lio/sentry/MeasurementUnit$Duration;J)D

    move-result-wide v2

    .line 459
    iget-object p3, p0, Lio/sentry/metrics/MetricsApi;->aggregator:Lio/sentry/metrics/MetricsApi$IMetricsInterface;

    .line 460
    invoke-interface {p3}, Lio/sentry/metrics/MetricsApi$IMetricsInterface;->getMetricsAggregator()Lio/sentry/IMetricsAggregator;

    move-result-object v0

    move-object v1, p1

    .line 461
    invoke-interface/range {v0 .. v8}, Lio/sentry/IMetricsAggregator;->distribution(Ljava/lang/String;DLio/sentry/MeasurementUnit;Ljava/util/Map;JLio/sentry/metrics/LocalMetricsAggregator;)V

    .line 462
    throw p2
.end method
