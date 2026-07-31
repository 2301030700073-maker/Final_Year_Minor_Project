.class public final Lorg/wikipedia/page/action/PageActionItem$Companion;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# direct methods
.method public static find(I)Lorg/wikipedia/page/action/PageActionItem;
    .locals 4

    .line 1
    invoke-static {}, Lorg/wikipedia/page/action/PageActionItem;->getEntries()Lkotlin/enums/EnumEntries;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    move-object v2, v1

    .line 20
    check-cast v2, Lorg/wikipedia/page/action/PageActionItem;

    .line 21
    .line 22
    invoke-virtual {v2}, Lorg/wikipedia/page/action/PageActionItem;->getId()I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-eq p0, v3, :cond_2

    .line 27
    .line 28
    invoke-virtual {v2}, Lorg/wikipedia/page/action/PageActionItem;->getViewId()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-ne p0, v2, :cond_0

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const/4 v1, 0x0

    .line 36
    :cond_2
    :goto_0
    check-cast v1, Lorg/wikipedia/page/action/PageActionItem;

    .line 37
    .line 38
    if-nez v1, :cond_3

    .line 39
    .line 40
    invoke-static {}, Lorg/wikipedia/page/action/PageActionItem;->getEntries()Lkotlin/enums/EnumEntries;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    const/4 v0, 0x0

    .line 45
    check-cast p0, Lkotlin/enums/EnumEntriesList;

    .line 46
    .line 47
    invoke-virtual {p0, v0}, Lkotlin/enums/EnumEntriesList;->get(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    check-cast p0, Lorg/wikipedia/page/action/PageActionItem;

    .line 52
    .line 53
    return-object p0

    .line 54
    :cond_3
    return-object v1
.end method
