.class public final Lorg/wikipedia/talk/TalkTopicActivity$SearchCallback;
.super Lorg/jsoup/select/NodeTraversor;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final synthetic $r8$classId:I

.field public searchActionProvider:Landroidx/core/view/ActionProvider;

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/wikipedia/talk/TalkTopicActivity$SearchCallback;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lorg/wikipedia/talk/TalkTopicActivity$SearchCallback;->this$0:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final getParentContext()Landroid/content/Context;
    .locals 1

    .line 1
    iget v0, p0, Lorg/wikipedia/talk/TalkTopicActivity$SearchCallback;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/talk/TalkTopicActivity$SearchCallback;->this$0:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Lorg/wikipedia/watchlist/WatchlistFragment;

    .line 9
    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0

    .line 15
    :pswitch_0
    check-cast p0, Lorg/wikipedia/usercontrib/UserContribListActivity;

    .line 16
    .line 17
    return-object p0

    .line 18
    :pswitch_1
    check-cast p0, Lorg/wikipedia/talk/TalkTopicsActivity;

    .line 19
    .line 20
    return-object p0

    .line 21
    :pswitch_2
    check-cast p0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment;

    .line 22
    .line 23
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    return-object p0

    .line 28
    :pswitch_3
    check-cast p0, Lorg/wikipedia/page/edithistory/EditHistoryListActivity;

    .line 29
    .line 30
    return-object p0

    .line 31
    :pswitch_4
    check-cast p0, Lorg/wikipedia/notifications/NotificationActivity;

    .line 32
    .line 33
    return-object p0

    .line 34
    :pswitch_5
    check-cast p0, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;

    .line 35
    .line 36
    return-object p0

    .line 37
    :pswitch_6
    check-cast p0, Lorg/wikipedia/talk/TalkTopicActivity;

    .line 38
    .line 39
    return-object p0

    .line 40
    nop

    .line 41
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getSearchHintString()Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Lorg/wikipedia/talk/TalkTopicActivity$SearchCallback;->$r8$classId:I

    .line 2
    .line 3
    const v1, 0x7f120528

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lorg/wikipedia/talk/TalkTopicActivity$SearchCallback;->this$0:Ljava/lang/Object;

    .line 7
    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    check-cast p0, Lorg/wikipedia/watchlist/WatchlistFragment;

    .line 12
    .line 13
    const v0, 0x7f120a3f

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    return-object p0

    .line 24
    :pswitch_0
    check-cast p0, Lorg/wikipedia/usercontrib/UserContribListActivity;

    .line 25
    .line 26
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    return-object p0

    .line 34
    :pswitch_1
    check-cast p0, Lorg/wikipedia/talk/TalkTopicsActivity;

    .line 35
    .line 36
    const v0, 0x7f12095d

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    return-object p0

    .line 47
    :pswitch_2
    check-cast p0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment;

    .line 48
    .line 49
    const v0, 0x7f120570

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    .line 58
    .line 59
    return-object p0

    .line 60
    :pswitch_3
    check-cast p0, Lorg/wikipedia/page/edithistory/EditHistoryListActivity;

    .line 61
    .line 62
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    return-object p0

    .line 70
    :pswitch_4
    check-cast p0, Lorg/wikipedia/notifications/NotificationActivity;

    .line 71
    .line 72
    const v0, 0x7f12049f

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    .line 81
    .line 82
    return-object p0

    .line 83
    :pswitch_5
    check-cast p0, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;

    .line 84
    .line 85
    invoke-virtual {p0}, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;->getViewModel()Lorg/wikipedia/edit/insertmedia/InsertMediaViewModel;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    iget-object p0, p0, Lorg/wikipedia/edit/insertmedia/InsertMediaViewModel;->searchQuery:Ljava/lang/String;

    .line 90
    .line 91
    return-object p0

    .line 92
    :pswitch_6
    check-cast p0, Lorg/wikipedia/talk/TalkTopicActivity;

    .line 93
    .line 94
    const v0, 0x7f12095b

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 102
    .line 103
    .line 104
    return-object p0

    .line 105
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onCreateActionMode(Landroidx/appcompat/view/ActionMode;Landroid/view/Menu;)Z
    .locals 9

    .line 1
    iget v0, p0, Lorg/wikipedia/talk/TalkTopicActivity$SearchCallback;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "binding"

    .line 5
    .line 6
    const/4 v3, 0x1

    .line 7
    const/4 v4, 0x0

    .line 8
    iget-object v5, p0, Lorg/wikipedia/talk/TalkTopicActivity$SearchCallback;->this$0:Ljava/lang/Object;

    .line 9
    .line 10
    packed-switch v0, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    new-instance v0, Lorg/wikipedia/views/SearchAndFilterActionProvider;

    .line 14
    .line 15
    check-cast v5, Lorg/wikipedia/watchlist/WatchlistFragment;

    .line 16
    .line 17
    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {p0}, Lorg/wikipedia/talk/TalkTopicActivity$SearchCallback;->getSearchHintString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    new-instance v6, Lretrofit2/OkHttpCall$1;

    .line 26
    .line 27
    const/16 v7, 0x19

    .line 28
    .line 29
    invoke-direct {v6, v7, p0, v5}, Lretrofit2/OkHttpCall$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    invoke-direct {v0, v1, v2, v6}, Lorg/wikipedia/views/SearchAndFilterActionProvider;-><init>(Landroid/content/Context;Ljava/lang/String;Lretrofit2/OkHttpCall$1;)V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Lorg/wikipedia/talk/TalkTopicActivity$SearchCallback;->searchActionProvider:Landroidx/core/view/ActionProvider;

    .line 36
    .line 37
    invoke-virtual {p0}, Lorg/wikipedia/talk/TalkTopicActivity$SearchCallback;->getSearchHintString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    move-object v1, p2

    .line 42
    check-cast v1, Landroidx/appcompat/view/menu/MenuBuilder;

    .line 43
    .line 44
    invoke-virtual {v1, v4, v4, v4, v0}, Landroidx/appcompat/view/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    iget-object v1, p0, Lorg/wikipedia/talk/TalkTopicActivity$SearchCallback;->searchActionProvider:Landroidx/core/view/ActionProvider;

    .line 49
    .line 50
    check-cast v1, Lorg/wikipedia/views/SearchAndFilterActionProvider;

    .line 51
    .line 52
    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->setActionProvider(Landroid/view/MenuItem;Landroidx/core/view/ActionProvider;)V

    .line 53
    .line 54
    .line 55
    iput-object p1, v5, Lorg/wikipedia/watchlist/WatchlistFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    .line 56
    .line 57
    invoke-super {p0, p1, p2}, Lorg/jsoup/select/NodeTraversor;->onCreateActionMode(Landroidx/appcompat/view/ActionMode;Landroid/view/Menu;)Z

    .line 58
    .line 59
    .line 60
    return v3

    .line 61
    :pswitch_0
    new-instance v0, Lorg/wikipedia/views/SearchAndFilterActionProvider;

    .line 62
    .line 63
    check-cast v5, Lorg/wikipedia/usercontrib/UserContribListActivity;

    .line 64
    .line 65
    invoke-virtual {p0}, Lorg/wikipedia/talk/TalkTopicActivity$SearchCallback;->getSearchHintString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    new-instance v2, Lretrofit2/OkHttpCall$1;

    .line 70
    .line 71
    const/16 v6, 0x18

    .line 72
    .line 73
    invoke-direct {v2, v6, p0, v5}, Lretrofit2/OkHttpCall$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    invoke-direct {v0, v5, v1, v2}, Lorg/wikipedia/views/SearchAndFilterActionProvider;-><init>(Landroid/content/Context;Ljava/lang/String;Lretrofit2/OkHttpCall$1;)V

    .line 77
    .line 78
    .line 79
    iput-object v0, p0, Lorg/wikipedia/talk/TalkTopicActivity$SearchCallback;->searchActionProvider:Landroidx/core/view/ActionProvider;

    .line 80
    .line 81
    invoke-virtual {p0}, Lorg/wikipedia/talk/TalkTopicActivity$SearchCallback;->getSearchHintString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    move-object v1, p2

    .line 86
    check-cast v1, Landroidx/appcompat/view/menu/MenuBuilder;

    .line 87
    .line 88
    invoke-virtual {v1, v4, v4, v4, v0}, Landroidx/appcompat/view/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    iget-object v1, p0, Lorg/wikipedia/talk/TalkTopicActivity$SearchCallback;->searchActionProvider:Landroidx/core/view/ActionProvider;

    .line 93
    .line 94
    check-cast v1, Lorg/wikipedia/views/SearchAndFilterActionProvider;

    .line 95
    .line 96
    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->setActionProvider(Landroid/view/MenuItem;Landroidx/core/view/ActionProvider;)V

    .line 97
    .line 98
    .line 99
    iput-object p1, v5, Lorg/wikipedia/usercontrib/UserContribListActivity;->actionMode:Landroidx/appcompat/view/ActionMode;

    .line 100
    .line 101
    iget-object v0, p0, Lorg/wikipedia/talk/TalkTopicActivity$SearchCallback;->searchActionProvider:Landroidx/core/view/ActionProvider;

    .line 102
    .line 103
    check-cast v0, Lorg/wikipedia/views/SearchAndFilterActionProvider;

    .line 104
    .line 105
    if-eqz v0, :cond_0

    .line 106
    .line 107
    invoke-virtual {v5}, Lorg/wikipedia/usercontrib/UserContribListActivity;->getViewModel()Lorg/wikipedia/usercontrib/UserContribListViewModel;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    iget-object v1, v1, Lorg/wikipedia/usercontrib/UserContribListViewModel;->currentQuery:Ljava/lang/String;

    .line 112
    .line 113
    iget-object v0, v0, Lorg/wikipedia/views/SearchAndFilterActionProvider;->binding:Lokio/internal/DefaultSocket;

    .line 114
    .line 115
    iget-object v0, v0, Lokio/internal/DefaultSocket;->sink:Ljava/lang/Object;

    .line 116
    .line 117
    check-cast v0, Lorg/wikipedia/views/CabSearchView;

    .line 118
    .line 119
    invoke-virtual {v0, v1, v4}, Landroidx/appcompat/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 120
    .line 121
    .line 122
    :cond_0
    invoke-virtual {v5}, Lorg/wikipedia/usercontrib/UserContribListActivity;->setupAdapters$1()V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v5}, Lorg/wikipedia/usercontrib/UserContribListActivity;->getViewModel()Lorg/wikipedia/usercontrib/UserContribListViewModel;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    iput-boolean v3, v0, Lorg/wikipedia/usercontrib/UserContribListViewModel;->actionModeActive:Z

    .line 130
    .line 131
    invoke-super {p0, p1, p2}, Lorg/jsoup/select/NodeTraversor;->onCreateActionMode(Landroidx/appcompat/view/ActionMode;Landroid/view/Menu;)Z

    .line 132
    .line 133
    .line 134
    return v3

    .line 135
    :pswitch_1
    new-instance v0, Lorg/wikipedia/views/SearchActionProvider;

    .line 136
    .line 137
    check-cast v5, Lorg/wikipedia/talk/TalkTopicsActivity;

    .line 138
    .line 139
    invoke-virtual {p0}, Lorg/wikipedia/talk/TalkTopicActivity$SearchCallback;->getSearchHintString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v6

    .line 143
    new-instance v7, Lorg/wikipedia/search/SearchFragment$$ExternalSyntheticLambda1;

    .line 144
    .line 145
    const/16 v8, 0xb

    .line 146
    .line 147
    invoke-direct {v7, v8, p0}, Lorg/wikipedia/search/SearchFragment$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    .line 148
    .line 149
    .line 150
    invoke-direct {v0, v5, v6, v7}, Lorg/wikipedia/views/SearchActionProvider;-><init>(Landroid/content/Context;Ljava/lang/String;Lorg/wikipedia/views/SearchActionProvider$Callback;)V

    .line 151
    .line 152
    .line 153
    iput-object v0, p0, Lorg/wikipedia/talk/TalkTopicActivity$SearchCallback;->searchActionProvider:Landroidx/core/view/ActionProvider;

    .line 154
    .line 155
    invoke-virtual {p0}, Lorg/wikipedia/talk/TalkTopicActivity$SearchCallback;->getSearchHintString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    move-object v6, p2

    .line 160
    check-cast v6, Landroidx/appcompat/view/menu/MenuBuilder;

    .line 161
    .line 162
    invoke-virtual {v6, v4, v4, v4, v0}, Landroidx/appcompat/view/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    iget-object v6, p0, Lorg/wikipedia/talk/TalkTopicActivity$SearchCallback;->searchActionProvider:Landroidx/core/view/ActionProvider;

    .line 167
    .line 168
    check-cast v6, Lorg/wikipedia/views/SearchActionProvider;

    .line 169
    .line 170
    invoke-static {v0, v6}, Lkotlin/ExceptionsKt;->setActionProvider(Landroid/view/MenuItem;Landroidx/core/view/ActionProvider;)V

    .line 171
    .line 172
    .line 173
    iput-object p1, v5, Lorg/wikipedia/talk/TalkTopicsActivity;->actionMode:Landroidx/appcompat/view/ActionMode;

    .line 174
    .line 175
    iget-object v0, v5, Lorg/wikipedia/talk/TalkTopicsActivity;->binding:Landroidx/compose/ui/node/NodeChain;

    .line 176
    .line 177
    if-eqz v0, :cond_2

    .line 178
    .line 179
    iget-object v0, v0, Landroidx/compose/ui/node/NodeChain;->tail:Ljava/lang/Object;

    .line 180
    .line 181
    check-cast v0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 182
    .line 183
    invoke-virtual {v0, v3}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->performMotion(I)V

    .line 184
    .line 185
    .line 186
    iget-object v0, v5, Lorg/wikipedia/talk/TalkTopicsActivity;->headerAdapter:Lorg/wikipedia/talk/TalkTopicsActivity$HeaderItemAdapter;

    .line 187
    .line 188
    iget-object v1, v5, Lorg/wikipedia/talk/TalkTopicsActivity;->actionMode:Landroidx/appcompat/view/ActionMode;

    .line 189
    .line 190
    iget-object v2, v5, Lorg/wikipedia/talk/TalkTopicsActivity;->concatAdapter:Landroidx/recyclerview/widget/ConcatAdapter;

    .line 191
    .line 192
    if-nez v1, :cond_1

    .line 193
    .line 194
    invoke-virtual {v2, v4, v0}, Landroidx/recyclerview/widget/ConcatAdapter;->addAdapter(ILandroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 195
    .line 196
    .line 197
    goto :goto_0

    .line 198
    :cond_1
    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/ConcatAdapter;->removeAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 199
    .line 200
    .line 201
    :goto_0
    invoke-super {p0, p1, p2}, Lorg/jsoup/select/NodeTraversor;->onCreateActionMode(Landroidx/appcompat/view/ActionMode;Landroid/view/Menu;)Z

    .line 202
    .line 203
    .line 204
    return v3

    .line 205
    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    throw v1

    .line 209
    :pswitch_2
    new-instance v0, Lorg/wikipedia/views/SearchAndFilterActionProvider;

    .line 210
    .line 211
    check-cast v5, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment;

    .line 212
    .line 213
    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 214
    .line 215
    .line 216
    move-result-object v1

    .line 217
    invoke-virtual {p0}, Lorg/wikipedia/talk/TalkTopicActivity$SearchCallback;->getSearchHintString()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v2

    .line 221
    new-instance v6, Lretrofit2/OkHttpCall$1;

    .line 222
    .line 223
    const/16 v7, 0x16

    .line 224
    .line 225
    invoke-direct {v6, v7, p0, v5}, Lretrofit2/OkHttpCall$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 226
    .line 227
    .line 228
    invoke-direct {v0, v1, v2, v6}, Lorg/wikipedia/views/SearchAndFilterActionProvider;-><init>(Landroid/content/Context;Ljava/lang/String;Lretrofit2/OkHttpCall$1;)V

    .line 229
    .line 230
    .line 231
    iput-object v0, p0, Lorg/wikipedia/talk/TalkTopicActivity$SearchCallback;->searchActionProvider:Landroidx/core/view/ActionProvider;

    .line 232
    .line 233
    invoke-virtual {p0}, Lorg/wikipedia/talk/TalkTopicActivity$SearchCallback;->getSearchHintString()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    move-object v1, p2

    .line 238
    check-cast v1, Landroidx/appcompat/view/menu/MenuBuilder;

    .line 239
    .line 240
    invoke-virtual {v1, v4, v4, v4, v0}, Landroidx/appcompat/view/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 241
    .line 242
    .line 243
    move-result-object v0

    .line 244
    iget-object v1, p0, Lorg/wikipedia/talk/TalkTopicActivity$SearchCallback;->searchActionProvider:Landroidx/core/view/ActionProvider;

    .line 245
    .line 246
    check-cast v1, Lorg/wikipedia/views/SearchAndFilterActionProvider;

    .line 247
    .line 248
    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->setActionProvider(Landroid/view/MenuItem;Landroidx/core/view/ActionProvider;)V

    .line 249
    .line 250
    .line 251
    iput-object p1, v5, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    .line 252
    .line 253
    iget-object v0, p0, Lorg/wikipedia/talk/TalkTopicActivity$SearchCallback;->searchActionProvider:Landroidx/core/view/ActionProvider;

    .line 254
    .line 255
    check-cast v0, Lorg/wikipedia/views/SearchAndFilterActionProvider;

    .line 256
    .line 257
    if-eqz v0, :cond_3

    .line 258
    .line 259
    invoke-virtual {v5}, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment;->getViewModel()Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsViewModel;

    .line 260
    .line 261
    .line 262
    move-result-object v1

    .line 263
    iget-object v1, v1, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsViewModel;->currentQuery:Ljava/lang/String;

    .line 264
    .line 265
    iget-object v0, v0, Lorg/wikipedia/views/SearchAndFilterActionProvider;->binding:Lokio/internal/DefaultSocket;

    .line 266
    .line 267
    iget-object v0, v0, Lokio/internal/DefaultSocket;->sink:Ljava/lang/Object;

    .line 268
    .line 269
    check-cast v0, Lorg/wikipedia/views/CabSearchView;

    .line 270
    .line 271
    invoke-virtual {v0, v1, v4}, Landroidx/appcompat/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 272
    .line 273
    .line 274
    :cond_3
    invoke-virtual {v5}, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment;->setupAdapters$2()V

    .line 275
    .line 276
    .line 277
    invoke-virtual {v5}, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment;->getViewModel()Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsViewModel;

    .line 278
    .line 279
    .line 280
    move-result-object v0

    .line 281
    iput-boolean v3, v0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsViewModel;->actionModeActive:Z

    .line 282
    .line 283
    invoke-super {p0, p1, p2}, Lorg/jsoup/select/NodeTraversor;->onCreateActionMode(Landroidx/appcompat/view/ActionMode;Landroid/view/Menu;)Z

    .line 284
    .line 285
    .line 286
    return v3

    .line 287
    :pswitch_3
    new-instance v0, Lorg/wikipedia/views/SearchAndFilterActionProvider;

    .line 288
    .line 289
    check-cast v5, Lorg/wikipedia/page/edithistory/EditHistoryListActivity;

    .line 290
    .line 291
    invoke-virtual {p0}, Lorg/wikipedia/talk/TalkTopicActivity$SearchCallback;->getSearchHintString()Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v1

    .line 295
    new-instance v2, Lretrofit2/OkHttpCall$1;

    .line 296
    .line 297
    const/16 v6, 0x12

    .line 298
    .line 299
    invoke-direct {v2, v6, p0, v5}, Lretrofit2/OkHttpCall$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 300
    .line 301
    .line 302
    invoke-direct {v0, v5, v1, v2}, Lorg/wikipedia/views/SearchAndFilterActionProvider;-><init>(Landroid/content/Context;Ljava/lang/String;Lretrofit2/OkHttpCall$1;)V

    .line 303
    .line 304
    .line 305
    iput-object v0, p0, Lorg/wikipedia/talk/TalkTopicActivity$SearchCallback;->searchActionProvider:Landroidx/core/view/ActionProvider;

    .line 306
    .line 307
    invoke-virtual {p0}, Lorg/wikipedia/talk/TalkTopicActivity$SearchCallback;->getSearchHintString()Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object v0

    .line 311
    move-object v1, p2

    .line 312
    check-cast v1, Landroidx/appcompat/view/menu/MenuBuilder;

    .line 313
    .line 314
    invoke-virtual {v1, v4, v4, v4, v0}, Landroidx/appcompat/view/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 315
    .line 316
    .line 317
    move-result-object v0

    .line 318
    iget-object v1, p0, Lorg/wikipedia/talk/TalkTopicActivity$SearchCallback;->searchActionProvider:Landroidx/core/view/ActionProvider;

    .line 319
    .line 320
    check-cast v1, Lorg/wikipedia/views/SearchAndFilterActionProvider;

    .line 321
    .line 322
    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->setActionProvider(Landroid/view/MenuItem;Landroidx/core/view/ActionProvider;)V

    .line 323
    .line 324
    .line 325
    iput-object p1, v5, Lorg/wikipedia/page/edithistory/EditHistoryListActivity;->actionMode:Landroidx/appcompat/view/ActionMode;

    .line 326
    .line 327
    iget-object v0, p0, Lorg/wikipedia/talk/TalkTopicActivity$SearchCallback;->searchActionProvider:Landroidx/core/view/ActionProvider;

    .line 328
    .line 329
    check-cast v0, Lorg/wikipedia/views/SearchAndFilterActionProvider;

    .line 330
    .line 331
    if-eqz v0, :cond_4

    .line 332
    .line 333
    invoke-virtual {v5}, Lorg/wikipedia/page/edithistory/EditHistoryListActivity;->getViewModel()Lorg/wikipedia/page/edithistory/EditHistoryListViewModel;

    .line 334
    .line 335
    .line 336
    move-result-object v1

    .line 337
    iget-object v1, v1, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel;->currentQuery:Ljava/lang/String;

    .line 338
    .line 339
    iget-object v0, v0, Lorg/wikipedia/views/SearchAndFilterActionProvider;->binding:Lokio/internal/DefaultSocket;

    .line 340
    .line 341
    iget-object v0, v0, Lokio/internal/DefaultSocket;->sink:Ljava/lang/Object;

    .line 342
    .line 343
    check-cast v0, Lorg/wikipedia/views/CabSearchView;

    .line 344
    .line 345
    invoke-virtual {v0, v1, v4}, Landroidx/appcompat/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 346
    .line 347
    .line 348
    :cond_4
    invoke-virtual {v5}, Lorg/wikipedia/page/edithistory/EditHistoryListActivity;->setupAdapters()V

    .line 349
    .line 350
    .line 351
    invoke-virtual {v5}, Lorg/wikipedia/page/edithistory/EditHistoryListActivity;->getViewModel()Lorg/wikipedia/page/edithistory/EditHistoryListViewModel;

    .line 352
    .line 353
    .line 354
    move-result-object v0

    .line 355
    iput-boolean v3, v0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel;->actionModeActive:Z

    .line 356
    .line 357
    invoke-super {p0, p1, p2}, Lorg/jsoup/select/NodeTraversor;->onCreateActionMode(Landroidx/appcompat/view/ActionMode;Landroid/view/Menu;)Z

    .line 358
    .line 359
    .line 360
    return v3

    .line 361
    :pswitch_4
    check-cast v5, Lorg/wikipedia/notifications/NotificationActivity;

    .line 362
    .line 363
    sget v0, Lorg/wikipedia/notifications/NotificationActivity;->$r8$clinit:I

    .line 364
    .line 365
    invoke-virtual {v5, v3}, Lorg/wikipedia/notifications/NotificationActivity;->adjustRefreshViewLayoutParams$1(Z)V

    .line 366
    .line 367
    .line 368
    new-instance v0, Lorg/wikipedia/views/SearchAndFilterActionProvider;

    .line 369
    .line 370
    invoke-virtual {p0}, Lorg/wikipedia/talk/TalkTopicActivity$SearchCallback;->getSearchHintString()Ljava/lang/String;

    .line 371
    .line 372
    .line 373
    move-result-object v1

    .line 374
    new-instance v2, Lretrofit2/OkHttpCall$1;

    .line 375
    .line 376
    const/16 v6, 0x11

    .line 377
    .line 378
    invoke-direct {v2, v6, p0, v5}, Lretrofit2/OkHttpCall$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 379
    .line 380
    .line 381
    invoke-direct {v0, v5, v1, v2}, Lorg/wikipedia/views/SearchAndFilterActionProvider;-><init>(Landroid/content/Context;Ljava/lang/String;Lretrofit2/OkHttpCall$1;)V

    .line 382
    .line 383
    .line 384
    iput-object v0, p0, Lorg/wikipedia/talk/TalkTopicActivity$SearchCallback;->searchActionProvider:Landroidx/core/view/ActionProvider;

    .line 385
    .line 386
    invoke-virtual {p0}, Lorg/wikipedia/talk/TalkTopicActivity$SearchCallback;->getSearchHintString()Ljava/lang/String;

    .line 387
    .line 388
    .line 389
    move-result-object v0

    .line 390
    move-object v1, p2

    .line 391
    check-cast v1, Landroidx/appcompat/view/menu/MenuBuilder;

    .line 392
    .line 393
    invoke-virtual {v1, v4, v4, v4, v0}, Landroidx/appcompat/view/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 394
    .line 395
    .line 396
    move-result-object v0

    .line 397
    iget-object v1, p0, Lorg/wikipedia/talk/TalkTopicActivity$SearchCallback;->searchActionProvider:Landroidx/core/view/ActionProvider;

    .line 398
    .line 399
    check-cast v1, Lorg/wikipedia/views/SearchAndFilterActionProvider;

    .line 400
    .line 401
    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->setActionProvider(Landroid/view/MenuItem;Landroidx/core/view/ActionProvider;)V

    .line 402
    .line 403
    .line 404
    iput-object p1, v5, Lorg/wikipedia/notifications/NotificationActivity;->actionMode:Landroidx/appcompat/view/ActionMode;

    .line 405
    .line 406
    invoke-super {p0, p1, p2}, Lorg/jsoup/select/NodeTraversor;->onCreateActionMode(Landroidx/appcompat/view/ActionMode;Landroid/view/Menu;)Z

    .line 407
    .line 408
    .line 409
    return v3

    .line 410
    :pswitch_5
    new-instance v0, Lorg/wikipedia/views/SearchActionProvider;

    .line 411
    .line 412
    check-cast v5, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;

    .line 413
    .line 414
    invoke-virtual {p0}, Lorg/wikipedia/talk/TalkTopicActivity$SearchCallback;->getSearchHintString()Ljava/lang/String;

    .line 415
    .line 416
    .line 417
    move-result-object v6

    .line 418
    new-instance v7, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;

    .line 419
    .line 420
    const/16 v8, 0xf

    .line 421
    .line 422
    invoke-direct {v7, v8, p0}, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 423
    .line 424
    .line 425
    invoke-direct {v0, v5, v6, v7}, Lorg/wikipedia/views/SearchActionProvider;-><init>(Landroid/content/Context;Ljava/lang/String;Lorg/wikipedia/views/SearchActionProvider$Callback;)V

    .line 426
    .line 427
    .line 428
    iput-object v0, p0, Lorg/wikipedia/talk/TalkTopicActivity$SearchCallback;->searchActionProvider:Landroidx/core/view/ActionProvider;

    .line 429
    .line 430
    invoke-virtual {v5}, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;->getViewModel()Lorg/wikipedia/edit/insertmedia/InsertMediaViewModel;

    .line 431
    .line 432
    .line 433
    move-result-object v6

    .line 434
    iget-object v6, v6, Lorg/wikipedia/edit/insertmedia/InsertMediaViewModel;->searchQuery:Ljava/lang/String;

    .line 435
    .line 436
    iget-object v0, v0, Lorg/wikipedia/views/SearchActionProvider;->binding:Lretrofit2/OkHttpCall$1;

    .line 437
    .line 438
    iget-object v0, v0, Lretrofit2/OkHttpCall$1;->this$0:Ljava/lang/Object;

    .line 439
    .line 440
    check-cast v0, Lorg/wikipedia/views/CabSearchView;

    .line 441
    .line 442
    invoke-virtual {v0, v6, v4}, Landroidx/appcompat/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 443
    .line 444
    .line 445
    iget-object v0, p0, Lorg/wikipedia/talk/TalkTopicActivity$SearchCallback;->searchActionProvider:Landroidx/core/view/ActionProvider;

    .line 446
    .line 447
    check-cast v0, Lorg/wikipedia/views/SearchActionProvider;

    .line 448
    .line 449
    if-eqz v0, :cond_5

    .line 450
    .line 451
    iget-object v0, v0, Lorg/wikipedia/views/SearchActionProvider;->binding:Lretrofit2/OkHttpCall$1;

    .line 452
    .line 453
    iget-object v0, v0, Lretrofit2/OkHttpCall$1;->this$0:Ljava/lang/Object;

    .line 454
    .line 455
    check-cast v0, Lorg/wikipedia/views/CabSearchView;

    .line 456
    .line 457
    iget-object v0, v0, Lorg/wikipedia/views/CabSearchView;->searchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    .line 458
    .line 459
    invoke-virtual {v0}, Landroid/widget/EditText;->selectAll()V

    .line 460
    .line 461
    .line 462
    :cond_5
    invoke-virtual {p0}, Lorg/wikipedia/talk/TalkTopicActivity$SearchCallback;->getSearchHintString()Ljava/lang/String;

    .line 463
    .line 464
    .line 465
    move-result-object v0

    .line 466
    move-object v6, p2

    .line 467
    check-cast v6, Landroidx/appcompat/view/menu/MenuBuilder;

    .line 468
    .line 469
    invoke-virtual {v6, v4, v4, v4, v0}, Landroidx/appcompat/view/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 470
    .line 471
    .line 472
    move-result-object v0

    .line 473
    iget-object v4, p0, Lorg/wikipedia/talk/TalkTopicActivity$SearchCallback;->searchActionProvider:Landroidx/core/view/ActionProvider;

    .line 474
    .line 475
    check-cast v4, Lorg/wikipedia/views/SearchActionProvider;

    .line 476
    .line 477
    invoke-static {v0, v4}, Lkotlin/ExceptionsKt;->setActionProvider(Landroid/view/MenuItem;Landroidx/core/view/ActionProvider;)V

    .line 478
    .line 479
    .line 480
    iput-object p1, v5, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;->actionMode:Landroidx/appcompat/view/ActionMode;

    .line 481
    .line 482
    iget-object v0, v5, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;->binding:Lorg/wikipedia/databinding/FragmentPlacesBinding;

    .line 483
    .line 484
    if-eqz v0, :cond_7

    .line 485
    .line 486
    iget-object v0, v0, Lorg/wikipedia/databinding/FragmentPlacesBinding;->rootView:Landroid/widget/FrameLayout;

    .line 487
    .line 488
    const/16 v4, 0x8

    .line 489
    .line 490
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 491
    .line 492
    .line 493
    iget-object v0, v5, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;->binding:Lorg/wikipedia/databinding/FragmentPlacesBinding;

    .line 494
    .line 495
    if-eqz v0, :cond_6

    .line 496
    .line 497
    iget-object v0, v0, Lorg/wikipedia/databinding/FragmentPlacesBinding;->searchContainer:Lorg/wikipedia/views/WikiCardView;

    .line 498
    .line 499
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 500
    .line 501
    .line 502
    invoke-super {p0, p1, p2}, Lorg/jsoup/select/NodeTraversor;->onCreateActionMode(Landroidx/appcompat/view/ActionMode;Landroid/view/Menu;)Z

    .line 503
    .line 504
    .line 505
    return v3

    .line 506
    :cond_6
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 507
    .line 508
    .line 509
    throw v1

    .line 510
    :cond_7
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 511
    .line 512
    .line 513
    throw v1

    .line 514
    :pswitch_6
    new-instance v0, Lorg/wikipedia/views/SearchActionProvider;

    .line 515
    .line 516
    check-cast v5, Lorg/wikipedia/talk/TalkTopicActivity;

    .line 517
    .line 518
    invoke-virtual {p0}, Lorg/wikipedia/talk/TalkTopicActivity$SearchCallback;->getSearchHintString()Ljava/lang/String;

    .line 519
    .line 520
    .line 521
    move-result-object v6

    .line 522
    new-instance v7, Lorg/wikipedia/search/SearchFragment$$ExternalSyntheticLambda1;

    .line 523
    .line 524
    const/16 v8, 0xa

    .line 525
    .line 526
    invoke-direct {v7, v8, p0}, Lorg/wikipedia/search/SearchFragment$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    .line 527
    .line 528
    .line 529
    invoke-direct {v0, v5, v6, v7}, Lorg/wikipedia/views/SearchActionProvider;-><init>(Landroid/content/Context;Ljava/lang/String;Lorg/wikipedia/views/SearchActionProvider$Callback;)V

    .line 530
    .line 531
    .line 532
    iput-object v0, p0, Lorg/wikipedia/talk/TalkTopicActivity$SearchCallback;->searchActionProvider:Landroidx/core/view/ActionProvider;

    .line 533
    .line 534
    invoke-virtual {p0}, Lorg/wikipedia/talk/TalkTopicActivity$SearchCallback;->getSearchHintString()Ljava/lang/String;

    .line 535
    .line 536
    .line 537
    move-result-object v0

    .line 538
    move-object v6, p2

    .line 539
    check-cast v6, Landroidx/appcompat/view/menu/MenuBuilder;

    .line 540
    .line 541
    invoke-virtual {v6, v4, v4, v4, v0}, Landroidx/appcompat/view/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 542
    .line 543
    .line 544
    move-result-object v0

    .line 545
    iget-object v6, p0, Lorg/wikipedia/talk/TalkTopicActivity$SearchCallback;->searchActionProvider:Landroidx/core/view/ActionProvider;

    .line 546
    .line 547
    check-cast v6, Lorg/wikipedia/views/SearchActionProvider;

    .line 548
    .line 549
    invoke-static {v0, v6}, Lkotlin/ExceptionsKt;->setActionProvider(Landroid/view/MenuItem;Landroidx/core/view/ActionProvider;)V

    .line 550
    .line 551
    .line 552
    iget-object v0, p0, Lorg/wikipedia/talk/TalkTopicActivity$SearchCallback;->searchActionProvider:Landroidx/core/view/ActionProvider;

    .line 553
    .line 554
    check-cast v0, Lorg/wikipedia/views/SearchActionProvider;

    .line 555
    .line 556
    if-eqz v0, :cond_8

    .line 557
    .line 558
    sget v6, Lorg/wikipedia/talk/TalkTopicActivity;->$r8$clinit:I

    .line 559
    .line 560
    invoke-virtual {v5}, Lorg/wikipedia/talk/TalkTopicActivity;->getViewModel()Lorg/wikipedia/talk/TalkTopicViewModel;

    .line 561
    .line 562
    .line 563
    move-result-object v6

    .line 564
    iget-object v6, v6, Lorg/wikipedia/talk/TalkTopicViewModel;->currentSearchQuery:Ljava/lang/String;

    .line 565
    .line 566
    iget-object v0, v0, Lorg/wikipedia/views/SearchActionProvider;->binding:Lretrofit2/OkHttpCall$1;

    .line 567
    .line 568
    iget-object v0, v0, Lretrofit2/OkHttpCall$1;->this$0:Ljava/lang/Object;

    .line 569
    .line 570
    check-cast v0, Lorg/wikipedia/views/CabSearchView;

    .line 571
    .line 572
    invoke-virtual {v0, v6, v4}, Landroidx/appcompat/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 573
    .line 574
    .line 575
    :cond_8
    iget-object v0, v5, Lorg/wikipedia/talk/TalkTopicActivity;->binding:Lokhttp3/Request$Builder;

    .line 576
    .line 577
    if-eqz v0, :cond_a

    .line 578
    .line 579
    iget-object v0, v0, Lokhttp3/Request$Builder;->headers:Ljava/lang/Object;

    .line 580
    .line 581
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 582
    .line 583
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 584
    .line 585
    .line 586
    move-result-object v0

    .line 587
    if-eqz v0, :cond_9

    .line 588
    .line 589
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 590
    .line 591
    .line 592
    :cond_9
    invoke-super {p0, p1, p2}, Lorg/jsoup/select/NodeTraversor;->onCreateActionMode(Landroidx/appcompat/view/ActionMode;Landroid/view/Menu;)Z

    .line 593
    .line 594
    .line 595
    return v3

    .line 596
    :cond_a
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 597
    .line 598
    .line 599
    throw v1

    .line 600
    nop

    .line 601
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onDestroyActionMode(Landroidx/appcompat/view/ActionMode;)V
    .locals 5

    .line 1
    iget v0, p0, Lorg/wikipedia/talk/TalkTopicActivity$SearchCallback;->$r8$classId:I

    .line 2
    .line 3
    const-string v1, "binding"

    .line 4
    .line 5
    const-string v2, ""

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x0

    .line 9
    iget-object p0, p0, Lorg/wikipedia/talk/TalkTopicActivity$SearchCallback;->this$0:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    packed-switch v0, :pswitch_data_0

    .line 15
    .line 16
    .line 17
    check-cast p0, Lorg/wikipedia/watchlist/WatchlistFragment;

    .line 18
    .line 19
    iput-object v4, p0, Lorg/wikipedia/watchlist/WatchlistFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    .line 20
    .line 21
    invoke-virtual {p0}, Lorg/wikipedia/watchlist/WatchlistFragment;->getViewModel()Lorg/wikipedia/watchlist/WatchlistViewModel;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iput-object v4, p1, Lorg/wikipedia/watchlist/WatchlistViewModel;->currentSearchQuery:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {p0}, Lorg/wikipedia/watchlist/WatchlistFragment;->getViewModel()Lorg/wikipedia/watchlist/WatchlistViewModel;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    const/4 p1, 0x1

    .line 32
    invoke-virtual {p0, p1}, Lorg/wikipedia/watchlist/WatchlistViewModel;->updateList(Z)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :pswitch_0
    check-cast p0, Lorg/wikipedia/usercontrib/UserContribListActivity;

    .line 37
    .line 38
    iput-object v4, p0, Lorg/wikipedia/usercontrib/UserContribListActivity;->actionMode:Landroidx/appcompat/view/ActionMode;

    .line 39
    .line 40
    invoke-virtual {p0}, Lorg/wikipedia/usercontrib/UserContribListActivity;->getViewModel()Lorg/wikipedia/usercontrib/UserContribListViewModel;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    iput-object v2, p1, Lorg/wikipedia/usercontrib/UserContribListViewModel;->currentQuery:Ljava/lang/String;

    .line 45
    .line 46
    iget-object p1, p0, Lorg/wikipedia/usercontrib/UserContribListActivity;->userContribListAdapter:Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;

    .line 47
    .line 48
    invoke-virtual {p1}, Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;->refresh()V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Lorg/wikipedia/usercontrib/UserContribListActivity;->getViewModel()Lorg/wikipedia/usercontrib/UserContribListViewModel;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    iput-boolean v3, p1, Lorg/wikipedia/usercontrib/UserContribListViewModel;->actionModeActive:Z

    .line 56
    .line 57
    invoke-virtual {p0}, Lorg/wikipedia/usercontrib/UserContribListActivity;->setupAdapters$1()V

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :pswitch_1
    check-cast p0, Lorg/wikipedia/talk/TalkTopicsActivity;

    .line 62
    .line 63
    iput-object v4, p0, Lorg/wikipedia/talk/TalkTopicsActivity;->actionMode:Landroidx/appcompat/view/ActionMode;

    .line 64
    .line 65
    invoke-virtual {p0}, Lorg/wikipedia/talk/TalkTopicsActivity;->getViewModel()Lorg/wikipedia/talk/TalkTopicsViewModel;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    iput-object v4, p1, Lorg/wikipedia/talk/TalkTopicsViewModel;->currentSearchQuery:Ljava/lang/String;

    .line 70
    .line 71
    invoke-virtual {p1}, Lorg/wikipedia/talk/TalkTopicsViewModel;->sortAndFilterThreadItems()V

    .line 72
    .line 73
    .line 74
    iget-object p1, p0, Lorg/wikipedia/talk/TalkTopicsActivity;->binding:Landroidx/compose/ui/node/NodeChain;

    .line 75
    .line 76
    if-eqz p1, :cond_3

    .line 77
    .line 78
    iget-object p1, p1, Landroidx/compose/ui/node/NodeChain;->tail:Ljava/lang/Object;

    .line 79
    .line 80
    check-cast p1, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 81
    .line 82
    invoke-virtual {p1, v3}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->performMotion(I)V

    .line 83
    .line 84
    .line 85
    iget-object p1, p0, Lorg/wikipedia/talk/TalkTopicsActivity;->binding:Landroidx/compose/ui/node/NodeChain;

    .line 86
    .line 87
    if-eqz p1, :cond_2

    .line 88
    .line 89
    iget-object p1, p1, Landroidx/compose/ui/node/NodeChain;->layoutNode:Ljava/lang/Object;

    .line 90
    .line 91
    check-cast p1, Landroid/widget/FrameLayout;

    .line 92
    .line 93
    const/16 v0, 0x8

    .line 94
    .line 95
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 96
    .line 97
    .line 98
    iget-object p1, p0, Lorg/wikipedia/talk/TalkTopicsActivity;->binding:Landroidx/compose/ui/node/NodeChain;

    .line 99
    .line 100
    if-eqz p1, :cond_1

    .line 101
    .line 102
    iget-object p1, p1, Landroidx/compose/ui/node/NodeChain;->stack:Ljava/lang/Object;

    .line 103
    .line 104
    check-cast p1, Landroid/widget/TextView;

    .line 105
    .line 106
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 107
    .line 108
    .line 109
    iget-object p1, p0, Lorg/wikipedia/talk/TalkTopicsActivity;->talkTopicItemAdapter:Lorg/wikipedia/talk/TalkTopicsActivity$HeaderItemAdapter;

    .line 110
    .line 111
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 112
    .line 113
    .line 114
    iget-object p1, p0, Lorg/wikipedia/talk/TalkTopicsActivity;->headerAdapter:Lorg/wikipedia/talk/TalkTopicsActivity$HeaderItemAdapter;

    .line 115
    .line 116
    iget-object v0, p0, Lorg/wikipedia/talk/TalkTopicsActivity;->actionMode:Landroidx/appcompat/view/ActionMode;

    .line 117
    .line 118
    iget-object p0, p0, Lorg/wikipedia/talk/TalkTopicsActivity;->concatAdapter:Landroidx/recyclerview/widget/ConcatAdapter;

    .line 119
    .line 120
    if-nez v0, :cond_0

    .line 121
    .line 122
    invoke-virtual {p0, v3, p1}, Landroidx/recyclerview/widget/ConcatAdapter;->addAdapter(ILandroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 123
    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/ConcatAdapter;->removeAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 127
    .line 128
    .line 129
    :goto_0
    return-void

    .line 130
    :cond_1
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    throw v4

    .line 134
    :cond_2
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    throw v4

    .line 138
    :cond_3
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    throw v4

    .line 142
    :pswitch_2
    check-cast p0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment;

    .line 143
    .line 144
    iput-object v4, p0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    .line 145
    .line 146
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment;->getViewModel()Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsViewModel;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    iput-object v2, p1, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsViewModel;->currentQuery:Ljava/lang/String;

    .line 151
    .line 152
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment;->recentEditsListAdapter:Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;

    .line 153
    .line 154
    invoke-virtual {p1}, Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;->refresh()V

    .line 155
    .line 156
    .line 157
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment;->getViewModel()Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsViewModel;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    iput-boolean v3, p1, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsViewModel;->actionModeActive:Z

    .line 162
    .line 163
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment;->setupAdapters$2()V

    .line 164
    .line 165
    .line 166
    return-void

    .line 167
    :pswitch_3
    check-cast p0, Lorg/wikipedia/page/edithistory/EditHistoryListActivity;

    .line 168
    .line 169
    iput-object v4, p0, Lorg/wikipedia/page/edithistory/EditHistoryListActivity;->actionMode:Landroidx/appcompat/view/ActionMode;

    .line 170
    .line 171
    invoke-virtual {p0}, Lorg/wikipedia/page/edithistory/EditHistoryListActivity;->getViewModel()Lorg/wikipedia/page/edithistory/EditHistoryListViewModel;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    iput-object v2, p1, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel;->currentQuery:Ljava/lang/String;

    .line 176
    .line 177
    iget-object p1, p0, Lorg/wikipedia/page/edithistory/EditHistoryListActivity;->editHistoryListAdapter:Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;

    .line 178
    .line 179
    invoke-virtual {p1}, Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;->refresh()V

    .line 180
    .line 181
    .line 182
    invoke-virtual {p0}, Lorg/wikipedia/page/edithistory/EditHistoryListActivity;->getViewModel()Lorg/wikipedia/page/edithistory/EditHistoryListViewModel;

    .line 183
    .line 184
    .line 185
    move-result-object p1

    .line 186
    iput-boolean v3, p1, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel;->actionModeActive:Z

    .line 187
    .line 188
    invoke-virtual {p0}, Lorg/wikipedia/page/edithistory/EditHistoryListActivity;->setupAdapters()V

    .line 189
    .line 190
    .line 191
    return-void

    .line 192
    :pswitch_4
    check-cast p0, Lorg/wikipedia/notifications/NotificationActivity;

    .line 193
    .line 194
    sget p1, Lorg/wikipedia/notifications/NotificationActivity;->$r8$clinit:I

    .line 195
    .line 196
    invoke-virtual {p0, v3}, Lorg/wikipedia/notifications/NotificationActivity;->adjustRefreshViewLayoutParams$1(Z)V

    .line 197
    .line 198
    .line 199
    iput-object v4, p0, Lorg/wikipedia/notifications/NotificationActivity;->actionMode:Landroidx/appcompat/view/ActionMode;

    .line 200
    .line 201
    invoke-virtual {p0}, Lorg/wikipedia/notifications/NotificationActivity;->getViewModel()Lorg/wikipedia/notifications/NotificationViewModel;

    .line 202
    .line 203
    .line 204
    move-result-object p1

    .line 205
    iput-object v4, p1, Lorg/wikipedia/notifications/NotificationViewModel;->currentSearchQuery:Ljava/lang/String;

    .line 206
    .line 207
    invoke-static {p1}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    iget-object v1, p1, Lorg/wikipedia/notifications/NotificationViewModel;->handler:Lorg/wikipedia/login/LoginClient$login$$inlined$CoroutineExceptionHandler$1;

    .line 212
    .line 213
    new-instance v2, Lorg/wikipedia/notifications/NotificationViewModel$updateSearchQuery$1;

    .line 214
    .line 215
    invoke-direct {v2, p1, v4, v3}, Lorg/wikipedia/notifications/NotificationViewModel$updateSearchQuery$1;-><init>(Lorg/wikipedia/notifications/NotificationViewModel;Lkotlin/coroutines/Continuation;I)V

    .line 216
    .line 217
    .line 218
    const/4 p1, 0x2

    .line 219
    invoke-static {v0, v1, v4, v2, p1}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 220
    .line 221
    .line 222
    invoke-virtual {p0, v4}, Lorg/wikipedia/notifications/NotificationActivity;->postprocessAndDisplay(Ljava/lang/Integer;)V

    .line 223
    .line 224
    .line 225
    return-void

    .line 226
    :pswitch_5
    check-cast p0, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;

    .line 227
    .line 228
    iput-object v4, p0, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;->actionMode:Landroidx/appcompat/view/ActionMode;

    .line 229
    .line 230
    iget-object p1, p0, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;->binding:Lorg/wikipedia/databinding/FragmentPlacesBinding;

    .line 231
    .line 232
    if-eqz p1, :cond_6

    .line 233
    .line 234
    iget-object p1, p1, Lorg/wikipedia/databinding/FragmentPlacesBinding;->rootView:Landroid/widget/FrameLayout;

    .line 235
    .line 236
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 237
    .line 238
    .line 239
    iget-object p1, p0, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;->binding:Lorg/wikipedia/databinding/FragmentPlacesBinding;

    .line 240
    .line 241
    if-eqz p1, :cond_5

    .line 242
    .line 243
    iget-object p1, p1, Lorg/wikipedia/databinding/FragmentPlacesBinding;->searchContainer:Lorg/wikipedia/views/WikiCardView;

    .line 244
    .line 245
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 246
    .line 247
    .line 248
    iget-object p1, p0, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;->binding:Lorg/wikipedia/databinding/FragmentPlacesBinding;

    .line 249
    .line 250
    if-eqz p1, :cond_4

    .line 251
    .line 252
    iget-object p1, p1, Lorg/wikipedia/databinding/FragmentPlacesBinding;->searchTextView:Landroid/widget/TextView;

    .line 253
    .line 254
    invoke-virtual {p0}, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;->getViewModel()Lorg/wikipedia/edit/insertmedia/InsertMediaViewModel;

    .line 255
    .line 256
    .line 257
    move-result-object p0

    .line 258
    iget-object p0, p0, Lorg/wikipedia/edit/insertmedia/InsertMediaViewModel;->searchQuery:Ljava/lang/String;

    .line 259
    .line 260
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 261
    .line 262
    .line 263
    return-void

    .line 264
    :cond_4
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    throw v4

    .line 268
    :cond_5
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 269
    .line 270
    .line 271
    throw v4

    .line 272
    :cond_6
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 273
    .line 274
    .line 275
    throw v4

    .line 276
    :pswitch_6
    check-cast p0, Lorg/wikipedia/talk/TalkTopicActivity;

    .line 277
    .line 278
    iput-object v4, p0, Lorg/wikipedia/talk/TalkTopicActivity;->actionMode:Landroidx/appcompat/view/ActionMode;

    .line 279
    .line 280
    invoke-virtual {p0}, Lorg/wikipedia/talk/TalkTopicActivity;->getViewModel()Lorg/wikipedia/talk/TalkTopicViewModel;

    .line 281
    .line 282
    .line 283
    move-result-object p1

    .line 284
    iput-object v4, p1, Lorg/wikipedia/talk/TalkTopicViewModel;->currentSearchQuery:Ljava/lang/String;

    .line 285
    .line 286
    iget-object p0, p0, Lorg/wikipedia/talk/TalkTopicActivity;->binding:Lokhttp3/Request$Builder;

    .line 287
    .line 288
    if-eqz p0, :cond_8

    .line 289
    .line 290
    iget-object p0, p0, Lokhttp3/Request$Builder;->headers:Ljava/lang/Object;

    .line 291
    .line 292
    check-cast p0, Landroidx/recyclerview/widget/RecyclerView;

    .line 293
    .line 294
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 295
    .line 296
    .line 297
    move-result-object p0

    .line 298
    if-eqz p0, :cond_7

    .line 299
    .line 300
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 301
    .line 302
    .line 303
    :cond_7
    return-void

    .line 304
    :cond_8
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 305
    .line 306
    .line 307
    throw v4

    .line 308
    nop

    .line 309
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onQueryChange(Ljava/lang/String;)V
    .locals 5

    .line 1
    iget v0, p0, Lorg/wikipedia/talk/TalkTopicActivity$SearchCallback;->$r8$classId:I

    .line 2
    .line 3
    const-string v1, "binding"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x0

    .line 7
    iget-object p0, p0, Lorg/wikipedia/talk/TalkTopicActivity$SearchCallback;->this$0:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    packed-switch v0, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    check-cast p0, Lorg/wikipedia/watchlist/WatchlistFragment;

    .line 16
    .line 17
    invoke-virtual {p0}, Lorg/wikipedia/watchlist/WatchlistFragment;->getViewModel()Lorg/wikipedia/watchlist/WatchlistViewModel;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {p1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iput-object p1, v0, Lorg/wikipedia/watchlist/WatchlistViewModel;->currentSearchQuery:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {p0}, Lorg/wikipedia/watchlist/WatchlistFragment;->getViewModel()Lorg/wikipedia/watchlist/WatchlistViewModel;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-virtual {p0, v3}, Lorg/wikipedia/watchlist/WatchlistViewModel;->updateList(Z)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :pswitch_0
    check-cast p0, Lorg/wikipedia/usercontrib/UserContribListActivity;

    .line 40
    .line 41
    sget v0, Lorg/wikipedia/usercontrib/UserContribListActivity;->$r8$clinit:I

    .line 42
    .line 43
    invoke-virtual {p0}, Lorg/wikipedia/usercontrib/UserContribListActivity;->getViewModel()Lorg/wikipedia/usercontrib/UserContribListViewModel;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    iput-object p1, v0, Lorg/wikipedia/usercontrib/UserContribListViewModel;->currentQuery:Ljava/lang/String;

    .line 48
    .line 49
    invoke-virtual {p0}, Lorg/wikipedia/usercontrib/UserContribListActivity;->setupAdapters$1()V

    .line 50
    .line 51
    .line 52
    iget-object p0, p0, Lorg/wikipedia/usercontrib/UserContribListActivity;->userContribListAdapter:Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;

    .line 53
    .line 54
    invoke-virtual {p0}, Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;->refresh()V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :pswitch_1
    check-cast p0, Lorg/wikipedia/talk/TalkTopicsActivity;

    .line 59
    .line 60
    sget v0, Lorg/wikipedia/talk/TalkTopicsActivity;->$r8$clinit:I

    .line 61
    .line 62
    invoke-virtual {p0}, Lorg/wikipedia/talk/TalkTopicsActivity;->getViewModel()Lorg/wikipedia/talk/TalkTopicsViewModel;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    iput-object p1, v0, Lorg/wikipedia/talk/TalkTopicsViewModel;->currentSearchQuery:Ljava/lang/String;

    .line 67
    .line 68
    invoke-virtual {v0}, Lorg/wikipedia/talk/TalkTopicsViewModel;->sortAndFilterThreadItems()V

    .line 69
    .line 70
    .line 71
    iget-object p1, p0, Lorg/wikipedia/talk/TalkTopicsActivity;->talkTopicItemAdapter:Lorg/wikipedia/talk/TalkTopicsActivity$HeaderItemAdapter;

    .line 72
    .line 73
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 74
    .line 75
    .line 76
    iget-object p1, p0, Lorg/wikipedia/talk/TalkTopicsActivity;->binding:Landroidx/compose/ui/node/NodeChain;

    .line 77
    .line 78
    if-eqz p1, :cond_5

    .line 79
    .line 80
    iget-object v0, p1, Landroidx/compose/ui/node/NodeChain;->stack:Ljava/lang/Object;

    .line 81
    .line 82
    check-cast v0, Landroid/widget/TextView;

    .line 83
    .line 84
    if-eqz p1, :cond_4

    .line 85
    .line 86
    iget-object p1, p1, Landroidx/compose/ui/node/NodeChain;->current:Ljava/lang/Object;

    .line 87
    .line 88
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 89
    .line 90
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    const/16 v4, 0x8

    .line 95
    .line 96
    if-eqz p1, :cond_0

    .line 97
    .line 98
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    .line 99
    .line 100
    .line 101
    move-result p1

    .line 102
    if-nez p1, :cond_0

    .line 103
    .line 104
    move p1, v3

    .line 105
    goto :goto_0

    .line 106
    :cond_0
    move p1, v4

    .line 107
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 108
    .line 109
    .line 110
    iget-object p0, p0, Lorg/wikipedia/talk/TalkTopicsActivity;->binding:Landroidx/compose/ui/node/NodeChain;

    .line 111
    .line 112
    if-eqz p0, :cond_3

    .line 113
    .line 114
    iget-object p1, p0, Landroidx/compose/ui/node/NodeChain;->layoutNode:Ljava/lang/Object;

    .line 115
    .line 116
    check-cast p1, Landroid/widget/FrameLayout;

    .line 117
    .line 118
    if-eqz p0, :cond_2

    .line 119
    .line 120
    iget-object p0, p0, Landroidx/compose/ui/node/NodeChain;->stack:Ljava/lang/Object;

    .line 121
    .line 122
    check-cast p0, Landroid/widget/TextView;

    .line 123
    .line 124
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 125
    .line 126
    .line 127
    move-result p0

    .line 128
    if-nez p0, :cond_1

    .line 129
    .line 130
    goto :goto_1

    .line 131
    :cond_1
    move v3, v4

    .line 132
    :goto_1
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 133
    .line 134
    .line 135
    return-void

    .line 136
    :cond_2
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    throw v2

    .line 140
    :cond_3
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    throw v2

    .line 144
    :cond_4
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    throw v2

    .line 148
    :cond_5
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    throw v2

    .line 152
    :pswitch_2
    check-cast p0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment;

    .line 153
    .line 154
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment;->getViewModel()Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsViewModel;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    iput-object p1, v0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsViewModel;->currentQuery:Ljava/lang/String;

    .line 159
    .line 160
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment;->setupAdapters$2()V

    .line 161
    .line 162
    .line 163
    iget-object p0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment;->recentEditsListAdapter:Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;

    .line 164
    .line 165
    invoke-virtual {p0}, Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;->refresh()V

    .line 166
    .line 167
    .line 168
    return-void

    .line 169
    :pswitch_3
    check-cast p0, Lorg/wikipedia/page/edithistory/EditHistoryListActivity;

    .line 170
    .line 171
    sget v0, Lorg/wikipedia/page/edithistory/EditHistoryListActivity;->$r8$clinit:I

    .line 172
    .line 173
    invoke-virtual {p0}, Lorg/wikipedia/page/edithistory/EditHistoryListActivity;->getViewModel()Lorg/wikipedia/page/edithistory/EditHistoryListViewModel;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    iput-object p1, v0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel;->currentQuery:Ljava/lang/String;

    .line 178
    .line 179
    invoke-virtual {p0}, Lorg/wikipedia/page/edithistory/EditHistoryListActivity;->setupAdapters()V

    .line 180
    .line 181
    .line 182
    iget-object p0, p0, Lorg/wikipedia/page/edithistory/EditHistoryListActivity;->editHistoryListAdapter:Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;

    .line 183
    .line 184
    invoke-virtual {p0}, Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;->refresh()V

    .line 185
    .line 186
    .line 187
    return-void

    .line 188
    :pswitch_4
    check-cast p0, Lorg/wikipedia/notifications/NotificationActivity;

    .line 189
    .line 190
    sget v0, Lorg/wikipedia/notifications/NotificationActivity;->$r8$clinit:I

    .line 191
    .line 192
    invoke-virtual {p0}, Lorg/wikipedia/notifications/NotificationActivity;->getViewModel()Lorg/wikipedia/notifications/NotificationViewModel;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    invoke-static {p1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 197
    .line 198
    .line 199
    move-result-object p1

    .line 200
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object p1

    .line 204
    iput-object p1, v0, Lorg/wikipedia/notifications/NotificationViewModel;->currentSearchQuery:Ljava/lang/String;

    .line 205
    .line 206
    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 207
    .line 208
    .line 209
    move-result-object p1

    .line 210
    iget-object v1, v0, Lorg/wikipedia/notifications/NotificationViewModel;->handler:Lorg/wikipedia/login/LoginClient$login$$inlined$CoroutineExceptionHandler$1;

    .line 211
    .line 212
    new-instance v4, Lorg/wikipedia/notifications/NotificationViewModel$updateSearchQuery$1;

    .line 213
    .line 214
    invoke-direct {v4, v0, v2, v3}, Lorg/wikipedia/notifications/NotificationViewModel$updateSearchQuery$1;-><init>(Lorg/wikipedia/notifications/NotificationViewModel;Lkotlin/coroutines/Continuation;I)V

    .line 215
    .line 216
    .line 217
    const/4 v0, 0x2

    .line 218
    invoke-static {p1, v1, v2, v4, v0}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 219
    .line 220
    .line 221
    invoke-virtual {p0, v2}, Lorg/wikipedia/notifications/NotificationActivity;->postprocessAndDisplay(Ljava/lang/Integer;)V

    .line 222
    .line 223
    .line 224
    return-void

    .line 225
    :pswitch_5
    check-cast p0, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;

    .line 226
    .line 227
    invoke-virtual {p0}, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;->getViewModel()Lorg/wikipedia/edit/insertmedia/InsertMediaViewModel;

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 232
    .line 233
    .line 234
    move-result v1

    .line 235
    if-nez v1, :cond_6

    .line 236
    .line 237
    invoke-virtual {p0}, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;->getViewModel()Lorg/wikipedia/edit/insertmedia/InsertMediaViewModel;

    .line 238
    .line 239
    .line 240
    move-result-object p1

    .line 241
    iget-object p1, p1, Lorg/wikipedia/edit/insertmedia/InsertMediaViewModel;->originalSearchQuery:Ljava/lang/String;

    .line 242
    .line 243
    :cond_6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 244
    .line 245
    .line 246
    iput-object p1, v0, Lorg/wikipedia/edit/insertmedia/InsertMediaViewModel;->searchQuery:Ljava/lang/String;

    .line 247
    .line 248
    iget-object p0, p0, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;->insertMediaAdapter:Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;

    .line 249
    .line 250
    if-eqz p0, :cond_7

    .line 251
    .line 252
    invoke-virtual {p0}, Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;->refresh()V

    .line 253
    .line 254
    .line 255
    :cond_7
    return-void

    .line 256
    :pswitch_6
    check-cast p0, Lorg/wikipedia/talk/TalkTopicActivity;

    .line 257
    .line 258
    sget v0, Lorg/wikipedia/talk/TalkTopicActivity;->$r8$clinit:I

    .line 259
    .line 260
    invoke-virtual {p0}, Lorg/wikipedia/talk/TalkTopicActivity;->getViewModel()Lorg/wikipedia/talk/TalkTopicViewModel;

    .line 261
    .line 262
    .line 263
    move-result-object v0

    .line 264
    iput-object p1, v0, Lorg/wikipedia/talk/TalkTopicViewModel;->currentSearchQuery:Ljava/lang/String;

    .line 265
    .line 266
    iget-object p0, p0, Lorg/wikipedia/talk/TalkTopicActivity;->binding:Lokhttp3/Request$Builder;

    .line 267
    .line 268
    if-eqz p0, :cond_9

    .line 269
    .line 270
    iget-object p0, p0, Lokhttp3/Request$Builder;->headers:Ljava/lang/Object;

    .line 271
    .line 272
    check-cast p0, Landroidx/recyclerview/widget/RecyclerView;

    .line 273
    .line 274
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 275
    .line 276
    .line 277
    move-result-object p0

    .line 278
    if-eqz p0, :cond_8

    .line 279
    .line 280
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 281
    .line 282
    .line 283
    :cond_8
    return-void

    .line 284
    :cond_9
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 285
    .line 286
    .line 287
    throw v2

    .line 288
    nop

    .line 289
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
