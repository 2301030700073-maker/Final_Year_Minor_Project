.class public final Lorg/schabi/newpipe/local/LocalItemListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final dateTimeFormatter:Lj$/time/format/DateTimeFormatter;

.field public footer:Landroid/view/View;

.field public headerSupplier:Ljava/util/function/Supplier;

.field public itemViewMode:Lorg/schabi/newpipe/info_list/ItemViewMode;

.field public final localItemBuilder:Lorg/jsoup/parser/TokenData;

.field public final localItems:Ljava/util/ArrayList;

.field public final recordManager:Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;

.field public useItemHandle:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lorg/schabi/newpipe/local/LocalItemListAdapter;->headerSupplier:Ljava/util/function/Supplier;

    .line 6
    .line 7
    iput-object v0, p0, Lorg/schabi/newpipe/local/LocalItemListAdapter;->footer:Landroid/view/View;

    .line 8
    .line 9
    sget-object v0, Lorg/schabi/newpipe/info_list/ItemViewMode;->LIST:Lorg/schabi/newpipe/info_list/ItemViewMode;

    .line 10
    .line 11
    iput-object v0, p0, Lorg/schabi/newpipe/local/LocalItemListAdapter;->itemViewMode:Lorg/schabi/newpipe/info_list/ItemViewMode;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lorg/schabi/newpipe/local/LocalItemListAdapter;->useItemHandle:Z

    .line 15
    .line 16
    new-instance v0, Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;

    .line 17
    .line 18
    invoke-direct {v0, p1}, Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;-><init>(Landroid/content/Context;)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lorg/schabi/newpipe/local/LocalItemListAdapter;->recordManager:Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;

    .line 22
    .line 23
    new-instance v0, Lorg/jsoup/parser/TokenData;

    .line 24
    .line 25
    invoke-direct {v0, p1}, Lorg/jsoup/parser/TokenData;-><init>(Landroid/content/Context;)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lorg/schabi/newpipe/local/LocalItemListAdapter;->localItemBuilder:Lorg/jsoup/parser/TokenData;

    .line 29
    .line 30
    new-instance v0, Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Lorg/schabi/newpipe/local/LocalItemListAdapter;->localItems:Ljava/util/ArrayList;

    .line 36
    .line 37
    sget-object v0, Lj$/time/format/FormatStyle;->SHORT:Lj$/time/format/FormatStyle;

    .line 38
    .line 39
    invoke-static {v0}, Lj$/time/format/DateTimeFormatter;->ofLocalizedDate(Lj$/time/format/FormatStyle;)Lj$/time/format/DateTimeFormatter;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-static {p1}, Lorg/schabi/newpipe/util/Localization;->getPreferredLocale(Landroid/content/Context;)Ljava/util/Locale;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {v0, p1}, Lj$/time/format/DateTimeFormatter;->withLocale(Ljava/util/Locale;)Lj$/time/format/DateTimeFormatter;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    iput-object p1, p0, Lorg/schabi/newpipe/local/LocalItemListAdapter;->dateTimeFormatter:Lj$/time/format/DateTimeFormatter;

    .line 52
    .line 53
    return-void
.end method


# virtual methods
.method public final addItems(Ljava/util/List;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p0}, Lorg/schabi/newpipe/local/LocalItemListAdapter;->sizeConsideringHeader()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    iget-object v1, p0, Lorg/schabi/newpipe/local/LocalItemListAdapter;->localItems:Ljava/util/ArrayList;

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
    return-void
.end method

.method public final clearStreamItemList()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/local/LocalItemListAdapter;->localItems:Ljava/util/ArrayList;

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
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/local/LocalItemListAdapter;->localItems:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-virtual {p0}, Lorg/schabi/newpipe/local/LocalItemListAdapter;->hasHeader()Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    add-int/lit8 v0, v0, 0x1

    .line 14
    .line 15
    :cond_0
    return v0
.end method

