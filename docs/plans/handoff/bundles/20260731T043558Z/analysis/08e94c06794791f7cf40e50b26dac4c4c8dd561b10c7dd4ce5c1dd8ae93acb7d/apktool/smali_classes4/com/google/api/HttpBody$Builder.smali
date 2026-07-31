.class public final Lcom/google/api/HttpBody$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "HttpBody.java"

# interfaces
.implements Lcom/google/api/HttpBodyOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/HttpBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/api/HttpBody;",
        "Lcom/google/api/HttpBody$Builder;",
        ">;",
        "Lcom/google/api/HttpBodyOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 452
    invoke-static {}, Lcom/google/api/HttpBody;->access$000()Lcom/google/api/HttpBody;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/api/HttpBody$1;)V
    .locals 0

    .line 445
    invoke-direct {p0}, Lcom/google/api/HttpBody$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllExtensions(Ljava/lang/Iterable;)Lcom/google/api/HttpBody$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/protobuf/Any;",
            ">;)",
            "Lcom/google/api/HttpBody$Builder;"
        }
    .end annotation

    .line 696
    invoke-virtual {p0}, Lcom/google/api/HttpBody$Builder;->copyOnWrite()V

    .line 697
    iget-object v0, p0, Lcom/google/api/HttpBody$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/HttpBody;

    invoke-static {v0, p1}, Lcom/google/api/HttpBody;->access$900(Lcom/google/api/HttpBody;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addExtensions(ILcom/google/protobuf/Any$Builder;)Lcom/google/api/HttpBody$Builder;
    .locals 1

    .line 681
    invoke-virtual {p0}, Lcom/google/api/HttpBody$Builder;->copyOnWrite()V

    .line 682
    iget-object v0, p0, Lcom/google/api/HttpBody$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/HttpBody;

    .line 683
    invoke-virtual {p2}, Lcom/google/protobuf/Any$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/protobuf/Any;

    .line 682
    invoke-static {v0, p1, p2}, Lcom/google/api/HttpBody;->access$800(Lcom/google/api/HttpBody;ILcom/google/protobuf/Any;)V

    return-object p0
.end method

.method public addExtensions(ILcom/google/protobuf/Any;)Lcom/google/api/HttpBody$Builder;
    .locals 1

    .line 653
    invoke-virtual {p0}, Lcom/google/api/HttpBody$Builder;->copyOnWrite()V

    .line 654
    iget-object v0, p0, Lcom/google/api/HttpBody$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/HttpBody;

    invoke-static {v0, p1, p2}, Lcom/google/api/HttpBody;->access$800(Lcom/google/api/HttpBody;ILcom/google/protobuf/Any;)V

    return-object p0
.end method

.method public addExtensions(Lcom/google/protobuf/Any$Builder;)Lcom/google/api/HttpBody$Builder;
    .locals 1

    .line 667
    invoke-virtual {p0}, Lcom/google/api/HttpBody$Builder;->copyOnWrite()V

    .line 668
    iget-object v0, p0, Lcom/google/api/HttpBody$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/HttpBody;

    invoke-virtual {p1}, Lcom/google/protobuf/Any$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Any;

    invoke-static {v0, p1}, Lcom/google/api/HttpBody;->access$700(Lcom/google/api/HttpBody;Lcom/google/protobuf/Any;)V

    return-object p0
.end method

.method public addExtensions(Lcom/google/protobuf/Any;)Lcom/google/api/HttpBody$Builder;
    .locals 1

    .line 639
    invoke-virtual {p0}, Lcom/google/api/HttpBody$Builder;->copyOnWrite()V

    .line 640
    iget-object v0, p0, Lcom/google/api/HttpBody$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/HttpBody;

    invoke-static {v0, p1}, Lcom/google/api/HttpBody;->access$700(Lcom/google/api/HttpBody;Lcom/google/protobuf/Any;)V

    return-object p0
.end method

.method public clearContentType()Lcom/google/api/HttpBody$Builder;
    .locals 1

    .line 505
    invoke-virtual {p0}, Lcom/google/api/HttpBody$Builder;->copyOnWrite()V

    .line 506
    iget-object v0, p0, Lcom/google/api/HttpBody$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/HttpBody;

    invoke-static {v0}, Lcom/google/api/HttpBody;->access$200(Lcom/google/api/HttpBody;)V

    return-object p0
.end method

.method public clearData()Lcom/google/api/HttpBody$Builder;
    .locals 1

    .line 560
    invoke-virtual {p0}, Lcom/google/api/HttpBody$Builder;->copyOnWrite()V

    .line 561
    iget-object v0, p0, Lcom/google/api/HttpBody$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/HttpBody;

    invoke-static {v0}, Lcom/google/api/HttpBody;->access$500(Lcom/google/api/HttpBody;)V

    return-object p0
.end method

.method public clearExtensions()Lcom/google/api/HttpBody$Builder;
    .locals 1

    .line 709
    invoke-virtual {p0}, Lcom/google/api/HttpBody$Builder;->copyOnWrite()V

    .line 710
    iget-object v0, p0, Lcom/google/api/HttpBody$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/HttpBody;

    invoke-static {v0}, Lcom/google/api/HttpBody;->access$1000(Lcom/google/api/HttpBody;)V

    return-object p0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .line 466
    iget-object v0, p0, Lcom/google/api/HttpBody$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/HttpBody;

    invoke-virtual {v0}, Lcom/google/api/HttpBody;->getContentType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentTypeBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 479
    iget-object v0, p0, Lcom/google/api/HttpBody$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/HttpBody;

    invoke-virtual {v0}, Lcom/google/api/HttpBody;->getContentTypeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getData()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 535
    iget-object v0, p0, Lcom/google/api/HttpBody$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/HttpBody;

    invoke-virtual {v0}, Lcom/google/api/HttpBody;->getData()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getExtensions(I)Lcom/google/protobuf/Any;
    .locals 1

    .line 599
    iget-object v0, p0, Lcom/google/api/HttpBody$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/HttpBody;

    invoke-virtual {v0, p1}, Lcom/google/api/HttpBody;->getExtensions(I)Lcom/google/protobuf/Any;

    move-result-object p1

    return-object p1
.end method

.method public getExtensionsCount()I
    .locals 1

    .line 588
    iget-object v0, p0, Lcom/google/api/HttpBody$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/HttpBody;

    invoke-virtual {v0}, Lcom/google/api/HttpBody;->getExtensionsCount()I

    move-result v0

    return v0
.end method

.method public getExtensionsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/Any;",
            ">;"
        }
    .end annotation

    .line 575
    iget-object v0, p0, Lcom/google/api/HttpBody$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/HttpBody;

    .line 576
    invoke-virtual {v0}, Lcom/google/api/HttpBody;->getExtensionsList()Ljava/util/List;

    move-result-object v0

    .line 575
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public removeExtensions(I)Lcom/google/api/HttpBody$Builder;
    .locals 1

    .line 722
    invoke-virtual {p0}, Lcom/google/api/HttpBody$Builder;->copyOnWrite()V

    .line 723
    iget-object v0, p0, Lcom/google/api/HttpBody$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/HttpBody;

    invoke-static {v0, p1}, Lcom/google/api/HttpBody;->access$1100(Lcom/google/api/HttpBody;I)V

    return-object p0
