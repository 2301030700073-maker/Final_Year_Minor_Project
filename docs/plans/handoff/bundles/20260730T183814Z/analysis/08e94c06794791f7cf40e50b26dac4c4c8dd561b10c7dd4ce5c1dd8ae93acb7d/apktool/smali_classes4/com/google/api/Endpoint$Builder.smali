.class public final Lcom/google/api/Endpoint$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Endpoint.java"

# interfaces
.implements Lcom/google/api/EndpointOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/Endpoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/api/Endpoint;",
        "Lcom/google/api/Endpoint$Builder;",
        ">;",
        "Lcom/google/api/EndpointOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 671
    invoke-static {}, Lcom/google/api/Endpoint;->access$000()Lcom/google/api/Endpoint;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/api/Endpoint$1;)V
    .locals 0

    .line 664
    invoke-direct {p0}, Lcom/google/api/Endpoint$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAliases(Ljava/lang/String;)Lcom/google/api/Endpoint$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 860
    invoke-virtual {p0}, Lcom/google/api/Endpoint$Builder;->copyOnWrite()V

    .line 861
    iget-object v0, p0, Lcom/google/api/Endpoint$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Endpoint;

    invoke-static {v0, p1}, Lcom/google/api/Endpoint;->access$500(Lcom/google/api/Endpoint;Ljava/lang/String;)V

    return-object p0
.end method

