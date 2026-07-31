.class public final Lcom/google/rpc/ErrorInfo$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "ErrorInfo.java"

# interfaces
.implements Lcom/google/rpc/ErrorInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/rpc/ErrorInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/rpc/ErrorInfo;",
        "Lcom/google/rpc/ErrorInfo$Builder;",
        ">;",
        "Lcom/google/rpc/ErrorInfoOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 479
    invoke-static {}, Lcom/google/rpc/ErrorInfo;->access$000()Lcom/google/rpc/ErrorInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/rpc/ErrorInfo$1;)V
    .locals 0

    .line 472
    invoke-direct {p0}, Lcom/google/rpc/ErrorInfo$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearDomain()Lcom/google/rpc/ErrorInfo$Builder;
    .locals 1

    .line 632
    invoke-virtual {p0}, Lcom/google/rpc/ErrorInfo$Builder;->copyOnWrite()V

    .line 633
    iget-object v0, p0, Lcom/google/rpc/ErrorInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/ErrorInfo;

    invoke-static {v0}, Lcom/google/rpc/ErrorInfo;->access$500(Lcom/google/rpc/ErrorInfo;)V

    return-object p0
.end method

.method public clearMetadata()Lcom/google/rpc/ErrorInfo$Builder;
    .locals 1

    .line 684
    invoke-virtual {p0}, Lcom/google/rpc/ErrorInfo$Builder;->copyOnWrite()V

    .line 685
    iget-object v0, p0, Lcom/google/rpc/ErrorInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/ErrorInfo;

    invoke-static {v0}, Lcom/google/rpc/ErrorInfo;->access$700(Lcom/google/rpc/ErrorInfo;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-object p0
.end method

.method public clearReason()Lcom/google/rpc/ErrorInfo$Builder;
    .locals 1

    .line 544
    invoke-virtual {p0}, Lcom/google/rpc/ErrorInfo$Builder;->copyOnWrite()V

    .line 545
    iget-object v0, p0, Lcom/google/rpc/ErrorInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/ErrorInfo;

    invoke-static {v0}, Lcom/google/rpc/ErrorInfo;->access$200(Lcom/google/rpc/ErrorInfo;)V

    return-object p0
.end method

.method public containsMetadata(Ljava/lang/String;)Z
    .locals 1

    .line 679
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 680
    iget-object v0, p0, Lcom/google/rpc/ErrorInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/ErrorInfo;

    invoke-virtual {v0}, Lcom/google/rpc/ErrorInfo;->getMetadataMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getDomain()Ljava/lang/String;
    .locals 1

    .line 581
    iget-object v0, p0, Lcom/google/rpc/ErrorInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/ErrorInfo;

    invoke-virtual {v0}, Lcom/google/rpc/ErrorInfo;->getDomain()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDomainBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 598
    iget-object v0, p0, Lcom/google/rpc/ErrorInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/ErrorInfo;

    invoke-virtual {v0}, Lcom/google/rpc/ErrorInfo;->getDomainBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getMetadata()Ljava/util/Map;
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

    .line 716
    invoke-virtual {p0}, Lcom/google/rpc/ErrorInfo$Builder;->getMetadataMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getMetadataCount()I
    .locals 1

    .line 659
    iget-object v0, p0, Lcom/google/rpc/ErrorInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/ErrorInfo;

    invoke-virtual {v0}, Lcom/google/rpc/ErrorInfo;->getMetadataMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public getMetadataMap()Ljava/util/Map;
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

    .line 734
    iget-object v0, p0, Lcom/google/rpc/ErrorInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/ErrorInfo;

    .line 735
    invoke-virtual {v0}, Lcom/google/rpc/ErrorInfo;->getMetadataMap()Ljava/util/Map;

    move-result-object v0

    .line 734
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getMetadataOrDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 758
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 759
    iget-object v0, p0, Lcom/google/rpc/ErrorInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/ErrorInfo;

    .line 760
    invoke-virtual {v0}, Lcom/google/rpc/ErrorInfo;->getMetadataMap()Ljava/util/Map;

    move-result-object v0

    .line 761
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

.method public getMetadataOrThrow(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 781
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 782
    iget-object v0, p0, Lcom/google/rpc/ErrorInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/ErrorInfo;

    .line 783
    invoke-virtual {v0}, Lcom/google/rpc/ErrorInfo;->getMetadataMap()Ljava/util/Map;

    move-result-object v0

    .line 784
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 787
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 785
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public getReason()Ljava/lang/String;
    .locals 1

    .line 496
    iget-object v0, p0, Lcom/google/rpc/ErrorInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/ErrorInfo;

    invoke-virtual {v0}, Lcom/google/rpc/ErrorInfo;->getReason()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReasonBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 512
    iget-object v0, p0, Lcom/google/rpc/ErrorInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/ErrorInfo;

    invoke-virtual {v0}, Lcom/google/rpc/ErrorInfo;->getReasonBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public putAllMetadata(Ljava/util/Map;)Lcom/google/rpc/ErrorInfo$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/rpc/ErrorInfo$Builder;"
        }
    .end annotation

    .line 828
    invoke-virtual {p0}, Lcom/google/rpc/ErrorInfo$Builder;->copyOnWrite()V

    .line 829
    iget-object v0, p0, Lcom/google/rpc/ErrorInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/ErrorInfo;

    invoke-static {v0}, Lcom/google/rpc/ErrorInfo;->access$700(Lcom/google/rpc/ErrorInfo;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object p0
.end method

.method public putMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/google/rpc/ErrorInfo$Builder;
    .locals 1

    .line 806
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 807
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 808
    invoke-virtual {p0}, Lcom/google/rpc/ErrorInfo$Builder;->copyOnWrite()V

    .line 809
    iget-object v0, p0, Lcom/google/rpc/ErrorInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/ErrorInfo;

    invoke-static {v0}, Lcom/google/rpc/ErrorInfo;->access$700(Lcom/google/rpc/ErrorInfo;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public removeMetadata(Ljava/lang/String;)Lcom/google/rpc/ErrorInfo$Builder;
    .locals 1

    .line 705
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 706
    invoke-virtual {p0}, Lcom/google/rpc/ErrorInfo$Builder;->copyOnWrite()V

    .line 707
    iget-object v0, p0, Lcom/google/rpc/ErrorInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/ErrorInfo;

    invoke-static {v0}, Lcom/google/rpc/ErrorInfo;->access$700(Lcom/google/rpc/ErrorInfo;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setDomain(Ljava/lang/String;)Lcom/google/rpc/ErrorInfo$Builder;
    .locals 1

    .line 615
    invoke-virtual {p0}, Lcom/google/rpc/ErrorInfo$Builder;->copyOnWrite()V

    .line 616
    iget-object v0, p0, Lcom/google/rpc/ErrorInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/ErrorInfo;

    invoke-static {v0, p1}, Lcom/google/rpc/ErrorInfo;->access$400(Lcom/google/rpc/ErrorInfo;Ljava/lang/String;)V

    return-object p0
.end method

.method public setDomainBytes(Lcom/google/protobuf/ByteString;)Lcom/google/rpc/ErrorInfo$Builder;
    .locals 1

    .line 651
    invoke-virtual {p0}, Lcom/google/rpc/ErrorInfo$Builder;->copyOnWrite()V

    .line 652
    iget-object v0, p0, Lcom/google/rpc/ErrorInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/ErrorInfo;

    invoke-static {v0, p1}, Lcom/google/rpc/ErrorInfo;->access$600(Lcom/google/rpc/ErrorInfo;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setReason(Ljava/lang/String;)Lcom/google/rpc/ErrorInfo$Builder;
    .locals 1

    .line 528
    invoke-virtual {p0}, Lcom/google/rpc/ErrorInfo$Builder;->copyOnWrite()V

    .line 529
    iget-object v0, p0, Lcom/google/rpc/ErrorInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/ErrorInfo;

    invoke-static {v0, p1}, Lcom/google/rpc/ErrorInfo;->access$100(Lcom/google/rpc/ErrorInfo;Ljava/lang/String;)V

    return-object p0
.end method

.method public setReasonBytes(Lcom/google/protobuf/ByteString;)Lcom/google/rpc/ErrorInfo$Builder;
    .locals 1

    .line 562
    invoke-virtual {p0}, Lcom/google/rpc/ErrorInfo$Builder;->copyOnWrite()V

    .line 563
    iget-object v0, p0, Lcom/google/rpc/ErrorInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/ErrorInfo;

    invoke-static {v0, p1}, Lcom/google/rpc/ErrorInfo;->access$300(Lcom/google/rpc/ErrorInfo;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
