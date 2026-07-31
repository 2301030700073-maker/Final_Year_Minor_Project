.class public final Lio/sentry/Breadcrumb;
.super Ljava/lang/Object;
.source "Breadcrumb.java"

# interfaces
.implements Lio/sentry/JsonUnknown;
.implements Lio/sentry/JsonSerializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/Breadcrumb$JsonKeys;,
        Lio/sentry/Breadcrumb$Deserializer;
    }
.end annotation


# instance fields
.field private category:Ljava/lang/String;

.field private data:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private level:Lio/sentry/SentryLevel;

.field private message:Ljava/lang/String;

.field private origin:Ljava/lang/String;

.field private timestamp:Ljava/util/Date;

.field private final timestampMs:Ljava/lang/Long;

.field private type:Ljava/lang/String;

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


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 518
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lio/sentry/Breadcrumb;-><init>(J)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lio/sentry/Breadcrumb;->data:Ljava/util/Map;

    .line 64
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lio/sentry/Breadcrumb;->timestampMs:Ljava/lang/Long;

    const/4 p1, 0x0

    .line 65
    iput-object p1, p0, Lio/sentry/Breadcrumb;->timestamp:Ljava/util/Date;

    return-void
.end method

.method constructor <init>(Lio/sentry/Breadcrumb;)V
    .locals 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lio/sentry/Breadcrumb;->data:Ljava/util/Map;

    .line 69
    iget-object v0, p1, Lio/sentry/Breadcrumb;->timestamp:Ljava/util/Date;

    iput-object v0, p0, Lio/sentry/Breadcrumb;->timestamp:Ljava/util/Date;

    .line 70
    iget-object v0, p1, Lio/sentry/Breadcrumb;->timestampMs:Ljava/lang/Long;

    iput-object v0, p0, Lio/sentry/Breadcrumb;->timestampMs:Ljava/lang/Long;

    .line 71
    iget-object v0, p1, Lio/sentry/Breadcrumb;->message:Ljava/lang/String;

    iput-object v0, p0, Lio/sentry/Breadcrumb;->message:Ljava/lang/String;

    .line 72
    iget-object v0, p1, Lio/sentry/Breadcrumb;->type:Ljava/lang/String;

    iput-object v0, p0, Lio/sentry/Breadcrumb;->type:Ljava/lang/String;

    .line 73
    iget-object v0, p1, Lio/sentry/Breadcrumb;->category:Ljava/lang/String;

    iput-object v0, p0, Lio/sentry/Breadcrumb;->category:Ljava/lang/String;

    .line 74
    iget-object v0, p1, Lio/sentry/Breadcrumb;->origin:Ljava/lang/String;

    iput-object v0, p0, Lio/sentry/Breadcrumb;->origin:Ljava/lang/String;

    .line 75
    iget-object v0, p1, Lio/sentry/Breadcrumb;->data:Ljava/util/Map;

    invoke-static {v0}, Lio/sentry/util/CollectionUtils;->newConcurrentHashMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 77
    iput-object v0, p0, Lio/sentry/Breadcrumb;->data:Ljava/util/Map;

    .line 79
    :cond_0
    iget-object v0, p1, Lio/sentry/Breadcrumb;->unknown:Ljava/util/Map;

    invoke-static {v0}, Lio/sentry/util/CollectionUtils;->newConcurrentHashMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/Breadcrumb;->unknown:Ljava/util/Map;

    .line 80
    iget-object p1, p1, Lio/sentry/Breadcrumb;->level:Lio/sentry/SentryLevel;

    iput-object p1, p0, Lio/sentry/Breadcrumb;->level:Lio/sentry/SentryLevel;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 527
    invoke-direct {p0}, Lio/sentry/Breadcrumb;-><init>()V

    .line 528
    iput-object p1, p0, Lio/sentry/Breadcrumb;->message:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/Date;)V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lio/sentry/Breadcrumb;->data:Ljava/util/Map;

    .line 59
    iput-object p1, p0, Lio/sentry/Breadcrumb;->timestamp:Ljava/util/Date;

    const/4 p1, 0x0

    .line 60
    iput-object p1, p0, Lio/sentry/Breadcrumb;->timestampMs:Ljava/lang/Long;

    return-void
