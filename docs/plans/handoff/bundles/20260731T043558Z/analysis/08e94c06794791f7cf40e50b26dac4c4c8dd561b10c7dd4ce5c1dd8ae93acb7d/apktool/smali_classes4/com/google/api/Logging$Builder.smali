.class public final Lcom/google/api/Logging$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Logging.java"

# interfaces
.implements Lcom/google/api/LoggingOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/Logging;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/api/Logging;",
        "Lcom/google/api/Logging$Builder;",
        ">;",
        "Lcom/google/api/LoggingOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1249
    invoke-static {}, Lcom/google/api/Logging;->access$1000()Lcom/google/api/Logging;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/api/Logging$1;)V
    .locals 0

    .line 1242
    invoke-direct {p0}, Lcom/google/api/Logging$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllConsumerDestinations(Ljava/lang/Iterable;)Lcom/google/api/Logging$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/api/Logging$LoggingDestination;",
            ">;)",
            "Lcom/google/api/Logging$Builder;"
        }
    .end annotation

    .line 1590
    invoke-virtual {p0}, Lcom/google/api/Logging$Builder;->copyOnWrite()V

    .line 1591
    iget-object v0, p0, Lcom/google/api/Logging$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Logging;

    invoke-static {v0, p1}, Lcom/google/api/Logging;->access$2000(Lcom/google/api/Logging;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addAllProducerDestinations(Ljava/lang/Iterable;)Lcom/google/api/Logging$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/api/Logging$LoggingDestination;",
            ">;)",
            "Lcom/google/api/Logging$Builder;"
        }
    .end annotation

    .line 1404
    invoke-virtual {p0}, Lcom/google/api/Logging$Builder;->copyOnWrite()V

    .line 1405
    iget-object v0, p0, Lcom/google/api/Logging$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Logging;

    invoke-static {v0, p1}, Lcom/google/api/Logging;->access$1400(Lcom/google/api/Logging;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addConsumerDestinations(ILcom/google/api/Logging$LoggingDestination$Builder;)Lcom/google/api/Logging$Builder;
    .locals 1

    .line 1573
    invoke-virtual {p0}, Lcom/google/api/Logging$Builder;->copyOnWrite()V

    .line 1574
    iget-object v0, p0, Lcom/google/api/Logging$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Logging;

    .line 1575
    invoke-virtual {p2}, Lcom/google/api/Logging$LoggingDestination$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/api/Logging$LoggingDestination;

    .line 1574
    invoke-static {v0, p1, p2}, Lcom/google/api/Logging;->access$1900(Lcom/google/api/Logging;ILcom/google/api/Logging$LoggingDestination;)V

    return-object p0
.end method

.method public addConsumerDestinations(ILcom/google/api/Logging$LoggingDestination;)Lcom/google/api/Logging$Builder;
    .locals 1

    .line 1541
    invoke-virtual {p0}, Lcom/google/api/Logging$Builder;->copyOnWrite()V

    .line 1542
    iget-object v0, p0, Lcom/google/api/Logging$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Logging;

    invoke-static {v0, p1, p2}, Lcom/google/api/Logging;->access$1900(Lcom/google/api/Logging;ILcom/google/api/Logging$LoggingDestination;)V

    return-object p0
.end method

.method public addConsumerDestinations(Lcom/google/api/Logging$LoggingDestination$Builder;)Lcom/google/api/Logging$Builder;
    .locals 1

    .line 1557
    invoke-virtual {p0}, Lcom/google/api/Logging$Builder;->copyOnWrite()V

    .line 1558
    iget-object v0, p0, Lcom/google/api/Logging$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Logging;

    invoke-virtual {p1}, Lcom/google/api/Logging$LoggingDestination$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/api/Logging$LoggingDestination;

    invoke-static {v0, p1}, Lcom/google/api/Logging;->access$1800(Lcom/google/api/Logging;Lcom/google/api/Logging$LoggingDestination;)V

    return-object p0
.end method

.method public addConsumerDestinations(Lcom/google/api/Logging$LoggingDestination;)Lcom/google/api/Logging$Builder;
    .locals 1

    .line 1525
    invoke-virtual {p0}, Lcom/google/api/Logging$Builder;->copyOnWrite()V

    .line 1526
    iget-object v0, p0, Lcom/google/api/Logging$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Logging;

    invoke-static {v0, p1}, Lcom/google/api/Logging;->access$1800(Lcom/google/api/Logging;Lcom/google/api/Logging$LoggingDestination;)V

    return-object p0
.end method

.method public addProducerDestinations(ILcom/google/api/Logging$LoggingDestination$Builder;)Lcom/google/api/Logging$Builder;
    .locals 1

    .line 1387
    invoke-virtual {p0}, Lcom/google/api/Logging$Builder;->copyOnWrite()V

    .line 1388
    iget-object v0, p0, Lcom/google/api/Logging$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Logging;

    .line 1389
    invoke-virtual {p2}, Lcom/google/api/Logging$LoggingDestination$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/api/Logging$LoggingDestination;

    .line 1388
    invoke-static {v0, p1, p2}, Lcom/google/api/Logging;->access$1300(Lcom/google/api/Logging;ILcom/google/api/Logging$LoggingDestination;)V

    return-object p0
.end method

.method public addProducerDestinations(ILcom/google/api/Logging$LoggingDestination;)Lcom/google/api/Logging$Builder;
    .locals 1

    .line 1355
    invoke-virtual {p0}, Lcom/google/api/Logging$Builder;->copyOnWrite()V

    .line 1356
    iget-object v0, p0, Lcom/google/api/Logging$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Logging;

    invoke-static {v0, p1, p2}, Lcom/google/api/Logging;->access$1300(Lcom/google/api/Logging;ILcom/google/api/Logging$LoggingDestination;)V

    return-object p0
.end method

.method public addProducerDestinations(Lcom/google/api/Logging$LoggingDestination$Builder;)Lcom/google/api/Logging$Builder;
    .locals 1

    .line 1371
    invoke-virtual {p0}, Lcom/google/api/Logging$Builder;->copyOnWrite()V

    .line 1372
    iget-object v0, p0, Lcom/google/api/Logging$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Logging;

    invoke-virtual {p1}, Lcom/google/api/Logging$LoggingDestination$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/api/Logging$LoggingDestination;

    invoke-static {v0, p1}, Lcom/google/api/Logging;->access$1200(Lcom/google/api/Logging;Lcom/google/api/Logging$LoggingDestination;)V

    return-object p0
.end method

.method public addProducerDestinations(Lcom/google/api/Logging$LoggingDestination;)Lcom/google/api/Logging$Builder;
    .locals 1

    .line 1339
    invoke-virtual {p0}, Lcom/google/api/Logging$Builder;->copyOnWrite()V

    .line 1340
    iget-object v0, p0, Lcom/google/api/Logging$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Logging;

    invoke-static {v0, p1}, Lcom/google/api/Logging;->access$1200(Lcom/google/api/Logging;Lcom/google/api/Logging$LoggingDestination;)V

    return-object p0
.end method

.method public clearConsumerDestinations()Lcom/google/api/Logging$Builder;
    .locals 1

    .line 1605
    invoke-virtual {p0}, Lcom/google/api/Logging$Builder;->copyOnWrite()V

    .line 1606
    iget-object v0, p0, Lcom/google/api/Logging$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Logging;

    invoke-static {v0}, Lcom/google/api/Logging;->access$2100(Lcom/google/api/Logging;)V

    return-object p0
.end method

.method public clearProducerDestinations()Lcom/google/api/Logging$Builder;
    .locals 1

    .line 1419
    invoke-virtual {p0}, Lcom/google/api/Logging$Builder;->copyOnWrite()V

    .line 1420
    iget-object v0, p0, Lcom/google/api/Logging$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Logging;

    invoke-static {v0}, Lcom/google/api/Logging;->access$1500(Lcom/google/api/Logging;)V

    return-object p0
.end method

.method public getConsumerDestinations(I)Lcom/google/api/Logging$LoggingDestination;
    .locals 1

    .line 1479
    iget-object v0, p0, Lcom/google/api/Logging$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Logging;

    invoke-virtual {v0, p1}, Lcom/google/api/Logging;->getConsumerDestinations(I)Lcom/google/api/Logging$LoggingDestination;

    move-result-object p1

    return-object p1
.end method

.method public getConsumerDestinationsCount()I
    .locals 1

    .line 1466
    iget-object v0, p0, Lcom/google/api/Logging$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Logging;

    invoke-virtual {v0}, Lcom/google/api/Logging;->getConsumerDestinationsCount()I

    move-result v0

    return v0
.end method

.method public getConsumerDestinationsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/Logging$LoggingDestination;",
            ">;"
        }
    .end annotation

    .line 1451
    iget-object v0, p0, Lcom/google/api/Logging$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Logging;

    .line 1452
    invoke-virtual {v0}, Lcom/google/api/Logging;->getConsumerDestinationsList()Ljava/util/List;

    move-result-object v0

    .line 1451
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getProducerDestinations(I)Lcom/google/api/Logging$LoggingDestination;
    .locals 1

    .line 1293
    iget-object v0, p0, Lcom/google/api/Logging$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Logging;

    invoke-virtual {v0, p1}, Lcom/google/api/Logging;->getProducerDestinations(I)Lcom/google/api/Logging$LoggingDestination;

    move-result-object p1

    return-object p1
