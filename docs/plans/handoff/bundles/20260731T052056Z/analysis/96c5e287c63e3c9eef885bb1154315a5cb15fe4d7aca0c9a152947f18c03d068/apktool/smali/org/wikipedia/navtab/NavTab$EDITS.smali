.class public final Lorg/wikipedia/navtab/NavTab$EDITS;
.super Lorg/wikipedia/navtab/NavTab;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# virtual methods
.method public final newInstance()Landroidx/fragment/app/Fragment;
    .locals 1

    .line 1
    new-instance p0, Lorg/wikipedia/activitytab/ActivityTabFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Lorg/wikipedia/activitytab/ActivityTabFragment;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v0, Landroid/os/Bundle;

    .line 7
    .line 8
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 12
    .line 13
    .line 14
    return-object p0
.end method
