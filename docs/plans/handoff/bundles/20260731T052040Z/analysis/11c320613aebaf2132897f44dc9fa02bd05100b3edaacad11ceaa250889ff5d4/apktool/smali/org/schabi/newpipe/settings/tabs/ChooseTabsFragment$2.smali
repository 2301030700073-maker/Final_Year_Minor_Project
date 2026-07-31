.class public final Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$2;
.super Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Landroidx/fragment/app/Fragment;


# direct methods
.method public synthetic constructor <init>(Landroidx/fragment/app/Fragment;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$2;->this$0:Landroidx/fragment/app/Fragment;

    .line 4
    .line 5
    const/4 p1, 0x3

    .line 6
    const/16 p2, 0x30

    .line 7
    .line 8
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;-><init>(II)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>(Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;I)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$2;->$r8$classId:I

    .line 13
    iput-object p1, p0, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$2;->this$0:Landroidx/fragment/app/Fragment;

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;-><init>(II)V

    return-void
.end method

.method public constructor <init>(Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialog;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$2;->$r8$classId:I

    iput-object p1, p0, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$2;->this$0:Landroidx/fragment/app/Fragment;

    const/4 p1, 0x0

    .line 12
    invoke-direct {p0, p1, p1}, Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;-><init>(II)V

    return-void
.end method

.method private final onSwiped$org$schabi$newpipe$local$playlist$LocalPlaylistFragment$3(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$2;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :pswitch_0
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 11
    .line 12
    .line 13
    iget-object p0, p0, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$2;->this$0:Landroidx/fragment/app/Fragment;

    .line 14
    .line 15
    check-cast p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;

    .line 16
    .line 17
    invoke-virtual {p0}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->saveImmediate()V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public getDragDirs(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I
    .locals 1

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$2;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;->getDragDirs(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0

    .line 11
    :pswitch_0
    check-cast p1, Lcom/xwray/groupie/GroupieViewHolder;

    .line 12
    .line 13
    iget-object p0, p1, Lcom/xwray/groupie/GroupieViewHolder;->item:Lcom/xwray/groupie/Item;

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/xwray/groupie/Item;->getDragDirs()I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    return p0

    .line 20
    nop

    .line 21
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public getSwipeDirs(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I
    .locals 1

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$2;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;->getSwipeDirs(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0

    .line 11
    :pswitch_0
    check-cast p1, Lcom/xwray/groupie/GroupieViewHolder;

    .line 12
    .line 13
    iget-object p0, p1, Lcom/xwray/groupie/GroupieViewHolder;->item:Lcom/xwray/groupie/Item;

    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    const/4 p0, 0x0

    .line 19
    return p0

    .line 20
    nop

    .line 21
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public interpolateOutOfBoundsScroll(Landroidx/recyclerview/widget/RecyclerView;IIIJ)I
    .locals 1

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$2;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    :pswitch_0
    invoke-super/range {p0 .. p6}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->interpolateOutOfBoundsScroll(Landroidx/recyclerview/widget/RecyclerView;IIIJ)I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0

    .line 11
    :pswitch_1
    invoke-super/range {p0 .. p6}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->interpolateOutOfBoundsScroll(Landroidx/recyclerview/widget/RecyclerView;IIIJ)I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    const/16 p1, 0xc

    .line 16
    .line 17
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    int-to-float p1, p3

    .line 26
    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    :goto_0
    float-to-int p1, p1

    .line 31
    mul-int/2addr p0, p1

    .line 32
    return p0

    .line 33
    :pswitch_2
    invoke-super/range {p0 .. p6}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->interpolateOutOfBoundsScroll(Landroidx/recyclerview/widget/RecyclerView;IIIJ)I

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    const/16 p1, 0xc

    .line 38
    .line 39
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    int-to-float p1, p3

    .line 48
    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    goto :goto_0

    .line 53
    :pswitch_3
    invoke-super/range {p0 .. p6}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->interpolateOutOfBoundsScroll(Landroidx/recyclerview/widget/RecyclerView;IIIJ)I

    .line 54
    .line 55
    .line 56
    move-result p0

    .line 57
    const/16 p1, 0xc

    .line 58
    .line 59
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    .line 60
    .line 61
    .line 62
    move-result p0

    .line 63
    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    .line 64
    .line 65
    .line 66
    move-result p0

    .line 67
    int-to-float p1, p3

    .line 68
    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    goto :goto_0

    .line 73
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final isItemViewSwipeEnabled()Z
    .locals 0

    .line 1
    iget p0, p0, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$2;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const/4 p0, 0x1

    .line 7
    return p0

    .line 8
    :pswitch_0
    const/4 p0, 0x0

    .line 9
    return p0

    .line 10
    :pswitch_1
    const/4 p0, 0x0

    .line 11
    return p0

    .line 12
    :pswitch_2
    const/4 p0, 0x1

    .line 13
    return p0

    .line 14
    nop

    .line 15
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final isLongPressDragEnabled()Z
    .locals 0

    .line 1
    iget p0, p0, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$2;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const/4 p0, 0x0

    .line 7
    return p0

    .line 8
    :pswitch_0
    const/4 p0, 0x0

    .line 9
    return p0

    .line 10
    :pswitch_1
    const/4 p0, 0x0

    .line 11
    return p0

    .line 12
    :pswitch_2
    const/4 p0, 0x0

    .line 13
    return p0

    .line 14
    nop

    .line 15
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onMove(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 3

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$2;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    iget-object p0, p0, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$2;->this$0:Landroidx/fragment/app/Fragment;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast p0, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment;

    .line 11
    .line 12
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-ne p1, v0, :cond_1

    .line 21
    .line 22
    iget-object p1, p0, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment;->instanceListAdapter:Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$InstanceListAdapter;

    .line 23
    .line 24
    if-nez p1, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    iget-object p0, p0, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment;->instanceListAdapter:Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$InstanceListAdapter;

    .line 36
    .line 37
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    new-instance p3, Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-virtual {p0}, Landroidx/recyclerview/widget/ListAdapter;->getCurrentList()Ljava/util/List;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-direct {p3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 47
    .line 48
    .line 49
    invoke-static {p3, p1, p2}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, p3}, Landroidx/recyclerview/widget/ListAdapter;->submitList(Ljava/util/List;)V

    .line 53
    .line 54
    .line 55
    move v1, v2

    .line 56
    :cond_1
    :goto_0
    return v1

    .line 57
    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    .line 68
    .line 69
    .line 70
    move-result p2

    .line 71
    check-cast p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialog;

    .line 72
    .line 73
    iget-object p3, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialog;->groupAdapter:Lcom/xwray/groupie/GroupieAdapter;

    .line 74
    .line 75
    invoke-virtual {p3, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    .line 76
    .line 77
    .line 78
    iget-object p0, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialog;->groupOrderedIdList:Ljava/util/ArrayList;

    .line 79
    .line 80
    invoke-static {p0, p1, p2}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 81
    .line 82
    .line 83
    return v2

    .line 84
    :pswitch_1
    check-cast p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;

    .line 85
    .line 86
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    if-ne p1, v0, :cond_3

    .line 95
    .line 96
    sget p1, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->$r8$clinit:I

    .line 97
    .line 98
    iget-object p1, p0, Lorg/schabi/newpipe/local/BaseLocalListFragment;->itemListAdapter:Lorg/schabi/newpipe/local/LocalItemListAdapter;

    .line 99
    .line 100
    if-nez p1, :cond_2

    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_2
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    .line 104
    .line 105
    .line 106
    move-result p1

    .line 107
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    .line 108
    .line 109
    .line 110
    move-result p2

    .line 111
    iget-object p3, p0, Lorg/schabi/newpipe/local/BaseLocalListFragment;->itemListAdapter:Lorg/schabi/newpipe/local/LocalItemListAdapter;

    .line 112
    .line 113
    invoke-virtual {p3, p1, p2}, Lorg/schabi/newpipe/local/LocalItemListAdapter;->swapItems(II)Z

    .line 114
    .line 115
    .line 116
    move-result v1

    .line 117
    if-eqz v1, :cond_3

    .line 118
    .line 119
    iget-object p0, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->debounceSaver:Lokhttp3/internal/connection/RealConnectionPool;

    .line 120
    .line 121
    invoke-virtual {p0}, Lokhttp3/internal/connection/RealConnectionPool;->setHasChangesToSave()V

    .line 122
    .line 123
    .line 124
    :cond_3
    :goto_1
    return v1

    .line 125
    :pswitch_2
    check-cast p0, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment;

    .line 126
    .line 127
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    .line 128
    .line 129
    .line 130
    move-result p1

    .line 131
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    if-ne p1, v0, :cond_5

    .line 136
    .line 137
    iget-object p1, p0, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment;->selectedTabsAdapter:Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$SelectedTabsAdapter;

    .line 138
    .line 139
    if-nez p1, :cond_4

    .line 140
    .line 141
    goto :goto_2

    .line 142
    :cond_4
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    .line 143
    .line 144
    .line 145
    move-result p1

    .line 146
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    .line 147
    .line 148
    .line 149
    move-result p2

    .line 150
    iget-object p0, p0, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment;->selectedTabsAdapter:Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$SelectedTabsAdapter;

    .line 151
    .line 152
    iget-object p3, p0, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$SelectedTabsAdapter;->this$0:Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment;

    .line 153
    .line 154
    iget-object p3, p3, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment;->tabList:Ljava/util/ArrayList;

    .line 155
    .line 156
    invoke-static {p3, p1, p2}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    .line 160
    .line 161
    .line 162
    move v1, v2

    .line 163
    :cond_5
    :goto_2
    return v1

    .line 164
    nop

    .line 165
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onSwiped(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$2;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$2;->this$0:Landroidx/fragment/app/Fragment;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    check-cast p0, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment;

    .line 13
    .line 14
    iget-object v0, p0, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment;->instanceListAdapter:Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$InstanceListAdapter;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroidx/recyclerview/widget/ListAdapter;->getCurrentList()Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Lorg/schabi/newpipe/extractor/services/peertube/PeertubeInstance;

    .line 25
    .line 26
    iget-object v0, v0, Lorg/schabi/newpipe/extractor/services/peertube/PeertubeInstance;->url:Ljava/lang/String;

    .line 27
    .line 28
    iget-object v1, p0, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment;->selectedInstance:Lorg/schabi/newpipe/extractor/services/peertube/PeertubeInstance;

    .line 29
    .line 30
    iget-object v1, v1, Lorg/schabi/newpipe/extractor/services/peertube/PeertubeInstance;->url:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_0

    .line 37
    .line 38
    iget-object p0, p0, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment;->instanceListAdapter:Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$InstanceListAdapter;

    .line 39
    .line 40
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 45
    .line 46
    iget-object v1, p0, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment;->instanceListAdapter:Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$InstanceListAdapter;

    .line 47
    .line 48
    invoke-virtual {v1}, Landroidx/recyclerview/widget/ListAdapter;->getCurrentList()Ljava/util/List;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    if-eqz p1, :cond_1

    .line 63
    .line 64
    iget-object p1, p0, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment;->selectedInstance:Lorg/schabi/newpipe/extractor/services/peertube/PeertubeInstance;

    .line 65
    .line 66
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    :cond_1
    iget-object p0, p0, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment;->instanceListAdapter:Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$InstanceListAdapter;

    .line 70
    .line 71
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/ListAdapter;->submitList(Ljava/util/List;)V

    .line 72
    .line 73
    .line 74
    :goto_0
    return-void

    .line 75
    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    .line 77
    .line 78
    :pswitch_1
    return-void

    .line 79
    :pswitch_2
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    check-cast p0, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment;

    .line 84
    .line 85
    iget-object v0, p0, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment;->tabList:Ljava/util/ArrayList;

    .line 86
    .line 87
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    iget-object v1, p0, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment;->selectedTabsAdapter:Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$SelectedTabsAdapter;

    .line 91
    .line 92
    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    if-eqz p1, :cond_2

    .line 100
    .line 101
    sget-object p1, Lorg/schabi/newpipe/settings/tabs/Tab$Type;->BLANK:Lorg/schabi/newpipe/settings/tabs/Tab$Type;

    .line 102
    .line 103
    invoke-virtual {p1}, Lorg/schabi/newpipe/settings/tabs/Tab$Type;->getTab()Lorg/schabi/newpipe/settings/tabs/Tab;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    iget-object p0, p0, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment;->selectedTabsAdapter:Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$SelectedTabsAdapter;

    .line 111
    .line 112
    const/4 p1, 0x0

    .line 113
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    .line 114
    .line 115
    .line 116
    :cond_2
    return-void

    .line 117
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