.end method

.method public getProducerDestinationsCount()I
    .locals 1

    .line 1280
    iget-object v0, p0, Lcom/google/api/Logging$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Logging;

    invoke-virtual {v0}, Lcom/google/api/Logging;->getProducerDestinationsCount()I

    move-result v0

    return v0
.end method

.method public getProducerDestinationsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/Logging$LoggingDestination;",
            ">;"
        }
    .end annotation

    .line 1265
    iget-object v0, p0, Lcom/google/api/Logging$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Logging;

    .line 1266
    invoke-virtual {v0}, Lcom/google/api/Logging;->getProducerDestinationsList()Ljava/util/List;

    move-result-object v0

    .line 1265
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public removeConsumerDestinations(I)Lcom/google/api/Logging$Builder;
    .locals 1

    .line 1620
    invoke-virtual {p0}, Lcom/google/api/Logging$Builder;->copyOnWrite()V

    .line 1621
    iget-object v0, p0, Lcom/google/api/Logging$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Logging;

    invoke-static {v0, p1}, Lcom/google/api/Logging;->access$2200(Lcom/google/api/Logging;I)V

    return-object p0
.end method

.method public removeProducerDestinations(I)Lcom/google/api/Logging$Builder;
    .locals 1

    .line 1434
    invoke-virtual {p0}, Lcom/google/api/Logging$Builder;->copyOnWrite()V

    .line 1435
    iget-object v0, p0, Lcom/google/api/Logging$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Logging;

    invoke-static {v0, p1}, Lcom/google/api/Logging;->access$1600(Lcom/google/api/Logging;I)V

    return-object p0
