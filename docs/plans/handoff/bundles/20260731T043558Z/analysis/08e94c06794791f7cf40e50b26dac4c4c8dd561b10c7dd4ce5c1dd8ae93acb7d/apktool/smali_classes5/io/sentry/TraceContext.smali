.class public final Lio/sentry/TraceContext;
.super Ljava/lang/Object;
.source "TraceContext.java"

# interfaces
.implements Lio/sentry/JsonUnknown;
.implements Lio/sentry/JsonSerializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/TraceContext$JsonKeys;,
        Lio/sentry/TraceContext$Deserializer;,
        Lio/sentry/TraceContext$TraceContextUser;
    }
.end annotation


# instance fields
.field private final environment:Ljava/lang/String;

.field private final publicKey:Ljava/lang/String;

.field private final release:Ljava/lang/String;

.field private final replayId:Lio/sentry/protocol/SentryId;

.field private final sampleRate:Ljava/lang/String;

.field private final sampled:Ljava/lang/String;

.field private final traceId:Lio/sentry/protocol/SentryId;

.field private final transaction:Ljava/lang/String;

.field private unknown:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final userId:Ljava/lang/String;

.field private final userSegment:Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/sentry/protocol/SentryId;Ljava/lang/String;)V
    .locals 10

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 30
    invoke-direct/range {v0 .. v9}, Lio/sentry/TraceContext;-><init>(Lio/sentry/protocol/SentryId;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/sentry/protocol/SentryId;)V

    return-void
.end method

.method constructor <init>(Lio/sentry/protocol/SentryId;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/sentry/protocol/SentryId;)V
    .locals 11

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    .line 43
    invoke-direct/range {v0 .. v10}, Lio/sentry/TraceContext;-><init>(Lio/sentry/protocol/SentryId;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/sentry/protocol/SentryId;)V

    return-void
.end method

