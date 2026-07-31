.class public final Lorg/schabi/newpipe/info_list/InfoListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public headerSupplier:Ljava/util/function/Supplier;

.field public final infoItemBuilder:Lcoil3/ComponentRegistry$Builder;

.field public final infoItemList:Ljava/util/ArrayList;

.field public itemMode:Lorg/schabi/newpipe/info_list/ItemViewMode;

.field public final layoutInflater:Landroid/view/LayoutInflater;

.field public final recordManager:Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;

.field public showFooter:Z

.field public useMiniVariant:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lorg/schabi/newpipe/info_list/InfoListAdapter;->useMiniVariant:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lorg/schabi/newpipe/info_list/InfoListAdapter;->showFooter:Z

    .line 8
    .line 9
    sget-object v0, Lorg/schabi/newpipe/info_list/ItemViewMode;->LIST:Lorg/schabi/newpipe/info_list/ItemViewMode;

    .line 10
    .line 11
    iput-object v0, p0, Lorg/schabi/newpipe/info_list/InfoListAdapter;->itemMode:Lorg/schabi/newpipe/info_list/ItemViewMode;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lorg/schabi/newpipe/info_list/InfoListAdapter;->headerSupplier:Ljava/util/function/Supplier;

    .line 15
    .line 16
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lorg/schabi/newpipe/info_list/InfoListAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    .line 21
    .line 22
    new-instance v0, Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;

    .line 23
    .line 24
    invoke-direct {v0, p1}, Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;-><init>(Landroid/content/Context;)V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lorg/schabi/newpipe/info_list/InfoListAdapter;->recordManager:Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;

    .line 28
    .line 29
    new-instance v0, Lcoil3/ComponentRegistry$Builder;

    .line 30
    .line 31
    const/16 v1, 0x10

    .line 32
    .line 33
    invoke-direct {v0, p1, v1}, Lcoil3/ComponentRegistry$Builder;-><init>(Landroid/content/Context;I)V

    .line 34
    .line 35
    .line 36
    iput-object v0, p0, Lorg/schabi/newpipe/info_list/InfoListAdapter;->infoItemBuilder:Lcoil3/ComponentRegistry$Builder;

    .line 37
    .line 38
    new-instance p1, Ljava/util/ArrayList;

    .line 39
    .line 40
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 41
    .line 42
    .line 43
    iput-object p1, p0, Lorg/schabi/newpipe/info_list/InfoListAdapter;->infoItemList:Ljava/util/ArrayList;

    .line 44
    .line 45
    return-void
.end method


