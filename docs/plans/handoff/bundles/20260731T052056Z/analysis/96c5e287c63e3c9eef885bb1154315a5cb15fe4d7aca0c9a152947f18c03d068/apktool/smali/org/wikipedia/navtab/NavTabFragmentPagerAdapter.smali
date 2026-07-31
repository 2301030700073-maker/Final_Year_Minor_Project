.class public final Lorg/wikipedia/navtab/NavTabFragmentPagerAdapter;
.super Lorg/wikipedia/views/PositionAwareFragmentStateAdapter;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# virtual methods
.method public final createFragment(I)Landroidx/fragment/app/Fragment;
    .locals 0

    .line 1
    sget-object p0, Lorg/wikipedia/navtab/NavTab;->Companion:Lorg/wikipedia/navtab/NavTab$Companion;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lorg/wikipedia/navtab/NavTab$Companion;->of(I)Lorg/wikipedia/navtab/NavTab;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Lorg/wikipedia/navtab/NavTab;->newInstance()Landroidx/fragment/app/Fragment;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method

.method public final getItemCount()I
    .locals 0

    .line 1
    invoke-static {}, Lorg/wikipedia/navtab/NavTab;->getEntries()Lkotlin/enums/EnumEntries;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lkotlin/collections/AbstractCollection;

    .line 6
    .line 7
    invoke-virtual {p0}, Lkotlin/collections/AbstractCollection;->getSize()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method
