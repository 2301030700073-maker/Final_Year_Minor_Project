.class public final Lcom/google/api/MonitoredResource$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "MonitoredResource.java"

# interfaces
.implements Lcom/google/api/MonitoredResourceOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/MonitoredResource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/api/MonitoredResource;",
        "Lcom/google/api/MonitoredResource$Builder;",
        ">;",
        "Lcom/google/api/MonitoredResourceOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 345
    invoke-static {}, Lcom/google/api/MonitoredResource;->access$000()Lcom/google/api/MonitoredResource;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/api/MonitoredResource$1;)V
    .locals 0

    .line 338
    invoke-direct {p0}, Lcom/google/api/MonitoredResource$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearLabels()Lcom/google/api/MonitoredResource$Builder;
    .locals 1

    .line 451
    invoke-virtual {p0}, Lcom/google/api/MonitoredResource$Builder;->copyOnWrite()V

    .line 452
    iget-object v0, p0, Lcom/google/api/MonitoredResource$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MonitoredResource;

    invoke-static {v0}, Lcom/google/api/MonitoredResource;->access$400(Lcom/google/api/MonitoredResource;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-object p0
.end method

.method public clearType()Lcom/google/api/MonitoredResource$Builder;
    .locals 1

    .line 406
    invoke-virtual {p0}, Lcom/google/api/MonitoredResource$Builder;->copyOnWrite()V

    .line 407
    iget-object v0, p0, Lcom/google/api/MonitoredResource$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MonitoredResource;

    invoke-static {v0}, Lcom/google/api/MonitoredResource;->access$200(Lcom/google/api/MonitoredResource;)V

    return-object p0
.end method

.method public containsLabels(Ljava/lang/String;)Z
    .locals 1

    .line 446
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 447
    iget-object v0, p0, Lcom/google/api/MonitoredResource$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MonitoredResource;

    invoke-virtual {v0}, Lcom/google/api/MonitoredResource;->getLabelsMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getLabels()Ljava/util/Map;
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

    .line 478
    invoke-virtual {p0}, Lcom/google/api/MonitoredResource$Builder;->getLabelsMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getLabelsCount()I
    .locals 1

    .line 431
    iget-object v0, p0, Lcom/google/api/MonitoredResource$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MonitoredResource;

    invoke-virtual {v0}, Lcom/google/api/MonitoredResource;->getLabelsMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public getLabelsMap()Ljava/util/Map;
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

    .line 491
    iget-object v0, p0, Lcom/google/api/MonitoredResource$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MonitoredResource;

    .line 492
    invoke-virtual {v0}, Lcom/google/api/MonitoredResource;->getLabelsMap()Ljava/util/Map;

    move-result-object v0

    .line 491
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getLabelsOrDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 510
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 511
    iget-object v0, p0, Lcom/google/api/MonitoredResource$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MonitoredResource;

    .line 512
    invoke-virtual {v0}, Lcom/google/api/MonitoredResource;->getLabelsMap()Ljava/util/Map;

    move-result-object v0

    .line 513
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object p2, p1

    check-cast p2, Ljava/lang/String;

    :cond_0
    return-object p2
.end method

.method public getLabelsOrThrow(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 528
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 529
    iget-object v0, p0, Lcom/google/api/MonitoredResource$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MonitoredResource;

    .line 530
    invoke-virtual {v0}, Lcom/google/api/MonitoredResource;->getLabelsMap()Ljava/util/Map;

    move-result-object v0

    .line 531
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 534
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 532
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 361
    iget-object v0, p0, Lcom/google/api/MonitoredResource$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MonitoredResource;

    invoke-virtual {v0}, Lcom/google/api/MonitoredResource;->getType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTypeBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 376
    iget-object v0, p0, Lcom/google/api/MonitoredResource$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MonitoredResource;

    invoke-virtual {v0}, Lcom/google/api/MonitoredResource;->getTypeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public putAllLabels(Ljava/util/Map;)Lcom/google/api/MonitoredResource$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/api/MonitoredResource$Builder;"
        }
    .end annotation

    .line 565
    invoke-virtual {p0}, Lcom/google/api/MonitoredResource$Builder;->copyOnWrite()V

    .line 566
    iget-object v0, p0, Lcom/google/api/MonitoredResource$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MonitoredResource;

    invoke-static {v0}, Lcom/google/api/MonitoredResource;->access$400(Lcom/google/api/MonitoredResource;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object p0
.end method

.method public putLabels(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/MonitoredResource$Builder;
    .locals 1

    .line 548
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 549
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 550
    invoke-virtual {p0}, Lcom/google/api/MonitoredResource$Builder;->copyOnWrite()V

    .line 551
    iget-object v0, p0, Lcom/google/api/MonitoredResource$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MonitoredResource;

    invoke-static {v0}, Lcom/google/api/MonitoredResource;->access$400(Lcom/google/api/MonitoredResource;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public removeLabels(Ljava/lang/String;)Lcom/google/api/MonitoredResource$Builder;
    .locals 1

    .line 467
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 468
    invoke-virtual {p0}, Lcom/google/api/MonitoredResource$Builder;->copyOnWrite()V

    .line 469
    iget-object v0, p0, Lcom/google/api/MonitoredResource$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MonitoredResource;

    invoke-static {v0}, Lcom/google/api/MonitoredResource;->access$400(Lcom/google/api/MonitoredResource;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setType(Ljava/lang/String;)Lcom/google/api/MonitoredResource$Builder;
    .locals 1

    .line 391
    invoke-virtual {p0}, Lcom/google/api/MonitoredResource$Builder;->copyOnWrite()V

    .line 392
    iget-object v0, p0, Lcom/google/api/MonitoredResource$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MonitoredResource;

    invoke-static {v0, p1}, Lcom/google/api/MonitoredResource;->access$100(Lcom/google/api/MonitoredResource;Ljava/lang/String;)V

    return-object p0
.end method

.method public setTypeBytes(Lcom/google/protobuf/ByteString;)Lcom/google/api/MonitoredResource$Builder;
    .locals 1

    .line 423
    invoke-virtual {p0}, Lcom/google/api/MonitoredResource$Builder;->copyOnWrite()V

    .line 424
    iget-object v0, p0, Lcom/google/api/MonitoredResource$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MonitoredResource;

    invoke-static {v0, p1}, Lcom/google/api/MonitoredResource;->access$300(Lcom/google/api/MonitoredResource;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