.method public final getItemViewType(I)I
    .locals 4

    .line 1
    invoke-virtual {p0}, Lorg/schabi/newpipe/local/LocalItemListAdapter;->hasHeader()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    return p0

    .line 11
    :cond_0
    invoke-virtual {p0}, Lorg/schabi/newpipe/local/LocalItemListAdapter;->hasHeader()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    add-int/lit8 p1, p1, -0x1

    .line 18
    .line 19
    :cond_1
    iget-object v0, p0, Lorg/schabi/newpipe/local/LocalItemListAdapter;->footer:Landroid/view/View;

    .line 20
    .line 21
    iget-object v1, p0, Lorg/schabi/newpipe/local/LocalItemListAdapter;->localItems:Ljava/util/ArrayList;

    .line 22
    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 26
    .line 27
    .line 28
    :cond_2
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    check-cast p1, Lorg/schabi/newpipe/database/LocalItem;

    .line 33
    .line 34
    invoke-interface {p1}, Lorg/schabi/newpipe/database/LocalItem;->getLocalItemType()Lorg/schabi/newpipe/database/LocalItem$LocalItemType;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    sget-object v1, Lorg/schabi/newpipe/info_list/ItemViewMode;->GRID:Lorg/schabi/newpipe/info_list/ItemViewMode;

    .line 43
    .line 44
    sget-object v2, Lorg/schabi/newpipe/info_list/ItemViewMode;->CARD:Lorg/schabi/newpipe/info_list/ItemViewMode;

    .line 45
    .line 46
    if-eqz v0, :cond_d

    .line 47
    .line 48
    const/4 v3, 0x1

    .line 49
    if-eq v0, v3, :cond_9

    .line 50
    .line 51
    const/4 v3, 0x2

    .line 52
    if-eq v0, v3, :cond_6

    .line 53
    .line 54
    const/4 v3, 0x3

    .line 55
    if-eq v0, v3, :cond_3

    .line 56
    .line 57
    new-instance p0, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    const-string v0, "No holder type has been considered for item: ["

    .line 60
    .line 61
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-interface {p1}, Lorg/schabi/newpipe/database/LocalItem;->getLocalItemType()Lorg/schabi/newpipe/database/LocalItem$LocalItemType;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string p1, "]"

    .line 72
    .line 73
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    const-string p1, "LocalItemListAdapter"

    .line 81
    .line 82
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    const/4 p0, -0x1

    .line 86
    return p0

    .line 87
    :cond_3
    iget-object p0, p0, Lorg/schabi/newpipe/local/LocalItemListAdapter;->itemViewMode:Lorg/schabi/newpipe/info_list/ItemViewMode;

    .line 88
    .line 89
    if-ne p0, v2, :cond_4

    .line 90
    .line 91
    const/16 p0, 0x1003

    .line 92
    .line 93
    return p0

    .line 94
    :cond_4
    if-ne p0, v1, :cond_5

    .line 95
    .line 96
    const/16 p0, 0x1002

    .line 97
    .line 98
    return p0

    .line 99
    :cond_5
    const/16 p0, 0x1000

    .line 100
    .line 101
    return p0

    .line 102
    :cond_6
    iget-object p0, p0, Lorg/schabi/newpipe/local/LocalItemListAdapter;->itemViewMode:Lorg/schabi/newpipe/info_list/ItemViewMode;

    .line 103
    .line 104
    if-ne p0, v2, :cond_7

    .line 105
    .line 106
    const/16 p0, 0x1005

    .line 107
    .line 108
    return p0

    .line 109
    :cond_7
    if-ne p0, v1, :cond_8

    .line 110
    .line 111
    const/16 p0, 0x1004

    .line 112
    .line 113
    return p0

    .line 114
    :cond_8
    const/16 p0, 0x1001

    .line 115
    .line 116
    return p0

    .line 117
    :cond_9
    iget-boolean p1, p0, Lorg/schabi/newpipe/local/LocalItemListAdapter;->useItemHandle:Z

    .line 118
    .line 119
    if-eqz p1, :cond_a

    .line 120
    .line 121
    const/16 p0, 0x3003

    .line 122
    .line 123
    return p0

    .line 124
    :cond_a
    iget-object p0, p0, Lorg/schabi/newpipe/local/LocalItemListAdapter;->itemViewMode:Lorg/schabi/newpipe/info_list/ItemViewMode;

    .line 125
    .line 126
    if-ne p0, v2, :cond_b

    .line 127
    .line 128
    const/16 p0, 0x3002

    .line 129
    .line 130
    return p0

    .line 131
    :cond_b
    if-ne p0, v1, :cond_c

    .line 132
    .line 133
    const/16 p0, 0x3001

    .line 134
    .line 135
    return p0

    .line 136
    :cond_c
    const/16 p0, 0x3000

    .line 137
    .line 138
    return p0

    .line 139
    :cond_d
    iget-boolean p1, p0, Lorg/schabi/newpipe/local/LocalItemListAdapter;->useItemHandle:Z

    .line 140
    .line 141
    if-eqz p1, :cond_e

    .line 142
    .line 143
    const/16 p0, 0x2003

    .line 144
    .line 145
    return p0

    .line 146
    :cond_e
    iget-object p0, p0, Lorg/schabi/newpipe/local/LocalItemListAdapter;->itemViewMode:Lorg/schabi/newpipe/info_list/ItemViewMode;

    .line 147
    .line 148
    if-ne p0, v2, :cond_f

    .line 149
    .line 150
    const/16 p0, 0x2002

    .line 151
    .line 152
    return p0

    .line 153
    :cond_f
    if-ne p0, v1, :cond_10

    .line 154
    .line 155
    const/16 p0, 0x2001

    .line 156
    .line 157
    return p0

    .line 158
    :cond_10
    const/16 p0, 0x2000

    .line 159
    .line 160
    return p0
