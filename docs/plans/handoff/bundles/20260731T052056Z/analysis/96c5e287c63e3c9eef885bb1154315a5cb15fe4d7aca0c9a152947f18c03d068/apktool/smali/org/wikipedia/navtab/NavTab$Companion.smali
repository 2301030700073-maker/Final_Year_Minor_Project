.class public final Lorg/wikipedia/navtab/NavTab$Companion;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# direct methods
.method public static of(I)Lorg/wikipedia/navtab/NavTab;
    .locals 1

    .line 1
    invoke-static {}, Lorg/wikipedia/navtab/NavTab;->getEntries()Lkotlin/enums/EnumEntries;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lkotlin/enums/EnumEntriesList;

    .line 6
    .line 7
    invoke-virtual {v0, p0}, Lkotlin/enums/EnumEntriesList;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Lorg/wikipedia/navtab/NavTab;

    .line 12
    .line 13
    return-object p0
.end method
