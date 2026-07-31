.class public abstract Lorg/schabi/newpipe/extractor/InfoItemsCollector;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lorg/schabi/newpipe/extractor/Collector;


# instance fields
.field public final comparator:Ljava/util/Comparator;

.field public final errors:Ljava/util/ArrayList;

.field public final itemList:Ljava/util/ArrayList;

.field public final serviceId:I


# direct methods
.method public constructor <init>(ILjava/util/Comparator;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->itemList:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->errors:Ljava/util/ArrayList;

    .line 17
    .line 18
    iput p1, p0, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->serviceId:I

    .line 19
    .line 20
    iput-object p2, p0, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->comparator:Ljava/util/Comparator;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final addError(Ljava/lang/Exception;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->errors:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public commit(Lorg/schabi/newpipe/extractor/InfoItemExtractor;)V
    .locals 1

    .line 1
    :try_start_0
    invoke-interface {p0, p1}, Lorg/schabi/newpipe/extractor/Collector;->extract(Lorg/schabi/newpipe/extractor/InfoItemExtractor;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lorg/schabi/newpipe/extractor/InfoItem;

    .line 6
    .line 7
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->itemList:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/schabi/newpipe/extractor/exceptions/FoundAdException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/schabi/newpipe/extractor/exceptions/ParsingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :catch_0
    move-exception p1

    .line 14
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->addError(Ljava/lang/Exception;)V

    .line 15
    .line 16
    .line 17
    :catch_1
    return-void
.end method

.method public getErrors()Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->errors:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-static {p0}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final getItems()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->itemList:Ljava/util/ArrayList;

    .line 2
    .line 3
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->comparator:Ljava/util/Comparator;

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-static {v0, p0}, Lj$/util/List$-EL;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method