# virtual methods
.method public final addInfoItemList(Ljava/util/List;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lorg/schabi/newpipe/info_list/InfoListAdapter;->sizeConsideringHeaderOffset()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    iget-object v1, p0, Lorg/schabi/newpipe/info_list/InfoListAdapter;->infoItemList:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 11
    .line 12
    .line 13
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    invoke-virtual {p0, v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    .line 18
    .line 19
    .line 20
    iget-boolean p1, p0, Lorg/schabi/newpipe/info_list/InfoListAdapter;->showFooter:Z

    .line 21
    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    invoke-virtual {p0}, Lorg/schabi/newpipe/info_list/InfoListAdapter;->sizeConsideringHeaderOffset()I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    invoke-virtual {p0, v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    .line 29
    .line 30
    .line 31
    :cond_1
    :goto_0
    return-void
.end method

.method public final clearStreamItemList()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/info_list/InfoListAdapter;->infoItemList:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final getItemCount()I
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/info_list/InfoListAdapter;->infoItemList:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lorg/schabi/newpipe/info_list/InfoListAdapter;->headerSupplier:Ljava/util/function/Supplier;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    add-int/lit8 v0, v0, 0x1

    .line 12
    .line 13
    :cond_0
    iget-boolean p0, p0, Lorg/schabi/newpipe/info_list/InfoListAdapter;->showFooter:Z

    .line 14
    .line 15
    if-eqz p0, :cond_1

    .line 16
    .line 17
    add-int/lit8 v0, v0, 0x1

    .line 18
    .line 19
    :cond_1
    return v0
.end method

.method public final getItemViewType(I)I
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/info_list/InfoListAdapter;->headerSupplier:Ljava/util/function/Supplier;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return p0

    .line 9
    :cond_0
    if-eqz v0, :cond_1

    .line 10
    .line 11
    add-int/lit8 p1, p1, -0x1

    .line 12
    .line 13
    :cond_1
    iget-object v0, p0, Lorg/schabi/newpipe/info_list/InfoListAdapter;->infoItemList:Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    const/4 v2, 0x1

    .line 20
    if-ne p1, v1, :cond_2

    .line 21
    .line 22
    iget-boolean v1, p0, Lorg/schabi/newpipe/info_list/InfoListAdapter;->showFooter:Z

    .line 23
    .line 24
    if-eqz v1, :cond_2

    .line 25
    .line 26
    return v2

    .line 27
    :cond_2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    check-cast p1, Lorg/schabi/newpipe/extractor/InfoItem;

    .line 32
    .line 33
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/InfoItem;->getInfoType()Lorg/schabi/newpipe/extractor/InfoItem$InfoType;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    sget-object v0, Lorg/schabi/newpipe/info_list/ItemViewMode;->GRID:Lorg/schabi/newpipe/info_list/ItemViewMode;

    .line 42
    .line 43
    sget-object v1, Lorg/schabi/newpipe/info_list/ItemViewMode;->CARD:Lorg/schabi/newpipe/info_list/ItemViewMode;

    .line 44
    .line 45
    if-eqz p1, :cond_c

    .line 46
    .line 47
    if-eq p1, v2, :cond_8

    .line 48
    .line 49
    const/4 v2, 0x2

    .line 50
    if-eq p1, v2, :cond_4

    .line 51
    .line 52
    const/4 p0, 0x3

    .line 53
    if-eq p1, p0, :cond_3

    .line 54
    .line 55
    const/4 p0, -0x1

    .line 56
    return p0

    .line 57
    :cond_3
    const/16 p0, 0x400

    .line 58
    .line 59
    return p0

    .line 60
    :cond_4
    iget-object p1, p0, Lorg/schabi/newpipe/info_list/InfoListAdapter;->itemMode:Lorg/schabi/newpipe/info_list/ItemViewMode;

    .line 61
    .line 62
    if-ne p1, v1, :cond_5

    .line 63
    .line 64
    const/16 p0, 0x203

    .line 65
    .line 66
    return p0

    .line 67
    :cond_5
    if-ne p1, v0, :cond_6

    .line 68
    .line 69
    const/16 p0, 0x202

    .line 70
    .line 71
    return p0

    .line 72
    :cond_6
    iget-boolean p0, p0, Lorg/schabi/newpipe/info_list/InfoListAdapter;->useMiniVariant:Z

    .line 73
    .line 74
    if-eqz p0, :cond_7

    .line 75
    .line 76
    const/16 p0, 0x200

    .line 77
    .line 78
    return p0

    .line 79
    :cond_7
    const/16 p0, 0x201

    .line 80
    .line 81
    return p0

    .line 82
    :cond_8
    iget-object p1, p0, Lorg/schabi/newpipe/info_list/InfoListAdapter;->itemMode:Lorg/schabi/newpipe/info_list/ItemViewMode;

    .line 83
    .line 84
    if-ne p1, v1, :cond_9

    .line 85
    .line 86
    const/16 p0, 0x303

    .line 87
    .line 88
    return p0

    .line 89
    :cond_9
    if-ne p1, v0, :cond_a

    .line 90
    .line 91
    const/16 p0, 0x302

    .line 92
    .line 93
    return p0

    .line 94
    :cond_a
    iget-boolean p0, p0, Lorg/schabi/newpipe/info_list/InfoListAdapter;->useMiniVariant:Z

    .line 95
    .line 96
    if-eqz p0, :cond_b

    .line 97
    .line 98
    const/16 p0, 0x300

    .line 99
    .line 100
    return p0

    .line 101
    :cond_b
    const/16 p0, 0x301

    .line 102
    .line 103
    return p0

    .line 104
    :cond_c
    iget-object p1, p0, Lorg/schabi/newpipe/info_list/InfoListAdapter;->itemMode:Lorg/schabi/newpipe/info_list/ItemViewMode;

    .line 105
    .line 106
    if-ne p1, v1, :cond_d

    .line 107
    .line 108
    const/16 p0, 0x103

    .line 109
    .line 110
    return p0

    .line 111
    :cond_d
    if-ne p1, v0, :cond_e

    .line 112
    .line 113
    const/16 p0, 0x102

    .line 114
    .line 115
    return p0

    .line 116
    :cond_e
    iget-boolean p0, p0, Lorg/schabi/newpipe/info_list/InfoListAdapter;->useMiniVariant:Z

    .line 117
    .line 118
    if-eqz p0, :cond_f

    .line 119
    .line 120
    const/16 p0, 0x100

    .line 121
    .line 122
    return p0

    .line 123
    :cond_f
    const/16 p0, 0x101

    .line 124
    .line 125
    return p0
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    .line 1
    instance-of v0, p1, Lorg/schabi/newpipe/info_list/holder/InfoItemHolder;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    check-cast p1, Lorg/schabi/newpipe/info_list/holder/InfoItemHolder;

    .line 6
    .line 7
    iget-object v0, p0, Lorg/schabi/newpipe/info_list/InfoListAdapter;->headerSupplier:Ljava/util/function/Supplier;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    add-int/lit8 p2, p2, -0x1

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/info_list/InfoListAdapter;->infoItemList:Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    check-cast p2, Lorg/schabi/newpipe/extractor/InfoItem;

    .line 20
    .line 21
    iget-object p0, p0, Lorg/schabi/newpipe/info_list/InfoListAdapter;->recordManager:Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;

    .line 22
    .line 23
    invoke-virtual {p1, p2, p0}, Lorg/schabi/newpipe/info_list/holder/InfoItemHolder;->updateFromItem(Lorg/schabi/newpipe/extractor/InfoItem;Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;)V

    .line 24
    .line 25
    .line 26
    :cond_1
    return-void
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3

    .line 1
    if-eqz p2, :cond_3

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const/4 v1, 0x1

    .line 5
    if-eq p2, v1, :cond_1

    .line 6
    .line 7
    const/16 v2, 0x400

    .line 8
    .line 9
    iget-object p0, p0, Lorg/schabi/newpipe/info_list/InfoListAdapter;->infoItemBuilder:Lcoil3/ComponentRegistry$Builder;

    .line 10
    .line 11
    if-eq p2, v2, :cond_0

    .line 12
    .line 13
    packed-switch p2, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    packed-switch p2, :pswitch_data_1

    .line 17
    .line 18
    .line 19
    packed-switch p2, :pswitch_data_2

    .line 20
    .line 21
    .line 22
    new-instance p0, Lorg/schabi/newpipe/util/FallbackViewHolder;

    .line 23
    .line 24
    new-instance p2, Landroid/view/View;

    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-direct {p2, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 31
    .line 32
    .line 33
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 34
    .line 35
    .line 36
    return-object p0

    .line 37
    :pswitch_0
    new-instance p2, Lorg/schabi/newpipe/info_list/holder/PlaylistInfoItemHolder;

    .line 38
    .line 39
    const v0, 0x7f0d007c

    .line 40
    .line 41
    .line 42
    invoke-direct {p2, p0, v0, p1, v1}, Lorg/schabi/newpipe/info_list/holder/ChannelMiniInfoItemHolder;-><init>(Lcoil3/ComponentRegistry$Builder;ILandroid/view/ViewGroup;I)V

    .line 43
    .line 44
    .line 45
    return-object p2

    .line 46
    :pswitch_1
    new-instance p2, Lorg/schabi/newpipe/info_list/holder/PlaylistInfoItemHolder;

    .line 47
    .line 48
    const v0, 0x7f0d007d

    .line 49
    .line 50
    .line 51
    invoke-direct {p2, p0, v0, p1, v1}, Lorg/schabi/newpipe/info_list/holder/ChannelMiniInfoItemHolder;-><init>(Lcoil3/ComponentRegistry$Builder;ILandroid/view/ViewGroup;I)V

    .line 52
    .line 53
    .line 54
    return-object p2

    .line 55
    :pswitch_2
    new-instance p2, Lorg/schabi/newpipe/info_list/holder/PlaylistInfoItemHolder;

    .line 56
    .line 57
    const v0, 0x7f0d007e

    .line 58
    .line 59
    .line 60
    invoke-direct {p2, p0, v0, p1, v1}, Lorg/schabi/newpipe/info_list/holder/ChannelMiniInfoItemHolder;-><init>(Lcoil3/ComponentRegistry$Builder;ILandroid/view/ViewGroup;I)V

    .line 61
    .line 62
    .line 63
    return-object p2

    .line 64
    :pswitch_3
    new-instance p2, Lorg/schabi/newpipe/info_list/holder/ChannelMiniInfoItemHolder;

    .line 65
    .line 66
    const v0, 0x7f0d007f

    .line 67
    .line 68
    .line 69
    invoke-direct {p2, p0, v0, p1, v1}, Lorg/schabi/newpipe/info_list/holder/ChannelMiniInfoItemHolder;-><init>(Lcoil3/ComponentRegistry$Builder;ILandroid/view/ViewGroup;I)V

    .line 70
    .line 71
    .line 72
    return-object p2

    .line 73
    :pswitch_4
    new-instance p2, Lorg/schabi/newpipe/info_list/holder/ChannelInfoItemHolder;

    .line 74
    .line 75
    const v0, 0x7f0d0072

    .line 76
    .line 77
    .line 78
    invoke-direct {p2, p0, v0, p1, v1}, Lorg/schabi/newpipe/info_list/holder/ChannelInfoItemHolder;-><init>(Lcoil3/ComponentRegistry$Builder;ILandroid/view/ViewGroup;I)V

    .line 79
    .line 80
    .line 81
    return-object p2

    .line 82
    :pswitch_5
    new-instance p2, Lorg/schabi/newpipe/info_list/holder/ChannelInfoItemHolder;

    .line 83
    .line 84
    const v0, 0x7f0d0073

    .line 85
    .line 86
    .line 87
    const/4 v1, 0x2

    .line 88
    invoke-direct {p2, p0, v0, p1, v1}, Lorg/schabi/newpipe/info_list/holder/ChannelInfoItemHolder;-><init>(Lcoil3/ComponentRegistry$Builder;ILandroid/view/ViewGroup;I)V

    .line 89
    .line 90
    .line 91
    return-object p2

    .line 92
    :pswitch_6
    new-instance p2, Lorg/schabi/newpipe/info_list/holder/ChannelInfoItemHolder;

    .line 93
    .line 94
    const v1, 0x7f0d0074

    .line 95
    .line 96
    .line 97
    invoke-direct {p2, p0, v1, p1, v0}, Lorg/schabi/newpipe/info_list/holder/ChannelInfoItemHolder;-><init>(Lcoil3/ComponentRegistry$Builder;ILandroid/view/ViewGroup;I)V

    .line 98
    .line 99
    .line 100
    return-object p2

    .line 101
    :pswitch_7
    new-instance p2, Lorg/schabi/newpipe/info_list/holder/ChannelMiniInfoItemHolder;

    .line 102
    .line 103
    const v1, 0x7f0d0075

    .line 104
    .line 105
    .line 106
    invoke-direct {p2, p0, v1, p1, v0}, Lorg/schabi/newpipe/info_list/holder/ChannelMiniInfoItemHolder;-><init>(Lcoil3/ComponentRegistry$Builder;ILandroid/view/ViewGroup;I)V

    .line 107
    .line 108
    .line 109
    return-object p2

    .line 110
    :pswitch_8
    new-instance p2, Lorg/schabi/newpipe/info_list/holder/StreamCardInfoItemHolder;

    .line 111
    .line 112
    const v0, 0x7f0d0081

    .line 113
    .line 114
    .line 115
    invoke-direct {p2, p0, v0, p1}, Lorg/schabi/newpipe/info_list/holder/StreamInfoItemHolder;-><init>(Lcoil3/ComponentRegistry$Builder;ILandroid/view/ViewGroup;)V

    .line 116
    .line 117
    .line 118
    return-object p2

    .line 119
    :pswitch_9
    new-instance p2, Lorg/schabi/newpipe/info_list/holder/StreamCardInfoItemHolder;

    .line 120
    .line 121
    const v0, 0x7f0d0082

    .line 122
    .line 123
    .line 124
    invoke-direct {p2, p0, v0, p1}, Lorg/schabi/newpipe/info_list/holder/StreamInfoItemHolder;-><init>(Lcoil3/ComponentRegistry$Builder;ILandroid/view/ViewGroup;)V

    .line 125
    .line 126
    .line 127
    return-object p2

    .line 128
    :pswitch_a
    new-instance p2, Lorg/schabi/newpipe/info_list/holder/StreamInfoItemHolder;

    .line 129
    .line 130
    const v0, 0x7f0d0083

    .line 131
    .line 132
    .line 133
    invoke-direct {p2, p0, v0, p1}, Lorg/schabi/newpipe/info_list/holder/StreamInfoItemHolder;-><init>(Lcoil3/ComponentRegistry$Builder;ILandroid/view/ViewGroup;)V

    .line 134
    .line 135
    .line 136
    return-object p2

    .line 137
    :pswitch_b
    new-instance p2, Lorg/schabi/newpipe/info_list/holder/StreamMiniInfoItemHolder;

    .line 138
    .line 139
    const v0, 0x7f0d0084

    .line 140
    .line 141
    .line 142
    invoke-direct {p2, p0, v0, p1}, Lorg/schabi/newpipe/info_list/holder/StreamMiniInfoItemHolder;-><init>(Lcoil3/ComponentRegistry$Builder;ILandroid/view/ViewGroup;)V

    .line 143
    .line 144
    .line 145
    return-object p2

    .line 146
    :cond_0
    new-instance p2, Lorg/schabi/newpipe/info_list/holder/CommentInfoItemHolder;

    .line 147
    .line 148
    invoke-direct {p2, p0, p1}, Lorg/schabi/newpipe/info_list/holder/CommentInfoItemHolder;-><init>(Lcoil3/ComponentRegistry$Builder;Landroid/view/ViewGroup;)V

    .line 149
    .line 150
    .line 151
    return-object p2

    .line 152
    :cond_1
    new-instance p2, Lorg/schabi/newpipe/util/FallbackViewHolder;

    .line 153
    .line 154
    iget-object p0, p0, Lorg/schabi/newpipe/info_list/InfoListAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    .line 155
    .line 156
    const v1, 0x7f0d00d7

    .line 157
    .line 158
    .line 159
    invoke-virtual {p0, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 160
    .line 161
    .line 162
    move-result-object p0

    .line 163
    if-eqz p0, :cond_2

    .line 164
    .line 165
    check-cast p0, Landroid/widget/LinearLayout;

    .line 166
    .line 167
    invoke-direct {p2, p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 168
    .line 169
    .line 170
    return-object p2

    .line 171
    :cond_2
    const-string p0, "rootView"

    .line 172
    .line 173
    invoke-static {p0}, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    const/4 p0, 0x0

    .line 177
    return-object p0

    .line 178
    :cond_3
    new-instance p1, Lorg/schabi/newpipe/util/FallbackViewHolder;

    .line 179
    .line 180
    iget-object p0, p0, Lorg/schabi/newpipe/info_list/InfoListAdapter;->headerSupplier:Ljava/util/function/Supplier;

    .line 181
    .line 182
    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object p0

    .line 186
    check-cast p0, Landroid/view/View;

    .line 187
    .line 188
    invoke-direct {p1, p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 189
    .line 190
    .line 191
    return-object p1

    .line 192
    nop

    .line 193
    :pswitch_data_0
    .packed-switch 0x100
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    :pswitch_data_1
    .packed-switch 0x200
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    :pswitch_data_2
    .packed-switch 0x300
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final sizeConsideringHeaderOffset()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/info_list/InfoListAdapter;->infoItemList:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object p0, p0, Lorg/schabi/newpipe/info_list/InfoListAdapter;->headerSupplier:Ljava/util/function/Supplier;

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    :goto_0
    add-int/2addr p0, v0

    .line 15
    return p0
.end method
