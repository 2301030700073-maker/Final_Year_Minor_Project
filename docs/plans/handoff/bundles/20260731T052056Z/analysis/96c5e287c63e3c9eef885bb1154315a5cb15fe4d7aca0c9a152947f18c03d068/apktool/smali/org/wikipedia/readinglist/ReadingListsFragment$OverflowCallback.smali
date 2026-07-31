.class public final Lorg/wikipedia/readinglist/ReadingListsFragment$OverflowCallback;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lorg/wikipedia/readinglist/ReadingListTitleDialog$Callback;
.implements Lorg/wikipedia/readinglist/ReadingListItemView$Callback;
.implements Lorg/wikipedia/views/PageItemView$Callback;


# instance fields
.field public final synthetic this$0:Lorg/wikipedia/readinglist/ReadingListsFragment;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/readinglist/ReadingListsFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/wikipedia/readinglist/ReadingListsFragment$OverflowCallback;->this$0:Lorg/wikipedia/readinglist/ReadingListsFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onAbout()V
    .locals 0

    .line 1
    return-void
.end method

.method public onActionClick(Landroid/view/View;Ljava/lang/Object;)V
    .locals 5

    .line 1
    check-cast p2, Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 2
    .line 3
    if-eqz p2, :cond_3

    .line 4
    .line 5
    sget-object p1, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 6
    .line 7
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->isDownloadOnlyOverWiFiEnabled()Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    const/4 v0, 0x1

    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    sget-object p1, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 15
    .line 16
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    const-string v1, "connectivity"

    .line 21
    .line 22
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    check-cast p1, Landroid/net/ConnectivityManager;

    .line 30
    .line 31
    invoke-virtual {p1, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    if-eqz p1, :cond_0

    .line 36
    .line 37
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-eqz p1, :cond_0

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    iget-wide v1, p2, Lorg/wikipedia/readinglist/database/ReadingListPage;->status:J

    .line 45
    .line 46
    const-wide/16 v3, 0x0

    .line 47
    .line 48
    cmp-long p1, v1, v3

    .line 49
    .line 50
    if-nez p1, :cond_1

    .line 51
    .line 52
    const/4 p1, 0x0

    .line 53
    iput-boolean p1, p2, Lorg/wikipedia/readinglist/database/ReadingListPage;->offline:Z

    .line 54
    .line 55
    :cond_1
    :goto_0
    invoke-virtual {p2}, Lorg/wikipedia/readinglist/database/ReadingListPage;->getSaving()Z

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    iget-object p0, p0, Lorg/wikipedia/readinglist/ReadingListsFragment$OverflowCallback;->this$0:Lorg/wikipedia/readinglist/ReadingListsFragment;

    .line 60
    .line 61
    if-eqz p1, :cond_2

    .line 62
    .line 63
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    const p1, 0x7f12075e

    .line 68
    .line 69
    .line 70
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :cond_2
    sget-object p1, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->allReadingLists:Ljava/util/List;

    .line 79
    .line 80
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    new-instance v0, Lorg/wikipedia/readinglist/ReadingListsFragment$$ExternalSyntheticLambda1;

    .line 85
    .line 86
    const/16 v1, 0xb

    .line 87
    .line 88
    invoke-direct {v0, p0, v1}, Lorg/wikipedia/readinglist/ReadingListsFragment$$ExternalSyntheticLambda1;-><init>(Lorg/wikipedia/readinglist/ReadingListsFragment;I)V

    .line 89
    .line 90
    .line 91
    invoke-static {p1, p2, v0}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->toggleOffline(Landroidx/appcompat/app/AppCompatActivity;Lorg/wikipedia/readinglist/database/ReadingListPage;Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$Callback;)V

    .line 92
    .line 93
    .line 94
    :cond_3
    return-void
.end method

.method public onChecked(Lorg/wikipedia/readinglist/database/ReadingList;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lorg/wikipedia/readinglist/ReadingListsFragment$OverflowCallback;->this$0:Lorg/wikipedia/readinglist/ReadingListsFragment;

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lorg/wikipedia/readinglist/ReadingListsFragment;->toggleSelectList(Lorg/wikipedia/readinglist/database/ReadingList;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onClick(Ljava/lang/Object;)V
    .locals 6

    .line 121
    check-cast p1, Lorg/wikipedia/readinglist/database/ReadingListPage;

    if-eqz p1, :cond_0

    .line 122
    iget-object v2, p1, Lorg/wikipedia/readinglist/database/ReadingListPage;->wiki:Lorg/wikipedia/dataclient/WikiSite;

    .line 123
    iget-object v0, p1, Lorg/wikipedia/readinglist/database/ReadingListPage;->lang:Ljava/lang/String;

    .line 124
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 125
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 126
    iput-object v0, v2, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 127
    new-instance v0, Lorg/wikipedia/page/PageTitle;

    .line 128
    iget-object v1, p1, Lorg/wikipedia/readinglist/database/ReadingListPage;->apiTitle:Ljava/lang/String;

    .line 129
    iget-object v3, p1, Lorg/wikipedia/readinglist/database/ReadingListPage;->thumbUrl:Ljava/lang/String;

    .line 130
    iget-object v4, p1, Lorg/wikipedia/readinglist/database/ReadingListPage;->description:Ljava/lang/String;

    .line 131
    iget-object v5, p1, Lorg/wikipedia/readinglist/database/ReadingListPage;->displayTitle:Ljava/lang/String;

    .line 132
    invoke-direct/range {v0 .. v5}, Lorg/wikipedia/page/PageTitle;-><init>(Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    new-instance v1, Lorg/wikipedia/history/HistoryEntry;

    const/16 v2, 0xb

    invoke-direct {v1, v2, v0}, Lorg/wikipedia/history/HistoryEntry;-><init>(ILorg/wikipedia/page/PageTitle;)V

    .line 134
    sget-object v0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->allReadingLists:Ljava/util/List;

    .line 135
    invoke-static {}, Lkotlinx/coroutines/AwaitKt;->MainScope()Lkotlinx/coroutines/internal/ContextScope;

    move-result-object v0

    sget-object v2, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->exceptionHandler:Lorg/wikipedia/talk/UserTalkPopupHelper$sendThanks$$inlined$CoroutineExceptionHandler$1;

    new-instance v3, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;

    const/16 v4, 0x8

    const/4 v5, 0x0

    invoke-direct {v3, v4, p1, v5}, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    const/4 p1, 0x2

    .line 136
    invoke-static {v0, v2, v5, v3, p1}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 137
    sget p1, Lorg/wikipedia/page/PageActivity;->$r8$clinit:I

    iget-object p0, p0, Lorg/wikipedia/readinglist/ReadingListsFragment$OverflowCallback;->this$0:Lorg/wikipedia/readinglist/ReadingListsFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v1}, Lorg/wikipedia/history/HistoryEntry;->getTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v0

    const/4 v2, 0x1

    .line 138
    invoke-static {p1, v1, v0, v2}, Lorg/wikipedia/login/LoginClient;->newIntentForCurrentTab(Landroid/content/Context;Lorg/wikipedia/history/HistoryEntry;Lorg/wikipedia/page/PageTitle;Z)Landroid/content/Intent;

    move-result-object p1

    .line 139
    invoke-virtual {p0, p1, v5}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onClick(Lorg/wikipedia/readinglist/database/ReadingList;)V
    .locals 12

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lorg/wikipedia/readinglist/ReadingListsFragment$OverflowCallback;->this$0:Lorg/wikipedia/readinglist/ReadingListsFragment;

    .line 5
    .line 6
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListsFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const-string v1, "multiSelectActionMode"

    .line 11
    .line 12
    iget-object v0, v0, Landroidx/appcompat/view/ActionMode;->mTag:Ljava/lang/Object;

    .line 13
    .line 14
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0, p1}, Lorg/wikipedia/readinglist/ReadingListsFragment;->toggleSelectList(Lorg/wikipedia/readinglist/database/ReadingList;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListsFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    invoke-virtual {v0}, Landroidx/appcompat/view/ActionMode;->finish()V

    .line 29
    .line 30
    .line 31
    :cond_1
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListsFragment;->recentPreviewSavedReadingList:Lorg/wikipedia/readinglist/database/ReadingList;

    .line 32
    .line 33
    const/4 v1, 0x0

    .line 34
    if-eqz v0, :cond_4

    .line 35
    .line 36
    iput-object v1, p0, Lorg/wikipedia/readinglist/ReadingListsFragment;->recentPreviewSavedReadingList:Lorg/wikipedia/readinglist/database/ReadingList;

    .line 37
    .line 38
    sget-object v0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 39
    .line 40
    const-wide/16 v2, -0x1

    .line 41
    .line 42
    const v0, 0x7f12065d

    .line 43
    .line 44
    .line 45
    invoke-static {v2, v3, v0}, Lorg/wikipedia/settings/PrefsIoUtil;->setLong(JI)V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListsFragment;->displayedLists:Ljava/util/List;

    .line 49
    .line 50
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    const/4 v2, 0x0

    .line 55
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    const/4 v4, -0x1

    .line 60
    if-eqz v3, :cond_3

    .line 61
    .line 62
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    instance-of v5, v3, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 67
    .line 68
    if-eqz v5, :cond_2

    .line 69
    .line 70
    check-cast v3, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 71
    .line 72
    iget-wide v5, v3, Lorg/wikipedia/readinglist/database/ReadingList;->id:J

    .line 73
    .line 74
    iget-wide v7, p1, Lorg/wikipedia/readinglist/database/ReadingList;->id:J

    .line 75
    .line 76
    cmp-long v3, v5, v7

    .line 77
    .line 78
    if-nez v3, :cond_2

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_3
    move v2, v4

    .line 85
    :goto_1
    if-eq v2, v4, :cond_4

    .line 86
    .line 87
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListsFragment;->adapter:Lorg/wikipedia/diff/DiffUtil$DiffLinesAdapter;

    .line 88
    .line 89
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 90
    .line 91
    .line 92
    :cond_4
    const/4 v10, 0x0

    .line 93
    const/16 v11, 0x1fc

    .line 94
    .line 95
    const-string v3, "open_list_click"

    .line 96
    .line 97
    const-string v4, "rrl_saved"

    .line 98
    .line 99
    const/4 v5, 0x0

    .line 100
    const/4 v6, 0x0

    .line 101
    const/4 v7, 0x0

    .line 102
    const/4 v8, 0x0

    .line 103
    const/4 v9, 0x0

    .line 104
    invoke-static/range {v3 .. v11}, Lorg/wikipedia/analytics/eventplatform/WikiGamesEvent;->submit$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 105
    .line 106
    .line 107
    sget v0, Lorg/wikipedia/readinglist/ReadingListActivity;->$r8$clinit:I

    .line 108
    .line 109
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    invoke-static {v0, p1}, Lorg/jsoup/nodes/NodeUtils;->newIntent(Landroid/content/Context;Lorg/wikipedia/readinglist/database/ReadingList;)Landroid/content/Intent;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    invoke-virtual {p0, p1, v1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 118
    .line 119
    .line 120
    return-void
.end method

.method public onCustomize()V
    .locals 0

    .line 1
    return-void
.end method

.method public onDelete(Lorg/wikipedia/readinglist/database/ReadingList;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object v0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->allReadingLists:Ljava/util/List;

    .line 5
    .line 6
    iget-object p0, p0, Lorg/wikipedia/readinglist/ReadingListsFragment$OverflowCallback;->this$0:Lorg/wikipedia/readinglist/ReadingListsFragment;

    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    new-instance v1, Lorg/wikipedia/readinglist/ReadingListsFragment$$ExternalSyntheticLambda11;

    .line 13
    .line 14
    const/4 v2, 0x1

    .line 15
    invoke-direct {v1, p0, p1, v2}, Lorg/wikipedia/readinglist/ReadingListsFragment$$ExternalSyntheticLambda11;-><init>(Lorg/wikipedia/readinglist/ReadingListsFragment;Lorg/wikipedia/readinglist/database/ReadingList;I)V

    .line 16
    .line 17
    .line 18
    invoke-static {v0, p1, v2, v1}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->deleteReadingList(Landroidx/appcompat/app/AppCompatActivity;Lorg/wikipedia/readinglist/database/ReadingList;ZLorg/wikipedia/readinglist/ReadingListBehaviorsUtil$Callback;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public onListChipClick(Lorg/wikipedia/readinglist/database/ReadingList;)V
    .locals 1

    .line 1
    sget v0, Lorg/wikipedia/readinglist/ReadingListActivity;->$r8$clinit:I

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/readinglist/ReadingListsFragment$OverflowCallback;->this$0:Lorg/wikipedia/readinglist/ReadingListsFragment;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0, p1}, Lorg/jsoup/nodes/NodeUtils;->newIntent(Landroid/content/Context;Lorg/wikipedia/readinglist/database/ReadingList;)Landroid/content/Intent;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public onLongClick(Ljava/lang/Object;)Z
    .locals 5

    .line 1
    check-cast p1, Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p1, :cond_1

    .line 5
    .line 6
    iget-object p0, p0, Lorg/wikipedia/readinglist/ReadingListsFragment$OverflowCallback;->this$0:Lorg/wikipedia/readinglist/ReadingListsFragment;

    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    sget-object v2, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->allReadingLists:Ljava/util/List;

    .line 16
    .line 17
    invoke-static {p1}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->getListsContainPage(Lorg/wikipedia/readinglist/database/ReadingListPage;)Ljava/util/ArrayList;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    iget-wide v3, p1, Lorg/wikipedia/readinglist/database/ReadingListPage;->id:J

    .line 22
    .line 23
    iget-object p0, p0, Lorg/wikipedia/readinglist/ReadingListsFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    .line 24
    .line 25
    const/4 p1, 0x1

    .line 26
    if-eqz p0, :cond_0

    .line 27
    .line 28
    move v0, p1

    .line 29
    :cond_0
    invoke-static {v3, v4, v2, v0}, Lorg/jsoup/select/NodeTraversor;->newInstance(JLjava/util/List;Z)Lorg/wikipedia/readinglist/ReadingListItemActionsDialog;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-static {v1, p0}, Lokio/Okio__OkioKt;->show(Landroidx/fragment/app/FragmentManagerImpl;Landroidx/fragment/app/DialogFragment;)V

    .line 34
    .line 35
    .line 36
    return p1

    .line 37
    :cond_1
    return v0
.end method

.method public onNotification()V
    .locals 0

    .line 1
    return-void
.end method

.method public onRemoveAllOffline(Lorg/wikipedia/readinglist/database/ReadingList;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object v0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->allReadingLists:Ljava/util/List;

    .line 5
    .line 6
    iget-object p0, p0, Lorg/wikipedia/readinglist/ReadingListsFragment$OverflowCallback;->this$0:Lorg/wikipedia/readinglist/ReadingListsFragment;

    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object p1, p1, Lorg/wikipedia/readinglist/database/ReadingList;->pages:Ljava/util/ArrayList;

    .line 13
    .line 14
    new-instance v1, Lorg/wikipedia/readinglist/ReadingListsFragment$$ExternalSyntheticLambda1;

    .line 15
    .line 16
    const/16 v2, 0x8

    .line 17
    .line 18
    invoke-direct {v1, p0, v2}, Lorg/wikipedia/readinglist/ReadingListsFragment$$ExternalSyntheticLambda1;-><init>(Lorg/wikipedia/readinglist/ReadingListsFragment;I)V

    .line 19
    .line 20
    .line 21
    invoke-static {v0, p1, v1}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->removePagesFromOffline(Landroidx/appcompat/app/AppCompatActivity;Ljava/util/List;Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$Callback;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public onRename(Lorg/wikipedia/readinglist/database/ReadingList;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lorg/wikipedia/readinglist/database/ReadingList;->isDefault()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    sget-object p0, Lorg/wikipedia/util/log/L;->LEVEL_W:Lorg/wikipedia/util/log/L$LEVEL_D$1;

    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    const-string v0, "Attempted to rename default list."

    .line 14
    .line 15
    invoke-virtual {p0, v0, p1}, Lorg/wikipedia/util/log/L$LEVEL_D$1;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    sget-object v0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->allReadingLists:Ljava/util/List;

    .line 20
    .line 21
    iget-object p0, p0, Lorg/wikipedia/readinglist/ReadingListsFragment$OverflowCallback;->this$0:Lorg/wikipedia/readinglist/ReadingListsFragment;

    .line 22
    .line 23
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    new-instance v1, Lorg/wikipedia/readinglist/ReadingListsFragment$$ExternalSyntheticLambda1;

    .line 28
    .line 29
    const/16 v2, 0x9

    .line 30
    .line 31
    invoke-direct {v1, p0, v2}, Lorg/wikipedia/readinglist/ReadingListsFragment$$ExternalSyntheticLambda1;-><init>(Lorg/wikipedia/readinglist/ReadingListsFragment;I)V

    .line 32
    .line 33
    .line 34
    invoke-static {v0, p1, v1}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->renameReadingList(Landroidx/appcompat/app/AppCompatActivity;Lorg/wikipedia/readinglist/database/ReadingList;Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$Callback;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public onSaveAllOffline(Lorg/wikipedia/readinglist/database/ReadingList;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object v0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->allReadingLists:Ljava/util/List;

    .line 5
    .line 6
    iget-object p0, p0, Lorg/wikipedia/readinglist/ReadingListsFragment$OverflowCallback;->this$0:Lorg/wikipedia/readinglist/ReadingListsFragment;

    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object p1, p1, Lorg/wikipedia/readinglist/database/ReadingList;->pages:Ljava/util/ArrayList;

    .line 13
    .line 14
    new-instance v1, Lorg/wikipedia/readinglist/ReadingListsFragment$$ExternalSyntheticLambda1;

    .line 15
    .line 16
    const/4 v2, 0x7

    .line 17
    invoke-direct {v1, p0, v2}, Lorg/wikipedia/readinglist/ReadingListsFragment$$ExternalSyntheticLambda1;-><init>(Lorg/wikipedia/readinglist/ReadingListsFragment;I)V

    .line 18
    .line 19
    .line 20
    invoke-static {v0, p1, v1}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->savePagesForOffline(Landroidx/appcompat/app/AppCompatActivity;Ljava/util/List;Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$Callback;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public onSaveToList(Lorg/wikipedia/readinglist/database/ReadingList;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onSelectList(Lorg/wikipedia/readinglist/database/ReadingList;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lorg/wikipedia/readinglist/ReadingListsFragment$OverflowCallback;->this$0:Lorg/wikipedia/readinglist/ReadingListsFragment;

    .line 5
    .line 6
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListsFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const-string v1, "multiSelectActionMode"

    .line 11
    .line 12
    iget-object v0, v0, Landroidx/appcompat/view/ActionMode;->mTag:Ljava/lang/Object;

    .line 13
    .line 14
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {p0}, Lorg/wikipedia/readinglist/ReadingListsFragment;->beginMultiSelect$2()V

    .line 22
    .line 23
    .line 24
    :goto_0
    invoke-virtual {p0, p1}, Lorg/wikipedia/readinglist/ReadingListsFragment;->toggleSelectList(Lorg/wikipedia/readinglist/database/ReadingList;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public onShare(Lorg/wikipedia/readinglist/database/ReadingList;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lorg/wikipedia/readinglist/ReadingListsFragment$OverflowCallback;->this$0:Lorg/wikipedia/readinglist/ReadingListsFragment;

    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    new-instance v1, Lorg/wikipedia/readinglist/ReadingListsShareHelper$shareReadingList$$inlined$CoroutineExceptionHandler$1;

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-direct {v1, p0, v2}, Lorg/wikipedia/readinglist/ReadingListsShareHelper$shareReadingList$$inlined$CoroutineExceptionHandler$1;-><init>(Landroidx/appcompat/app/AppCompatActivity;I)V

    .line 18
    .line 19
    .line 20
    new-instance v2, Lorg/wikipedia/readinglist/ReadingListsShareHelper$shareReadingList$2;

    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    invoke-direct {v2, p1, p0, v3}, Lorg/wikipedia/readinglist/ReadingListsShareHelper$shareReadingList$2;-><init>(Lorg/wikipedia/readinglist/database/ReadingList;Landroidx/appcompat/app/AppCompatActivity;Lkotlin/coroutines/Continuation;)V

    .line 24
    .line 25
    .line 26
    const/4 p0, 0x2

    .line 27
    invoke-static {v0, v1, v3, v2, p0}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    iget-object v3, p0, Lorg/wikipedia/readinglist/ReadingListsFragment$OverflowCallback;->this$0:Lorg/wikipedia/readinglist/ReadingListsFragment;

    .line 8
    .line 9
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/fragment/app/FragmentViewLifecycleOwner;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    sget-object v0, Lkotlinx/coroutines/Job$Key;->$$INSTANCE$1:Lkotlinx/coroutines/Job$Key;

    .line 18
    .line 19
    new-instance v6, Lorg/wikipedia/talk/UserTalkPopupHelper$sendThanks$$inlined$CoroutineExceptionHandler$1;

    .line 20
    .line 21
    const/4 v1, 0x4

    .line 22
    invoke-direct {v6, v0, v1}, Lorg/wikipedia/talk/UserTalkPopupHelper$sendThanks$$inlined$CoroutineExceptionHandler$1;-><init>(Lkotlin/coroutines/CoroutineContext$Key;I)V

    .line 23
    .line 24
    .line 25
    new-instance v0, Lcoil3/RealImageLoader$execute$2;

    .line 26
    .line 27
    const/16 v5, 0x1b

    .line 28
    .line 29
    const/4 v4, 0x0

    .line 30
    move-object v1, p1

    .line 31
    move-object v2, p2

    .line 32
    invoke-direct/range {v0 .. v5}, Lcoil3/RealImageLoader$execute$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 33
    .line 34
    .line 35
    const/4 p1, 0x2

    .line 36
    invoke-static {p0, v6, v4, v0, p1}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 37
    .line 38
    .line 39
    return-void
.end method
