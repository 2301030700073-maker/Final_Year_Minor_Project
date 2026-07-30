.class public final Lcom/google/api/Distribution$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Distribution.java"

# interfaces
.implements Lcom/google/api/DistributionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/Distribution;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/api/Distribution;",
        "Lcom/google/api/Distribution$Builder;",
        ">;",
        "Lcom/google/api/DistributionOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 4334
    invoke-static {}, Lcom/google/api/Distribution;->access$5300()Lcom/google/api/Distribution;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/api/Distribution$1;)V
    .locals 0

    .line 4327
    invoke-direct {p0}, Lcom/google/api/Distribution$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllBucketCounts(Ljava/lang/Iterable;)Lcom/google/api/Distribution$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/google/api/Distribution$Builder;"
        }
    .end annotation

    .line 4808
    invoke-virtual {p0}, Lcom/google/api/Distribution$Builder;->copyOnWrite()V

    .line 4809
    iget-object v0, p0, Lcom/google/api/Distribution$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution;

    invoke-static {v0, p1}, Lcom/google/api/Distribution;->access$6800(Lcom/google/api/Distribution;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addAllExemplars(Ljava/lang/Iterable;)Lcom/google/api/Distribution$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/api/Distribution$Exemplar;",
            ">;)",
            "Lcom/google/api/Distribution$Builder;"
        }
    .end annotation

    .line 4961
    invoke-virtual {p0}, Lcom/google/api/Distribution$Builder;->copyOnWrite()V

    .line 4962
    iget-object v0, p0, Lcom/google/api/Distribution$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution;

    invoke-static {v0, p1}, Lcom/google/api/Distribution;->access$7300(Lcom/google/api/Distribution;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addBucketCounts(J)Lcom/google/api/Distribution$Builder;
    .locals 1

    .line 4779
    invoke-virtual {p0}, Lcom/google/api/Distribution$Builder;->copyOnWrite()V

    .line 4780
    iget-object v0, p0, Lcom/google/api/Distribution$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution;

    invoke-static {v0, p1, p2}, Lcom/google/api/Distribution;->access$6700(Lcom/google/api/Distribution;J)V

    return-object p0
.end method

.method public addExemplars(ILcom/google/api/Distribution$Exemplar$Builder;)Lcom/google/api/Distribution$Builder;
    .locals 1

    .line 4947
    invoke-virtual {p0}, Lcom/google/api/Distribution$Builder;->copyOnWrite()V

    .line 4948
    iget-object v0, p0, Lcom/google/api/Distribution$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution;

    .line 4949
    invoke-virtual {p2}, Lcom/google/api/Distribution$Exemplar$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/api/Distribution$Exemplar;

    .line 4948
    invoke-static {v0, p1, p2}, Lcom/google/api/Distribution;->access$7200(Lcom/google/api/Distribution;ILcom/google/api/Distribution$Exemplar;)V

    return-object p0
.end method

.method public addExemplars(ILcom/google/api/Distribution$Exemplar;)Lcom/google/api/Distribution$Builder;
    .locals 1

    .line 4921
    invoke-virtual {p0}, Lcom/google/api/Distribution$Builder;->copyOnWrite()V

    .line 4922
    iget-object v0, p0, Lcom/google/api/Distribution$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution;

    invoke-static {v0, p1, p2}, Lcom/google/api/Distribution;->access$7200(Lcom/google/api/Distribution;ILcom/google/api/Distribution$Exemplar;)V

    return-object p0
.end method

.method public addExemplars(Lcom/google/api/Distribution$Exemplar$Builder;)Lcom/google/api/Distribution$Builder;
    .locals 1

    .line 4934
    invoke-virtual {p0}, Lcom/google/api/Distribution$Builder;->copyOnWrite()V

    .line 4935
    iget-object v0, p0, Lcom/google/api/Distribution$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution;

    invoke-virtual {p1}, Lcom/google/api/Distribution$Exemplar$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/api/Distribution$Exemplar;

    invoke-static {v0, p1}, Lcom/google/api/Distribution;->access$7100(Lcom/google/api/Distribution;Lcom/google/api/Distribution$Exemplar;)V

    return-object p0
.end method

.method public addExemplars(Lcom/google/api/Distribution$Exemplar;)Lcom/google/api/Distribution$Builder;
    .locals 1

    .line 4908
    invoke-virtual {p0}, Lcom/google/api/Distribution$Builder;->copyOnWrite()V

    .line 4909
    iget-object v0, p0, Lcom/google/api/Distribution$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution;

    invoke-static {v0, p1}, Lcom/google/api/Distribution;->access$7100(Lcom/google/api/Distribution;Lcom/google/api/Distribution$Exemplar;)V

    return-object p0
.end method

.method public clearBucketCounts()Lcom/google/api/Distribution$Builder;
    .locals 1

    .line 4835
    invoke-virtual {p0}, Lcom/google/api/Distribution$Builder;->copyOnWrite()V

    .line 4836
    iget-object v0, p0, Lcom/google/api/Distribution$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution;

    invoke-static {v0}, Lcom/google/api/Distribution;->access$6900(Lcom/google/api/Distribution;)V

    return-object p0
.end method

.method public clearBucketOptions()Lcom/google/api/Distribution$Builder;
    .locals 1

    .line 4640
    invoke-virtual {p0}, Lcom/google/api/Distribution$Builder;->copyOnWrite()V

    .line 4641
    iget-object v0, p0, Lcom/google/api/Distribution$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution;

    invoke-static {v0}, Lcom/google/api/Distribution;->access$6500(Lcom/google/api/Distribution;)V

    return-object p0
.end method

.method public clearCount()Lcom/google/api/Distribution$Builder;
    .locals 1

    .line 4379
    invoke-virtual {p0}, Lcom/google/api/Distribution$Builder;->copyOnWrite()V

    .line 4380
    iget-object v0, p0, Lcom/google/api/Distribution$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution;

    invoke-static {v0}, Lcom/google/api/Distribution;->access$5500(Lcom/google/api/Distribution;)V

    return-object p0
.end method

.method public clearExemplars()Lcom/google/api/Distribution$Builder;
    .locals 1

    .line 4973
    invoke-virtual {p0}, Lcom/google/api/Distribution$Builder;->copyOnWrite()V

    .line 4974
    iget-object v0, p0, Lcom/google/api/Distribution$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution;

    invoke-static {v0}, Lcom/google/api/Distribution;->access$7400(Lcom/google/api/Distribution;)V

    return-object p0
.end method

.method public clearMean()Lcom/google/api/Distribution$Builder;
    .locals 1

    .line 4422
    invoke-virtual {p0}, Lcom/google/api/Distribution$Builder;->copyOnWrite()V

    .line 4423
    iget-object v0, p0, Lcom/google/api/Distribution$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution;

    invoke-static {v0}, Lcom/google/api/Distribution;->access$5700(Lcom/google/api/Distribution;)V

    return-object p0
.end method

.method public clearRange()Lcom/google/api/Distribution$Builder;
    .locals 1

    .line 4563
    invoke-virtual {p0}, Lcom/google/api/Distribution$Builder;->copyOnWrite()V

    .line 4564
    iget-object v0, p0, Lcom/google/api/Distribution$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution;

    invoke-static {v0}, Lcom/google/api/Distribution;->access$6200(Lcom/google/api/Distribution;)V

    return-object p0
.end method

.method public clearSumOfSquaredDeviation()Lcom/google/api/Distribution$Builder;
    .locals 1

    .line 4486
    invoke-virtual {p0}, Lcom/google/api/Distribution$Builder;->copyOnWrite()V

    .line 4487
    iget-object v0, p0, Lcom/google/api/Distribution$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution;

    invoke-static {v0}, Lcom/google/api/Distribution;->access$5900(Lcom/google/api/Distribution;)V

    return-object p0
.end method

.method public getBucketCounts(I)J
    .locals 2

    .line 4724
    iget-object v0, p0, Lcom/google/api/Distribution$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution;

    invoke-virtual {v0, p1}, Lcom/google/api/Distribution;->getBucketCounts(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getBucketCountsCount()I
    .locals 1

    .line 4697
    iget-object v0, p0, Lcom/google/api/Distribution$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution;

    invoke-virtual {v0}, Lcom/google/api/Distribution;->getBucketCountsCount()I

    move-result v0

    return v0
.end method

.method public getBucketCountsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 4670
    iget-object v0, p0, Lcom/google/api/Distribution$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution;

    .line 4671
    invoke-virtual {v0}, Lcom/google/api/Distribution;->getBucketCountsList()Ljava/util/List;

    move-result-object v0

    .line 4670
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getBucketOptions()Lcom/google/api/Distribution$BucketOptions;
    .locals 1

    .line 4590
    iget-object v0, p0, Lcom/google/api/Distribution$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution;

    invoke-virtual {v0}, Lcom/google/api/Distribution;->getBucketOptions()Lcom/google/api/Distribution$BucketOptions;

    move-result-object v0

    return-object v0
.end method

.method public getCount()J
    .locals 2

    .line 4350
    iget-object v0, p0, Lcom/google/api/Distribution$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution;

    invoke-virtual {v0}, Lcom/google/api/Distribution;->getCount()J

    move-result-wide v0

    return-wide v0
.end method

.method public getExemplars(I)Lcom/google/api/Distribution$Exemplar;
    .locals 1

    .line 4871
    iget-object v0, p0, Lcom/google/api/Distribution$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution;

    invoke-virtual {v0, p1}, Lcom/google/api/Distribution;->getExemplars(I)Lcom/google/api/Distribution$Exemplar;

    move-result-object p1

    return-object p1
.end method

.method public getExemplarsCount()I
    .locals 1

    .line 4861
    iget-object v0, p0, Lcom/google/api/Distribution$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution;

    invoke-virtual {v0}, Lcom/google/api/Distribution;->getExemplarsCount()I

    move-result v0

    return v0
.end method

.method public getExemplarsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/Distribution$Exemplar;",
            ">;"
        }
    .end annotation

    .line 4849
    iget-object v0, p0, Lcom/google/api/Distribution$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution;

    .line 4850
    invoke-virtual {v0}, Lcom/google/api/Distribution;->getExemplarsList()Ljava/util/List;

    move-result-object v0

    .line 4849
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMean()D
    .locals 2

    .line 4395
    iget-object v0, p0, Lcom/google/api/Distribution$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution;

    invoke-virtual {v0}, Lcom/google/api/Distribution;->getMean()D

    move-result-wide v0

    return-wide v0
.end method

.method public getRange()Lcom/google/api/Distribution$Range;
    .locals 1

    .line 4513
    iget-object v0, p0, Lcom/google/api/Distribution$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution;

    invoke-virtual {v0}, Lcom/google/api/Distribution;->getRange()Lcom/google/api/Distribution$Range;

    move-result-object v0

    return-object v0
.end method

.method public getSumOfSquaredDeviation()D
    .locals 2

    .line 4445
    iget-object v0, p0, Lcom/google/api/Distribution$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution;

    invoke-virtual {v0}, Lcom/google/api/Distribution;->getSumOfSquaredDeviation()D

    move-result-wide v0

    return-wide v0
.end method

.method public hasBucketOptions()Z
    .locals 1

    .line 4578
    iget-object v0, p0, Lcom/google/api/Distribution$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution;

    invoke-virtual {v0}, Lcom/google/api/Distribution;->hasBucketOptions()Z

    move-result v0

    return v0
.end method

.method public hasRange()Z
    .locals 1

    .line 4501
    iget-object v0, p0, Lcom/google/api/Distribution$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution;

    invoke-virtual {v0}, Lcom/google/api/Distribution;->hasRange()Z

    move-result v0

    return v0
.end method

.method public mergeBucketOptions(Lcom/google/api/Distribution$BucketOptions;)Lcom/google/api/Distribution$Builder;
    .locals 1

    .line 4628
    invoke-virtual {p0}, Lcom/google/api/Distribution$Builder;->copyOnWrite()V

    .line 4629
    iget-object v0, p0, Lcom/google/api/Distribution$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution;

    invoke-static {v0, p1}, Lcom/google/api/Distribution;->access$6400(Lcom/google/api/Distribution;Lcom/google/api/Distribution$BucketOptions;)V

    return-object p0
.end method

.method public mergeRange(Lcom/google/api/Distribution$Range;)Lcom/google/api/Distribution$Builder;
    .locals 1

    .line 4551
    invoke-virtual {p0}, Lcom/google/api/Distribution$Builder;->copyOnWrite()V

    .line 4552
    iget-object v0, p0, Lcom/google/api/Distribution$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution;

    invoke-static {v0, p1}, Lcom/google/api/Distribution;->access$6100(Lcom/google/api/Distribution;Lcom/google/api/Distribution$Range;)V

    return-object p0
.end method

.method public removeExemplars(I)Lcom/google/api/Distribution$Builder;
    .locals 1

    .line 4985
    invoke-virtual {p0}, Lcom/google/api/Distribution$Builder;->copyOnWrite()V

    .line 4986
    iget-object v0, p0, Lcom/google/api/Distribution$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution;

    invoke-static {v0, p1}, Lcom/google/api/Distribution;->access$7500(Lcom/google/api/Distribution;I)V

    return-object p0
.end method

.method public setBucketCounts(IJ)Lcom/google/api/Distribution$Builder;
    .locals 1

    .line 4751
    invoke-virtual {p0}, Lcom/google/api/Distribution$Builder;->copyOnWrite()V

    .line 4752
    iget-object v0, p0, Lcom/google/api/Distribution$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution;

    invoke-static {v0, p1, p2, p3}, Lcom/google/api/Distribution;->access$6600(Lcom/google/api/Distribution;IJ)V

    return-object p0
.end method

.method public setBucketOptions(Lcom/google/api/Distribution$BucketOptions$Builder;)Lcom/google/api/Distribution$Builder;
    .locals 1

    .line 4615
    invoke-virtual {p0}, Lcom/google/api/Distribution$Builder;->copyOnWrite()V

    .line 4616
    iget-object v0, p0, Lcom/google/api/Distribution$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution;

    invoke-virtual {p1}, Lcom/google/api/Distribution$BucketOptions$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/api/Distribution$BucketOptions;

    invoke-static {v0, p1}, Lcom/google/api/Distribution;->access$6300(Lcom/google/api/Distribution;Lcom/google/api/Distribution$BucketOptions;)V

    return-object p0
.end method

.method public setBucketOptions(Lcom/google/api/Distribution$BucketOptions;)Lcom/google/api/Distribution$Builder;
    .locals 1

    .line 4601
    invoke-virtual {p0}, Lcom/google/api/Distribution$Builder;->copyOnWrite()V

    .line 4602
    iget-object v0, p0, Lcom/google/api/Distribution$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution;

    invoke-static {v0, p1}, Lcom/google/api/Distribution;->access$6300(Lcom/google/api/Distribution;Lcom/google/api/Distribution$BucketOptions;)V

    return-object p0
.end method

.method public setCount(J)Lcom/google/api/Distribution$Builder;
    .locals 1

    .line 4364
    invoke-virtual {p0}, Lcom/google/api/Distribution$Builder;->copyOnWrite()V

    .line 4365
    iget-object v0, p0, Lcom/google/api/Distribution$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution;

    invoke-static {v0, p1, p2}, Lcom/google/api/Distribution;->access$5400(Lcom/google/api/Distribution;J)V

    return-object p0
.end method

.method public setExemplars(ILcom/google/api/Distribution$Exemplar$Builder;)Lcom/google/api/Distribution$Builder;
    .locals 1

    .line 4895
    invoke-virtual {p0}, Lcom/google/api/Distribution$Builder;->copyOnWrite()V

    .line 4896
    iget-object v0, p0, Lcom/google/api/Distribution$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution;

    .line 4897
    invoke-virtual {p2}, Lcom/google/api/Distribution$Exemplar$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/api/Distribution$Exemplar;

    .line 4896
    invoke-static {v0, p1, p2}, Lcom/google/api/Distribution;->access$7000(Lcom/google/api/Distribution;ILcom/google/api/Distribution$Exemplar;)V

    return-object p0
.end method

.method public setExemplars(ILcom/google/api/Distribution$Exemplar;)Lcom/google/api/Distribution$Builder;
    .locals 1

    .line 4882
    invoke-virtual {p0}, Lcom/google/api/Distribution$Builder;->copyOnWrite()V

    .line 4883
    iget-object v0, p0, Lcom/google/api/Distribution$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution;

    invoke-static {v0, p1, p2}, Lcom/google/api/Distribution;->access$7000(Lcom/google/api/Distribution;ILcom/google/api/Distribution$Exemplar;)V

    return-object p0
.end method

.method public setMean(D)Lcom/google/api/Distribution$Builder;
    .locals 1

    .line 4408
    invoke-virtual {p0}, Lcom/google/api/Distribution$Builder;->copyOnWrite()V

    .line 4409
    iget-object v0, p0, Lcom/google/api/Distribution$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution;

    invoke-static {v0, p1, p2}, Lcom/google/api/Distribution;->access$5600(Lcom/google/api/Distribution;D)V

    return-object p0
.end method

.method public setRange(Lcom/google/api/Distribution$Range$Builder;)Lcom/google/api/Distribution$Builder;
    .locals 1

    .line 4538
    invoke-virtual {p0}, Lcom/google/api/Distribution$Builder;->copyOnWrite()V

    .line 4539
    iget-object v0, p0, Lcom/google/api/Distribution$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution;

    invoke-virtual {p1}, Lcom/google/api/Distribution$Range$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/api/Distribution$Range;

    invoke-static {v0, p1}, Lcom/google/api/Distribution;->access$6000(Lcom/google/api/Distribution;Lcom/google/api/Distribution$Range;)V

    return-object p0
.end method

.method public setRange(Lcom/google/api/Distribution$Range;)Lcom/google/api/Distribution$Builder;
    .locals 1

    .line 4524
    invoke-virtual {p0}, Lcom/google/api/Distribution$Builder;->copyOnWrite()V

    .line 4525
    iget-object v0, p0, Lcom/google/api/Distribution$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution;

    invoke-static {v0, p1}, Lcom/google/api/Distribution;->access$6000(Lcom/google/api/Distribution;Lcom/google/api/Distribution$Range;)V

    return-object p0
.end method

.method public setSumOfSquaredDeviation(D)Lcom/google/api/Distribution$Builder;
    .locals 1

    .line 4465
    invoke-virtual {p0}, Lcom/google/api/Distribution$Builder;->copyOnWrite()V

    .line 4466
    iget-object v0, p0, Lcom/google/api/Distribution$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution;

    invoke-static {v0, p1, p2}, Lcom/google/api/Distribution;->access$5800(Lcom/google/api/Distribution;D)V

    return-object p0
.end method
