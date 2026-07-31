.class public final Lorg/wikipedia/readinglist/ReadingListsReceiveHelper$receiveReadingLists$$inlined$sortBy$1;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Ljava/util/Comparator;


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 2
    .line 3
    iget-object p0, p1, Lorg/wikipedia/readinglist/database/ReadingListPage;->apiTitle:Ljava/lang/String;

    .line 4
    .line 5
    check-cast p2, Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 6
    .line 7
    iget-object p1, p2, Lorg/wikipedia/readinglist/database/ReadingListPage;->apiTitle:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {p0, p1}, Landroidx/work/Operation$State;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method
