.class public final Lio/sentry/TraceContext$Deserializer;
.super Ljava/lang/Object;
.source "TraceContext.java"

# interfaces
.implements Lio/sentry/JsonDeserializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/TraceContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Deserializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/sentry/JsonDeserializer<",
        "Lio/sentry/TraceContext;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private missingRequiredFieldException(Ljava/lang/String;Lio/sentry/ILogger;)Ljava/lang/Exception;
    .locals 2

    .line 381
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Missing required field \""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 382
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 383
    sget-object v1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    invoke-interface {p2, v1, p1, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method


# virtual methods
.method public deserialize(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Lio/sentry/TraceContext;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 290
    invoke-interface/range {p1 .. p1}, Lio/sentry/ObjectReader;->beginObject()V

    const/4 v3, 0x0

    move-object v4, v3

    move-object v5, v4

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    move-object v11, v9

    move-object v12, v11

    move-object v13, v12

    move-object v14, v13

    move-object v15, v14

    .line 305
    :goto_0
    invoke-interface/range {p1 .. p1}, Lio/sentry/ObjectReader;->peek()Lio/sentry/vendor/gson/stream/JsonToken;

    move-result-object v10

    sget-object v0, Lio/sentry/vendor/gson/stream/JsonToken;->NAME:Lio/sentry/vendor/gson/stream/JsonToken;

    move-object/from16 v16, v14

    const-string v14, "public_key"

    move-object/from16 v17, v13

    const-string v13, "trace_id"

    if-ne v10, v0, :cond_c

    .line 306
    invoke-interface/range {p1 .. p1}, Lio/sentry/ObjectReader;->nextName()Ljava/lang/String;

    move-result-object v0

    .line 307
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v10

    const/16 v18, -0x1

    sparse-switch v10, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v10, "transaction"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    goto/16 :goto_1

    :cond_0
    const/16 v18, 0xa

    goto/16 :goto_1

    :sswitch_1
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    goto/16 :goto_1

    :cond_1
    const/16 v18, 0x9

    goto/16 :goto_1

    :sswitch_2
    const-string v10, "sampled"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    goto/16 :goto_1

    :cond_2
    const/16 v18, 0x8

    goto/16 :goto_1

    :sswitch_3
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    goto :goto_1

    :cond_3
    const/16 v18, 0x7

    goto :goto_1

    :sswitch_4
    const-string v10, "release"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    goto :goto_1

    :cond_4
    const/16 v18, 0x6

    goto :goto_1

    :sswitch_5
    const-string v10, "sample_rate"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    goto :goto_1

    :cond_5
    const/16 v18, 0x5

    goto :goto_1

    :sswitch_6
    const-string v10, "user"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    goto :goto_1

    :cond_6
    const/16 v18, 0x4

    goto :goto_1

    :sswitch_7
    const-string v10, "environment"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_7

    goto :goto_1

    :cond_7
    const/16 v18, 0x3

    goto :goto_1

    :sswitch_8
    const-string v10, "user_id"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_8

    goto :goto_1

    :cond_8
    const/16 v18, 0x2

    goto :goto_1

    :sswitch_9
    const-string v10, "replay_id"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_9

    goto :goto_1

    :cond_9
    const/16 v18, 0x1

    goto :goto_1

    :sswitch_a
    const-string v10, "user_segment"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_a

    goto :goto_1

    :cond_a
    const/16 v18, 0x0

    :goto_1
    packed-switch v18, :pswitch_data_0

    if-nez v15, :cond_b

    .line 343
    new-instance v15, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v15}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 345
    :cond_b
    invoke-interface {v1, v2, v15, v0}, Lio/sentry/ObjectReader;->nextUnknown(Lio/sentry/ILogger;Ljava/util/Map;Ljava/lang/String;)V

    goto :goto_2

    .line 330
    :pswitch_0
    invoke-interface/range {p1 .. p1}, Lio/sentry/ObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v0

    move-object v11, v0

    goto :goto_2

    .line 312
    :pswitch_1
    invoke-interface/range {p1 .. p1}, Lio/sentry/ObjectReader;->nextString()Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    goto :goto_2

    .line 336
    :pswitch_2
    invoke-interface/range {p1 .. p1}, Lio/sentry/ObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v0

    move-object v13, v0

    move-object/from16 v14, v16

    goto :goto_4

    .line 309
    :pswitch_3
    new-instance v0, Lio/sentry/protocol/SentryId$Deserializer;

    invoke-direct {v0}, Lio/sentry/protocol/SentryId$Deserializer;-><init>()V

    invoke-virtual {v0, v1, v2}, Lio/sentry/protocol/SentryId$Deserializer;->deserialize(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Lio/sentry/protocol/SentryId;

    move-result-object v0

    move-object v5, v0

    :goto_2
    move-object/from16 v14, v16

    :goto_3
    move-object/from16 v13, v17

    goto :goto_4

    .line 315
    :pswitch_4
    invoke-interface/range {p1 .. p1}, Lio/sentry/ObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    goto :goto_2

    .line 333
    :pswitch_5
    invoke-interface/range {p1 .. p1}, Lio/sentry/ObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v0

    move-object v12, v0

    goto :goto_2

    .line 321
    :pswitch_6
    new-instance v0, Lio/sentry/TraceContext$TraceContextUser$Deserializer;

    invoke-direct {v0}, Lio/sentry/TraceContext$TraceContextUser$Deserializer;-><init>()V

    invoke-interface {v1, v2, v0}, Lio/sentry/ObjectReader;->nextOrNull(Lio/sentry/ILogger;Lio/sentry/JsonDeserializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/TraceContext$TraceContextUser;

    move-object v3, v0

    goto :goto_2

    .line 318
    :pswitch_7
    invoke-interface/range {p1 .. p1}, Lio/sentry/ObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    goto :goto_2

    .line 324
    :pswitch_8
    invoke-interface/range {p1 .. p1}, Lio/sentry/ObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    goto :goto_2

    .line 339
    :pswitch_9
    new-instance v0, Lio/sentry/protocol/SentryId$Deserializer;

    invoke-direct {v0}, Lio/sentry/protocol/SentryId$Deserializer;-><init>()V

    invoke-virtual {v0, v1, v2}, Lio/sentry/protocol/SentryId$Deserializer;->deserialize(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Lio/sentry/protocol/SentryId;

    move-result-object v0

    move-object v14, v0

    goto :goto_3

    .line 327
    :pswitch_a
    invoke-interface/range {p1 .. p1}, Lio/sentry/ObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    goto :goto_2

    :goto_4
    move-object/from16 v0, p0

    goto/16 :goto_0

    :cond_c
    if-eqz v5, :cond_10

    if-eqz v7, :cond_f

    if-eqz v3, :cond_e

    if-nez v4, :cond_d

    .line 357
    invoke-virtual {v3}, Lio/sentry/TraceContext$TraceContextUser;->getId()Ljava/lang/String;

    move-result-object v4

    :cond_d
    if-nez v6, :cond_e

    .line 360
    invoke-virtual {v3}, Lio/sentry/TraceContext$TraceContextUser;->getSegment()Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    move-object v0, v4

    goto :goto_5

    :cond_e
    move-object v0, v4

    move-object v10, v6

    .line 363
    :goto_5
    new-instance v2, Lio/sentry/TraceContext;

    move-object v4, v2

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v0

    move-object/from16 v13, v17

    move-object/from16 v14, v16

    invoke-direct/range {v4 .. v14}, Lio/sentry/TraceContext;-><init>(Lio/sentry/protocol/SentryId;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/sentry/protocol/SentryId;)V

    .line 375
    invoke-virtual {v2, v15}, Lio/sentry/TraceContext;->setUnknown(Ljava/util/Map;)V

    .line 376
    invoke-interface/range {p1 .. p1}, Lio/sentry/ObjectReader;->endObject()V

    return-object v2

    :cond_f
    move-object/from16 v0, p0

    .line 353
    invoke-direct {v0, v14, v2}, Lio/sentry/TraceContext$Deserializer;->missingRequiredFieldException(Ljava/lang/String;Lio/sentry/ILogger;)Ljava/lang/Exception;

    move-result-object v1

    throw v1

    :cond_10
    move-object/from16 v0, p0

    .line 350
    invoke-direct {v0, v13, v2}, Lio/sentry/TraceContext$Deserializer;->missingRequiredFieldException(Ljava/lang/String;Lio/sentry/ILogger;)Ljava/lang/Exception;

    move-result-object v1

    throw v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x2f6bc941 -> :sswitch_a
        -0x1b1b338d -> :sswitch_9
        -0x8c511f1 -> :sswitch_8
        -0x51ecded -> :sswitch_7
        0x36ebcb -> :sswitch_6
        0x9218a55 -> :sswitch_5
        0x41012807 -> :sswitch_4
        0x4bb73e55 -> :sswitch_3
        0x6f273ffa -> :sswitch_2
        0x71892389 -> :sswitch_1
        0x7fa0d2de -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic deserialize(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 286
    invoke-virtual {p0, p1, p2}, Lio/sentry/TraceContext$Deserializer;->deserialize(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Lio/sentry/TraceContext;

    move-result-object p1

    return-object p1
.end method
