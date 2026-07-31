.class public final Lcom/google/rpc/context/AttributeContext$Peer$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "AttributeContext.java"

# interfaces
.implements Lcom/google/rpc/context/AttributeContext$PeerOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/rpc/context/AttributeContext$Peer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/rpc/context/AttributeContext$Peer;",
        "Lcom/google/rpc/context/AttributeContext$Peer$Builder;",
        ">;",
        "Lcom/google/rpc/context/AttributeContext$PeerOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 669
    invoke-static {}, Lcom/google/rpc/context/AttributeContext$Peer;->access$000()Lcom/google/rpc/context/AttributeContext$Peer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/rpc/context/AttributeContext$1;)V
    .locals 0

    .line 662
    invoke-direct {p0}, Lcom/google/rpc/context/AttributeContext$Peer$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearIp()Lcom/google/rpc/context/AttributeContext$Peer$Builder;
    .locals 1

    .line 722
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Peer$Builder;->copyOnWrite()V

    .line 723
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Peer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Peer;

    invoke-static {v0}, Lcom/google/rpc/context/AttributeContext$Peer;->access$200(Lcom/google/rpc/context/AttributeContext$Peer;)V

    return-object p0
.end method

.method public clearLabels()Lcom/google/rpc/context/AttributeContext$Peer$Builder;
    .locals 1

    .line 803
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Peer$Builder;->copyOnWrite()V

    .line 804
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Peer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Peer;

    invoke-static {v0}, Lcom/google/rpc/context/AttributeContext$Peer;->access$600(Lcom/google/rpc/context/AttributeContext$Peer;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-object p0
.end method

.method public clearPort()Lcom/google/rpc/context/AttributeContext$Peer$Builder;
    .locals 1

    .line 777
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Peer$Builder;->copyOnWrite()V

    .line 778
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Peer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Peer;

    invoke-static {v0}, Lcom/google/rpc/context/AttributeContext$Peer;->access$500(Lcom/google/rpc/context/AttributeContext$Peer;)V

    return-object p0
.end method

.method public clearPrincipal()Lcom/google/rpc/context/AttributeContext$Peer$Builder;
    .locals 1

    .line 967
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Peer$Builder;->copyOnWrite()V

    .line 968
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Peer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Peer;

    invoke-static {v0}, Lcom/google/rpc/context/AttributeContext$Peer;->access$800(Lcom/google/rpc/context/AttributeContext$Peer;)V

    return-object p0
.end method

.method public clearRegionCode()Lcom/google/rpc/context/AttributeContext$Peer$Builder;
    .locals 1

    .line 1046
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Peer$Builder;->copyOnWrite()V

    .line 1047
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Peer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Peer;

    invoke-static {v0}, Lcom/google/rpc/context/AttributeContext$Peer;->access$1100(Lcom/google/rpc/context/AttributeContext$Peer;)V

    return-object p0
.end method

.method public containsLabels(Ljava/lang/String;)Z
    .locals 1

    .line 798
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 799
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Peer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Peer;

    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext$Peer;->getLabelsMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getIp()Ljava/lang/String;
    .locals 1

    .line 683
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Peer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Peer;

    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext$Peer;->getIp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIpBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 696
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Peer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Peer;

    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext$Peer;->getIpBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
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

    .line 828
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Peer$Builder;->getLabelsMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getLabelsCount()I
    .locals 1

    .line 785
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Peer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Peer;

    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext$Peer;->getLabelsMap()Ljava/util/Map;

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

    .line 839
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Peer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Peer;

    .line 840
    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext$Peer;->getLabelsMap()Ljava/util/Map;

    move-result-object v0

    .line 839
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getLabelsOrDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 856
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 857
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Peer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Peer;

    .line 858
    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext$Peer;->getLabelsMap()Ljava/util/Map;

    move-result-object v0

    .line 859
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

    .line 872
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 873
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Peer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Peer;

    .line 874
    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext$Peer;->getLabelsMap()Ljava/util/Map;

    move-result-object v0

    .line 875
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 878
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 876
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public getPort()J
    .locals 2

    .line 752
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Peer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Peer;

    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext$Peer;->getPort()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPrincipal()Ljava/lang/String;
    .locals 1

    .line 922
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Peer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Peer;

    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext$Peer;->getPrincipal()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrincipalBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 937
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Peer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Peer;

    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext$Peer;->getPrincipalBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getRegionCode()Ljava/lang/String;
    .locals 1

    .line 1001
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Peer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Peer;

    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext$Peer;->getRegionCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRegionCodeBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1016
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Peer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Peer;

    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext$Peer;->getRegionCodeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public putAllLabels(Ljava/util/Map;)Lcom/google/rpc/context/AttributeContext$Peer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/rpc/context/AttributeContext$Peer$Builder;"
        }
    .end annotation

    .line 905
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Peer$Builder;->copyOnWrite()V

    .line 906
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Peer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Peer;

    invoke-static {v0}, Lcom/google/rpc/context/AttributeContext$Peer;->access$600(Lcom/google/rpc/context/AttributeContext$Peer;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object p0
.end method

.method public putLabels(Ljava/lang/String;Ljava/lang/String;)Lcom/google/rpc/context/AttributeContext$Peer$Builder;
    .locals 1

    .line 890
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 891
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 892
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Peer$Builder;->copyOnWrite()V

    .line 893
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Peer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Peer;

    invoke-static {v0}, Lcom/google/rpc/context/AttributeContext$Peer;->access$600(Lcom/google/rpc/context/AttributeContext$Peer;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public removeLabels(Ljava/lang/String;)Lcom/google/rpc/context/AttributeContext$Peer$Builder;
    .locals 1

    .line 817
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 818
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Peer$Builder;->copyOnWrite()V

    .line 819
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Peer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Peer;

    invoke-static {v0}, Lcom/google/rpc/context/AttributeContext$Peer;->access$600(Lcom/google/rpc/context/AttributeContext$Peer;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setIp(Ljava/lang/String;)Lcom/google/rpc/context/AttributeContext$Peer$Builder;
    .locals 1

    .line 709
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Peer$Builder;->copyOnWrite()V

    .line 710
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Peer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Peer;

    invoke-static {v0, p1}, Lcom/google/rpc/context/AttributeContext$Peer;->access$100(Lcom/google/rpc/context/AttributeContext$Peer;Ljava/lang/String;)V

    return-object p0
.end method

.method public setIpBytes(Lcom/google/protobuf/ByteString;)Lcom/google/rpc/context/AttributeContext$Peer$Builder;
    .locals 1

    .line 737
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Peer$Builder;->copyOnWrite()V

    .line 738
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Peer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Peer;

    invoke-static {v0, p1}, Lcom/google/rpc/context/AttributeContext$Peer;->access$300(Lcom/google/rpc/context/AttributeContext$Peer;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setPort(J)Lcom/google/rpc/context/AttributeContext$Peer$Builder;
    .locals 1

    .line 764
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Peer$Builder;->copyOnWrite()V

    .line 765
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Peer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Peer;

    invoke-static {v0, p1, p2}, Lcom/google/rpc/context/AttributeContext$Peer;->access$400(Lcom/google/rpc/context/AttributeContext$Peer;J)V

    return-object p0
.end method

.method public setPrincipal(Ljava/lang/String;)Lcom/google/rpc/context/AttributeContext$Peer$Builder;
    .locals 1

    .line 952
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Peer$Builder;->copyOnWrite()V

    .line 953
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Peer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Peer;

    invoke-static {v0, p1}, Lcom/google/rpc/context/AttributeContext$Peer;->access$700(Lcom/google/rpc/context/AttributeContext$Peer;Ljava/lang/String;)V

    return-object p0
.end method

.method public setPrincipalBytes(Lcom/google/protobuf/ByteString;)Lcom/google/rpc/context/AttributeContext$Peer$Builder;
    .locals 1

    .line 984
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Peer$Builder;->copyOnWrite()V

    .line 985
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Peer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Peer;

    invoke-static {v0, p1}, Lcom/google/rpc/context/AttributeContext$Peer;->access$900(Lcom/google/rpc/context/AttributeContext$Peer;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setRegionCode(Ljava/lang/String;)Lcom/google/rpc/context/AttributeContext$Peer$Builder;
    .locals 1

    .line 1031
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Peer$Builder;->copyOnWrite()V

    .line 1032
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Peer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Peer;

    invoke-static {v0, p1}, Lcom/google/rpc/context/AttributeContext$Peer;->access$1000(Lcom/google/rpc/context/AttributeContext$Peer;Ljava/lang/String;)V

    return-object p0
.end method

.method public setRegionCodeBytes(Lcom/google/protobuf/ByteString;)Lcom/google/rpc/context/AttributeContext$Peer$Builder;
    .locals 1

    .line 1063
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Peer$Builder;->copyOnWrite()V

    .line 1064
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Peer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Peer;

    invoke-static {v0, p1}, Lcom/google/rpc/context/AttributeContext$Peer;->access$1200(Lcom/google/rpc/context/AttributeContext$Peer;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
