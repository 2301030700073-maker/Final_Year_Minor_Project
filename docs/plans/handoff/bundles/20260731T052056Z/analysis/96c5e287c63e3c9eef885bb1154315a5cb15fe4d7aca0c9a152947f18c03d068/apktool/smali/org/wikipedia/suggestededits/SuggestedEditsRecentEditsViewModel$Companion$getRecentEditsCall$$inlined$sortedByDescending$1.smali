.class public final Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsViewModel$Companion$getRecentEditsCall$$inlined$sortedByDescending$1;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Ljava/util/Comparator;


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p2, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$RecentChange;

    .line 2
    .line 3
    invoke-virtual {p2}, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$RecentChange;->getParsedDateTime()Lj$/time/LocalDateTime;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p1, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$RecentChange;

    .line 8
    .line 9
    invoke-virtual {p1}, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$RecentChange;->getParsedDateTime()Lj$/time/LocalDateTime;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-static {p0, p1}, Landroidx/work/Operation$State;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0
.end method
