.class public final Lorg/wikipedia/history/HistoryFragment$HistorySearchCallback;
.super Lorg/jsoup/select/NodeTraversor;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Landroidx/fragment/app/Fragment;


# direct methods
.method public synthetic constructor <init>(ILandroidx/fragment/app/Fragment;)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/wikipedia/history/HistoryFragment$HistorySearchCallback;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lorg/wikipedia/history/HistoryFragment$HistorySearchCallback;->this$0:Landroidx/fragment/app/Fragment;

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
    iget v0, p0, Lorg/wikipedia/history/HistoryFragment$HistorySearchCallback;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/history/HistoryFragment$HistorySearchCallback;->this$0:Landroidx/fragment/app/Fragment;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Lorg/wikipedia/settings/dev/DeveloperSettingsFragment;

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
    check-cast p0, Lorg/wikipedia/readinglist/ReadingListsFragment;

    .line 16
    .line 17
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0

    .line 22
    :pswitch_1
    check-cast p0, Lorg/wikipedia/readinglist/ReadingListFragment;

    .line 23
    .line 24
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    return-object p0

    .line 29
    :pswitch_2
    check-cast p0, Lorg/wikipedia/history/HistoryFragment;

    .line 30
    .line 31
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    return-object p0

    .line 36
    nop

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getSearchHintString()Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Lorg/wikipedia/history/HistoryFragment$HistorySearchCallback;->$r8$classId:I

    .line 2
    .line 3
    const v1, 0x7f120241

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lorg/wikipedia/history/HistoryFragment$HistorySearchCallback;->this$0:Landroidx/fragment/app/Fragment;

    .line 7
    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    check-cast p0, Lorg/wikipedia/settings/dev/DeveloperSettingsFragment;

    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    const v0, 0x7f1206ef

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    return-object p0

    .line 32
    :pswitch_0
    check-cast p0, Lorg/wikipedia/readinglist/ReadingListsFragment;

    .line 33
    .line 34
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    return-object p0

    .line 50
    :pswitch_1
    check-cast p0, Lorg/wikipedia/readinglist/ReadingListFragment;

    .line 51
    .line 52
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

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
    :pswitch_2
    check-cast p0, Lorg/wikipedia/history/HistoryFragment;

    .line 61
    .line 62
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    const v0, 0x7f120269

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    .line 79
    .line 80
    return-object p0

    .line 81
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onCreateActionMode(Landroidx/appcompat/view/ActionMode;Landroid/view/Menu;)Z
    .locals 5

    .line 1
    iget v0, p0, Lorg/wikipedia/history/HistoryFragment$HistorySearchCallback;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, Lorg/wikipedia/history/HistoryFragment$HistorySearchCallback;->this$0:Landroidx/fragment/app/Fragment;

    .line 5
    .line 6
    const/4 v3, 0x1

    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    invoke-super {p0, p1, p2}, Lorg/jsoup/select/NodeTraversor;->onCreateActionMode(Landroidx/appcompat/view/ActionMode;Landroid/view/Menu;)Z

    .line 11
    .line 12
    .line 13
    return v3

    .line 14
    :pswitch_0
    check-cast v2, Lorg/wikipedia/readinglist/ReadingListsFragment;

    .line 15
    .line 16
    iput-object p1, v2, Lorg/wikipedia/readinglist/ReadingListsFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    .line 17
    .line 18
    invoke-virtual {v2, v1}, Lorg/wikipedia/readinglist/ReadingListsFragment;->enableLayoutTransition(Z)V

    .line 19
    .line 20
    .line 21
    iget-object v0, v2, Lorg/wikipedia/readinglist/ReadingListsFragment;->_binding:Landroidx/compose/ui/node/NodeChain;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    iget-object v0, v0, Landroidx/compose/ui/node/NodeChain;->current:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v0, Lorg/wikipedia/views/MessageCardView;

    .line 29
    .line 30
    const/16 v4, 0x8

    .line 31
    .line 32
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_0

    .line 40
    .line 41
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->requireParentFragment()Landroidx/fragment/app/Fragment;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    check-cast v0, Lorg/wikipedia/main/MainFragment;

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Lorg/wikipedia/main/MainFragment;->setBottomNavVisible(Z)V

    .line 48
    .line 49
    .line 50
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/jsoup/select/NodeTraversor;->onCreateActionMode(Landroidx/appcompat/view/ActionMode;Landroid/view/Menu;)Z

    .line 51
    .line 52
    .line 53
    return v3

    .line 54
    :pswitch_1
    check-cast v2, Lorg/wikipedia/readinglist/ReadingListFragment;

    .line 55
    .line 56
    iput-object p1, v2, Lorg/wikipedia/readinglist/ReadingListFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    .line 57
    .line 58
    iget-object v0, v2, Lorg/wikipedia/readinglist/ReadingListFragment;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    iget-object v0, v0, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginUsernameText:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 66
    .line 67
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V

    .line 68
    .line 69
    .line 70
    iget-object v0, v2, Lorg/wikipedia/readinglist/ReadingListFragment;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 71
    .line 72
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    .line 74
    .line 75
    iget-object v0, v0, Lorg/wikipedia/databinding/ActivityLoginBinding;->footerContainer:Ljava/lang/Object;

    .line 76
    .line 77
    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout;

    .line 78
    .line 79
    invoke-virtual {v0, v1, v1, v3}, Lcom/google/android/material/appbar/AppBarLayout;->setExpanded(ZZZ)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v2, v3}, Lorg/wikipedia/readinglist/ReadingListFragment;->setStatusBarActionMode(Z)V

    .line 83
    .line 84
    .line 85
    invoke-super {p0, p1, p2}, Lorg/jsoup/select/NodeTraversor;->onCreateActionMode(Landroidx/appcompat/view/ActionMode;Landroid/view/Menu;)Z

    .line 86
    .line 87
    .line 88
    return v3

    .line 89
    :pswitch_2
    check-cast v2, Lorg/wikipedia/history/HistoryFragment;

    .line 90
    .line 91
    iput-object p1, v2, Lorg/wikipedia/history/HistoryFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    .line 92
    .line 93
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->requireParentFragment()Landroidx/fragment/app/Fragment;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    check-cast v0, Lorg/wikipedia/main/MainFragment;

    .line 98
    .line 99
    invoke-virtual {v0, v1}, Lorg/wikipedia/main/MainFragment;->setBottomNavVisible(Z)V

    .line 100
    .line 101
    .line 102
    iget-object v0, v2, Lorg/wikipedia/history/HistoryFragment;->_binding:Lokio/internal/DefaultSocket;

    .line 103
    .line 104
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 105
    .line 106
    .line 107
    iget-object v0, v0, Lokio/internal/DefaultSocket;->source:Ljava/lang/Object;

    .line 108
    .line 109
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 110
    .line 111
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 116
    .line 117
    .line 118
    check-cast v0, Lorg/wikipedia/history/HistoryFragment$HistoryEntryItemAdapter;

    .line 119
    .line 120
    iget-object v2, v0, Lorg/wikipedia/history/HistoryFragment$HistoryEntryItemAdapter;->historyEntries:Ljava/util/ArrayList;

    .line 121
    .line 122
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 123
    .line 124
    .line 125
    move-result v2

    .line 126
    if-nez v2, :cond_1

    .line 127
    .line 128
    iget-object v2, v0, Lorg/wikipedia/history/HistoryFragment$HistoryEntryItemAdapter;->historyEntries:Ljava/util/ArrayList;

    .line 129
    .line 130
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    instance-of v2, v2, Lorg/wikipedia/history/HistoryFragment$SearchBar;

    .line 135
    .line 136
    if-eqz v2, :cond_1

    .line 137
    .line 138
    iget-object v2, v0, Lorg/wikipedia/history/HistoryFragment$HistoryEntryItemAdapter;->historyEntries:Ljava/util/ArrayList;

    .line 139
    .line 140
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    iget-object v0, v0, Lorg/wikipedia/history/HistoryFragment$HistoryEntryItemAdapter;->this$0:Lorg/wikipedia/history/HistoryFragment;

    .line 144
    .line 145
    iget-object v0, v0, Lorg/wikipedia/history/HistoryFragment;->adapter:Lorg/wikipedia/history/HistoryFragment$HistoryEntryItemAdapter;

    .line 146
    .line 147
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$Adapter;->mObservable:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;

    .line 148
    .line 149
    invoke-virtual {v0, v1, v3}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;->notifyItemRangeRemoved(II)V

    .line 150
    .line 151
    .line 152
    :cond_1
    invoke-super {p0, p1, p2}, Lorg/jsoup/select/NodeTraversor;->onCreateActionMode(Landroidx/appcompat/view/ActionMode;Landroid/view/Menu;)Z

    .line 153
    .line 154
    .line 155
    return v3

    .line 156
    nop

    .line 157
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onDestroyActionMode(Landroidx/appcompat/view/ActionMode;)V
    .locals 3

    .line 1
    iget v0, p0, Lorg/wikipedia/history/HistoryFragment$HistorySearchCallback;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iget-object p0, p0, Lorg/wikipedia/history/HistoryFragment$HistorySearchCallback;->this$0:Landroidx/fragment/app/Fragment;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    packed-switch v0, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    check-cast p0, Lorg/wikipedia/settings/dev/DeveloperSettingsFragment;

    .line 14
    .line 15
    new-instance p1, Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader;

    .line 16
    .line 17
    invoke-direct {p1, p0}, Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader;-><init>(Landroidx/preference/PreferenceFragmentCompat;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v2}, Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader;->filterPreferences(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :pswitch_0
    check-cast p0, Lorg/wikipedia/readinglist/ReadingListsFragment;

    .line 25
    .line 26
    invoke-virtual {p0, v1}, Lorg/wikipedia/readinglist/ReadingListsFragment;->enableLayoutTransition(Z)V

    .line 27
    .line 28
    .line 29
    iput-object v2, p0, Lorg/wikipedia/readinglist/ReadingListsFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    .line 30
    .line 31
    iput-object v2, p0, Lorg/wikipedia/readinglist/ReadingListsFragment;->currentSearchQuery:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-eqz p1, :cond_0

    .line 38
    .line 39
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireParentFragment()Landroidx/fragment/app/Fragment;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    check-cast p1, Lorg/wikipedia/main/MainFragment;

    .line 44
    .line 45
    invoke-virtual {p1, v1}, Lorg/wikipedia/main/MainFragment;->setBottomNavVisible(Z)V

    .line 46
    .line 47
    .line 48
    :cond_0
    invoke-virtual {p0}, Lorg/wikipedia/readinglist/ReadingListsFragment;->updateLists()V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :pswitch_1
    check-cast p0, Lorg/wikipedia/readinglist/ReadingListFragment;

    .line 53
    .line 54
    iput-object v2, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    .line 55
    .line 56
    iput-object v2, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->currentSearchQuery:Ljava/lang/String;

    .line 57
    .line 58
    const/4 p1, 0x0

    .line 59
    invoke-virtual {p0, p1}, Lorg/wikipedia/readinglist/ReadingListFragment;->setStatusBarActionMode(Z)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Lorg/wikipedia/readinglist/ReadingListFragment;->updateReadingListData()V

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :pswitch_2
    check-cast p0, Lorg/wikipedia/history/HistoryFragment;

    .line 67
    .line 68
    invoke-virtual {p0}, Lorg/wikipedia/history/HistoryFragment;->getViewModel()Lorg/wikipedia/history/HistoryViewModel;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    const-string v0, ""

    .line 73
    .line 74
    invoke-virtual {p1, v0}, Lorg/wikipedia/history/HistoryViewModel;->setSearchQuery(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    iput-object v2, p0, Lorg/wikipedia/history/HistoryFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    .line 78
    .line 79
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireParentFragment()Landroidx/fragment/app/Fragment;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    check-cast p0, Lorg/wikipedia/main/MainFragment;

    .line 84
    .line 85
    invoke-virtual {p0, v1}, Lorg/wikipedia/main/MainFragment;->setBottomNavVisible(Z)V

    .line 86
    .line 87
    .line 88
    return-void

    .line 89
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onQueryChange(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget v0, p0, Lorg/wikipedia/history/HistoryFragment$HistorySearchCallback;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/history/HistoryFragment$HistorySearchCallback;->this$0:Landroidx/fragment/app/Fragment;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    new-instance v0, Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader;

    .line 12
    .line 13
    check-cast p0, Lorg/wikipedia/settings/dev/DeveloperSettingsFragment;

    .line 14
    .line 15
    invoke-direct {v0, p0}, Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader;-><init>(Landroidx/preference/PreferenceFragmentCompat;)V

    .line 16
    .line 17
    .line 18
    invoke-static {p1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-virtual {v0, p0}, Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader;->filterPreferences(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :pswitch_0
    check-cast p0, Lorg/wikipedia/readinglist/ReadingListsFragment;

    .line 31
    .line 32
    invoke-static {p1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    const/4 v0, 0x0

    .line 41
    invoke-virtual {p0, p1, v0}, Lorg/wikipedia/readinglist/ReadingListsFragment;->updateLists(Ljava/lang/String;Z)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :pswitch_1
    check-cast p0, Lorg/wikipedia/readinglist/ReadingListFragment;

    .line 46
    .line 47
    invoke-static {p1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-virtual {p0, p1}, Lorg/wikipedia/readinglist/ReadingListFragment;->setSearchQuery$1(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :pswitch_2
    check-cast p0, Lorg/wikipedia/history/HistoryFragment;

    .line 60
    .line 61
    invoke-virtual {p0}, Lorg/wikipedia/history/HistoryFragment;->getViewModel()Lorg/wikipedia/history/HistoryViewModel;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    invoke-static {p1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-virtual {p0, p1}, Lorg/wikipedia/history/HistoryViewModel;->setSearchQuery(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    return-void

    .line 77
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
