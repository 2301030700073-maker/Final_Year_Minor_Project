.class public final Lio/sentry/protocol/App$Deserializer;
.super Ljava/lang/Object;
.source "App.java"

# interfaces
.implements Lio/sentry/JsonDeserializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/protocol/App;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Deserializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/sentry/JsonDeserializer<",
        "Lio/sentry/protocol/App;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 273
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Lio/sentry/protocol/App;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 278
    invoke-interface {p1}, Lio/sentry/ObjectReader;->beginObject()V

    .line 279
    new-instance v0, Lio/sentry/protocol/App;

    invoke-direct {v0}, Lio/sentry/protocol/App;-><init>()V

    const/4 v1, 0x0

    .line 281
    :cond_0
    :goto_0
    invoke-interface {p1}, Lio/sentry/ObjectReader;->peek()Lio/sentry/vendor/gson/stream/JsonToken;

    move-result-object v2

    sget-object v3, Lio/sentry/vendor/gson/stream/JsonToken;->NAME:Lio/sentry/vendor/gson/stream/JsonToken;

    if-ne v2, v3, :cond_d

    .line 282
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextName()Ljava/lang/String;

    move-result-object v2

    .line 283
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, -0x1

    sparse-switch v3, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v3, "app_build"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto/16 :goto_1

    :cond_1
    const/16 v4, 0xa

    goto/16 :goto_1

    :sswitch_1
    const-string v3, "app_name"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto/16 :goto_1

    :cond_2
    const/16 v4, 0x9

    goto/16 :goto_1

    :sswitch_2
    const-string v3, "permissions"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto/16 :goto_1

    :cond_3
    const/16 v4, 0x8

    goto/16 :goto_1

    :sswitch_3
    const-string v3, "app_start_time"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_1

    :cond_4
    const/4 v4, 0x7

    goto :goto_1

    :sswitch_4
    const-string v3, "app_identifier"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_1

    :cond_5
    const/4 v4, 0x6

    goto :goto_1

    :sswitch_5
    const-string v3, "build_type"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_1

    :cond_6
    const/4 v4, 0x5

    goto :goto_1

    :sswitch_6
    const-string v3, "in_foreground"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    goto :goto_1

    :cond_7
    const/4 v4, 0x4

    goto :goto_1

    :sswitch_7
    const-string v3, "app_version"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    goto :goto_1

    :cond_8
    const/4 v4, 0x3

    goto :goto_1

    :sswitch_8
    const-string v3, "view_names"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    goto :goto_1

    :cond_9
    const/4 v4, 0x2

    goto :goto_1

    :sswitch_9
    const-string v3, "start_type"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    goto :goto_1

    :cond_a
    const/4 v4, 0x1

    goto :goto_1

    :sswitch_a
    const-string v3, "device_app_hash"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    goto :goto_1

    :cond_b
    const/4 v4, 0x0

    :goto_1
    packed-switch v4, :pswitch_data_0

    if-nez v1, :cond_c

    .line 324
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 326
    :cond_c
    invoke-interface {p1, p2, v1, v2}, Lio/sentry/ObjectReader;->nextUnknown(Lio/sentry/ILogger;Ljava/util/Map;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 303
    :pswitch_0
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lio/sentry/protocol/App;->access$602(Lio/sentry/protocol/App;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 297
    :pswitch_1
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lio/sentry/protocol/App;->access$402(Lio/sentry/protocol/App;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 308
    :pswitch_2
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextObjectOrNull()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 307
    invoke-static {v2}, Lio/sentry/util/CollectionUtils;->newConcurrentHashMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    .line 306
    invoke-static {v0, v2}, Lio/sentry/protocol/App;->access$702(Lio/sentry/protocol/App;Ljava/util/Map;)Ljava/util/Map;

    goto/16 :goto_0

    .line 288
    :pswitch_3
    invoke-interface {p1, p2}, Lio/sentry/ObjectReader;->nextDateOrNull(Lio/sentry/ILogger;)Ljava/util/Date;

    move-result-object v2

    invoke-static {v0, v2}, Lio/sentry/protocol/App;->access$102(Lio/sentry/protocol/App;Ljava/util/Date;)Ljava/util/Date;

    goto/16 :goto_0

    .line 285
    :pswitch_4
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lio/sentry/protocol/App;->access$002(Lio/sentry/protocol/App;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 294
    :pswitch_5
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lio/sentry/protocol/App;->access$302(Lio/sentry/protocol/App;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 311
    :pswitch_6
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextBooleanOrNull()Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v2}, Lio/sentry/protocol/App;->access$802(Lio/sentry/protocol/App;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 300
    :pswitch_7
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lio/sentry/protocol/App;->access$502(Lio/sentry/protocol/App;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 314
    :pswitch_8
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextObjectOrNull()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_0

    .line 316
    invoke-virtual {v0, v2}, Lio/sentry/protocol/App;->setViewNames(Ljava/util/List;)V

    goto/16 :goto_0

    .line 320
    :pswitch_9
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lio/sentry/protocol/App;->access$902(Lio/sentry/protocol/App;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 291
    :pswitch_a
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lio/sentry/protocol/App;->access$202(Lio/sentry/protocol/App;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 330
    :cond_d
    invoke-virtual {v0, v1}, Lio/sentry/protocol/App;->setUnknown(Ljava/util/Map;)V

    .line 331
    invoke-interface {p1}, Lio/sentry/ObjectReader;->endObject()V

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x7121ffcb -> :sswitch_a
        -0x5dc40f09 -> :sswitch_9
        -0x5adfdad2 -> :sswitch_8
        -0x35c17346 -> :sswitch_7
        -0x26c68763 -> :sswitch_6
        -0x1c09a995 -> :sswitch_5
        0x2c7b9987 -> :sswitch_4
        0x2f2ea168 -> :sswitch_3
        0x4392f484 -> :sswitch_2
        0x4598e5e9 -> :sswitch_1
        0x6ce3c6d0 -> :sswitch_0
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

    .line 273
    invoke-virtual {p0, p1, p2}, Lio/sentry/protocol/App$Deserializer;->deserialize(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Lio/sentry/protocol/App;

    move-result-object p1

    return-object p1
.end method