.end method

.method public final hasHeader()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/local/LocalItemListAdapter;->headerSupplier:Ljava/util/function/Supplier;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    return p0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    return p0
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    .line 86
    instance-of v0, p1, Lorg/schabi/newpipe/local/holder/LocalItemHolder;

    if-eqz v0, :cond_1

    .line 87
    invoke-virtual {p0}, Lorg/schabi/newpipe/local/LocalItemListAdapter;->hasHeader()Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 p2, p2, -0x1

    .line 88
    :cond_0
    check-cast p1, Lorg/schabi/newpipe/local/holder/LocalItemHolder;

    iget-object v0, p0, Lorg/schabi/newpipe/local/LocalItemListAdapter;->localItems:Ljava/util/ArrayList;

    .line 89
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/schabi/newpipe/database/LocalItem;

    iget-object v0, p0, Lorg/schabi/newpipe/local/LocalItemListAdapter;->recordManager:Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;

    iget-object p0, p0, Lorg/schabi/newpipe/local/LocalItemListAdapter;->dateTimeFormatter:Lj$/time/format/DateTimeFormatter;

    invoke-virtual {p1, p2, v0, p0}, Lorg/schabi/newpipe/local/holder/LocalItemHolder;->updateFromItem(Lorg/schabi/newpipe/database/LocalItem;Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;Lj$/time/format/DateTimeFormatter;)V

    return-void

    .line 90
    :cond_1
    instance-of v0, p1, Lorg/schabi/newpipe/local/HeaderFooterHolder;

    if-eqz v0, :cond_2

    if-nez p2, :cond_2

    invoke-virtual {p0}, Lorg/schabi/newpipe/local/LocalItemListAdapter;->hasHeader()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 91
    check-cast p1, Lorg/schabi/newpipe/local/HeaderFooterHolder;

    iget-object p0, p0, Lorg/schabi/newpipe/local/LocalItemListAdapter;->headerSupplier:Ljava/util/function/Supplier;

    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    iput-object p0, p1, Lorg/schabi/newpipe/local/HeaderFooterHolder;->view:Landroid/view/View;

    return-void

    :cond_2
    if-eqz v0, :cond_3

    .line 92
    invoke-virtual {p0}, Lorg/schabi/newpipe/local/LocalItemListAdapter;->sizeConsideringHeader()I

    :cond_3
    return-void
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 3

    .line 1
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_5

    .line 6
    .line 7
    instance-of v0, p1, Lorg/schabi/newpipe/local/holder/LocalItemHolder;

    .line 8
    .line 9
    if-eqz v0, :cond_5

    .line 10
    .line 11
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object p3

    .line 15
    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_4

    .line 20
    .line 21
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    instance-of v1, v0, Lorg/schabi/newpipe/database/stream/model/StreamStateEntity;

    .line 26
    .line 27
    iget-object v2, p0, Lorg/schabi/newpipe/local/LocalItemListAdapter;->localItems:Ljava/util/ArrayList;

    .line 28
    .line 29
    if-eqz v1, :cond_2

    .line 30
    .line 31
    move-object v0, p1

    .line 32
    check-cast v0, Lorg/schabi/newpipe/local/holder/LocalItemHolder;

    .line 33
    .line 34
    invoke-virtual {p0}, Lorg/schabi/newpipe/local/LocalItemListAdapter;->hasHeader()Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_1

    .line 39
    .line 40
    add-int/lit8 v1, p2, -0x1

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    move v1, p2

    .line 44
    :goto_1
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    check-cast v1, Lorg/schabi/newpipe/database/LocalItem;

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/local/holder/LocalItemHolder;->updateState(Lorg/schabi/newpipe/database/LocalItem;)V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_2
    instance-of v0, v0, Ljava/lang/Boolean;

    .line 55
    .line 56
    if-eqz v0, :cond_0

    .line 57
    .line 58
    move-object v0, p1

    .line 59
    check-cast v0, Lorg/schabi/newpipe/local/holder/LocalItemHolder;

    .line 60
    .line 61
    invoke-virtual {p0}, Lorg/schabi/newpipe/local/LocalItemListAdapter;->hasHeader()Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-eqz v1, :cond_3

    .line 66
    .line 67
    add-int/lit8 v1, p2, -0x1

    .line 68
    .line 69
    goto :goto_2

    .line 70
    :cond_3
    move v1, p2

    .line 71
    :goto_2
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    check-cast v1, Lorg/schabi/newpipe/database/LocalItem;

    .line 76
    .line 77
    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/local/holder/LocalItemHolder;->updateState(Lorg/schabi/newpipe/database/LocalItem;)V

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_4
    return-void

    .line 82
    :cond_5
    invoke-virtual {p0, p1, p2}, Lorg/schabi/newpipe/local/LocalItemListAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 83
    .line 84
    .line 85
    return-void
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 5

    .line 1
    if-eqz p2, :cond_1

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p2, v0, :cond_0

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    iget-object p0, p0, Lorg/schabi/newpipe/local/LocalItemListAdapter;->localItemBuilder:Lorg/jsoup/parser/TokenData;

    .line 8
    .line 9
    packed-switch p2, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    const v2, 0x7f0d007f

    .line 13
    .line 14
    .line 15
    const v3, 0x7f0d007d

    .line 16
    .line 17
    .line 18
    const v4, 0x7f0d007c

    .line 19
    .line 20
    .line 21
    packed-switch p2, :pswitch_data_1

    .line 22
    .line 23
    .line 24
    packed-switch p2, :pswitch_data_2

    .line 25
    .line 26
    .line 27
    new-instance p0, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string v0, "No view type has been considered for holder: ["

    .line 30
    .line 31
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string p2, "]"

    .line 38
    .line 39
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    const-string p2, "LocalItemListAdapter"

    .line 47
    .line 48
    invoke-static {p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    new-instance p0, Lorg/schabi/newpipe/util/FallbackViewHolder;

    .line 52
    .line 53
    new-instance p2, Landroid/view/View;

    .line 54
    .line 55
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-direct {p2, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 60
    .line 61
    .line 62
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 63
    .line 64
    .line 65
    return-object p0

    .line 66
    :pswitch_0
    new-instance p2, Lorg/schabi/newpipe/local/holder/RemoteBookmarkPlaylistItemHolder;

    .line 67
    .line 68
    invoke-direct {p2, p0, p1}, Lorg/schabi/newpipe/local/holder/RemoteBookmarkPlaylistItemHolder;-><init>(Lorg/jsoup/parser/TokenData;Landroid/view/ViewGroup;)V

    .line 69
    .line 70
    .line 71
    return-object p2

    .line 72
    :pswitch_1
    new-instance p2, Lorg/schabi/newpipe/local/holder/RemotePlaylistCardItemHolder;

    .line 73
    .line 74
    invoke-direct {p2, p0, v4, p1, v0}, Lorg/schabi/newpipe/local/holder/LocalPlaylistItemHolder;-><init>(Lorg/jsoup/parser/TokenData;ILandroid/view/ViewGroup;I)V

    .line 75
    .line 76
    .line 77
    return-object p2

    .line 78
    :pswitch_2
    new-instance p2, Lorg/schabi/newpipe/local/holder/RemotePlaylistCardItemHolder;

    .line 79
    .line 80
    invoke-direct {p2, p0, v3, p1, v0}, Lorg/schabi/newpipe/local/holder/LocalPlaylistItemHolder;-><init>(Lorg/jsoup/parser/TokenData;ILandroid/view/ViewGroup;I)V

    .line 81
    .line 82
    .line 83
    return-object p2

    .line 84
    :pswitch_3
    new-instance p2, Lorg/schabi/newpipe/local/holder/LocalPlaylistItemHolder;

    .line 85
    .line 86
    invoke-direct {p2, p0, v2, p1, v0}, Lorg/schabi/newpipe/local/holder/LocalPlaylistItemHolder;-><init>(Lorg/jsoup/parser/TokenData;ILandroid/view/ViewGroup;I)V

    .line 87
    .line 88
    .line 89
    return-object p2

    .line 90
    :pswitch_4
    new-instance p2, Lorg/schabi/newpipe/local/holder/LocalBookmarkPlaylistItemHolder;

    .line 91
    .line 92
    invoke-direct {p2, p0, p1}, Lorg/schabi/newpipe/local/holder/LocalBookmarkPlaylistItemHolder;-><init>(Lorg/jsoup/parser/TokenData;Landroid/view/ViewGroup;)V

    .line 93
    .line 94
    .line 95
    return-object p2

    .line 96
    :pswitch_5
    new-instance p2, Lorg/schabi/newpipe/local/holder/LocalPlaylistCardItemHolder;

    .line 97
    .line 98
    invoke-direct {p2, p0, v4, p1, v1}, Lorg/schabi/newpipe/local/holder/LocalPlaylistItemHolder;-><init>(Lorg/jsoup/parser/TokenData;ILandroid/view/ViewGroup;I)V

    .line 99
    .line 100
    .line 101
    return-object p2

    .line 102
    :pswitch_6
    new-instance p2, Lorg/schabi/newpipe/local/holder/LocalPlaylistCardItemHolder;

    .line 103
    .line 104
    invoke-direct {p2, p0, v3, p1, v1}, Lorg/schabi/newpipe/local/holder/LocalPlaylistItemHolder;-><init>(Lorg/jsoup/parser/TokenData;ILandroid/view/ViewGroup;I)V

    .line 105
    .line 106
    .line 107
    return-object p2

    .line 108
    :pswitch_7
    new-instance p2, Lorg/schabi/newpipe/local/holder/LocalPlaylistItemHolder;

    .line 109
    .line 110
    invoke-direct {p2, p0, v2, p1, v1}, Lorg/schabi/newpipe/local/holder/LocalPlaylistItemHolder;-><init>(Lorg/jsoup/parser/TokenData;ILandroid/view/ViewGroup;I)V

    .line 111
    .line 112
    .line 113
    return-object p2

    .line 114
    :pswitch_8
    new-instance p2, Lorg/schabi/newpipe/local/holder/LocalPlaylistStreamCardItemHolder;

    .line 115
    .line 116
    const v0, 0x7f0d0085

    .line 117
    .line 118
    .line 119
    invoke-direct {p2, p0, v0, p1, v1}, Lorg/schabi/newpipe/local/holder/LocalPlaylistStreamItemHolder;-><init>(Lorg/jsoup/parser/TokenData;ILandroid/view/ViewGroup;I)V

    .line 120
    .line 121
    .line 122
    return-object p2

    .line 123
    :pswitch_9
    new-instance p2, Lorg/schabi/newpipe/local/holder/LocalPlaylistStreamCardItemHolder;

    .line 124
    .line 125
    const v0, 0x7f0d0086

    .line 126
    .line 127
    .line 128
    invoke-direct {p2, p0, v0, p1, v1}, Lorg/schabi/newpipe/local/holder/LocalPlaylistStreamItemHolder;-><init>(Lorg/jsoup/parser/TokenData;ILandroid/view/ViewGroup;I)V

    .line 129
    .line 130
    .line 131
    return-object p2

    .line 132
    :pswitch_a
    new-instance p2, Lorg/schabi/newpipe/local/holder/LocalStatisticStreamCardItemHolder;

    .line 133
    .line 134
    const v1, 0x7f0d0081

    .line 135
    .line 136
    .line 137
    invoke-direct {p2, p0, v1, p1, v0}, Lorg/schabi/newpipe/local/holder/LocalPlaylistStreamItemHolder;-><init>(Lorg/jsoup/parser/TokenData;ILandroid/view/ViewGroup;I)V

    .line 138
    .line 139
    .line 140
    return-object p2

    .line 141
    :pswitch_b
    new-instance p2, Lorg/schabi/newpipe/local/holder/LocalStatisticStreamCardItemHolder;

    .line 142
    .line 143
    const v1, 0x7f0d0082

    .line 144
    .line 145
    .line 146
    invoke-direct {p2, p0, v1, p1, v0}, Lorg/schabi/newpipe/local/holder/LocalPlaylistStreamItemHolder;-><init>(Lorg/jsoup/parser/TokenData;ILandroid/view/ViewGroup;I)V

    .line 147
    .line 148
    .line 149
    return-object p2

    .line 150
    :pswitch_c
    new-instance p2, Lorg/schabi/newpipe/local/holder/LocalPlaylistStreamItemHolder;

    .line 151
    .line 152
    const v0, 0x7f0d0087

    .line 153
    .line 154
    .line 155
    invoke-direct {p2, p0, v0, p1, v1}, Lorg/schabi/newpipe/local/holder/LocalPlaylistStreamItemHolder;-><init>(Lorg/jsoup/parser/TokenData;ILandroid/view/ViewGroup;I)V

    .line 156
    .line 157
    .line 158
    return-object p2

    .line 159
    :pswitch_d
    new-instance p2, Lorg/schabi/newpipe/local/holder/LocalPlaylistStreamItemHolder;

    .line 160
    .line 161
    const v1, 0x7f0d0083

    .line 162
    .line 163
    .line 164
    invoke-direct {p2, p0, v1, p1, v0}, Lorg/schabi/newpipe/local/holder/LocalPlaylistStreamItemHolder;-><init>(Lorg/jsoup/parser/TokenData;ILandroid/view/ViewGroup;I)V

    .line 165
    .line 166
    .line 167
    return-object p2

    .line 168
    :cond_0
    new-instance p1, Lorg/schabi/newpipe/local/HeaderFooterHolder;

    .line 169
    .line 170
    iget-object p0, p0, Lorg/schabi/newpipe/local/LocalItemListAdapter;->footer:Landroid/view/View;

    .line 171
    .line 172
    invoke-direct {p1, p0}, Lorg/schabi/newpipe/local/HeaderFooterHolder;-><init>(Landroid/view/View;)V

    .line 173
    .line 174
    .line 175
    return-object p1

    .line 176
    :cond_1
    new-instance p1, Lorg/schabi/newpipe/local/HeaderFooterHolder;

    .line 177
    .line 178
    iget-object p0, p0, Lorg/schabi/newpipe/local/LocalItemListAdapter;->headerSupplier:Ljava/util/function/Supplier;

    .line 179
    .line 180
    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object p0

    .line 184
    check-cast p0, Landroid/view/View;

    .line 185
    .line 186
    invoke-direct {p1, p0}, Lorg/schabi/newpipe/local/HeaderFooterHolder;-><init>(Landroid/view/View;)V

    .line 187
    .line 188
    .line 189
    return-object p1

    .line 190
    nop

    .line 191
    :pswitch_data_0
    .packed-switch 0x1000
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    .line 192
    .line 193
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
    .line 206
    .line 207
    :pswitch_data_1
    .packed-switch 0x2000
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

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
    .line 218
    .line 219
    :pswitch_data_2
    .packed-switch 0x3000
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final sizeConsideringHeader()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/local/LocalItemListAdapter;->localItems:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-virtual {p0}, Lorg/schabi/newpipe/local/LocalItemListAdapter;->hasHeader()Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    add-int/2addr p0, v0

    .line 12
    return p0
.end method

.method public final swapItems(II)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lorg/schabi/newpipe/local/LocalItemListAdapter;->hasHeader()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sub-int v0, p1, v0

    .line 6
    .line 7
    invoke-virtual {p0}, Lorg/schabi/newpipe/local/LocalItemListAdapter;->hasHeader()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    sub-int v1, p2, v1

    .line 12
    .line 13
    if-ltz v0, :cond_2

    .line 14
    .line 15
    if-gez v1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object v2, p0, Lorg/schabi/newpipe/local/LocalItemListAdapter;->localItems:Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-ge v0, v3, :cond_2

    .line 25
    .line 26
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-lt v1, v3, :cond_1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Lorg/schabi/newpipe/database/LocalItem;

    .line 38
    .line 39
    invoke-virtual {v2, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    .line 43
    .line 44
    .line 45
    const/4 p0, 0x1

    .line 46
    return p0

    .line 47
    :cond_2
    :goto_0
    const/4 p0, 0x0

    .line 48
    return p0
.end method