.end method

.method public setContentType(Ljava/lang/String;)Lcom/google/api/HttpBody$Builder;
    .locals 1

    .line 492
    invoke-virtual {p0}, Lcom/google/api/HttpBody$Builder;->copyOnWrite()V

    .line 493
    iget-object v0, p0, Lcom/google/api/HttpBody$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/HttpBody;

    invoke-static {v0, p1}, Lcom/google/api/HttpBody;->access$100(Lcom/google/api/HttpBody;Ljava/lang/String;)V

    return-object p0
.end method

.method public setContentTypeBytes(Lcom/google/protobuf/ByteString;)Lcom/google/api/HttpBody$Builder;
    .locals 1

    .line 520
    invoke-virtual {p0}, Lcom/google/api/HttpBody$Builder;->copyOnWrite()V

    .line 521
    iget-object v0, p0, Lcom/google/api/HttpBody$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/HttpBody;

    invoke-static {v0, p1}, Lcom/google/api/HttpBody;->access$300(Lcom/google/api/HttpBody;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setData(Lcom/google/protobuf/ByteString;)Lcom/google/api/HttpBody$Builder;
    .locals 1

    .line 547
    invoke-virtual {p0}, Lcom/google/api/HttpBody$Builder;->copyOnWrite()V

    .line 548
    iget-object v0, p0, Lcom/google/api/HttpBody$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/HttpBody;

    invoke-static {v0, p1}, Lcom/google/api/HttpBody;->access$400(Lcom/google/api/HttpBody;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setExtensions(ILcom/google/protobuf/Any$Builder;)Lcom/google/api/HttpBody$Builder;
    .locals 1

    .line 625
    invoke-virtual {p0}, Lcom/google/api/HttpBody$Builder;->copyOnWrite()V

    .line 626
    iget-object v0, p0, Lcom/google/api/HttpBody$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/HttpBody;

    .line 627
    invoke-virtual {p2}, Lcom/google/protobuf/Any$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/protobuf/Any;

    .line 626
    invoke-static {v0, p1, p2}, Lcom/google/api/HttpBody;->access$600(Lcom/google/api/HttpBody;ILcom/google/protobuf/Any;)V

    return-object p0
.end method

.method public setExtensions(ILcom/google/protobuf/Any;)Lcom/google/api/HttpBody$Builder;
    .locals 1

    .line 611
    invoke-virtual {p0}, Lcom/google/api/HttpBody$Builder;->copyOnWrite()V

    .line 612
    iget-object v0, p0, Lcom/google/api/HttpBody$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/HttpBody;

    invoke-static {v0, p1, p2}, Lcom/google/api/HttpBody;->access$600(Lcom/google/api/HttpBody;ILcom/google/protobuf/Any;)V

    return-object p0
.end method