.end method

.method public setConsumerDestinations(ILcom/google/api/Logging$LoggingDestination$Builder;)Lcom/google/api/Logging$Builder;
    .locals 1

    .line 1509
    invoke-virtual {p0}, Lcom/google/api/Logging$Builder;->copyOnWrite()V

    .line 1510
    iget-object v0, p0, Lcom/google/api/Logging$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Logging;

    .line 1511
    invoke-virtual {p2}, Lcom/google/api/Logging$LoggingDestination$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/api/Logging$LoggingDestination;

    .line 1510
    invoke-static {v0, p1, p2}, Lcom/google/api/Logging;->access$1700(Lcom/google/api/Logging;ILcom/google/api/Logging$LoggingDestination;)V

    return-object p0
.end method

.method public setConsumerDestinations(ILcom/google/api/Logging$LoggingDestination;)Lcom/google/api/Logging$Builder;
    .locals 1

    .line 1493
    invoke-virtual {p0}, Lcom/google/api/Logging$Builder;->copyOnWrite()V

    .line 1494
    iget-object v0, p0, Lcom/google/api/Logging$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Logging;

    invoke-static {v0, p1, p2}, Lcom/google/api/Logging;->access$1700(Lcom/google/api/Logging;ILcom/google/api/Logging$LoggingDestination;)V

    return-object p0
.end method

.method public setProducerDestinations(ILcom/google/api/Logging$LoggingDestination$Builder;)Lcom/google/api/Logging$Builder;
    .locals 1

    .line 1323
    invoke-virtual {p0}, Lcom/google/api/Logging$Builder;->copyOnWrite()V

    .line 1324
    iget-object v0, p0, Lcom/google/api/Logging$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Logging;

    .line 1325
    invoke-virtual {p2}, Lcom/google/api/Logging$LoggingDestination$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/api/Logging$LoggingDestination;

    .line 1324
    invoke-static {v0, p1, p2}, Lcom/google/api/Logging;->access$1100(Lcom/google/api/Logging;ILcom/google/api/Logging$LoggingDestination;)V

    return-object p0
.end method

.method public setProducerDestinations(ILcom/google/api/Logging$LoggingDestination;)Lcom/google/api/Logging$Builder;
    .locals 1

    .line 1307
    invoke-virtual {p0}, Lcom/google/api/Logging$Builder;->copyOnWrite()V

    .line 1308
    iget-object v0, p0, Lcom/google/api/Logging$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Logging;

    invoke-static {v0, p1, p2}, Lcom/google/api/Logging;->access$1100(Lcom/google/api/Logging;ILcom/google/api/Logging$LoggingDestination;)V

    return-object p0
.end method