.method constructor <init>(Lio/sentry/protocol/SentryId;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/sentry/protocol/SentryId;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lio/sentry/TraceContext;->traceId:Lio/sentry/protocol/SentryId;

    .line 72
    iput-object p2, p0, Lio/sentry/TraceContext;->publicKey:Ljava/lang/String;

    .line 73
    iput-object p3, p0, Lio/sentry/TraceContext;->release:Ljava/lang/String;

    .line 74
    iput-object p4, p0, Lio/sentry/TraceContext;->environment:Ljava/lang/String;

    .line 75
    iput-object p5, p0, Lio/sentry/TraceContext;->userId:Ljava/lang/String;

    .line 76
    iput-object p6, p0, Lio/sentry/TraceContext;->userSegment:Ljava/lang/String;

    .line 77
    iput-object p7, p0, Lio/sentry/TraceContext;->transaction:Ljava/lang/String;

    .line 78
    iput-object p8, p0, Lio/sentry/TraceContext;->sampleRate:Ljava/lang/String;

    .line 79
    iput-object p9, p0, Lio/sentry/TraceContext;->sampled:Ljava/lang/String;

    .line 80
    iput-object p10, p0, Lio/sentry/TraceContext;->replayId:Lio/sentry/protocol/SentryId;

    return-void
.end method

.method private static getUserId(Lio/sentry/SentryOptions;Lio/sentry/protocol/User;)Ljava/lang/String;
    .locals 0

    .line 86
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->isSendDefaultPii()Z

    move-result p0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 87
    invoke-virtual {p1}, Lio/sentry/protocol/User;->getId()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getEnvironment()Ljava/lang/String;
    .locals 1

    .line 106
    iget-object v0, p0, Lio/sentry/TraceContext;->environment:Ljava/lang/String;

    return-object v0
.end method

.method public getPublicKey()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Lio/sentry/TraceContext;->publicKey:Ljava/lang/String;

    return-object v0
.end method

.method public getRelease()Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Lio/sentry/TraceContext;->release:Ljava/lang/String;

    return-object v0
.end method

.method public getReplayId()Lio/sentry/protocol/SentryId;
    .locals 1

    .line 134
    iget-object v0, p0, Lio/sentry/TraceContext;->replayId:Lio/sentry/protocol/SentryId;

    return-object v0
.end method

.method public getSampleRate()Ljava/lang/String;
    .locals 1

    .line 126
    iget-object v0, p0, Lio/sentry/TraceContext;->sampleRate:Ljava/lang/String;

    return-object v0
.end method

.method public getSampled()Ljava/lang/String;
    .locals 1

    .line 130
    iget-object v0, p0, Lio/sentry/TraceContext;->sampled:Ljava/lang/String;

    return-object v0
.end method

.method public getTraceId()Lio/sentry/protocol/SentryId;
    .locals 1

    .line 94
    iget-object v0, p0, Lio/sentry/TraceContext;->traceId:Lio/sentry/protocol/SentryId;

    return-object v0
.end method

.method public getTransaction()Ljava/lang/String;
    .locals 1

    .line 122
    iget-object v0, p0, Lio/sentry/TraceContext;->transaction:Ljava/lang/String;

    return-object v0
.end method

.method public getUnknown()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 224
    iget-object v0, p0, Lio/sentry/TraceContext;->unknown:Ljava/util/Map;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 110
    iget-object v0, p0, Lio/sentry/TraceContext;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserSegment()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 118
    iget-object v0, p0, Lio/sentry/TraceContext;->userSegment:Ljava/lang/String;

    return-object v0
.end method

.method public serialize(Lio/sentry/ObjectWriter;Lio/sentry/ILogger;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 249
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->beginObject()Lio/sentry/ObjectWriter;

    .line 250
    const-string v0, "trace_id"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/TraceContext;->traceId:Lio/sentry/protocol/SentryId;

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 251
    const-string v0, "public_key"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/TraceContext;->publicKey:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 252
    iget-object v0, p0, Lio/sentry/TraceContext;->release:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 253
    const-string v0, "release"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/TraceContext;->release:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 255
    :cond_0
    iget-object v0, p0, Lio/sentry/TraceContext;->environment:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 256
    const-string v0, "environment"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/TraceContext;->environment:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 258
    :cond_1
    iget-object v0, p0, Lio/sentry/TraceContext;->userId:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 259
    const-string v0, "user_id"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/TraceContext;->userId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 261
    :cond_2
    iget-object v0, p0, Lio/sentry/TraceContext;->userSegment:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 262
    const-string v0, "user_segment"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/TraceContext;->userSegment:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 264
    :cond_3
    iget-object v0, p0, Lio/sentry/TraceContext;->transaction:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 265
    const-string v0, "transaction"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/TraceContext;->transaction:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 267
    :cond_4
    iget-object v0, p0, Lio/sentry/TraceContext;->sampleRate:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 268
    const-string v0, "sample_rate"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/TraceContext;->sampleRate:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 270
    :cond_5
    iget-object v0, p0, Lio/sentry/TraceContext;->sampled:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 271
    const-string v0, "sampled"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/TraceContext;->sampled:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 273
    :cond_6
    iget-object v0, p0, Lio/sentry/TraceContext;->replayId:Lio/sentry/protocol/SentryId;

    if-eqz v0, :cond_7

    .line 274
    const-string v0, "replay_id"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/TraceContext;->replayId:Lio/sentry/protocol/SentryId;

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 276
    :cond_7
    iget-object v0, p0, Lio/sentry/TraceContext;->unknown:Ljava/util/Map;

    if-eqz v0, :cond_8

    .line 277
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 278
    iget-object v2, p0, Lio/sentry/TraceContext;->unknown:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 279
    invoke-interface {p1, v1}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 280
    invoke-interface {p1, p2, v2}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    goto :goto_0

    .line 283
    :cond_8
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->endObject()Lio/sentry/ObjectWriter;

    return-void
.end method

.method public setUnknown(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 229
    iput-object p1, p0, Lio/sentry/TraceContext;->unknown:Ljava/util/Map;

    return-void
.end method
