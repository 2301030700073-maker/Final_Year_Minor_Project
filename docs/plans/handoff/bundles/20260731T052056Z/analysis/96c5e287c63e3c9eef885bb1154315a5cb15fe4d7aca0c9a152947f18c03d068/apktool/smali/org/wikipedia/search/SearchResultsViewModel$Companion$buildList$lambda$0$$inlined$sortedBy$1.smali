.class public final Lorg/wikipedia/search/SearchResultsViewModel$Companion$buildList$lambda$0$$inlined$sortedBy$1;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/wikipedia/search/SearchResultsViewModel$Companion$buildList$lambda$0$$inlined$sortedBy$1;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    iget p0, p0, Lorg/wikipedia/search/SearchResultsViewModel$Companion$buildList$lambda$0$$inlined$sortedBy$1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p2, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$WatchlistItem;

    .line 7
    .line 8
    invoke-virtual {p2}, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$WatchlistItem;->getDate()Ljava/util/Date;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    check-cast p1, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$WatchlistItem;

    .line 13
    .line 14
    invoke-virtual {p1}, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$WatchlistItem;->getDate()Ljava/util/Date;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-static {p0, p1}, Landroidx/work/Operation$State;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    return p0

    .line 23
    :pswitch_0
    check-cast p1, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$RecentChange;

    .line 24
    .line 25
    iget-wide p0, p1, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$RecentChange;->curRev:J

    .line 26
    .line 27
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    check-cast p2, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$RecentChange;

    .line 32
    .line 33
    iget-wide p1, p2, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$RecentChange;->curRev:J

    .line 34
    .line 35
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-static {p0, p1}, Landroidx/work/Operation$State;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    return p0

    .line 44
    :pswitch_1
    check-cast p1, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    .line 45
    .line 46
    iget p0, p1, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->index:I

    .line 47
    .line 48
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    check-cast p2, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    .line 53
    .line 54
    iget p1, p2, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->index:I

    .line 55
    .line 56
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-static {p0, p1}, Landroidx/work/Operation$State;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    .line 61
    .line 62
    .line 63
    move-result p0

    .line 64
    return p0

    .line 65
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
