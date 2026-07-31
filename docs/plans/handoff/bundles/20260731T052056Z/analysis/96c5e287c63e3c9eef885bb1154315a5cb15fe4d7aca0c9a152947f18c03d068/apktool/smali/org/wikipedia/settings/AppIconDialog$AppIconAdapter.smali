.class public final Lorg/wikipedia/settings/AppIconDialog$AppIconAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final synthetic $r8$classId:I

.field public list:Ljava/lang/Object;

.field public onItemClickListener:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/util/List;)V
    .locals 0

    .line 24
    iput p1, p0, Lorg/wikipedia/settings/AppIconDialog$AppIconAdapter;->$r8$classId:I

    iput-object p2, p0, Lorg/wikipedia/settings/AppIconDialog$AppIconAdapter;->onItemClickListener:Ljava/lang/Object;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p3, p0, Lorg/wikipedia/settings/AppIconDialog$AppIconAdapter;->list:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lorg/wikipedia/dataclient/WikiSite;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lorg/wikipedia/settings/AppIconDialog$AppIconAdapter;->$r8$classId:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/settings/AppIconDialog$AppIconAdapter;->list:Ljava/lang/Object;

    iput-object p2, p0, Lorg/wikipedia/settings/AppIconDialog$AppIconAdapter;->onItemClickListener:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lkotlin/enums/EnumEntries;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/wikipedia/settings/AppIconDialog$AppIconAdapter;->$r8$classId:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/settings/AppIconDialog$AppIconAdapter;->list:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lorg/wikipedia/page/edithistory/EditHistoryListActivity;)V
    .locals 1

    const/4 v0, 0x5

    iput v0, p0, Lorg/wikipedia/settings/AppIconDialog$AppIconAdapter;->$r8$classId:I

    .line 23
    iput-object p1, p0, Lorg/wikipedia/settings/AppIconDialog$AppIconAdapter;->onItemClickListener:Ljava/lang/Object;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/wikipedia/places/PlacesFragment;Ljava/util/List;)V
    .locals 1

    const/4 v0, 0x7

    iput v0, p0, Lorg/wikipedia/settings/AppIconDialog$AppIconAdapter;->$r8$classId:I

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    iput-object p1, p0, Lorg/wikipedia/settings/AppIconDialog$AppIconAdapter;->onItemClickListener:Ljava/lang/Object;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p2, p0, Lorg/wikipedia/settings/AppIconDialog$AppIconAdapter;->list:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog;)V
    .locals 1

    const/16 v0, 0x8

    iput v0, p0, Lorg/wikipedia/settings/AppIconDialog$AppIconAdapter;->$r8$classId:I

    .line 22
    iput-object p1, p0, Lorg/wikipedia/settings/AppIconDialog$AppIconAdapter;->onItemClickListener:Ljava/lang/Object;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    sget-object p1, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    iput-object p1, p0, Lorg/wikipedia/settings/AppIconDialog$AppIconAdapter;->list:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lorg/wikipedia/watchlist/WatchlistFragment;Ljava/util/List;)V
    .locals 1

    .line 1
    const/16 v0, 0x9

    .line 2
    .line 3
    iput v0, p0, Lorg/wikipedia/settings/AppIconDialog$AppIconAdapter;->$r8$classId:I

    .line 4
    .line 5
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    iput-object p1, p0, Lorg/wikipedia/settings/AppIconDialog$AppIconAdapter;->onItemClickListener:Ljava/lang/Object;

    .line 9
    .line 10
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 11
    .line 12
    .line 13
    new-instance p1, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object p2, p0, Lorg/wikipedia/settings/AppIconDialog$AppIconAdapter;->list:Ljava/lang/Object;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/wikipedia/settings/AppIconDialog$AppIconAdapter;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lorg/wikipedia/settings/AppIconDialog$AppIconAdapter;->list:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p0, Ljava/util/List;

    .line 9
    .line 10
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0

    .line 15
    :pswitch_0
    iget-object p0, p0, Lorg/wikipedia/settings/AppIconDialog$AppIconAdapter;->list:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast p0, Ljava/util/List;

    .line 18
    .line 19
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    return p0

    .line 24
    :pswitch_1
    iget-object p0, p0, Lorg/wikipedia/settings/AppIconDialog$AppIconAdapter;->list:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast p0, Ljava/util/List;

    .line 27
    .line 28
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    return p0

    .line 33
    :pswitch_2
    iget-object p0, p0, Lorg/wikipedia/settings/AppIconDialog$AppIconAdapter;->list:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast p0, Ljava/util/List;

    .line 36
    .line 37
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    return p0

    .line 42
    :pswitch_3
    const/4 p0, 0x1

    .line 43
    return p0

    .line 44
    :pswitch_4
    iget-object p0, p0, Lorg/wikipedia/settings/AppIconDialog$AppIconAdapter;->list:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast p0, Ljava/util/List;

    .line 47
    .line 48
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 49
    .line 50
    .line 51
    move-result p0

    .line 52
    return p0

    .line 53
    :pswitch_5
    iget-object p0, p0, Lorg/wikipedia/settings/AppIconDialog$AppIconAdapter;->list:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast p0, Ljava/util/List;

    .line 56
    .line 57
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 58
    .line 59
    .line 60
    move-result p0

    .line 61
    return p0

    .line 62
    :pswitch_6
    iget-object p0, p0, Lorg/wikipedia/settings/AppIconDialog$AppIconAdapter;->list:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast p0, Ljava/util/List;

    .line 65
    .line 66
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 67
    .line 68
    .line 69
    move-result p0

    .line 70
    return p0

    .line 71
    :pswitch_7
    iget-object p0, p0, Lorg/wikipedia/settings/AppIconDialog$AppIconAdapter;->list:Ljava/lang/Object;

    .line 72
    .line 73
    check-cast p0, Ljava/util/List;

    .line 74
    .line 75
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 76
    .line 77
    .line 78
    move-result p0

    .line 79
    return p0

    .line 80
    :pswitch_8
    iget-object p0, p0, Lorg/wikipedia/settings/AppIconDialog$AppIconAdapter;->list:Ljava/lang/Object;

    .line 81
    .line 82
    check-cast p0, Ljava/util/List;

    .line 83
    .line 84
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 85
    .line 86
    .line 87
    move-result p0

    .line 88
    return p0

    .line 89
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 1
    iget v0, p0, Lorg/wikipedia/settings/AppIconDialog$AppIconAdapter;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0

    .line 11
    :pswitch_0
    if-nez p1, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lorg/wikipedia/settings/AppIconDialog$AppIconAdapter;->onItemClickListener:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v0, Lorg/wikipedia/watchlist/WatchlistFragment;

    .line 16
    .line 17
    iget-object v0, v0, Lorg/wikipedia/watchlist/WatchlistFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    .line 18
    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    const/4 p0, 0x0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object p0, p0, Lorg/wikipedia/settings/AppIconDialog$AppIconAdapter;->list:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast p0, Ljava/util/List;

    .line 26
    .line 27
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    instance-of p0, p0, Ljava/util/Date;

    .line 32
    .line 33
    if-eqz p0, :cond_1

    .line 34
    .line 35
    const/4 p0, 0x1

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const/4 p0, 0x2

    .line 38
    :goto_0
    return p0

    .line 39
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
    .end packed-switch
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    iget v3, v0, Lorg/wikipedia/settings/AppIconDialog$AppIconAdapter;->$r8$classId:I

    .line 8
    .line 9
    const/16 v4, 0xa

    .line 10
    .line 11
    const/16 v5, 0x1c

    .line 12
    .line 13
    const v7, 0x7f040520

    .line 14
    .line 15
    .line 16
    const/4 v9, 0x0

    .line 17
    const/4 v11, 0x1

    .line 18
    packed-switch v3, :pswitch_data_0

    .line 19
    .line 20
    .line 21
    iget-object v0, v0, Lorg/wikipedia/settings/AppIconDialog$AppIconAdapter;->list:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v0, Ljava/util/List;

    .line 24
    .line 25
    instance-of v3, v1, Lorg/wikipedia/watchlist/WatchlistFragment$WatchlistSearchBarHolder;

    .line 26
    .line 27
    if-eqz v3, :cond_3

    .line 28
    .line 29
    move-object v0, v1

    .line 30
    check-cast v0, Lorg/wikipedia/watchlist/WatchlistFragment$WatchlistSearchBarHolder;

    .line 31
    .line 32
    iget-object v1, v0, Lorg/wikipedia/watchlist/WatchlistFragment$WatchlistSearchBarHolder;->itemBinding:Lorg/wikipedia/databinding/ViewWatchlistSearchBarBinding;

    .line 33
    .line 34
    iget-object v2, v1, Lorg/wikipedia/databinding/ViewWatchlistSearchBarBinding;->filterCount:Landroid/widget/TextView;

    .line 35
    .line 36
    iget-object v0, v0, Lorg/wikipedia/watchlist/WatchlistFragment$WatchlistSearchBarHolder;->this$0:Lorg/wikipedia/watchlist/WatchlistFragment;

    .line 37
    .line 38
    invoke-virtual {v0}, Lorg/wikipedia/watchlist/WatchlistFragment;->getViewModel()Lorg/wikipedia/watchlist/WatchlistViewModel;

    .line 39
    .line 40
    .line 41
    invoke-static {}, Lorg/wikipedia/watchlist/WatchlistViewModel;->filtersCount()I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-eqz v3, :cond_0

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    const/4 v11, 0x0

    .line 49
    :goto_0
    if-eqz v11, :cond_1

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_1
    const v7, 0x7f04051a

    .line 53
    .line 54
    .line 55
    :goto_1
    if-eqz v11, :cond_2

    .line 56
    .line 57
    const/4 v10, 0x0

    .line 58
    goto :goto_2

    .line 59
    :cond_2
    const/16 v10, 0x8

    .line 60
    .line 61
    :goto_2
    invoke-virtual {v2, v10}, Landroid/view/View;->setVisibility(I)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0}, Lorg/wikipedia/watchlist/WatchlistFragment;->getViewModel()Lorg/wikipedia/watchlist/WatchlistViewModel;

    .line 65
    .line 66
    .line 67
    invoke-static {}, Lorg/wikipedia/watchlist/WatchlistViewModel;->filtersCount()I

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    .line 77
    .line 78
    iget-object v1, v1, Lorg/wikipedia/databinding/ViewWatchlistSearchBarBinding;->filterButton:Landroid/widget/ImageView;

    .line 79
    .line 80
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-static {v0, v7}, Lokhttp3/Cache$Companion;->getThemedColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 89
    .line 90
    .line 91
    goto/16 :goto_e

    .line 92
    .line 93
    :cond_3
    instance-of v3, v1, Lorg/wikipedia/watchlist/WatchlistFragment$WatchlistDateViewHolder;

    .line 94
    .line 95
    if-eqz v3, :cond_4

    .line 96
    .line 97
    check-cast v1, Lorg/wikipedia/watchlist/WatchlistFragment$WatchlistDateViewHolder;

    .line 98
    .line 99
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 104
    .line 105
    .line 106
    check-cast v0, Ljava/util/Date;

    .line 107
    .line 108
    invoke-virtual {v1, v0}, Lorg/wikipedia/watchlist/WatchlistFragment$WatchlistDateViewHolder;->bindItem(Ljava/util/Date;)V

    .line 109
    .line 110
    .line 111
    goto/16 :goto_e

    .line 112
    .line 113
    :cond_4
    check-cast v1, Lorg/wikipedia/watchlist/WatchlistFragment$WatchlistItemViewHolder;

    .line 114
    .line 115
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 120
    .line 121
    .line 122
    check-cast v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$WatchlistItem;

    .line 123
    .line 124
    iget-object v2, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 125
    .line 126
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 127
    .line 128
    .line 129
    check-cast v2, Lorg/wikipedia/watchlist/WatchlistItemView;

    .line 130
    .line 131
    iget-object v1, v1, Lorg/wikipedia/watchlist/WatchlistFragment$WatchlistItemViewHolder;->this$0:Lorg/wikipedia/watchlist/WatchlistFragment;

    .line 132
    .line 133
    invoke-virtual {v1}, Lorg/wikipedia/watchlist/WatchlistFragment;->getViewModel()Lorg/wikipedia/watchlist/WatchlistViewModel;

    .line 134
    .line 135
    .line 136
    move-result-object v3

    .line 137
    iget-object v3, v3, Lorg/wikipedia/watchlist/WatchlistViewModel;->currentSearchQuery:Ljava/lang/String;

    .line 138
    .line 139
    iget-object v5, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$WatchlistItem;->logtype:Ljava/lang/String;

    .line 140
    .line 141
    iget-object v7, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$WatchlistItem;->user:Ljava/lang/String;

    .line 142
    .line 143
    iput-object v0, v2, Lorg/wikipedia/watchlist/WatchlistItemView;->item:Lorg/wikipedia/dataclient/mwapi/MwQueryResult$WatchlistItem;

    .line 144
    .line 145
    iget-object v9, v2, Lorg/wikipedia/watchlist/WatchlistItemView;->binding:Lorg/wikipedia/databinding/ItemWatchlistBinding;

    .line 146
    .line 147
    iget-object v13, v9, Lorg/wikipedia/databinding/ItemWatchlistBinding;->langCodeText:Lorg/wikipedia/views/LangCodeView;

    .line 148
    .line 149
    iget-object v14, v9, Lorg/wikipedia/databinding/ItemWatchlistBinding;->userNameText:Lcom/google/android/material/button/MaterialButton;

    .line 150
    .line 151
    iget-object v15, v9, Lorg/wikipedia/databinding/ItemWatchlistBinding;->summaryText:Lorg/wikipedia/views/GoneIfEmptyTextView;

    .line 152
    .line 153
    iget-object v4, v9, Lorg/wikipedia/databinding/ItemWatchlistBinding;->containerView:Lorg/wikipedia/views/WikiCardView;

    .line 154
    .line 155
    iget-object v8, v9, Lorg/wikipedia/databinding/ItemWatchlistBinding;->diffText:Lcom/google/android/material/button/MaterialButton;

    .line 156
    .line 157
    iget-object v6, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$WatchlistItem;->wiki:Lorg/wikipedia/dataclient/WikiSite;

    .line 158
    .line 159
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 160
    .line 161
    .line 162
    iget-object v6, v6, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 163
    .line 164
    invoke-virtual {v13, v6}, Lorg/wikipedia/views/LangCodeView;->setLangCode(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    sget-object v6, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 168
    .line 169
    iget-object v6, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$WatchlistItem;->parsedComment:Ljava/lang/String;

    .line 170
    .line 171
    invoke-static {v6}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 172
    .line 173
    .line 174
    move-result-object v6

    .line 175
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    .line 176
    .line 177
    .line 178
    move-result v13

    .line 179
    if-nez v13, :cond_5

    .line 180
    .line 181
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 182
    .line 183
    .line 184
    move-result-object v6

    .line 185
    const v13, 0x7f12051f

    .line 186
    .line 187
    .line 188
    invoke-virtual {v6, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v6

    .line 192
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 193
    .line 194
    .line 195
    move v13, v11

    .line 196
    goto :goto_3

    .line 197
    :cond_5
    const/4 v13, 0x0

    .line 198
    :goto_3
    sget-object v10, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    .line 199
    .line 200
    if-eqz v13, :cond_6

    .line 201
    .line 202
    const/4 v12, 0x2

    .line 203
    :goto_4
    const/16 v16, 0x0

    .line 204
    .line 205
    goto :goto_5

    .line 206
    :cond_6
    const/4 v12, 0x0

    .line 207
    goto :goto_4

    .line 208
    :goto_5
    invoke-virtual {v15, v10, v12}, Landroidx/appcompat/widget/AppCompatTextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 212
    .line 213
    .line 214
    move-result-object v10

    .line 215
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 216
    .line 217
    .line 218
    if-eqz v13, :cond_7

    .line 219
    .line 220
    const v13, 0x7f04054f

    .line 221
    .line 222
    .line 223
    goto :goto_6

    .line 224
    :cond_7
    const v13, 0x7f04051a

    .line 225
    .line 226
    .line 227
    :goto_6
    invoke-static {v10, v13}, Lokhttp3/Cache$Companion;->getThemedColor(Landroid/content/Context;I)I

    .line 228
    .line 229
    .line 230
    move-result v10

    .line 231
    invoke-virtual {v15, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 232
    .line 233
    .line 234
    iget-object v10, v9, Lorg/wikipedia/databinding/ItemWatchlistBinding;->timeText:Landroid/widget/TextView;

    .line 235
    .line 236
    sget-object v13, Lorg/wikipedia/util/DateUtil;->DATE_FORMATS:Lj$/util/concurrent/ConcurrentHashMap;

    .line 237
    .line 238
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 239
    .line 240
    .line 241
    move-result-object v13

    .line 242
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 243
    .line 244
    .line 245
    invoke-virtual {v0}, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$WatchlistItem;->getDate()Ljava/util/Date;

    .line 246
    .line 247
    .line 248
    move-result-object v12

    .line 249
    invoke-static {v13}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    .line 250
    .line 251
    .line 252
    move-result v13

    .line 253
    if-eqz v13, :cond_8

    .line 254
    .line 255
    const-string v13, "HH:mm"

    .line 256
    .line 257
    goto :goto_7

    .line 258
    :cond_8
    const-string v13, "hh:mm a"

    .line 259
    .line 260
    :goto_7
    invoke-static {v13, v12}, Lorg/wikipedia/util/DateUtil;->getDateStringWithSkeletonPattern(Ljava/lang/String;Ljava/util/Date;)Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v12

    .line 264
    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 265
    .line 266
    .line 267
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 268
    .line 269
    .line 270
    move-result-object v10

    .line 271
    new-array v12, v11, [Ljava/lang/Object;

    .line 272
    .line 273
    aput-object v7, v12, v16

    .line 274
    .line 275
    const v13, 0x7f12097e

    .line 276
    .line 277
    .line 278
    invoke-virtual {v10, v13, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v10

    .line 282
    invoke-virtual {v14, v10}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 283
    .line 284
    .line 285
    iget-boolean v10, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$WatchlistItem;->isAnon:Z

    .line 286
    .line 287
    if-eqz v10, :cond_9

    .line 288
    .line 289
    const v10, 0x7f080111

    .line 290
    .line 291
    .line 292
    goto :goto_8

    .line 293
    :cond_9
    const v10, 0x7f08020a

    .line 294
    .line 295
    .line 296
    :goto_8
    invoke-virtual {v14, v10}, Lcom/google/android/material/button/MaterialButton;->setIconResource(I)V

    .line 297
    .line 298
    .line 299
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 300
    .line 301
    .line 302
    move-result v10

    .line 303
    if-lez v10, :cond_d

    .line 304
    .line 305
    move/from16 v10, v16

    .line 306
    .line 307
    invoke-virtual {v8, v10}, Landroid/view/View;->setVisibility(I)V

    .line 308
    .line 309
    .line 310
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 311
    .line 312
    .line 313
    move-result-object v10

    .line 314
    const v11, 0x7f12052e

    .line 315
    .line 316
    .line 317
    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object v10

    .line 321
    invoke-virtual {v5, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 322
    .line 323
    .line 324
    move-result v10

    .line 325
    if-eqz v10, :cond_a

    .line 326
    .line 327
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 328
    .line 329
    .line 330
    move-result-object v5

    .line 331
    const v8, 0x7f120a3d

    .line 332
    .line 333
    .line 334
    invoke-virtual {v5, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object v5

    .line 338
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 339
    .line 340
    .line 341
    const v8, 0x7f08018e

    .line 342
    .line 343
    .line 344
    invoke-virtual {v2, v8, v5}, Lorg/wikipedia/watchlist/WatchlistItemView;->setButtonTextAndIconColor(ILjava/lang/String;)V

    .line 345
    .line 346
    .line 347
    goto :goto_9

    .line 348
    :cond_a
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 349
    .line 350
    .line 351
    move-result-object v10

    .line 352
    const v11, 0x7f120533

    .line 353
    .line 354
    .line 355
    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 356
    .line 357
    .line 358
    move-result-object v10

    .line 359
    invoke-virtual {v5, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 360
    .line 361
    .line 362
    move-result v10

    .line 363
    if-eqz v10, :cond_b

    .line 364
    .line 365
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 366
    .line 367
    .line 368
    move-result-object v5

    .line 369
    const v8, 0x7f120a3e

    .line 370
    .line 371
    .line 372
    invoke-virtual {v5, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 373
    .line 374
    .line 375
    move-result-object v5

    .line 376
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 377
    .line 378
    .line 379
    const v8, 0x7f080123

    .line 380
    .line 381
    .line 382
    invoke-virtual {v2, v8, v5}, Lorg/wikipedia/watchlist/WatchlistItemView;->setButtonTextAndIconColor(ILjava/lang/String;)V

    .line 383
    .line 384
    .line 385
    goto :goto_9

    .line 386
    :cond_b
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 387
    .line 388
    .line 389
    move-result-object v10

    .line 390
    const v11, 0x7f12051c

    .line 391
    .line 392
    .line 393
    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 394
    .line 395
    .line 396
    move-result-object v10

    .line 397
    invoke-virtual {v5, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 398
    .line 399
    .line 400
    move-result v5

    .line 401
    if-eqz v5, :cond_c

    .line 402
    .line 403
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 404
    .line 405
    .line 406
    move-result-object v5

    .line 407
    const v8, 0x7f120a3c

    .line 408
    .line 409
    .line 410
    invoke-virtual {v5, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 411
    .line 412
    .line 413
    move-result-object v5

    .line 414
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 415
    .line 416
    .line 417
    const v8, 0x7f08014d

    .line 418
    .line 419
    .line 420
    invoke-virtual {v2, v8, v5}, Lorg/wikipedia/watchlist/WatchlistItemView;->setButtonTextAndIconColor(ILjava/lang/String;)V

    .line 421
    .line 422
    .line 423
    goto :goto_9

    .line 424
    :cond_c
    const/16 v5, 0x8

    .line 425
    .line 426
    invoke-virtual {v8, v5}, Landroid/view/View;->setVisibility(I)V

    .line 427
    .line 428
    .line 429
    iget-object v5, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$WatchlistItem;->logdisplay:Ljava/lang/String;

    .line 430
    .line 431
    invoke-static {v5}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 432
    .line 433
    .line 434
    move-result-object v6

    .line 435
    :goto_9
    const/high16 v5, 0x3f000000    # 0.5f

    .line 436
    .line 437
    invoke-virtual {v4, v5}, Landroid/view/View;->setAlpha(F)V

    .line 438
    .line 439
    .line 440
    const/4 v10, 0x0

    .line 441
    invoke-virtual {v4, v10}, Lcom/google/android/material/card/MaterialCardView;->setClickable(Z)V

    .line 442
    .line 443
    .line 444
    goto :goto_d

    .line 445
    :cond_d
    move/from16 v10, v16

    .line 446
    .line 447
    iget v5, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$WatchlistItem;->newlen:I

    .line 448
    .line 449
    iget v12, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$WatchlistItem;->oldlen:I

    .line 450
    .line 451
    sub-int/2addr v5, v12

    .line 452
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 453
    .line 454
    .line 455
    move-result-object v12

    .line 456
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 457
    .line 458
    .line 459
    invoke-static {v12, v5}, Lorg/wikipedia/util/StringUtil;->getDiffBytesText(Landroid/content/Context;I)Ljava/lang/String;

    .line 460
    .line 461
    .line 462
    move-result-object v12

    .line 463
    invoke-virtual {v2, v10, v12}, Lorg/wikipedia/watchlist/WatchlistItemView;->setButtonTextAndIconColor(ILjava/lang/String;)V

    .line 464
    .line 465
    .line 466
    if-ltz v5, :cond_f

    .line 467
    .line 468
    if-lez v5, :cond_e

    .line 469
    .line 470
    const v12, 0x7f0405d1

    .line 471
    .line 472
    .line 473
    goto :goto_a

    .line 474
    :cond_e
    const v12, 0x7f04054f

    .line 475
    .line 476
    .line 477
    :goto_a
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 478
    .line 479
    .line 480
    move-result-object v5

    .line 481
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 482
    .line 483
    .line 484
    invoke-static {v5, v12}, Lokhttp3/Cache$Companion;->getThemedColor(Landroid/content/Context;I)I

    .line 485
    .line 486
    .line 487
    move-result v5

    .line 488
    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 489
    .line 490
    .line 491
    :goto_b
    const/4 v10, 0x0

    .line 492
    goto :goto_c

    .line 493
    :cond_f
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 494
    .line 495
    .line 496
    move-result-object v5

    .line 497
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 498
    .line 499
    .line 500
    const v10, 0x7f0401c3

    .line 501
    .line 502
    .line 503
    invoke-static {v5, v10}, Lokhttp3/Cache$Companion;->getThemedColor(Landroid/content/Context;I)I

    .line 504
    .line 505
    .line 506
    move-result v5

    .line 507
    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 508
    .line 509
    .line 510
    goto :goto_b

    .line 511
    :goto_c
    invoke-virtual {v8, v10}, Landroid/view/View;->setVisibility(I)V

    .line 512
    .line 513
    .line 514
    const/high16 v5, 0x3f800000    # 1.0f

    .line 515
    .line 516
    invoke-virtual {v4, v5}, Landroid/view/View;->setAlpha(F)V

    .line 517
    .line 518
    .line 519
    invoke-virtual {v4, v11}, Lcom/google/android/material/card/MaterialCardView;->setClickable(Z)V

    .line 520
    .line 521
    .line 522
    :goto_d
    iget-object v4, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$WatchlistItem;->wiki:Lorg/wikipedia/dataclient/WikiSite;

    .line 523
    .line 524
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 525
    .line 526
    .line 527
    iget-object v4, v4, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 528
    .line 529
    invoke-static {v2, v4}, Lcoil3/util/BitmapsKt;->setLayoutDirectionByLang(Landroid/view/View;Ljava/lang/String;)V

    .line 530
    .line 531
    .line 532
    iget-object v4, v9, Lorg/wikipedia/databinding/ItemWatchlistBinding;->titleText:Landroid/widget/TextView;

    .line 533
    .line 534
    iget-object v0, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$WatchlistItem;->title:Ljava/lang/String;

    .line 535
    .line 536
    invoke-static {v4, v0, v3}, Lorg/wikipedia/util/StringUtil;->setHighlightedAndBoldenedText(Landroid/widget/TextView;Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 537
    .line 538
    .line 539
    invoke-static {v14, v7, v3}, Lorg/wikipedia/util/StringUtil;->setHighlightedAndBoldenedText(Landroid/widget/TextView;Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 540
    .line 541
    .line 542
    invoke-static {v15, v6, v3}, Lorg/wikipedia/util/StringUtil;->setHighlightedAndBoldenedText(Landroid/widget/TextView;Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 543
    .line 544
    .line 545
    invoke-virtual {v2, v1}, Lorg/wikipedia/watchlist/WatchlistItemView;->setCallback(Lorg/wikipedia/watchlist/WatchlistItemView$Callback;)V

    .line 546
    .line 547
    .line 548
    :goto_e
    return-void

    .line 549
    :pswitch_0
    check-cast v1, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog$ResultItemHolder;

    .line 550
    .line 551
    iget-object v0, v0, Lorg/wikipedia/settings/AppIconDialog$AppIconAdapter;->list:Ljava/lang/Object;

    .line 552
    .line 553
    check-cast v0, Ljava/util/List;

    .line 554
    .line 555
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 556
    .line 557
    .line 558
    move-result-object v0

    .line 559
    check-cast v0, Lorg/wikipedia/suggestededits/ImageTag;

    .line 560
    .line 561
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 562
    .line 563
    .line 564
    iget-object v2, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 565
    .line 566
    const v3, 0x7f09031b

    .line 567
    .line 568
    .line 569
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 570
    .line 571
    .line 572
    move-result-object v3

    .line 573
    check-cast v3, Landroid/widget/TextView;

    .line 574
    .line 575
    iget-object v4, v0, Lorg/wikipedia/suggestededits/ImageTag;->label:Ljava/lang/String;

    .line 576
    .line 577
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 578
    .line 579
    .line 580
    const v3, 0x7f09031a

    .line 581
    .line 582
    .line 583
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 584
    .line 585
    .line 586
    move-result-object v3

    .line 587
    check-cast v3, Landroid/widget/TextView;

    .line 588
    .line 589
    iget-object v4, v0, Lorg/wikipedia/suggestededits/ImageTag;->description:Ljava/lang/String;

    .line 590
    .line 591
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 592
    .line 593
    .line 594
    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 595
    .line 596
    .line 597
    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 598
    .line 599
    .line 600
    return-void

    .line 601
    :pswitch_1
    check-cast v1, Lorg/wikipedia/places/PlacesFragment$RecyclerViewItemHolder;

    .line 602
    .line 603
    iget-object v3, v0, Lorg/wikipedia/settings/AppIconDialog$AppIconAdapter;->list:Ljava/lang/Object;

    .line 604
    .line 605
    check-cast v3, Ljava/util/List;

    .line 606
    .line 607
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 608
    .line 609
    .line 610
    move-result-object v2

    .line 611
    check-cast v2, Lorg/wikipedia/dataclient/page/NearbyPage;

    .line 612
    .line 613
    iget-object v0, v0, Lorg/wikipedia/settings/AppIconDialog$AppIconAdapter;->onItemClickListener:Ljava/lang/Object;

    .line 614
    .line 615
    check-cast v0, Lorg/wikipedia/places/PlacesFragment;

    .line 616
    .line 617
    sget-object v3, Lorg/wikipedia/places/PlacesFragment;->CLUSTER_FONT_STACK:[Ljava/lang/String;

    .line 618
    .line 619
    invoke-virtual {v0}, Lorg/wikipedia/places/PlacesFragment;->getViewModel()Lorg/wikipedia/places/PlacesFragmentViewModel;

    .line 620
    .line 621
    .line 622
    move-result-object v0

    .line 623
    iget-object v0, v0, Lorg/wikipedia/places/PlacesFragmentViewModel;->lastKnownLocation:Landroid/location/Location;

    .line 624
    .line 625
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 626
    .line 627
    .line 628
    iput-object v2, v1, Lorg/wikipedia/places/PlacesFragment$RecyclerViewItemHolder;->page:Lorg/wikipedia/dataclient/page/NearbyPage;

    .line 629
    .line 630
    iget-object v1, v1, Lorg/wikipedia/places/PlacesFragment$RecyclerViewItemHolder;->binding:Lretrofit2/Retrofit;

    .line 631
    .line 632
    iget-object v3, v1, Lretrofit2/Retrofit;->callAdapterFactories:Ljava/lang/Object;

    .line 633
    .line 634
    check-cast v3, Landroid/widget/TextView;

    .line 635
    .line 636
    sget-object v4, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 637
    .line 638
    iget-object v4, v2, Lorg/wikipedia/dataclient/page/NearbyPage;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 639
    .line 640
    invoke-virtual {v4}, Lorg/wikipedia/page/PageTitle;->getDisplayText()Ljava/lang/String;

    .line 641
    .line 642
    .line 643
    move-result-object v6

    .line 644
    invoke-static {v6}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 645
    .line 646
    .line 647
    move-result-object v6

    .line 648
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 649
    .line 650
    .line 651
    iget-object v3, v1, Lretrofit2/Retrofit;->callFactory:Ljava/lang/Object;

    .line 652
    .line 653
    check-cast v3, Lorg/wikipedia/views/GoneIfEmptyTextView;

    .line 654
    .line 655
    iget-object v6, v4, Lorg/wikipedia/page/PageTitle;->description:Ljava/lang/String;

    .line 656
    .line 657
    invoke-static {v6}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 658
    .line 659
    .line 660
    move-result-object v6

    .line 661
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 662
    .line 663
    .line 664
    iget-object v6, v4, Lorg/wikipedia/page/PageTitle;->description:Ljava/lang/String;

    .line 665
    .line 666
    if-eqz v6, :cond_11

    .line 667
    .line 668
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 669
    .line 670
    .line 671
    move-result v6

    .line 672
    if-nez v6, :cond_10

    .line 673
    .line 674
    goto :goto_f

    .line 675
    :cond_10
    const/4 v10, 0x0

    .line 676
    goto :goto_10

    .line 677
    :cond_11
    :goto_f
    const/16 v10, 0x8

    .line 678
    .line 679
    :goto_10
    invoke-virtual {v3, v10}, Landroid/view/View;->setVisibility(I)V

    .line 680
    .line 681
    .line 682
    if-eqz v0, :cond_12

    .line 683
    .line 684
    iget-object v3, v1, Lretrofit2/Retrofit;->baseUrl:Ljava/lang/Object;

    .line 685
    .line 686
    check-cast v3, Landroid/widget/TextView;

    .line 687
    .line 688
    invoke-virtual {v2}, Lorg/wikipedia/dataclient/page/NearbyPage;->getLocation()Landroid/location/Location;

    .line 689
    .line 690
    .line 691
    move-result-object v2

    .line 692
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 693
    .line 694
    .line 695
    move-result-object v6

    .line 696
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 697
    .line 698
    .line 699
    invoke-static {v0, v2, v6}, Lorg/wikipedia/util/GeoUtil;->getDistanceWithUnit(Landroid/location/Location;Landroid/location/Location;Ljava/util/Locale;)Ljava/lang/String;

    .line 700
    .line 701
    .line 702
    move-result-object v0

    .line 703
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 704
    .line 705
    .line 706
    :cond_12
    iget-object v0, v4, Lorg/wikipedia/page/PageTitle;->thumbUrl:Ljava/lang/String;

    .line 707
    .line 708
    if-eqz v0, :cond_13

    .line 709
    .line 710
    iget-object v1, v1, Lretrofit2/Retrofit;->converterFactories:Ljava/lang/Object;

    .line 711
    .line 712
    check-cast v1, Lcom/google/android/material/imageview/ShapeableImageView;

    .line 713
    .line 714
    invoke-static {v1, v0, v9, v5}, Lorg/wikipedia/views/ViewUtil;->loadImage$default(Landroid/widget/ImageView;Ljava/lang/String;Lorg/wikipedia/views/imageservice/ImageLoadListener;I)V

    .line 715
    .line 716
    .line 717
    :cond_13
    return-void

    .line 718
    :pswitch_2
    check-cast v1, Lorg/wikipedia/page/references/ReferenceDialog$ViewHolder;

    .line 719
    .line 720
    iget-object v0, v0, Lorg/wikipedia/settings/AppIconDialog$AppIconAdapter;->list:Ljava/lang/Object;

    .line 721
    .line 722
    check-cast v0, Ljava/util/List;

    .line 723
    .line 724
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 725
    .line 726
    .line 727
    move-result-object v3

    .line 728
    check-cast v3, Lorg/wikipedia/page/references/PageReferences$Reference;

    .line 729
    .line 730
    iget-object v3, v3, Lorg/wikipedia/page/references/PageReferences$Reference;->text:Ljava/lang/String;

    .line 731
    .line 732
    const-string v5, "lower"

    .line 733
    .line 734
    const/4 v10, 0x0

    .line 735
    invoke-static {v3, v5, v10}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 736
    .line 737
    .line 738
    move-result v5

    .line 739
    const-string v6, "alpha "

    .line 740
    .line 741
    invoke-static {v3, v6, v10}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 742
    .line 743
    .line 744
    move-result v6

    .line 745
    const-string v7, ""

    .line 746
    .line 747
    if-eqz v6, :cond_16

    .line 748
    .line 749
    const-string v6, " "

    .line 750
    .line 751
    filled-new-array {v6}, [Ljava/lang/String;

    .line 752
    .line 753
    .line 754
    move-result-object v6

    .line 755
    invoke-static {v3, v6}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/util/List;

    .line 756
    .line 757
    .line 758
    move-result-object v3

    .line 759
    sget-object v6, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 760
    .line 761
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    .line 762
    .line 763
    .line 764
    move-result-object v3

    .line 765
    check-cast v3, Ljava/lang/String;

    .line 766
    .line 767
    const-string v6, "]"

    .line 768
    .line 769
    invoke-static {v3, v6, v7}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 770
    .line 771
    .line 772
    move-result-object v3

    .line 773
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 774
    .line 775
    .line 776
    move-result v3

    .line 777
    move-object v6, v7

    .line 778
    :goto_11
    add-int/lit8 v3, v3, -0x1

    .line 779
    .line 780
    if-ltz v3, :cond_14

    .line 781
    .line 782
    rem-int/lit8 v8, v3, 0x1a

    .line 783
    .line 784
    add-int/lit8 v8, v8, 0x41

    .line 785
    .line 786
    int-to-char v8, v8

    .line 787
    new-instance v9, Ljava/lang/StringBuilder;

    .line 788
    .line 789
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 790
    .line 791
    .line 792
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 793
    .line 794
    .line 795
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 796
    .line 797
    .line 798
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 799
    .line 800
    .line 801
    move-result-object v6

    .line 802
    div-int/lit8 v3, v3, 0x1a

    .line 803
    .line 804
    goto :goto_11

    .line 805
    :cond_14
    if-eqz v5, :cond_15

    .line 806
    .line 807
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 808
    .line 809
    .line 810
    move-result-object v3

    .line 811
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 812
    .line 813
    .line 814
    invoke-virtual {v6, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 815
    .line 816
    .line 817
    move-result-object v3

    .line 818
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 819
    .line 820
    .line 821
    goto :goto_12

    .line 822
    :cond_15
    move-object v3, v6

    .line 823
    :cond_16
    :goto_12
    const-string v5, "[\\[\\]]"

    .line 824
    .line 825
    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 826
    .line 827
    .line 828
    move-result-object v5

    .line 829
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 830
    .line 831
    .line 832
    invoke-virtual {v5, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 833
    .line 834
    .line 835
    move-result-object v3

    .line 836
    invoke-virtual {v3, v7}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    .line 837
    .line 838
    .line 839
    move-result-object v3

    .line 840
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 841
    .line 842
    .line 843
    const-string v5, "."

    .line 844
    .line 845
    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 846
    .line 847
    .line 848
    move-result-object v3

    .line 849
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 850
    .line 851
    .line 852
    move-result-object v0

    .line 853
    check-cast v0, Lorg/wikipedia/page/references/PageReferences$Reference;

    .line 854
    .line 855
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 856
    .line 857
    .line 858
    iget-object v2, v1, Lorg/wikipedia/page/references/ReferenceDialog$ViewHolder;->binding:Lokio/internal/DefaultSocket;

    .line 859
    .line 860
    iget-object v5, v2, Lokio/internal/DefaultSocket;->source:Ljava/lang/Object;

    .line 861
    .line 862
    check-cast v5, Lorg/wikipedia/views/AppTextView;

    .line 863
    .line 864
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 865
    .line 866
    .line 867
    iget-object v2, v2, Lokio/internal/DefaultSocket;->socket:Ljava/lang/Object;

    .line 868
    .line 869
    check-cast v2, Landroid/widget/LinearLayout;

    .line 870
    .line 871
    iget-object v3, v1, Lorg/wikipedia/page/references/ReferenceDialog$ViewHolder;->this$0:Lorg/wikipedia/page/references/ReferenceDialog;

    .line 872
    .line 873
    new-instance v5, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;

    .line 874
    .line 875
    invoke-direct {v5, v3, v0, v1, v4}, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 876
    .line 877
    .line 878
    invoke-virtual {v2, v5}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 879
    .line 880
    .line 881
    return-void

    .line 882
    :pswitch_3
    move-object v0, v1

    .line 883
    check-cast v0, Lorg/wikipedia/page/edithistory/EditHistoryListActivity$SearchBarViewHolder;

    .line 884
    .line 885
    iget-object v1, v0, Lorg/wikipedia/page/edithistory/EditHistoryListActivity$SearchBarViewHolder;->binding:Lorg/wikipedia/databinding/ViewWatchlistSearchBarBinding;

    .line 886
    .line 887
    iget-object v2, v1, Lorg/wikipedia/databinding/ViewWatchlistSearchBarBinding;->filterButton:Landroid/widget/ImageView;

    .line 888
    .line 889
    iget-object v1, v1, Lorg/wikipedia/databinding/ViewWatchlistSearchBarBinding;->rootView:Lorg/wikipedia/views/WikiCardView;

    .line 890
    .line 891
    iget-object v3, v0, Lorg/wikipedia/page/edithistory/EditHistoryListActivity$SearchBarViewHolder;->this$0:Lorg/wikipedia/page/edithistory/EditHistoryListActivity;

    .line 892
    .line 893
    sget v4, Lorg/wikipedia/page/edithistory/EditHistoryListActivity;->$r8$clinit:I

    .line 894
    .line 895
    invoke-virtual {v3}, Lorg/wikipedia/page/edithistory/EditHistoryListActivity;->getViewModel()Lorg/wikipedia/page/edithistory/EditHistoryListViewModel;

    .line 896
    .line 897
    .line 898
    move-result-object v4

    .line 899
    iget-object v4, v4, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel;->editHistoryStatsData:Landroidx/lifecycle/MutableLiveData;

    .line 900
    .line 901
    invoke-virtual {v4}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    .line 902
    .line 903
    .line 904
    move-result-object v4

    .line 905
    instance-of v4, v4, Lorg/wikipedia/util/Resource$Success;

    .line 906
    .line 907
    if-eqz v4, :cond_17

    .line 908
    .line 909
    const/4 v10, 0x0

    .line 910
    goto :goto_13

    .line 911
    :cond_17
    const/16 v10, 0x8

    .line 912
    .line 913
    :goto_13
    invoke-virtual {v2, v10}, Landroid/view/View;->setVisibility(I)V

    .line 914
    .line 915
    .line 916
    new-instance v4, Landroid/util/TypedValue;

    .line 917
    .line 918
    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    .line 919
    .line 920
    .line 921
    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 922
    .line 923
    .line 924
    move-result-object v5

    .line 925
    const v6, 0x7f040061

    .line 926
    .line 927
    .line 928
    invoke-virtual {v5, v6, v4, v11}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 929
    .line 930
    .line 931
    move-result v5

    .line 932
    if-eqz v5, :cond_18

    .line 933
    .line 934
    move-object v9, v4

    .line 935
    :cond_18
    if-eqz v9, :cond_19

    .line 936
    .line 937
    iget v4, v9, Landroid/util/TypedValue;->data:I

    .line 938
    .line 939
    invoke-virtual {v1, v4}, Lcom/google/android/material/card/MaterialCardView;->setCardBackgroundColor(I)V

    .line 940
    .line 941
    .line 942
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 943
    .line 944
    new-instance v4, Lorg/wikipedia/page/edithistory/EditHistoryListActivity$$ExternalSyntheticLambda2;

    .line 945
    .line 946
    const/4 v5, 0x2

    .line 947
    invoke-direct {v4, v3, v5}, Lorg/wikipedia/page/edithistory/EditHistoryListActivity$$ExternalSyntheticLambda2;-><init>(Lorg/wikipedia/page/edithistory/EditHistoryListActivity;I)V

    .line 948
    .line 949
    .line 950
    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 951
    .line 952
    .line 953
    new-instance v0, Lorg/wikipedia/page/edithistory/EditHistoryListActivity$$ExternalSyntheticLambda2;

    .line 954
    .line 955
    const/4 v4, 0x3

    .line 956
    invoke-direct {v0, v3, v4}, Lorg/wikipedia/page/edithistory/EditHistoryListActivity$$ExternalSyntheticLambda2;-><init>(Lorg/wikipedia/page/edithistory/EditHistoryListActivity;I)V

    .line 957
    .line 958
    .line 959
    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 960
    .line 961
    .line 962
    new-array v0, v11, [Landroid/view/View;

    .line 963
    .line 964
    const/4 v10, 0x0

    .line 965
    aput-object v2, v0, v10

    .line 966
    .line 967
    aget-object v0, v0, v10

    .line 968
    .line 969
    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    .line 970
    .line 971
    .line 972
    move-result-object v2

    .line 973
    invoke-static {v0, v2}, Lkotlin/text/RegexKt;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 974
    .line 975
    .line 976
    invoke-virtual {v1, v10}, Landroid/view/View;->setVisibility(I)V

    .line 977
    .line 978
    .line 979
    goto :goto_14

    .line 980
    :cond_19
    const-string v0, "Attribute not found; ID=2130968673"

    .line 981
    .line 982
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 983
    .line 984
    .line 985
    :goto_14
    return-void

    .line 986
    :pswitch_4
    check-cast v1, Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment$ShareRecyclerViewItemHolder;

    .line 987
    .line 988
    iget-object v0, v0, Lorg/wikipedia/settings/AppIconDialog$AppIconAdapter;->list:Ljava/lang/Object;

    .line 989
    .line 990
    check-cast v0, Ljava/util/List;

    .line 991
    .line 992
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 993
    .line 994
    .line 995
    move-result-object v0

    .line 996
    check-cast v0, Lorg/wikipedia/dataclient/page/PageSummary;

    .line 997
    .line 998
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 999
    .line 1000
    .line 1001
    iget-object v2, v1, Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment$ShareRecyclerViewItemHolder;->binding:Lokio/internal/DefaultSocket;

    .line 1002
    .line 1003
    iget-object v3, v2, Lokio/internal/DefaultSocket;->sink:Ljava/lang/Object;

    .line 1004
    .line 1005
    check-cast v3, Landroid/widget/TextView;

    .line 1006
    .line 1007
    sget-object v5, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 1008
    .line 1009
    invoke-virtual {v0}, Lorg/wikipedia/dataclient/page/PageSummary;->getDisplayTitle()Ljava/lang/String;

    .line 1010
    .line 1011
    .line 1012
    move-result-object v5

    .line 1013
    invoke-static {v5}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 1014
    .line 1015
    .line 1016
    move-result-object v5

    .line 1017
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1018
    .line 1019
    .line 1020
    iget-object v3, v2, Lokio/internal/DefaultSocket;->closeBits:Ljava/lang/Object;

    .line 1021
    .line 1022
    check-cast v3, Lorg/wikipedia/views/GoneIfEmptyTextView;

    .line 1023
    .line 1024
    iget-object v5, v0, Lorg/wikipedia/dataclient/page/PageSummary;->description:Ljava/lang/String;

    .line 1025
    .line 1026
    invoke-static {v5}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 1027
    .line 1028
    .line 1029
    move-result-object v5

    .line 1030
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1031
    .line 1032
    .line 1033
    iget-object v5, v0, Lorg/wikipedia/dataclient/page/PageSummary;->description:Ljava/lang/String;

    .line 1034
    .line 1035
    if-eqz v5, :cond_1b

    .line 1036
    .line 1037
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 1038
    .line 1039
    .line 1040
    move-result v5

    .line 1041
    if-nez v5, :cond_1a

    .line 1042
    .line 1043
    goto :goto_15

    .line 1044
    :cond_1a
    const/4 v10, 0x0

    .line 1045
    goto :goto_16

    .line 1046
    :cond_1b
    :goto_15
    const/16 v10, 0x8

    .line 1047
    .line 1048
    :goto_16
    invoke-virtual {v3, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1049
    .line 1050
    .line 1051
    invoke-virtual {v0}, Lorg/wikipedia/dataclient/page/PageSummary;->getThumbnailUrl()Ljava/lang/String;

    .line 1052
    .line 1053
    .line 1054
    move-result-object v0

    .line 1055
    iget-object v1, v1, Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment$ShareRecyclerViewItemHolder;->this$0:Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment;

    .line 1056
    .line 1057
    if-eqz v0, :cond_1c

    .line 1058
    .line 1059
    iget-object v2, v2, Lokio/internal/DefaultSocket;->source:Ljava/lang/Object;

    .line 1060
    .line 1061
    check-cast v2, Lcom/google/android/material/imageview/ShapeableImageView;

    .line 1062
    .line 1063
    new-instance v3, Lorg/wikipedia/media/AvPlayer;

    .line 1064
    .line 1065
    invoke-direct {v3, v4, v1}, Lorg/wikipedia/media/AvPlayer;-><init>(ILjava/lang/Object;)V

    .line 1066
    .line 1067
    .line 1068
    const/16 v1, 0xc

    .line 1069
    .line 1070
    invoke-static {v2, v0, v3, v1}, Lorg/wikipedia/views/ViewUtil;->loadImage$default(Landroid/widget/ImageView;Ljava/lang/String;Lorg/wikipedia/views/imageservice/ImageLoadListener;I)V

    .line 1071
    .line 1072
    .line 1073
    goto :goto_17

    .line 1074
    :cond_1c
    iget v0, v1, Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment;->loadedImagesForShare:I

    .line 1075
    .line 1076
    add-int/2addr v0, v11

    .line 1077
    iput v0, v1, Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment;->loadedImagesForShare:I

    .line 1078
    .line 1079
    :goto_17
    return-void

    .line 1080
    :pswitch_5
    check-cast v1, Lorg/wikipedia/gallery/GalleryThumbnailScrollView$GalleryItemHolder;

    .line 1081
    .line 1082
    iget-object v0, v0, Lorg/wikipedia/settings/AppIconDialog$AppIconAdapter;->list:Ljava/lang/Object;

    .line 1083
    .line 1084
    check-cast v0, Ljava/util/List;

    .line 1085
    .line 1086
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1087
    .line 1088
    .line 1089
    move-result-object v0

    .line 1090
    check-cast v0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    .line 1091
    .line 1092
    iget-object v2, v1, Lorg/wikipedia/gallery/GalleryThumbnailScrollView$GalleryItemHolder;->imageView:Landroid/widget/ImageView;

    .line 1093
    .line 1094
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1095
    .line 1096
    .line 1097
    iput-object v0, v1, Lorg/wikipedia/gallery/GalleryThumbnailScrollView$GalleryItemHolder;->galleryItem:Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    .line 1098
    .line 1099
    invoke-virtual {v0}, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->imageInfo()Lorg/wikipedia/gallery/ImageInfo;

    .line 1100
    .line 1101
    .line 1102
    move-result-object v0

    .line 1103
    if-eqz v0, :cond_1d

    .line 1104
    .line 1105
    invoke-virtual {v2, v11}, Landroid/view/View;->setFocusable(Z)V

    .line 1106
    .line 1107
    .line 1108
    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1109
    .line 1110
    .line 1111
    invoke-virtual {v2, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1112
    .line 1113
    .line 1114
    iget-object v0, v0, Lorg/wikipedia/gallery/ImageInfo;->thumbUrl:Ljava/lang/String;

    .line 1115
    .line 1116
    invoke-static {v2, v0, v9, v5}, Lorg/wikipedia/views/ViewUtil;->loadImage$default(Landroid/widget/ImageView;Ljava/lang/String;Lorg/wikipedia/views/imageservice/ImageLoadListener;I)V

    .line 1117
    .line 1118
    .line 1119
    :cond_1d
    return-void

    .line 1120
    :pswitch_6
    const/4 v5, 0x2

    .line 1121
    check-cast v1, Lorg/wikipedia/feed/onthisday/OnThisDayPagesViewHolder;

    .line 1122
    .line 1123
    iget-object v0, v0, Lorg/wikipedia/settings/AppIconDialog$AppIconAdapter;->list:Ljava/lang/Object;

    .line 1124
    .line 1125
    check-cast v0, Ljava/util/List;

    .line 1126
    .line 1127
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1128
    .line 1129
    .line 1130
    move-result-object v0

    .line 1131
    check-cast v0, Lorg/wikipedia/dataclient/page/PageSummary;

    .line 1132
    .line 1133
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1134
    .line 1135
    .line 1136
    iget-object v2, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 1137
    .line 1138
    const v3, 0x7f0901a3

    .line 1139
    .line 1140
    .line 1141
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 1142
    .line 1143
    .line 1144
    move-result-object v3

    .line 1145
    check-cast v3, Landroid/widget/TextView;

    .line 1146
    .line 1147
    const v4, 0x7f0906c3

    .line 1148
    .line 1149
    .line 1150
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 1151
    .line 1152
    .line 1153
    move-result-object v2

    .line 1154
    check-cast v2, Landroid/widget/TextView;

    .line 1155
    .line 1156
    iput-object v0, v1, Lorg/wikipedia/feed/onthisday/OnThisDayPagesViewHolder;->selectedPage:Lorg/wikipedia/dataclient/page/PageSummary;

    .line 1157
    .line 1158
    iget-object v4, v0, Lorg/wikipedia/dataclient/page/PageSummary;->description:Ljava/lang/String;

    .line 1159
    .line 1160
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1161
    .line 1162
    .line 1163
    iget-object v4, v0, Lorg/wikipedia/dataclient/page/PageSummary;->description:Ljava/lang/String;

    .line 1164
    .line 1165
    if-eqz v4, :cond_1f

    .line 1166
    .line 1167
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 1168
    .line 1169
    .line 1170
    move-result v4

    .line 1171
    if-nez v4, :cond_1e

    .line 1172
    .line 1173
    goto :goto_18

    .line 1174
    :cond_1e
    const/4 v10, 0x0

    .line 1175
    goto :goto_19

    .line 1176
    :cond_1f
    :goto_18
    const/16 v10, 0x8

    .line 1177
    .line 1178
    :goto_19
    invoke-virtual {v3, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1179
    .line 1180
    .line 1181
    iget-object v3, v0, Lorg/wikipedia/dataclient/page/PageSummary;->description:Ljava/lang/String;

    .line 1182
    .line 1183
    if-eqz v3, :cond_21

    .line 1184
    .line 1185
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 1186
    .line 1187
    .line 1188
    move-result v3

    .line 1189
    if-nez v3, :cond_20

    .line 1190
    .line 1191
    goto :goto_1a

    .line 1192
    :cond_20
    move v8, v11

    .line 1193
    goto :goto_1b

    .line 1194
    :cond_21
    :goto_1a
    move v8, v5

    .line 1195
    :goto_1b
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 1196
    .line 1197
    .line 1198
    sget-object v3, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 1199
    .line 1200
    invoke-virtual {v0}, Lorg/wikipedia/dataclient/page/PageSummary;->getDisplayTitle()Ljava/lang/String;

    .line 1201
    .line 1202
    .line 1203
    move-result-object v3

    .line 1204
    invoke-static {v3}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 1205
    .line 1206
    .line 1207
    move-result-object v3

    .line 1208
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1209
    .line 1210
    .line 1211
    invoke-virtual {v0}, Lorg/wikipedia/dataclient/page/PageSummary;->getThumbnailUrl()Ljava/lang/String;

    .line 1212
    .line 1213
    .line 1214
    move-result-object v0

    .line 1215
    iget-object v2, v1, Lorg/wikipedia/feed/onthisday/OnThisDayPagesViewHolder;->imageContainer:Landroid/widget/FrameLayout;

    .line 1216
    .line 1217
    if-eqz v0, :cond_22

    .line 1218
    .line 1219
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 1220
    .line 1221
    .line 1222
    move-result v3

    .line 1223
    if-nez v3, :cond_23

    .line 1224
    .line 1225
    :cond_22
    const/16 v5, 0x8

    .line 1226
    .line 1227
    goto :goto_1c

    .line 1228
    :cond_23
    const/4 v10, 0x0

    .line 1229
    invoke-virtual {v2, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1230
    .line 1231
    .line 1232
    iget-object v1, v1, Lorg/wikipedia/feed/onthisday/OnThisDayPagesViewHolder;->image:Lorg/wikipedia/views/FaceAndColorDetectImageView;

    .line 1233
    .line 1234
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 1235
    .line 1236
    .line 1237
    move-result-object v0

    .line 1238
    sget v2, Lorg/wikipedia/views/FaceAndColorDetectImageView;->$r8$clinit:I

    .line 1239
    .line 1240
    invoke-virtual {v1, v0, v9}, Lorg/wikipedia/views/FaceAndColorDetectImageView;->loadImage(Landroid/net/Uri;Lorg/wikipedia/views/imageservice/ImageLoadListener;)V

    .line 1241
    .line 1242
    .line 1243
    goto :goto_1d

    .line 1244
    :goto_1c
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1245
    .line 1246
    .line 1247
    :goto_1d
    return-void

    .line 1248
    :pswitch_7
    check-cast v1, Lorg/wikipedia/categories/CategoryDialog$CategoryItemHolder;

    .line 1249
    .line 1250
    iget-object v0, v0, Lorg/wikipedia/settings/AppIconDialog$AppIconAdapter;->list:Ljava/lang/Object;

    .line 1251
    .line 1252
    check-cast v0, Ljava/util/List;

    .line 1253
    .line 1254
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1255
    .line 1256
    .line 1257
    move-result-object v0

    .line 1258
    check-cast v0, Lorg/wikipedia/page/PageTitle;

    .line 1259
    .line 1260
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1261
    .line 1262
    .line 1263
    iget-object v1, v1, Lorg/wikipedia/categories/CategoryDialog$CategoryItemHolder;->view:Lorg/wikipedia/views/PageItemView;

    .line 1264
    .line 1265
    invoke-virtual {v1, v0}, Lorg/wikipedia/views/PageItemView;->setItem(Ljava/lang/Object;)V

    .line 1266
    .line 1267
    .line 1268
    sget-object v2, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 1269
    .line 1270
    invoke-virtual {v0}, Lorg/wikipedia/page/PageTitle;->getDisplayText()Ljava/lang/String;

    .line 1271
    .line 1272
    .line 1273
    move-result-object v0

    .line 1274
    const/16 v2, 0x3a

    .line 1275
    .line 1276
    invoke-static {v0, v2}, Lkotlin/text/StringsKt;->substringAfter$default(Ljava/lang/String;C)Ljava/lang/String;

    .line 1277
    .line 1278
    .line 1279
    move-result-object v0

    .line 1280
    invoke-virtual {v1, v0}, Lorg/wikipedia/views/PageItemView;->setTitle(Ljava/lang/String;)V

    .line 1281
    .line 1282
    .line 1283
    return-void

    .line 1284
    :pswitch_8
    const/high16 v5, 0x3f800000    # 1.0f

    .line 1285
    .line 1286
    check-cast v1, Lorg/wikipedia/settings/AppIconDialog$AppIconAdapter$AppIconViewHolder;

    .line 1287
    .line 1288
    iget-object v0, v0, Lorg/wikipedia/settings/AppIconDialog$AppIconAdapter;->list:Ljava/lang/Object;

    .line 1289
    .line 1290
    check-cast v0, Ljava/util/List;

    .line 1291
    .line 1292
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1293
    .line 1294
    .line 1295
    move-result-object v0

    .line 1296
    check-cast v0, Lorg/wikipedia/settings/LauncherIcon;

    .line 1297
    .line 1298
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1299
    .line 1300
    .line 1301
    iget-object v2, v1, Lorg/wikipedia/settings/AppIconDialog$AppIconAdapter$AppIconViewHolder;->binding:Lretrofit2/OkHttpCall$1;

    .line 1302
    .line 1303
    iget-object v3, v2, Lretrofit2/OkHttpCall$1;->this$0:Ljava/lang/Object;

    .line 1304
    .line 1305
    check-cast v3, Lcom/google/android/material/imageview/ShapeableImageView;

    .line 1306
    .line 1307
    iget-object v1, v1, Lorg/wikipedia/settings/AppIconDialog$AppIconAdapter$AppIconViewHolder;->this$0:Lorg/wikipedia/settings/AppIconDialog$AppIconAdapter;

    .line 1308
    .line 1309
    iget-object v2, v2, Lretrofit2/OkHttpCall$1;->val$callback:Ljava/lang/Object;

    .line 1310
    .line 1311
    check-cast v2, Lcom/google/android/material/imageview/ShapeableImageView;

    .line 1312
    .line 1313
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 1314
    .line 1315
    .line 1316
    move-result-object v4

    .line 1317
    invoke-virtual {v0}, Lorg/wikipedia/settings/LauncherIcon;->getForeground()I

    .line 1318
    .line 1319
    .line 1320
    move-result v6

    .line 1321
    invoke-virtual {v4, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 1322
    .line 1323
    .line 1324
    move-result-object v4

    .line 1325
    invoke-virtual {v3, v4}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 1326
    .line 1327
    .line 1328
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 1329
    .line 1330
    .line 1331
    move-result-object v2

    .line 1332
    invoke-virtual {v0}, Lorg/wikipedia/settings/LauncherIcon;->getBackground()I

    .line 1333
    .line 1334
    .line 1335
    move-result v4

    .line 1336
    invoke-virtual {v2, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 1337
    .line 1338
    .line 1339
    move-result-object v2

    .line 1340
    invoke-virtual {v3, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1341
    .line 1342
    .line 1343
    new-instance v2, Lorg/wikipedia/feed/HomeFragment$$ExternalSyntheticLambda8;

    .line 1344
    .line 1345
    const/16 v4, 0x18

    .line 1346
    .line 1347
    invoke-direct {v2, v4, v1, v0}, Lorg/wikipedia/feed/HomeFragment$$ExternalSyntheticLambda8;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1348
    .line 1349
    .line 1350
    invoke-virtual {v3, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1351
    .line 1352
    .line 1353
    sget-object v1, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 1354
    .line 1355
    sget-object v1, Lorg/wikipedia/settings/LauncherIcon;->DEFAULT:Lorg/wikipedia/settings/LauncherIcon;

    .line 1356
    .line 1357
    invoke-virtual {v1}, Lorg/wikipedia/settings/LauncherIcon;->getKey()Ljava/lang/String;

    .line 1358
    .line 1359
    .line 1360
    move-result-object v1

    .line 1361
    const v2, 0x7f12067a

    .line 1362
    .line 1363
    .line 1364
    invoke-static {v2, v1}, Lorg/wikipedia/settings/PrefsIoUtil;->getString(ILjava/lang/String;)Ljava/lang/String;

    .line 1365
    .line 1366
    .line 1367
    move-result-object v1

    .line 1368
    invoke-virtual {v0}, Lorg/wikipedia/settings/LauncherIcon;->getKey()Ljava/lang/String;

    .line 1369
    .line 1370
    .line 1371
    move-result-object v0

    .line 1372
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1373
    .line 1374
    .line 1375
    move-result v0

    .line 1376
    if-eqz v0, :cond_24

    .line 1377
    .line 1378
    goto :goto_1e

    .line 1379
    :cond_24
    const v7, 0x7f040094

    .line 1380
    .line 1381
    .line 1382
    :goto_1e
    if-eqz v0, :cond_25

    .line 1383
    .line 1384
    const/high16 v6, 0x40000000    # 2.0f

    .line 1385
    .line 1386
    goto :goto_1f

    .line 1387
    :cond_25
    move v6, v5

    .line 1388
    :goto_1f
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 1389
    .line 1390
    .line 1391
    move-result-object v0

    .line 1392
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1393
    .line 1394
    .line 1395
    invoke-static {v0, v7}, Lokhttp3/Cache$Companion;->getThemedColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 1396
    .line 1397
    .line 1398
    move-result-object v0

    .line 1399
    invoke-virtual {v3, v0}, Lcom/google/android/material/imageview/ShapeableImageView;->setStrokeColor(Landroid/content/res/ColorStateList;)V

    .line 1400
    .line 1401
    .line 1402
    invoke-static {v6}, Lokio/Okio__OkioKt;->dpToPx(F)F

    .line 1403
    .line 1404
    .line 1405
    move-result v0

    .line 1406
    invoke-virtual {v3, v0}, Lcom/google/android/material/imageview/ShapeableImageView;->setStrokeWidth(F)V

    .line 1407
    .line 1408
    .line 1409
    return-void

    .line 1410
    nop

    .line 1411
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 12

    .line 1
    iget v0, p0, Lorg/wikipedia/settings/AppIconDialog$AppIconAdapter;->$r8$classId:I

    .line 2
    .line 3
    const v1, 0x7f090349

    .line 4
    .line 5
    .line 6
    const v2, 0x7f090348

    .line 7
    .line 8
    .line 9
    const v3, 0x7f090344

    .line 10
    .line 11
    .line 12
    const-string v4, "Missing required view with ID: "

    .line 13
    .line 14
    const/4 v5, 0x0

    .line 15
    const/4 v6, 0x0

    .line 16
    packed-switch v0, :pswitch_data_0

    .line 17
    .line 18
    .line 19
    iget-object p0, p0, Lorg/wikipedia/settings/AppIconDialog$AppIconAdapter;->onItemClickListener:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast p0, Lorg/wikipedia/watchlist/WatchlistFragment;

    .line 22
    .line 23
    if-eqz p2, :cond_1

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    if-eq p2, v0, :cond_0

    .line 27
    .line 28
    new-instance v5, Lorg/wikipedia/watchlist/WatchlistFragment$WatchlistItemViewHolder;

    .line 29
    .line 30
    new-instance p1, Lorg/wikipedia/watchlist/WatchlistItemView;

    .line 31
    .line 32
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    invoke-direct {p1, p2}, Lorg/wikipedia/watchlist/WatchlistItemView;-><init>(Landroid/content/Context;)V

    .line 37
    .line 38
    .line 39
    invoke-direct {v5, p0, p1}, Lorg/wikipedia/watchlist/WatchlistFragment$WatchlistItemViewHolder;-><init>(Lorg/wikipedia/watchlist/WatchlistFragment;Lorg/wikipedia/watchlist/WatchlistItemView;)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    new-instance v5, Lorg/wikipedia/watchlist/WatchlistFragment$WatchlistDateViewHolder;

    .line 44
    .line 45
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    const p2, 0x7f0c0322

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, p2, p1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    invoke-direct {v5, p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_1
    new-instance p2, Lorg/wikipedia/watchlist/WatchlistFragment$WatchlistSearchBarHolder;

    .line 68
    .line 69
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    const v1, 0x7f0c05fc

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v1, p1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    const v0, 0x7f09024a

    .line 81
    .line 82
    .line 83
    invoke-static {p1, v0}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    check-cast v1, Landroid/widget/ImageView;

    .line 88
    .line 89
    if-eqz v1, :cond_2

    .line 90
    .line 91
    const v0, 0x7f09024c

    .line 92
    .line 93
    .line 94
    invoke-static {p1, v0}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    check-cast v2, Landroid/widget/TextView;

    .line 99
    .line 100
    if-eqz v2, :cond_2

    .line 101
    .line 102
    check-cast p1, Lorg/wikipedia/views/WikiCardView;

    .line 103
    .line 104
    new-instance v0, Lorg/wikipedia/databinding/ViewWatchlistSearchBarBinding;

    .line 105
    .line 106
    invoke-direct {v0, p1, v1, v2}, Lorg/wikipedia/databinding/ViewWatchlistSearchBarBinding;-><init>(Lorg/wikipedia/views/WikiCardView;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    .line 107
    .line 108
    .line 109
    invoke-direct {p2, p0, v0}, Lorg/wikipedia/watchlist/WatchlistFragment$WatchlistSearchBarHolder;-><init>(Lorg/wikipedia/watchlist/WatchlistFragment;Lorg/wikipedia/databinding/ViewWatchlistSearchBarBinding;)V

    .line 110
    .line 111
    .line 112
    move-object v5, p2

    .line 113
    goto :goto_0

    .line 114
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p0

    .line 122
    invoke-virtual {v4, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object p0

    .line 126
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    :goto_0
    return-object v5

    .line 130
    :pswitch_0
    iget-object p0, p0, Lorg/wikipedia/settings/AppIconDialog$AppIconAdapter;->onItemClickListener:Ljava/lang/Object;

    .line 131
    .line 132
    check-cast p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog;

    .line 133
    .line 134
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 135
    .line 136
    .line 137
    move-result-object p2

    .line 138
    const v0, 0x7f0c0324

    .line 139
    .line 140
    .line 141
    invoke-virtual {p2, v0, p1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    .line 146
    .line 147
    const/4 v0, -0x1

    .line 148
    const/4 v1, -0x2

    .line 149
    invoke-direct {p2, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 153
    .line 154
    .line 155
    new-instance p2, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog$ResultItemHolder;

    .line 156
    .line 157
    invoke-direct {p2, p0, p1}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog$ResultItemHolder;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog;Landroid/view/View;)V

    .line 158
    .line 159
    .line 160
    return-object p2

    .line 161
    :pswitch_1
    new-instance p2, Lorg/wikipedia/places/PlacesFragment$RecyclerViewItemHolder;

    .line 162
    .line 163
    iget-object p0, p0, Lorg/wikipedia/settings/AppIconDialog$AppIconAdapter;->onItemClickListener:Ljava/lang/Object;

    .line 164
    .line 165
    check-cast p0, Lorg/wikipedia/places/PlacesFragment;

    .line 166
    .line 167
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    const v7, 0x7f0c0311

    .line 172
    .line 173
    .line 174
    invoke-virtual {v0, v7, p1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    invoke-static {p1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    move-object v8, v0

    .line 183
    check-cast v8, Lorg/wikipedia/views/GoneIfEmptyTextView;

    .line 184
    .line 185
    if-eqz v8, :cond_5

    .line 186
    .line 187
    const v0, 0x7f090345

    .line 188
    .line 189
    .line 190
    invoke-static {p1, v0}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 191
    .line 192
    .line 193
    move-result-object v3

    .line 194
    move-object v9, v3

    .line 195
    check-cast v9, Landroid/widget/TextView;

    .line 196
    .line 197
    if-eqz v9, :cond_4

    .line 198
    .line 199
    invoke-static {p1, v2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    move-object v10, v0

    .line 204
    check-cast v10, Lcom/google/android/material/imageview/ShapeableImageView;

    .line 205
    .line 206
    if-eqz v10, :cond_3

    .line 207
    .line 208
    invoke-static {p1, v1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    move-object v11, v0

    .line 213
    check-cast v11, Landroid/widget/TextView;

    .line 214
    .line 215
    if-eqz v11, :cond_6

    .line 216
    .line 217
    new-instance v6, Lretrofit2/Retrofit;

    .line 218
    .line 219
    move-object v7, p1

    .line 220
    check-cast v7, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 221
    .line 222
    invoke-direct/range {v6 .. v11}, Lretrofit2/Retrofit;-><init>(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    .line 223
    .line 224
    .line 225
    invoke-direct {p2, p0, v6}, Lorg/wikipedia/places/PlacesFragment$RecyclerViewItemHolder;-><init>(Lorg/wikipedia/places/PlacesFragment;Lretrofit2/Retrofit;)V

    .line 226
    .line 227
    .line 228
    move-object v5, p2

    .line 229
    goto :goto_2

    .line 230
    :cond_3
    move v1, v2

    .line 231
    goto :goto_1

    .line 232
    :cond_4
    move v1, v0

    .line 233
    goto :goto_1

    .line 234
    :cond_5
    move v1, v3

    .line 235
    :cond_6
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 236
    .line 237
    .line 238
    move-result-object p0

    .line 239
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object p0

    .line 243
    invoke-virtual {v4, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object p0

    .line 247
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 248
    .line 249
    .line 250
    :goto_2
    return-object v5

    .line 251
    :pswitch_2
    new-instance p2, Lorg/wikipedia/page/references/ReferenceDialog$ViewHolder;

    .line 252
    .line 253
    iget-object p0, p0, Lorg/wikipedia/settings/AppIconDialog$AppIconAdapter;->onItemClickListener:Ljava/lang/Object;

    .line 254
    .line 255
    check-cast p0, Lorg/wikipedia/page/references/ReferenceDialog;

    .line 256
    .line 257
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 258
    .line 259
    .line 260
    move-result-object v0

    .line 261
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 262
    .line 263
    .line 264
    move-result-object v0

    .line 265
    const v1, 0x7f0c05ee

    .line 266
    .line 267
    .line 268
    invoke-virtual {v0, v1, p1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 269
    .line 270
    .line 271
    move-result-object p1

    .line 272
    const v0, 0x7f09056c

    .line 273
    .line 274
    .line 275
    invoke-static {p1, v0}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 276
    .line 277
    .line 278
    move-result-object v1

    .line 279
    move-object v8, v1

    .line 280
    check-cast v8, Landroidx/appcompat/widget/AppCompatImageView;

    .line 281
    .line 282
    if-eqz v8, :cond_7

    .line 283
    .line 284
    const v0, 0x7f09056d

    .line 285
    .line 286
    .line 287
    invoke-static {p1, v0}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 288
    .line 289
    .line 290
    move-result-object v1

    .line 291
    move-object v9, v1

    .line 292
    check-cast v9, Lorg/wikipedia/views/AppTextView;

    .line 293
    .line 294
    if-eqz v9, :cond_7

    .line 295
    .line 296
    const v0, 0x7f090570

    .line 297
    .line 298
    .line 299
    invoke-static {p1, v0}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 300
    .line 301
    .line 302
    move-result-object v1

    .line 303
    move-object v10, v1

    .line 304
    check-cast v10, Lorg/wikipedia/views/AppTextView;

    .line 305
    .line 306
    if-eqz v10, :cond_7

    .line 307
    .line 308
    new-instance v6, Lokio/internal/DefaultSocket;

    .line 309
    .line 310
    move-object v7, p1

    .line 311
    check-cast v7, Landroid/widget/LinearLayout;

    .line 312
    .line 313
    const/16 v11, 0x18

    .line 314
    .line 315
    invoke-direct/range {v6 .. v11}, Lokio/internal/DefaultSocket;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 316
    .line 317
    .line 318
    invoke-direct {p2, p0, v6}, Lorg/wikipedia/page/references/ReferenceDialog$ViewHolder;-><init>(Lorg/wikipedia/page/references/ReferenceDialog;Lokio/internal/DefaultSocket;)V

    .line 319
    .line 320
    .line 321
    move-object v5, p2

    .line 322
    goto :goto_3

    .line 323
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 324
    .line 325
    .line 326
    move-result-object p0

    .line 327
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object p0

    .line 331
    invoke-virtual {v4, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object p0

    .line 335
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 336
    .line 337
    .line 338
    :goto_3
    return-object v5

    .line 339
    :pswitch_3
    new-instance p2, Lorg/wikipedia/page/edithistory/EditHistoryListActivity$SearchBarViewHolder;

    .line 340
    .line 341
    iget-object v0, p0, Lorg/wikipedia/settings/AppIconDialog$AppIconAdapter;->onItemClickListener:Ljava/lang/Object;

    .line 342
    .line 343
    check-cast v0, Lorg/wikipedia/page/edithistory/EditHistoryListActivity;

    .line 344
    .line 345
    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 346
    .line 347
    .line 348
    move-result-object v1

    .line 349
    invoke-static {v1, p1}, Lorg/wikipedia/databinding/ViewWatchlistSearchBarBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lorg/wikipedia/databinding/ViewWatchlistSearchBarBinding;

    .line 350
    .line 351
    .line 352
    move-result-object p1

    .line 353
    invoke-direct {p2, v0, p1}, Lorg/wikipedia/page/edithistory/EditHistoryListActivity$SearchBarViewHolder;-><init>(Lorg/wikipedia/page/edithistory/EditHistoryListActivity;Lorg/wikipedia/databinding/ViewWatchlistSearchBarBinding;)V

    .line 354
    .line 355
    .line 356
    iput-object p2, p0, Lorg/wikipedia/settings/AppIconDialog$AppIconAdapter;->list:Ljava/lang/Object;

    .line 357
    .line 358
    return-object p2

    .line 359
    :pswitch_4
    new-instance p2, Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment$ShareRecyclerViewItemHolder;

    .line 360
    .line 361
    iget-object p0, p0, Lorg/wikipedia/settings/AppIconDialog$AppIconAdapter;->onItemClickListener:Ljava/lang/Object;

    .line 362
    .line 363
    check-cast p0, Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment;

    .line 364
    .line 365
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 366
    .line 367
    .line 368
    move-result-object v0

    .line 369
    const v7, 0x7f0c030c

    .line 370
    .line 371
    .line 372
    invoke-virtual {v0, v7, p1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 373
    .line 374
    .line 375
    move-result-object p1

    .line 376
    invoke-static {p1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 377
    .line 378
    .line 379
    move-result-object v0

    .line 380
    move-object v8, v0

    .line 381
    check-cast v8, Lorg/wikipedia/views/GoneIfEmptyTextView;

    .line 382
    .line 383
    if-eqz v8, :cond_9

    .line 384
    .line 385
    invoke-static {p1, v2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 386
    .line 387
    .line 388
    move-result-object v0

    .line 389
    move-object v9, v0

    .line 390
    check-cast v9, Lcom/google/android/material/imageview/ShapeableImageView;

    .line 391
    .line 392
    if-eqz v9, :cond_8

    .line 393
    .line 394
    invoke-static {p1, v1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 395
    .line 396
    .line 397
    move-result-object v0

    .line 398
    move-object v10, v0

    .line 399
    check-cast v10, Landroid/widget/TextView;

    .line 400
    .line 401
    if-eqz v10, :cond_a

    .line 402
    .line 403
    new-instance v6, Lokio/internal/DefaultSocket;

    .line 404
    .line 405
    move-object v7, p1

    .line 406
    check-cast v7, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 407
    .line 408
    const/16 v11, 0x14

    .line 409
    .line 410
    invoke-direct/range {v6 .. v11}, Lokio/internal/DefaultSocket;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 411
    .line 412
    .line 413
    invoke-direct {p2, p0, v6}, Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment$ShareRecyclerViewItemHolder;-><init>(Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment;Lokio/internal/DefaultSocket;)V

    .line 414
    .line 415
    .line 416
    move-object v5, p2

    .line 417
    goto :goto_5

    .line 418
    :cond_8
    move v1, v2

    .line 419
    goto :goto_4

    .line 420
    :cond_9
    move v1, v3

    .line 421
    :cond_a
    :goto_4
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 422
    .line 423
    .line 424
    move-result-object p0

    .line 425
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 426
    .line 427
    .line 428
    move-result-object p0

    .line 429
    invoke-virtual {v4, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 430
    .line 431
    .line 432
    move-result-object p0

    .line 433
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 434
    .line 435
    .line 436
    :goto_5
    return-object v5

    .line 437
    :pswitch_5
    new-instance p2, Lorg/wikipedia/gallery/GalleryThumbnailScrollView$GalleryItemHolder;

    .line 438
    .line 439
    iget-object p0, p0, Lorg/wikipedia/settings/AppIconDialog$AppIconAdapter;->onItemClickListener:Ljava/lang/Object;

    .line 440
    .line 441
    check-cast p0, Lorg/wikipedia/gallery/GalleryThumbnailScrollView;

    .line 442
    .line 443
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 444
    .line 445
    .line 446
    move-result-object v0

    .line 447
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 448
    .line 449
    .line 450
    move-result-object v0

    .line 451
    const v1, 0x7f0c0301

    .line 452
    .line 453
    .line 454
    invoke-virtual {v0, v1, p1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 455
    .line 456
    .line 457
    move-result-object p1

    .line 458
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 459
    .line 460
    .line 461
    invoke-direct {p2, p0, p1}, Lorg/wikipedia/gallery/GalleryThumbnailScrollView$GalleryItemHolder;-><init>(Lorg/wikipedia/gallery/GalleryThumbnailScrollView;Landroid/view/View;)V

    .line 462
    .line 463
    .line 464
    return-object p2

    .line 465
    :pswitch_6
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 466
    .line 467
    .line 468
    move-result-object p2

    .line 469
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 470
    .line 471
    .line 472
    move-result-object p2

    .line 473
    const v0, 0x7f0c030e

    .line 474
    .line 475
    .line 476
    invoke-virtual {p2, v0, p1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 477
    .line 478
    .line 479
    move-result-object p2

    .line 480
    new-instance v0, Lorg/wikipedia/feed/onthisday/OnThisDayPagesViewHolder;

    .line 481
    .line 482
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 483
    .line 484
    .line 485
    move-result-object p1

    .line 486
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 487
    .line 488
    .line 489
    check-cast p1, Landroidx/appcompat/app/AppCompatActivity;

    .line 490
    .line 491
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 492
    .line 493
    .line 494
    iget-object p0, p0, Lorg/wikipedia/settings/AppIconDialog$AppIconAdapter;->onItemClickListener:Ljava/lang/Object;

    .line 495
    .line 496
    check-cast p0, Lorg/wikipedia/dataclient/WikiSite;

    .line 497
    .line 498
    invoke-direct {v0, p1, p2, p0}, Lorg/wikipedia/feed/onthisday/OnThisDayPagesViewHolder;-><init>(Landroidx/appcompat/app/AppCompatActivity;Landroid/view/View;Lorg/wikipedia/dataclient/WikiSite;)V

    .line 499
    .line 500
    .line 501
    return-object v0

    .line 502
    :pswitch_7
    new-instance p1, Lorg/wikipedia/views/PageItemView;

    .line 503
    .line 504
    iget-object p0, p0, Lorg/wikipedia/settings/AppIconDialog$AppIconAdapter;->onItemClickListener:Ljava/lang/Object;

    .line 505
    .line 506
    check-cast p0, Lorg/wikipedia/categories/CategoryDialog;

    .line 507
    .line 508
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 509
    .line 510
    .line 511
    move-result-object p0

    .line 512
    invoke-direct {p1, p0}, Lorg/wikipedia/views/PageItemView;-><init>(Landroid/content/Context;)V

    .line 513
    .line 514
    .line 515
    invoke-virtual {p1, v6}, Lorg/wikipedia/views/PageItemView;->setImageVisible(Z)V

    .line 516
    .line 517
    .line 518
    invoke-virtual {p1, v6}, Lorg/wikipedia/views/PageItemView;->setTitleTypeface(I)V

    .line 519
    .line 520
    .line 521
    new-instance p0, Lorg/wikipedia/categories/CategoryDialog$CategoryItemHolder;

    .line 522
    .line 523
    invoke-direct {p0, p1}, Lorg/wikipedia/categories/CategoryDialog$CategoryItemHolder;-><init>(Lorg/wikipedia/views/PageItemView;)V

    .line 524
    .line 525
    .line 526
    return-object p0

    .line 527
    :pswitch_8
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 528
    .line 529
    .line 530
    move-result-object p2

    .line 531
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 532
    .line 533
    .line 534
    move-result-object p2

    .line 535
    const v0, 0x7f0c02f3

    .line 536
    .line 537
    .line 538
    invoke-virtual {p2, v0, p1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 539
    .line 540
    .line 541
    move-result-object p1

    .line 542
    if-eqz p1, :cond_b

    .line 543
    .line 544
    check-cast p1, Lcom/google/android/material/imageview/ShapeableImageView;

    .line 545
    .line 546
    new-instance p2, Lretrofit2/OkHttpCall$1;

    .line 547
    .line 548
    const/16 v0, 0xa

    .line 549
    .line 550
    invoke-direct {p2, v0, p1, p1}, Lretrofit2/OkHttpCall$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 551
    .line 552
    .line 553
    new-instance v5, Lorg/wikipedia/settings/AppIconDialog$AppIconAdapter$AppIconViewHolder;

    .line 554
    .line 555
    invoke-direct {v5, p0, p2}, Lorg/wikipedia/settings/AppIconDialog$AppIconAdapter$AppIconViewHolder;-><init>(Lorg/wikipedia/settings/AppIconDialog$AppIconAdapter;Lretrofit2/OkHttpCall$1;)V

    .line 556
    .line 557
    .line 558
    goto :goto_6

    .line 559
    :cond_b
    const-string p0, "rootView"

    .line 560
    .line 561
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 562
    .line 563
    .line 564
    :goto_6
    return-object v5

    .line 565
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .line 1
    iget v0, p0, Lorg/wikipedia/settings/AppIconDialog$AppIconAdapter;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :pswitch_0
    check-cast p1, Lorg/wikipedia/categories/CategoryDialog$CategoryItemHolder;

    .line 8
    .line 9
    iget-object p1, p1, Lorg/wikipedia/categories/CategoryDialog$CategoryItemHolder;->view:Lorg/wikipedia/views/PageItemView;

    .line 10
    .line 11
    iget-object p0, p0, Lorg/wikipedia/settings/AppIconDialog$AppIconAdapter;->onItemClickListener:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p0, Lorg/wikipedia/categories/CategoryDialog;

    .line 14
    .line 15
    iget-object p0, p0, Lorg/wikipedia/categories/CategoryDialog;->itemCallback:Lokhttp3/ConnectionPool;

    .line 16
    .line 17
    invoke-virtual {p1, p0}, Lorg/wikipedia/views/PageItemView;->setCallback(Lorg/wikipedia/views/PageItemView$Callback;)V

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

.method public onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 1
    iget p0, p0, Lorg/wikipedia/settings/AppIconDialog$AppIconAdapter;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :pswitch_0
    check-cast p1, Lorg/wikipedia/categories/CategoryDialog$CategoryItemHolder;

    .line 8
    .line 9
    iget-object p0, p1, Lorg/wikipedia/categories/CategoryDialog$CategoryItemHolder;->view:Lorg/wikipedia/views/PageItemView;

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    invoke-virtual {p0, p1}, Lorg/wikipedia/views/PageItemView;->setCallback(Lorg/wikipedia/views/PageItemView$Callback;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    nop

    .line 17
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
