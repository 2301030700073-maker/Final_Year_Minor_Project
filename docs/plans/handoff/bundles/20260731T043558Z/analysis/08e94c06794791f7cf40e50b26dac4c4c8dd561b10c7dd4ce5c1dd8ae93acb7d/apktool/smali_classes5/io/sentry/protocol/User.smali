.class public final Lio/sentry/protocol/User;
.super Ljava/lang/Object;
.source "User.java"

# interfaces
.implements Lio/sentry/JsonUnknown;
.implements Lio/sentry/JsonSerializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/protocol/User$JsonKeys;,
        Lio/sentry/protocol/User$Deserializer;
    }
.end annotation


# instance fields
.field private data:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private email:Ljava/lang/String;

.field private geo:Lio/sentry/protocol/Geo;

.field private id:Ljava/lang/String;

.field private ipAddress:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private segment:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

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

.field private username:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lio/sentry/protocol/User;)V
    .locals 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iget-object v0, p1, Lio/sentry/protocol/User;->email:Ljava/lang/String;

    iput-object v0, p0, Lio/sentry/protocol/User;->email:Ljava/lang/String;

    .line 65
    iget-object v0, p1, Lio/sentry/protocol/User;->username:Ljava/lang/String;

    iput-object v0, p0, Lio/sentry/protocol/User;->username:Ljava/lang/String;

    .line 66
    iget-object v0, p1, Lio/sentry/protocol/User;->id:Ljava/lang/String;

    iput-object v0, p0, Lio/sentry/protocol/User;->id:Ljava/lang/String;

    .line 67
    iget-object v0, p1, Lio/sentry/protocol/User;->ipAddress:Ljava/lang/String;

    iput-object v0, p0, Lio/sentry/protocol/User;->ipAddress:Ljava/lang/String;

    .line 68
    iget-object v0, p1, Lio/sentry/protocol/User;->segment:Ljava/lang/String;

    iput-object v0, p0, Lio/sentry/protocol/User;->segment:Ljava/lang/String;

    .line 69
    iget-object v0, p1, Lio/sentry/protocol/User;->name:Ljava/lang/String;

    iput-object v0, p0, Lio/sentry/protocol/User;->name:Ljava/lang/String;

    .line 70
    iget-object v0, p1, Lio/sentry/protocol/User;->geo:Lio/sentry/protocol/Geo;

    iput-object v0, p0, Lio/sentry/protocol/User;->geo:Lio/sentry/protocol/Geo;

    .line 71
    iget-object v0, p1, Lio/sentry/protocol/User;->data:Ljava/util/Map;

    invoke-static {v0}, Lio/sentry/util/CollectionUtils;->newConcurrentHashMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/protocol/User;->data:Ljava/util/Map;

    .line 72
    iget-object p1, p1, Lio/sentry/protocol/User;->unknown:Ljava/util/Map;

    invoke-static {p1}, Lio/sentry/util/CollectionUtils;->newConcurrentHashMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lio/sentry/protocol/User;->unknown:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$002(Lio/sentry/protocol/User;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 26
    iput-object p1, p0, Lio/sentry/protocol/User;->email:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lio/sentry/protocol/User;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 26
    iput-object p1, p0, Lio/sentry/protocol/User;->id:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lio/sentry/protocol/User;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 26
    iput-object p1, p0, Lio/sentry/protocol/User;->username:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lio/sentry/protocol/User;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 26
    iput-object p1, p0, Lio/sentry/protocol/User;->segment:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$402(Lio/sentry/protocol/User;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 26
    iput-object p1, p0, Lio/sentry/protocol/User;->ipAddress:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$502(Lio/sentry/protocol/User;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 26
    iput-object p1, p0, Lio/sentry/protocol/User;->name:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$602(Lio/sentry/protocol/User;Lio/sentry/protocol/Geo;)Lio/sentry/protocol/Geo;
    .locals 0

    .line 26
    iput-object p1, p0, Lio/sentry/protocol/User;->geo:Lio/sentry/protocol/Geo;

    return-object p1
.end method

.method static synthetic access$700(Lio/sentry/protocol/User;)Ljava/util/Map;
    .locals 0

    .line 26
    iget-object p0, p0, Lio/sentry/protocol/User;->data:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$702(Lio/sentry/protocol/User;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    .line 26
    iput-object p1, p0, Lio/sentry/protocol/User;->data:Ljava/util/Map;

    return-object p1
.end method

.method public static fromMap(Ljava/util/Map;Lio/sentry/SentryOptions;)Lio/sentry/protocol/User;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lio/sentry/SentryOptions;",
            ")",
            "Lio/sentry/protocol/User;"
        }
    .end annotation

    .line 87
    new-instance v0, Lio/sentry/protocol/User;

    invoke-direct {v0}, Lio/sentry/protocol/User;-><init>()V

    .line 90
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    move-object v2, v1

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 91
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 92
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, -0x1

    sparse-switch v6, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v6, "segment"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    goto/16 :goto_1

    :cond_1
    const/16 v8, 0x8

    goto/16 :goto_1

    :sswitch_1
    const-string v6, "ip_address"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    const/4 v8, 0x7

    goto :goto_1

    :sswitch_2
    const-string v6, "other"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_1

    :cond_3
    const/4 v8, 0x6

    goto :goto_1

    :sswitch_3
    const-string v6, "email"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    goto :goto_1

    :cond_4
    const/4 v8, 0x5

    goto :goto_1

    :sswitch_4
    const-string v6, "name"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    goto :goto_1

    :cond_5
    const/4 v8, 0x4

    goto :goto_1

    :sswitch_5
    const-string v6, "data"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    goto :goto_1

    :cond_6
    const/4 v8, 0x3

    goto :goto_1

    :sswitch_6
    const-string v6, "geo"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    goto :goto_1

    :cond_7
    const/4 v8, 0x2

    goto :goto_1

    :sswitch_7
    const-string v6, "id"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    goto :goto_1

    :cond_8
    const/4 v8, 0x1

    goto :goto_1

    :sswitch_8
    const-string v6, "username"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    goto :goto_1

    :cond_9
    move v8, v7

    :goto_1
    packed-switch v8, :pswitch_data_0

    if-nez v2, :cond_a

    .line 163
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 165
    :cond_a
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 103
    :pswitch_0
    instance-of v3, v4, Ljava/lang/String;

    if-eqz v3, :cond_b

    check-cast v4, Ljava/lang/String;

    goto :goto_2

    :cond_b
    move-object v4, v1

    :goto_2
    iput-object v4, v0, Lio/sentry/protocol/User;->segment:Ljava/lang/String;

    goto/16 :goto_0

    .line 106
    :pswitch_1
    instance-of v3, v4, Ljava/lang/String;

    if-eqz v3, :cond_c

    check-cast v4, Ljava/lang/String;

    goto :goto_3

    :cond_c
    move-object v4, v1

    :goto_3
    iput-object v4, v0, Lio/sentry/protocol/User;->ipAddress:Ljava/lang/String;

    goto/16 :goto_0

    .line 145
    :pswitch_2
    instance-of v3, v4, Ljava/util/Map;

    if-eqz v3, :cond_d

    check-cast v4, Ljava/util/Map;

    goto :goto_4

    :cond_d
    move-object v4, v1

    :goto_4
    if-eqz v4, :cond_0

    .line 147
    iget-object v3, v0, Lio/sentry/protocol/User;->data:Ljava/util/Map;

    if-eqz v3, :cond_e

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 148
    :cond_e
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 149
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 150
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Ljava/lang/String;

    if-eqz v6, :cond_f

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_f

    .line 151
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v6, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 154
    :cond_f
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v5

    sget-object v6, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v8, "Invalid key or null value in other map."

    new-array v9, v7, [Ljava/lang/Object;

    .line 155
    invoke-interface {v5, v6, v8, v9}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5

    .line 158
    :cond_10
    iput-object v3, v0, Lio/sentry/protocol/User;->data:Ljava/util/Map;

    goto/16 :goto_0

    .line 94
    :pswitch_3
    instance-of v3, v4, Ljava/lang/String;

    if-eqz v3, :cond_11

    check-cast v4, Ljava/lang/String;

    goto :goto_6

    :cond_11
    move-object v4, v1

    :goto_6
    iput-object v4, v0, Lio/sentry/protocol/User;->email:Ljava/lang/String;

    goto/16 :goto_0

    .line 109
    :pswitch_4
    instance-of v3, v4, Ljava/lang/String;

    if-eqz v3, :cond_12

    check-cast v4, Ljava/lang/String;

    goto :goto_7

    :cond_12
    move-object v4, v1

    :goto_7
    iput-object v4, v0, Lio/sentry/protocol/User;->name:Ljava/lang/String;

    goto/16 :goto_0

    .line 128
    :pswitch_5
    instance-of v3, v4, Ljava/util/Map;

    if-eqz v3, :cond_13

    check-cast v4, Ljava/util/Map;

    goto :goto_8

    :cond_13
    move-object v4, v1

    :goto_8
    if-eqz v4, :cond_0

    .line 130
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 131
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_15

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 132
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Ljava/lang/String;

    if-eqz v6, :cond_14

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_14

    .line 133
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v6, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    .line 136
    :cond_14
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v5

    sget-object v6, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v8, "Invalid key or null value in data map."

    new-array v9, v7, [Ljava/lang/Object;

    .line 137
    invoke-interface {v5, v6, v8, v9}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_9

    .line 140
    :cond_15
    iput-object v3, v0, Lio/sentry/protocol/User;->data:Ljava/util/Map;

    goto/16 :goto_0

    .line 113
    :pswitch_6
    instance-of v3, v4, Ljava/util/Map;

    if-eqz v3, :cond_16

    check-cast v4, Ljava/util/Map;

    goto :goto_a

    :cond_16
    move-object v4, v1

    :goto_a
    if-eqz v4, :cond_0

    .line 115
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 116
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_18

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 117
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Ljava/lang/String;

    if-eqz v6, :cond_17

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_17

    .line 118
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v6, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    .line 120
    :cond_17
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v5

    sget-object v6, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v8, "Invalid key type in gep map."

    new-array v9, v7, [Ljava/lang/Object;

    invoke-interface {v5, v6, v8, v9}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_b

    .line 123
    :cond_18
    invoke-static {v3}, Lio/sentry/protocol/Geo;->fromMap(Ljava/util/Map;)Lio/sentry/protocol/Geo;

    move-result-object v3

    iput-object v3, v0, Lio/sentry/protocol/User;->geo:Lio/sentry/protocol/Geo;

    goto/16 :goto_0

    .line 97
    :pswitch_7
    instance-of v3, v4, Ljava/lang/String;

    if-eqz v3, :cond_19

    check-cast v4, Ljava/lang/String;

    goto :goto_c

    :cond_19
    move-object v4, v1

    :goto_c
    iput-object v4, v0, Lio/sentry/protocol/User;->id:Ljava/lang/String;

    goto/16 :goto_0

    .line 100
    :pswitch_8
    instance-of v3, v4, Ljava/lang/String;

    if-eqz v3, :cond_1a

    check-cast v4, Ljava/lang/String;

    goto :goto_d

    :cond_1a
    move-object v4, v1

    :goto_d
    iput-object v4, v0, Lio/sentry/protocol/User;->username:Ljava/lang/String;

    goto/16 :goto_0

    .line 169
    :cond_1b
    iput-object v2, v0, Lio/sentry/protocol/User;->unknown:Ljava/util/Map;

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0xfd6772a -> :sswitch_8
        0xd1b -> :sswitch_7
        0x18f51 -> :sswitch_6
        0x2eefaa -> :sswitch_5
        0x337a8b -> :sswitch_4
        0x5c24b9c -> :sswitch_3
        0x6527f10 -> :sswitch_2
        0x583738dc -> :sswitch_1
        0x75a49f33 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 348
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 349
    :cond_1
    check-cast p1, Lio/sentry/protocol/User;

    .line 350
    iget-object v2, p0, Lio/sentry/protocol/User;->email:Ljava/lang/String;

    iget-object v3, p1, Lio/sentry/protocol/User;->email:Ljava/lang/String;

    invoke-static {v2, v3}, Lio/sentry/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lio/sentry/protocol/User;->id:Ljava/lang/String;

    iget-object v3, p1, Lio/sentry/protocol/User;->id:Ljava/lang/String;

    .line 351
    invoke-static {v2, v3}, Lio/sentry/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lio/sentry/protocol/User;->username:Ljava/lang/String;

    iget-object v3, p1, Lio/sentry/protocol/User;->username:Ljava/lang/String;

    .line 352
    invoke-static {v2, v3}, Lio/sentry/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lio/sentry/protocol/User;->segment:Ljava/lang/String;

    iget-object v3, p1, Lio/sentry/protocol/User;->segment:Ljava/lang/String;

    .line 353
    invoke-static {v2, v3}, Lio/sentry/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lio/sentry/protocol/User;->ipAddress:Ljava/lang/String;

    iget-object p1, p1, Lio/sentry/protocol/User;->ipAddress:Ljava/lang/String;

    .line 354
    invoke-static {v2, p1}, Lio/sentry/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getData()Ljava/util/Map;
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

    .line 333
    iget-object v0, p0, Lio/sentry/protocol/User;->data:Ljava/util/Map;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .line 179
    iget-object v0, p0, Lio/sentry/protocol/User;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getGeo()Lio/sentry/protocol/Geo;
    .locals 1

    .line 315
    iget-object v0, p0, Lio/sentry/protocol/User;->geo:Lio/sentry/protocol/Geo;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 197
    iget-object v0, p0, Lio/sentry/protocol/User;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getIpAddress()Ljava/lang/String;
    .locals 1

    .line 255
    iget-object v0, p0, Lio/sentry/protocol/User;->ipAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 297
    iget-object v0, p0, Lio/sentry/protocol/User;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOthers()Ljava/util/Map;
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 276
    invoke-virtual {p0}, Lio/sentry/protocol/User;->getData()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getSegment()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 235
    iget-object v0, p0, Lio/sentry/protocol/User;->segment:Ljava/lang/String;

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

    .line 367
    iget-object v0, p0, Lio/sentry/protocol/User;->unknown:Ljava/util/Map;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .line 215
    iget-object v0, p0, Lio/sentry/protocol/User;->username:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .line 359
    iget-object v0, p0, Lio/sentry/protocol/User;->email:Ljava/lang/String;

    iget-object v1, p0, Lio/sentry/protocol/User;->id:Ljava/lang/String;

    iget-object v2, p0, Lio/sentry/protocol/User;->username:Ljava/lang/String;

    iget-object v3, p0, Lio/sentry/protocol/User;->segment:Ljava/lang/String;

    iget-object v4, p0, Lio/sentry/protocol/User;->ipAddress:Ljava/lang/String;

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lio/sentry/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public serialize(Lio/sentry/ObjectWriter;Lio/sentry/ILogger;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 390
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->beginObject()Lio/sentry/ObjectWriter;

    .line 391
    iget-object v0, p0, Lio/sentry/protocol/User;->email:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 392
    const-string v0, "email"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/User;->email:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 394
    :cond_0
    iget-object v0, p0, Lio/sentry/protocol/User;->id:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 395
    const-string v0, "id"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/User;->id:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 397
    :cond_1
    iget-object v0, p0, Lio/sentry/protocol/User;->username:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 398
    const-string v0, "username"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/User;->username:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 400
    :cond_2
    iget-object v0, p0, Lio/sentry/protocol/User;->segment:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 401
    const-string v0, "segment"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/User;->segment:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 403
    :cond_3
    iget-object v0, p0, Lio/sentry/protocol/User;->ipAddress:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 404
    const-string v0, "ip_address"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/User;->ipAddress:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 406
    :cond_4
    iget-object v0, p0, Lio/sentry/protocol/User;->name:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 407
    const-string v0, "name"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/User;->name:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 409
    :cond_5
    iget-object v0, p0, Lio/sentry/protocol/User;->geo:Lio/sentry/protocol/Geo;

    if-eqz v0, :cond_6

    .line 410
    const-string v0, "geo"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 411
    iget-object v0, p0, Lio/sentry/protocol/User;->geo:Lio/sentry/protocol/Geo;

    invoke-virtual {v0, p1, p2}, Lio/sentry/protocol/Geo;->serialize(Lio/sentry/ObjectWriter;Lio/sentry/ILogger;)V

    .line 413
    :cond_6
    iget-object v0, p0, Lio/sentry/protocol/User;->data:Ljava/util/Map;

    if-eqz v0, :cond_7

    .line 414
    const-string v0, "data"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/User;->data:Ljava/util/Map;

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 416
    :cond_7
    iget-object v0, p0, Lio/sentry/protocol/User;->unknown:Ljava/util/Map;

    if-eqz v0, :cond_8

    .line 417
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

    .line 418
    iget-object v2, p0, Lio/sentry/protocol/User;->unknown:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 419
    invoke-interface {p1, v1}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 420
    invoke-interface {p1, p2, v2}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    goto :goto_0

    .line 423
    :cond_8
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->endObject()Lio/sentry/ObjectWriter;

    return-void
.end method

.method public setData(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 342
    invoke-static {p1}, Lio/sentry/util/CollectionUtils;->newConcurrentHashMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lio/sentry/protocol/User;->data:Ljava/util/Map;

    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0

    .line 188
    iput-object p1, p0, Lio/sentry/protocol/User;->email:Ljava/lang/String;

    return-void
.end method

.method public setGeo(Lio/sentry/protocol/Geo;)V
    .locals 0

    .line 324
    iput-object p1, p0, Lio/sentry/protocol/User;->geo:Lio/sentry/protocol/Geo;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 206
    iput-object p1, p0, Lio/sentry/protocol/User;->id:Ljava/lang/String;

    return-void
.end method

.method public setIpAddress(Ljava/lang/String;)V
    .locals 0

    .line 264
    iput-object p1, p0, Lio/sentry/protocol/User;->ipAddress:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 306
    iput-object p1, p0, Lio/sentry/protocol/User;->name:Ljava/lang/String;

    return-void
.end method

.method public setOthers(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 288
    invoke-virtual {p0, p1}, Lio/sentry/protocol/User;->setData(Ljava/util/Map;)V

    return-void
.end method

.method public setSegment(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 246
    iput-object p1, p0, Lio/sentry/protocol/User;->segment:Ljava/lang/String;

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

    .line 372
    iput-object p1, p0, Lio/sentry/protocol/User;->unknown:Ljava/util/Map;

    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0

    .line 224
    iput-object p1, p0, Lio/sentry/protocol/User;->username:Ljava/lang/String;

    return-void
.end method