.method public addAliasesBytes(Lcom/google/protobuf/ByteString;)Lcom/google/api/Endpoint$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 921
    invoke-virtual {p0}, Lcom/google/api/Endpoint$Builder;->copyOnWrite()V

    .line 922
    iget-object v0, p0, Lcom/google/api/Endpoint$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Endpoint;

    invoke-static {v0, p1}, Lcom/google/api/Endpoint;->access$800(Lcom/google/api/Endpoint;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public addAllAliases(Ljava/lang/Iterable;)Lcom/google/api/Endpoint$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/api/Endpoint$Builder;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 881
    invoke-virtual {p0}, Lcom/google/api/Endpoint$Builder;->copyOnWrite()V

    .line 882
    iget-object v0, p0, Lcom/google/api/Endpoint$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Endpoint;

    invoke-static {v0, p1}, Lcom/google/api/Endpoint;->access$600(Lcom/google/api/Endpoint;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addAllFeatures(Ljava/lang/Iterable;)Lcom/google/api/Endpoint$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/api/Endpoint$Builder;"
        }
    .end annotation

    .line 1021
    invoke-virtual {p0}, Lcom/google/api/Endpoint$Builder;->copyOnWrite()V

    .line 1022
    iget-object v0, p0, Lcom/google/api/Endpoint$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Endpoint;

    invoke-static {v0, p1}, Lcom/google/api/Endpoint;->access$1100(Lcom/google/api/Endpoint;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addFeatures(Ljava/lang/String;)Lcom/google/api/Endpoint$Builder;
    .locals 1

    .line 1006
    invoke-virtual {p0}, Lcom/google/api/Endpoint$Builder;->copyOnWrite()V

    .line 1007
    iget-object v0, p0, Lcom/google/api/Endpoint$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Endpoint;

    invoke-static {v0, p1}, Lcom/google/api/Endpoint;->access$1000(Lcom/google/api/Endpoint;Ljava/lang/String;)V

    return-object p0
.end method

.method public addFeaturesBytes(Lcom/google/protobuf/ByteString;)Lcom/google/api/Endpoint$Builder;
    .locals 1

    .line 1049
    invoke-virtual {p0}, Lcom/google/api/Endpoint$Builder;->copyOnWrite()V

    .line 1050
    iget-object v0, p0, Lcom/google/api/Endpoint$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Endpoint;

    invoke-static {v0, p1}, Lcom/google/api/Endpoint;->access$1300(Lcom/google/api/Endpoint;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public clearAliases()Lcom/google/api/Endpoint$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 900
    invoke-virtual {p0}, Lcom/google/api/Endpoint$Builder;->copyOnWrite()V

    .line 901
    iget-object v0, p0, Lcom/google/api/Endpoint$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Endpoint;

    invoke-static {v0}, Lcom/google/api/Endpoint;->access$700(Lcom/google/api/Endpoint;)V

    return-object p0
.end method

.method public clearAllowCors()Lcom/google/api/Endpoint$Builder;
    .locals 1

    .line 1193
    invoke-virtual {p0}, Lcom/google/api/Endpoint$Builder;->copyOnWrite()V

    .line 1194
    iget-object v0, p0, Lcom/google/api/Endpoint$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Endpoint;

    invoke-static {v0}, Lcom/google/api/Endpoint;->access$1800(Lcom/google/api/Endpoint;)V

    return-object p0
.end method

.method public clearFeatures()Lcom/google/api/Endpoint$Builder;
    .locals 1

    .line 1034
    invoke-virtual {p0}, Lcom/google/api/Endpoint$Builder;->copyOnWrite()V

    .line 1035
    iget-object v0, p0, Lcom/google/api/Endpoint$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Endpoint;

    invoke-static {v0}, Lcom/google/api/Endpoint;->access$1200(Lcom/google/api/Endpoint;)V

    return-object p0
.end method

.method public clearName()Lcom/google/api/Endpoint$Builder;
    .locals 1

    .line 724
    invoke-virtual {p0}, Lcom/google/api/Endpoint$Builder;->copyOnWrite()V

    .line 725
    iget-object v0, p0, Lcom/google/api/Endpoint$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Endpoint;

    invoke-static {v0}, Lcom/google/api/Endpoint;->access$200(Lcom/google/api/Endpoint;)V

    return-object p0
.end method

.method public clearTarget()Lcom/google/api/Endpoint$Builder;
    .locals 1

    .line 1119
    invoke-virtual {p0}, Lcom/google/api/Endpoint$Builder;->copyOnWrite()V

    .line 1120
    iget-object v0, p0, Lcom/google/api/Endpoint$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Endpoint;

    invoke-static {v0}, Lcom/google/api/Endpoint;->access$1500(Lcom/google/api/Endpoint;)V

    return-object p0
.end method

.method public getAliases(I)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 799
    iget-object v0, p0, Lcom/google/api/Endpoint$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Endpoint;

    invoke-virtual {v0, p1}, Lcom/google/api/Endpoint;->getAliases(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getAliasesBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 819
    iget-object v0, p0, Lcom/google/api/Endpoint$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Endpoint;

    invoke-virtual {v0, p1}, Lcom/google/api/Endpoint;->getAliasesBytes(I)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getAliasesCount()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 780
    iget-object v0, p0, Lcom/google/api/Endpoint$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Endpoint;

    invoke-virtual {v0}, Lcom/google/api/Endpoint;->getAliasesCount()I

    move-result v0

    return v0
.end method

.method public getAliasesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 761
    iget-object v0, p0, Lcom/google/api/Endpoint$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Endpoint;

    .line 762
    invoke-virtual {v0}, Lcom/google/api/Endpoint;->getAliasesList()Ljava/util/List;

    move-result-object v0

    .line 761
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAllowCors()Z
    .locals 1

    .line 1158
    iget-object v0, p0, Lcom/google/api/Endpoint$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Endpoint;

    invoke-virtual {v0}, Lcom/google/api/Endpoint;->getAllowCors()Z

    move-result v0

    return v0
.end method

.method public getFeatures(I)Ljava/lang/String;
    .locals 1

    .line 963
    iget-object v0, p0, Lcom/google/api/Endpoint$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Endpoint;

    invoke-virtual {v0, p1}, Lcom/google/api/Endpoint;->getFeatures(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getFeaturesBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1

    .line 977
    iget-object v0, p0, Lcom/google/api/Endpoint$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Endpoint;

    invoke-virtual {v0, p1}, Lcom/google/api/Endpoint;->getFeaturesBytes(I)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getFeaturesCount()I
    .locals 1

    .line 950
    iget-object v0, p0, Lcom/google/api/Endpoint$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Endpoint;

    invoke-virtual {v0}, Lcom/google/api/Endpoint;->getFeaturesCount()I

    move-result v0

    return v0
.end method

.method public getFeaturesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 937
    iget-object v0, p0, Lcom/google/api/Endpoint$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Endpoint;

    .line 938
    invoke-virtual {v0}, Lcom/google/api/Endpoint;->getFeaturesList()Ljava/util/List;

    move-result-object v0

    .line 937
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 685
    iget-object v0, p0, Lcom/google/api/Endpoint$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Endpoint;

    invoke-virtual {v0}, Lcom/google/api/Endpoint;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 698
    iget-object v0, p0, Lcom/google/api/Endpoint$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Endpoint;

    invoke-virtual {v0}, Lcom/google/api/Endpoint;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getTarget()Ljava/lang/String;
    .locals 1

    .line 1068
    iget-object v0, p0, Lcom/google/api/Endpoint$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Endpoint;

    invoke-virtual {v0}, Lcom/google/api/Endpoint;->getTarget()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTargetBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1085
    iget-object v0, p0, Lcom/google/api/Endpoint$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Endpoint;

    invoke-virtual {v0}, Lcom/google/api/Endpoint;->getTargetBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setAliases(ILjava/lang/String;)Lcom/google/api/Endpoint$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 839
    invoke-virtual {p0}, Lcom/google/api/Endpoint$Builder;->copyOnWrite()V

    .line 840
    iget-object v0, p0, Lcom/google/api/Endpoint$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Endpoint;

    invoke-static {v0, p1, p2}, Lcom/google/api/Endpoint;->access$400(Lcom/google/api/Endpoint;ILjava/lang/String;)V

    return-object p0
.end method

.method public setAllowCors(Z)Lcom/google/api/Endpoint$Builder;
    .locals 1

    .line 1175
    invoke-virtual {p0}, Lcom/google/api/Endpoint$Builder;->copyOnWrite()V

    .line 1176
    iget-object v0, p0, Lcom/google/api/Endpoint$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Endpoint;

    invoke-static {v0, p1}, Lcom/google/api/Endpoint;->access$1700(Lcom/google/api/Endpoint;Z)V

    return-object p0
.end method

.method public setFeatures(ILjava/lang/String;)Lcom/google/api/Endpoint$Builder;
    .locals 1

    .line 991
    invoke-virtual {p0}, Lcom/google/api/Endpoint$Builder;->copyOnWrite()V

    .line 992
    iget-object v0, p0, Lcom/google/api/Endpoint$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Endpoint;

    invoke-static {v0, p1, p2}, Lcom/google/api/Endpoint;->access$900(Lcom/google/api/Endpoint;ILjava/lang/String;)V

    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/api/Endpoint$Builder;
    .locals 1

    .line 711
    invoke-virtual {p0}, Lcom/google/api/Endpoint$Builder;->copyOnWrite()V

    .line 712
    iget-object v0, p0, Lcom/google/api/Endpoint$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Endpoint;

    invoke-static {v0, p1}, Lcom/google/api/Endpoint;->access$100(Lcom/google/api/Endpoint;Ljava/lang/String;)V

    return-object p0
.end method

.method public setNameBytes(Lcom/google/protobuf/ByteString;)Lcom/google/api/Endpoint$Builder;
    .locals 1

    .line 739
    invoke-virtual {p0}, Lcom/google/api/Endpoint$Builder;->copyOnWrite()V

    .line 740
    iget-object v0, p0, Lcom/google/api/Endpoint$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Endpoint;

    invoke-static {v0, p1}, Lcom/google/api/Endpoint;->access$300(Lcom/google/api/Endpoint;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setTarget(Ljava/lang/String;)Lcom/google/api/Endpoint$Builder;
    .locals 1

    .line 1102
    invoke-virtual {p0}, Lcom/google/api/Endpoint$Builder;->copyOnWrite()V

    .line 1103
    iget-object v0, p0, Lcom/google/api/Endpoint$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Endpoint;

    invoke-static {v0, p1}, Lcom/google/api/Endpoint;->access$1400(Lcom/google/api/Endpoint;Ljava/lang/String;)V

    return-object p0
.end method

.method public setTargetBytes(Lcom/google/protobuf/ByteString;)Lcom/google/api/Endpoint$Builder;
    .locals 1

    .line 1138
    invoke-virtual {p0}, Lcom/google/api/Endpoint$Builder;->copyOnWrite()V

    .line 1139
    iget-object v0, p0, Lcom/google/api/Endpoint$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Endpoint;

    invoke-static {v0, p1}, Lcom/google/api/Endpoint;->access$1600(Lcom/google/api/Endpoint;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