.end method

.method static synthetic access$002(Lio/sentry/Breadcrumb;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 20
    iput-object p1, p0, Lio/sentry/Breadcrumb;->message:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lio/sentry/Breadcrumb;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 20
    iput-object p1, p0, Lio/sentry/Breadcrumb;->type:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lio/sentry/Breadcrumb;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    .line 20
    iput-object p1, p0, Lio/sentry/Breadcrumb;->data:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic access$302(Lio/sentry/Breadcrumb;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 20
    iput-object p1, p0, Lio/sentry/Breadcrumb;->category:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$402(Lio/sentry/Breadcrumb;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 20
    iput-object p1, p0, Lio/sentry/Breadcrumb;->origin:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$502(Lio/sentry/Breadcrumb;Lio/sentry/SentryLevel;)Lio/sentry/SentryLevel;
    .locals 0

    .line 20
    iput-object p1, p0, Lio/sentry/Breadcrumb;->level:Lio/sentry/SentryLevel;

    return-object p1
.end method

.method public static debug(Ljava/lang/String;)Lio/sentry/Breadcrumb;
    .locals 2

    .line 362
    new-instance v0, Lio/sentry/Breadcrumb;

    invoke-direct {v0}, Lio/sentry/Breadcrumb;-><init>()V

    .line 363
    const-string v1, "debug"

    invoke-virtual {v0, v1}, Lio/sentry/Breadcrumb;->setType(Ljava/lang/String;)V

    .line 364
    invoke-virtual {v0, p0}, Lio/sentry/Breadcrumb;->setMessage(Ljava/lang/String;)V

    .line 365
    sget-object p0, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    invoke-virtual {v0, p0}, Lio/sentry/Breadcrumb;->setLevel(Lio/sentry/SentryLevel;)V

    return-object v0
.end method

.method public static error(Ljava/lang/String;)Lio/sentry/Breadcrumb;
    .locals 2

    .line 376
    new-instance v0, Lio/sentry/Breadcrumb;

    invoke-direct {v0}, Lio/sentry/Breadcrumb;-><init>()V

    .line 377
    const-string v1, "error"

    invoke-virtual {v0, v1}, Lio/sentry/Breadcrumb;->setType(Ljava/lang/String;)V

    .line 378
    invoke-virtual {v0, p0}, Lio/sentry/Breadcrumb;->setMessage(Ljava/lang/String;)V

    .line 379
    sget-object p0, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    invoke-virtual {v0, p0}, Lio/sentry/Breadcrumb;->setLevel(Lio/sentry/SentryLevel;)V

    return-object v0
.end method

.method public static fromMap(Ljava/util/Map;Lio/sentry/SentryOptions;)Lio/sentry/Breadcrumb;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lio/sentry/SentryOptions;",
            ")",
            "Lio/sentry/Breadcrumb;"
        }
    .end annotation

    .line 94
    invoke-static {}, Lio/sentry/DateUtils;->getCurrentDateTime()Ljava/util/Date;

    move-result-object v0

    .line 97
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 103
    invoke-interface/range {p0 .. p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    move-object v4, v3

    move-object v5, v4

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    :catch_0
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_10

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 104
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    .line 105
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v12}, Ljava/lang/String;->hashCode()I

    move-result v13

    const/4 v14, 0x0

    const/4 v15, -0x1

    sparse-switch v13, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v13, "message"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    goto :goto_1

    :cond_1
    const/4 v15, 0x6

    goto :goto_1

    :sswitch_1
    const-string v13, "level"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    goto :goto_1

    :cond_2
    const/4 v15, 0x5

    goto :goto_1

    :sswitch_2
    const-string v13, "timestamp"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    goto :goto_1

    :cond_3
    const/4 v15, 0x4

    goto :goto_1

    :sswitch_3
    const-string v13, "category"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_4

    goto :goto_1

    :cond_4
    const/4 v15, 0x3

    goto :goto_1

    :sswitch_4
    const-string v13, "type"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_5

    goto :goto_1

    :cond_5
    const/4 v15, 0x2

    goto :goto_1

    :sswitch_5
    const-string v13, "data"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_6

    goto :goto_1

    :cond_6
    const/4 v15, 0x1

    goto :goto_1

    :sswitch_6
    const-string v13, "origin"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_7

    goto :goto_1

    :cond_7
    move v15, v14

    :goto_1
    packed-switch v15, :pswitch_data_0

    if-nez v9, :cond_8

    .line 153
    new-instance v9, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v9}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 155
    :cond_8
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v9, v11, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 115
    :pswitch_0
    instance-of v4, v11, Ljava/lang/String;

    if-eqz v4, :cond_9

    check-cast v11, Ljava/lang/String;

    move-object v4, v11

    goto/16 :goto_0

    :cond_9
    move-object v4, v3

    goto/16 :goto_0

    .line 142
    :pswitch_1
    instance-of v10, v11, Ljava/lang/String;

    if-eqz v10, :cond_a

    check-cast v11, Ljava/lang/String;

    goto :goto_2

    :cond_a
    move-object v11, v3

    :goto_2
    if-eqz v11, :cond_0

    .line 145
    :try_start_0
    sget-object v10, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v11, v10}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lio/sentry/SentryLevel;->valueOf(Ljava/lang/String;)Lio/sentry/SentryLevel;

    move-result-object v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 107
    :pswitch_2
    instance-of v10, v11, Ljava/lang/String;

    if-eqz v10, :cond_0

    .line 108
    check-cast v11, Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v10

    invoke-static {v11, v10}, Lio/sentry/ObjectReader;->dateOrNull(Ljava/lang/String;Lio/sentry/ILogger;)Ljava/util/Date;

    move-result-object v10

    if-eqz v10, :cond_0

    move-object v0, v10

    goto/16 :goto_0

    .line 136
    :pswitch_3
    instance-of v6, v11, Ljava/lang/String;

    if-eqz v6, :cond_b

    check-cast v11, Ljava/lang/String;

    move-object v6, v11

    goto/16 :goto_0

    :cond_b
    move-object v6, v3

    goto/16 :goto_0

    .line 118
    :pswitch_4
    instance-of v5, v11, Ljava/lang/String;

    if-eqz v5, :cond_c

    check-cast v11, Ljava/lang/String;

    move-object v5, v11

    goto/16 :goto_0

    :cond_c
    move-object v5, v3

    goto/16 :goto_0

    .line 122
    :pswitch_5
    instance-of v10, v11, Ljava/util/Map;

    if-eqz v10, :cond_d

    check-cast v11, Ljava/util/Map;

    goto :goto_3

    :cond_d
    move-object v11, v3

    :goto_3
    if-eqz v11, :cond_0

    .line 124
    invoke-interface {v11}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 125
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    instance-of v12, v12, Ljava/lang/String;

    if-eqz v12, :cond_e

    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    if-eqz v12, :cond_e

    .line 126
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v1, v12, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 129
    :cond_e
    invoke-virtual/range {p1 .. p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v11

    sget-object v12, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v13, "Invalid key or null value in data map."

    new-array v15, v14, [Ljava/lang/Object;

    .line 130
    invoke-interface {v11, v12, v13, v15}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    .line 139
    :pswitch_6
    instance-of v7, v11, Ljava/lang/String;

    if-eqz v7, :cond_f

    check-cast v11, Ljava/lang/String;

    move-object v7, v11

    goto/16 :goto_0

    :cond_f
    move-object v7, v3

    goto/16 :goto_0

    .line 160
    :cond_10
    new-instance v2, Lio/sentry/Breadcrumb;

    invoke-direct {v2, v0}, Lio/sentry/Breadcrumb;-><init>(Ljava/util/Date;)V

    .line 161
    iput-object v4, v2, Lio/sentry/Breadcrumb;->message:Ljava/lang/String;

    .line 162
    iput-object v5, v2, Lio/sentry/Breadcrumb;->type:Ljava/lang/String;

    .line 163
    iput-object v1, v2, Lio/sentry/Breadcrumb;->data:Ljava/util/Map;

    .line 164
    iput-object v6, v2, Lio/sentry/Breadcrumb;->category:Ljava/lang/String;

    .line 165
    iput-object v7, v2, Lio/sentry/Breadcrumb;->origin:Ljava/lang/String;

    .line 166
    iput-object v8, v2, Lio/sentry/Breadcrumb;->level:Lio/sentry/SentryLevel;

    .line 168
    invoke-virtual {v2, v9}, Lio/sentry/Breadcrumb;->setUnknown(Ljava/util/Map;)V

    return-object v2

    :sswitch_data_0
    .sparse-switch
        -0x3c1e50da -> :sswitch_6
        0x2eefaa -> :sswitch_5
        0x368f3a -> :sswitch_4
        0x302bcfe -> :sswitch_3
        0x3492916 -> :sswitch_2
        0x6219b84 -> :sswitch_1
        0x38eb0007 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static graphqlDataFetcher(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/sentry/Breadcrumb;
    .locals 2

    .line 261
    new-instance v0, Lio/sentry/Breadcrumb;

    invoke-direct {v0}, Lio/sentry/Breadcrumb;-><init>()V

    .line 263
    const-string v1, "graphql"

    invoke-virtual {v0, v1}, Lio/sentry/Breadcrumb;->setType(Ljava/lang/String;)V

    .line 264
    const-string v1, "graphql.fetcher"

    invoke-virtual {v0, v1}, Lio/sentry/Breadcrumb;->setCategory(Ljava/lang/String;)V

    if-eqz p0, :cond_0

    .line 267
    const-string v1, "path"

    invoke-virtual {v0, v1, p0}, Lio/sentry/Breadcrumb;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 270
    const-string p0, "field"

    invoke-virtual {v0, p0, p1}, Lio/sentry/Breadcrumb;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    if-eqz p2, :cond_2

    .line 273
    const-string p0, "type"

    invoke-virtual {v0, p0, p2}, Lio/sentry/Breadcrumb;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    if-eqz p3, :cond_3

    .line 276
    const-string p0, "object_type"

    invoke-virtual {v0, p0, p3}, Lio/sentry/Breadcrumb;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    return-object v0
.end method

.method public static graphqlDataLoader(Ljava/lang/Iterable;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Lio/sentry/Breadcrumb;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Lio/sentry/Breadcrumb;"
        }
    .end annotation

    .line 296
    new-instance v0, Lio/sentry/Breadcrumb;

    invoke-direct {v0}, Lio/sentry/Breadcrumb;-><init>()V

    .line 298
    const-string v1, "graphql"

    invoke-virtual {v0, v1}, Lio/sentry/Breadcrumb;->setType(Ljava/lang/String;)V

    .line 299
    const-string v1, "graphql.data_loader"

    invoke-virtual {v0, v1}, Lio/sentry/Breadcrumb;->setCategory(Ljava/lang/String;)V

    .line 301
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 302
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 303
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 305
    :cond_0
    const-string p0, "keys"

    invoke-virtual {v0, p0, v1}, Lio/sentry/Breadcrumb;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz p1, :cond_1

    .line 308
    const-string p0, "key_type"

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lio/sentry/Breadcrumb;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    if-eqz p2, :cond_2

    .line 312
    const-string p0, "value_type"

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lio/sentry/Breadcrumb;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    if-eqz p3, :cond_3

    .line 316
    const-string p0, "name"

    invoke-virtual {v0, p0, p3}, Lio/sentry/Breadcrumb;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    return-object v0
.end method

.method public static graphqlOperation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/sentry/Breadcrumb;
    .locals 2

    .line 227
    new-instance v0, Lio/sentry/Breadcrumb;

    invoke-direct {v0}, Lio/sentry/Breadcrumb;-><init>()V

    .line 229
    const-string v1, "graphql"

    invoke-virtual {v0, v1}, Lio/sentry/Breadcrumb;->setType(Ljava/lang/String;)V

    if-eqz p0, :cond_0

    .line 232
    const-string v1, "operation_name"

    invoke-virtual {v0, v1, p0}, Lio/sentry/Breadcrumb;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 235
    const-string p0, "operation_type"

    invoke-virtual {v0, p0, p1}, Lio/sentry/Breadcrumb;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 236
    invoke-virtual {v0, p1}, Lio/sentry/Breadcrumb;->setCategory(Ljava/lang/String;)V

    goto :goto_0

    .line 238
    :cond_1
    const-string p0, "graphql.operation"

    invoke-virtual {v0, p0}, Lio/sentry/Breadcrumb;->setCategory(Ljava/lang/String;)V

    :goto_0
    if-eqz p2, :cond_2

    .line 241
    const-string p0, "operation_id"

    invoke-virtual {v0, p0, p2}, Lio/sentry/Breadcrumb;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    return-object v0
.end method

.method public static http(Ljava/lang/String;Ljava/lang/String;)Lio/sentry/Breadcrumb;
    .locals 3

    .line 180
    new-instance v0, Lio/sentry/Breadcrumb;

    invoke-direct {v0}, Lio/sentry/Breadcrumb;-><init>()V

    .line 181
    invoke-static {p0}, Lio/sentry/util/UrlUtils;->parse(Ljava/lang/String;)Lio/sentry/util/UrlUtils$UrlDetails;

    move-result-object p0

    .line 182
    const-string v1, "http"

    invoke-virtual {v0, v1}, Lio/sentry/Breadcrumb;->setType(Ljava/lang/String;)V

    .line 183
    invoke-virtual {v0, v1}, Lio/sentry/Breadcrumb;->setCategory(Ljava/lang/String;)V

    .line 184
    invoke-virtual {p0}, Lio/sentry/util/UrlUtils$UrlDetails;->getUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 185
    const-string v1, "url"

    invoke-virtual {p0}, Lio/sentry/util/UrlUtils$UrlDetails;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/sentry/Breadcrumb;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 187
    :cond_0
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "method"

    invoke-virtual {v0, v1, p1}, Lio/sentry/Breadcrumb;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 188
    invoke-virtual {p0}, Lio/sentry/util/UrlUtils$UrlDetails;->getQuery()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 189
    const-string p1, "http.query"

    invoke-virtual {p0}, Lio/sentry/util/UrlUtils$UrlDetails;->getQuery()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lio/sentry/Breadcrumb;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 191
    :cond_1
    invoke-virtual {p0}, Lio/sentry/util/UrlUtils$UrlDetails;->getFragment()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 192
    const-string p1, "http.fragment"

    invoke-virtual {p0}, Lio/sentry/util/UrlUtils$UrlDetails;->getFragment()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lio/sentry/Breadcrumb;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    return-object v0
.end method

.method public static http(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lio/sentry/Breadcrumb;
    .locals 0

    .line 208
    invoke-static {p0, p1}, Lio/sentry/Breadcrumb;->http(Ljava/lang/String;Ljava/lang/String;)Lio/sentry/Breadcrumb;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 210
    const-string p1, "status_code"

    invoke-virtual {p0, p1, p2}, Lio/sentry/Breadcrumb;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-object p0
.end method

.method public static info(Ljava/lang/String;)Lio/sentry/Breadcrumb;
    .locals 2

    .line 391
    new-instance v0, Lio/sentry/Breadcrumb;

    invoke-direct {v0}, Lio/sentry/Breadcrumb;-><init>()V

    .line 392
    const-string v1, "info"

    invoke-virtual {v0, v1}, Lio/sentry/Breadcrumb;->setType(Ljava/lang/String;)V

    .line 393
    invoke-virtual {v0, p0}, Lio/sentry/Breadcrumb;->setMessage(Ljava/lang/String;)V

    .line 394
    sget-object p0, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    invoke-virtual {v0, p0}, Lio/sentry/Breadcrumb;->setLevel(Lio/sentry/SentryLevel;)V

    return-object v0
.end method

.method public static navigation(Ljava/lang/String;Ljava/lang/String;)Lio/sentry/Breadcrumb;
    .locals 2

    .line 332
    new-instance v0, Lio/sentry/Breadcrumb;

    invoke-direct {v0}, Lio/sentry/Breadcrumb;-><init>()V

    .line 333
    const-string v1, "navigation"

    invoke-virtual {v0, v1}, Lio/sentry/Breadcrumb;->setCategory(Ljava/lang/String;)V

    .line 334
    invoke-virtual {v0, v1}, Lio/sentry/Breadcrumb;->setType(Ljava/lang/String;)V

    .line 335
    const-string v1, "from"

    invoke-virtual {v0, v1, p0}, Lio/sentry/Breadcrumb;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 336
    const-string p0, "to"

    invoke-virtual {v0, p0, p1}, Lio/sentry/Breadcrumb;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static query(Ljava/lang/String;)Lio/sentry/Breadcrumb;
    .locals 2

    .line 405
    new-instance v0, Lio/sentry/Breadcrumb;

    invoke-direct {v0}, Lio/sentry/Breadcrumb;-><init>()V

    .line 406
    const-string v1, "query"

    invoke-virtual {v0, v1}, Lio/sentry/Breadcrumb;->setType(Ljava/lang/String;)V

    .line 407
    invoke-virtual {v0, p0}, Lio/sentry/Breadcrumb;->setMessage(Ljava/lang/String;)V

    return-object v0
.end method

.method public static transaction(Ljava/lang/String;)Lio/sentry/Breadcrumb;
    .locals 2

    .line 347
    new-instance v0, Lio/sentry/Breadcrumb;

    invoke-direct {v0}, Lio/sentry/Breadcrumb;-><init>()V

    .line 348
    const-string v1, "default"

    invoke-virtual {v0, v1}, Lio/sentry/Breadcrumb;->setType(Ljava/lang/String;)V

    .line 349
    const-string v1, "sentry.transaction"

    invoke-virtual {v0, v1}, Lio/sentry/Breadcrumb;->setCategory(Ljava/lang/String;)V

    .line 350
    invoke-virtual {v0, p0}, Lio/sentry/Breadcrumb;->setMessage(Ljava/lang/String;)V

    return-object v0
.end method

.method public static ui(Ljava/lang/String;Ljava/lang/String;)Lio/sentry/Breadcrumb;
    .locals 3

    .line 420
    new-instance v0, Lio/sentry/Breadcrumb;

    invoke-direct {v0}, Lio/sentry/Breadcrumb;-><init>()V

    .line 421
    const-string v1, "default"

    invoke-virtual {v0, v1}, Lio/sentry/Breadcrumb;->setType(Ljava/lang/String;)V

    .line 422
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ui."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lio/sentry/Breadcrumb;->setCategory(Ljava/lang/String;)V

    .line 423
    invoke-virtual {v0, p1}, Lio/sentry/Breadcrumb;->setMessage(Ljava/lang/String;)V

    return-object v0
.end method

.method public static user(Ljava/lang/String;Ljava/lang/String;)Lio/sentry/Breadcrumb;
    .locals 2

    .line 435
    new-instance v0, Lio/sentry/Breadcrumb;

    invoke-direct {v0}, Lio/sentry/Breadcrumb;-><init>()V

    .line 436
    const-string v1, "user"

    invoke-virtual {v0, v1}, Lio/sentry/Breadcrumb;->setType(Ljava/lang/String;)V

    .line 437
    invoke-virtual {v0, p0}, Lio/sentry/Breadcrumb;->setCategory(Ljava/lang/String;)V

    .line 438
    invoke-virtual {v0, p1}, Lio/sentry/Breadcrumb;->setMessage(Ljava/lang/String;)V

    return-object v0
.end method

.method public static userInteraction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/sentry/Breadcrumb;
    .locals 1

    .line 456
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lio/sentry/Breadcrumb;->userInteraction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lio/sentry/Breadcrumb;

    move-result-object p0

    return-object p0
.end method

.method public static userInteraction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lio/sentry/Breadcrumb;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lio/sentry/Breadcrumb;"
        }
    .end annotation

    .line 477
    new-instance v0, Lio/sentry/Breadcrumb;

    invoke-direct {v0}, Lio/sentry/Breadcrumb;-><init>()V

    .line 478
    const-string v1, "user"

    invoke-virtual {v0, v1}, Lio/sentry/Breadcrumb;->setType(Ljava/lang/String;)V

    .line 479
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ui."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lio/sentry/Breadcrumb;->setCategory(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 481
    const-string p0, "view.id"

    invoke-virtual {v0, p0, p1}, Lio/sentry/Breadcrumb;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    if-eqz p2, :cond_1

    .line 484
    const-string p0, "view.class"

    invoke-virtual {v0, p0, p2}, Lio/sentry/Breadcrumb;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    if-eqz p3, :cond_2

    .line 487
    const-string p0, "view.tag"

    invoke-virtual {v0, p0, p3}, Lio/sentry/Breadcrumb;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 489
    :cond_2
    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    .line 490
    invoke-virtual {v0}, Lio/sentry/Breadcrumb;->getData()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 492
    :cond_3
    sget-object p0, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    invoke-virtual {v0, p0}, Lio/sentry/Breadcrumb;->setLevel(Lio/sentry/SentryLevel;)V

    return-object v0
.end method

.method public static userInteraction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lio/sentry/Breadcrumb;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lio/sentry/Breadcrumb;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 513
    invoke-static {p0, p1, p2, v0, p3}, Lio/sentry/Breadcrumb;->userInteraction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lio/sentry/Breadcrumb;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 683
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 684
    :cond_1
    check-cast p1, Lio/sentry/Breadcrumb;

    .line 685
    invoke-virtual {p0}, Lio/sentry/Breadcrumb;->getTimestamp()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {p1}, Lio/sentry/Breadcrumb;->getTimestamp()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-object v2, p0, Lio/sentry/Breadcrumb;->message:Ljava/lang/String;

    iget-object v3, p1, Lio/sentry/Breadcrumb;->message:Ljava/lang/String;

    .line 686
    invoke-static {v2, v3}, Lio/sentry/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lio/sentry/Breadcrumb;->type:Ljava/lang/String;

    iget-object v3, p1, Lio/sentry/Breadcrumb;->type:Ljava/lang/String;

    .line 687
    invoke-static {v2, v3}, Lio/sentry/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lio/sentry/Breadcrumb;->category:Ljava/lang/String;

    iget-object v3, p1, Lio/sentry/Breadcrumb;->category:Ljava/lang/String;

    .line 688
    invoke-static {v2, v3}, Lio/sentry/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lio/sentry/Breadcrumb;->origin:Ljava/lang/String;

    iget-object v3, p1, Lio/sentry/Breadcrumb;->origin:Ljava/lang/String;

    .line 689
    invoke-static {v2, v3}, Lio/sentry/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lio/sentry/Breadcrumb;->level:Lio/sentry/SentryLevel;

    iget-object p1, p1, Lio/sentry/Breadcrumb;->level:Lio/sentry/SentryLevel;

    if-ne v2, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getCategory()Ljava/lang/String;
    .locals 1

    .line 631
    iget-object v0, p0, Lio/sentry/Breadcrumb;->category:Ljava/lang/String;

    return-object v0
.end method

.method public getData(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 603
    iget-object v0, p0, Lio/sentry/Breadcrumb;->data:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getData()Ljava/util/Map;
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

    .line 592
    iget-object v0, p0, Lio/sentry/Breadcrumb;->data:Ljava/util/Map;

    return-object v0
.end method

.method public getLevel()Lio/sentry/SentryLevel;
    .locals 1

    .line 667
    iget-object v0, p0, Lio/sentry/Breadcrumb;->level:Lio/sentry/SentryLevel;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 554
    iget-object v0, p0, Lio/sentry/Breadcrumb;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getOrigin()Ljava/lang/String;
    .locals 1

    .line 649
    iget-object v0, p0, Lio/sentry/Breadcrumb;->origin:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()Ljava/util/Date;
    .locals 2

    .line 538
    iget-object v0, p0, Lio/sentry/Breadcrumb;->timestamp:Ljava/util/Date;

    if-eqz v0, :cond_0

    .line 539
    invoke-virtual {v0}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    return-object v0

    .line 540
    :cond_0
    iget-object v0, p0, Lio/sentry/Breadcrumb;->timestampMs:Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 542
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lio/sentry/DateUtils;->getDateTime(J)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/Breadcrumb;->timestamp:Ljava/util/Date;

    return-object v0

    .line 545
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No timestamp set for breadcrumb"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 572
    iget-object v0, p0, Lio/sentry/Breadcrumb;->type:Ljava/lang/String;

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

    .line 703
    iget-object v0, p0, Lio/sentry/Breadcrumb;->unknown:Ljava/util/Map;

    return-object v0
.end method

.method public hashCode()I
    .locals 6

    .line 695
    iget-object v0, p0, Lio/sentry/Breadcrumb;->timestamp:Ljava/util/Date;

    iget-object v1, p0, Lio/sentry/Breadcrumb;->message:Ljava/lang/String;

    iget-object v2, p0, Lio/sentry/Breadcrumb;->type:Ljava/lang/String;

    iget-object v3, p0, Lio/sentry/Breadcrumb;->category:Ljava/lang/String;

    iget-object v4, p0, Lio/sentry/Breadcrumb;->origin:Ljava/lang/String;

    iget-object v5, p0, Lio/sentry/Breadcrumb;->level:Lio/sentry/SentryLevel;

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lio/sentry/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public removeData(Ljava/lang/String;)V
    .locals 1

    .line 622
    iget-object v0, p0, Lio/sentry/Breadcrumb;->data:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public serialize(Lio/sentry/ObjectWriter;Lio/sentry/ILogger;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 724
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->beginObject()Lio/sentry/ObjectWriter;

    .line 725
    const-string v0, "timestamp"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    invoke-virtual {p0}, Lio/sentry/Breadcrumb;->getTimestamp()Ljava/util/Date;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 726
    iget-object v0, p0, Lio/sentry/Breadcrumb;->message:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 727
    const-string v0, "message"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/Breadcrumb;->message:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 729
    :cond_0
    iget-object v0, p0, Lio/sentry/Breadcrumb;->type:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 730
    const-string v0, "type"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/Breadcrumb;->type:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 732
    :cond_1
    const-string v0, "data"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/Breadcrumb;->data:Ljava/util/Map;

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 733
    iget-object v0, p0, Lio/sentry/Breadcrumb;->category:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 734
    const-string v0, "category"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/Breadcrumb;->category:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 736
    :cond_2
    iget-object v0, p0, Lio/sentry/Breadcrumb;->origin:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 737
    const-string v0, "origin"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/Breadcrumb;->origin:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 739
    :cond_3
    iget-object v0, p0, Lio/sentry/Breadcrumb;->level:Lio/sentry/SentryLevel;

    if-eqz v0, :cond_4

    .line 740
    const-string v0, "level"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/Breadcrumb;->level:Lio/sentry/SentryLevel;

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 742
    :cond_4
    iget-object v0, p0, Lio/sentry/Breadcrumb;->unknown:Ljava/util/Map;

    if-eqz v0, :cond_5

    .line 743
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 744
    iget-object v2, p0, Lio/sentry/Breadcrumb;->unknown:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 745
    invoke-interface {p1, v1}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 746
    invoke-interface {p1, p2, v2}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    goto :goto_0

    .line 749
    :cond_5
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->endObject()Lio/sentry/ObjectWriter;

    return-void
.end method

.method public setCategory(Ljava/lang/String;)V
    .locals 0

    .line 640
    iput-object p1, p0, Lio/sentry/Breadcrumb;->category:Ljava/lang/String;

    return-void
.end method

.method public setData(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 613
    iget-object v0, p0, Lio/sentry/Breadcrumb;->data:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setLevel(Lio/sentry/SentryLevel;)V
    .locals 0

    .line 676
    iput-object p1, p0, Lio/sentry/Breadcrumb;->level:Lio/sentry/SentryLevel;

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .line 563
    iput-object p1, p0, Lio/sentry/Breadcrumb;->message:Ljava/lang/String;

    return-void
.end method

.method public setOrigin(Ljava/lang/String;)V
    .locals 0

    .line 658
    iput-object p1, p0, Lio/sentry/Breadcrumb;->origin:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 581
    iput-object p1, p0, Lio/sentry/Breadcrumb;->type:Ljava/lang/String;

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

    .line 708
    iput-object p1, p0, Lio/sentry/Breadcrumb;->unknown:Ljava/util/Map;

    return-void
.end method
