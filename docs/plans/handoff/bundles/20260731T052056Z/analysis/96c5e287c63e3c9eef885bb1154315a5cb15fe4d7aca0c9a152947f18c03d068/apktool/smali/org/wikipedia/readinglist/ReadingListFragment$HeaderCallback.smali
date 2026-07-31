.class public final Lorg/wikipedia/readinglist/ReadingListFragment$HeaderCallback;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lorg/wikipedia/readinglist/ReadingListItemView$Callback;
.implements Lorg/wikipedia/views/PageItemView$Callback;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lorg/wikipedia/readinglist/ReadingListFragment;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/readinglist/ReadingListFragment;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/readinglist/ReadingListFragment$HeaderCallback;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/readinglist/ReadingListFragment$HeaderCallback;->this$0:Lorg/wikipedia/readinglist/ReadingListFragment;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private final onAbout$org$wikipedia$readinglist$ReadingListFragment$ReadingListItemCallback()V
    .locals 0

    .line 1
    return-void
.end method

.method private final onCustomize$org$wikipedia$readinglist$ReadingListFragment$ReadingListItemCallback()V
    .locals 0

    .line 1
    return-void
.end method

.method private final onNotification$org$wikipedia$readinglist$ReadingListFragment$ReadingListItemCallback()V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public onAbout()V
    .locals 10

    .line 1
    iget v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment$HeaderCallback;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :pswitch_0
    iget-object p0, p0, Lorg/wikipedia/readinglist/ReadingListFragment$HeaderCallback;->this$0:Lorg/wikipedia/readinglist/ReadingListFragment;

    .line 8
    .line 9
    invoke-virtual {p0}, Lorg/wikipedia/readinglist/ReadingListFragment;->isRecommendedList()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const/4 v8, 0x0

    .line 16
    const/16 v9, 0x1fc

    .line 17
    .line 18
    const-string v1, "about_click"

    .line 19
    .line 20
    const-string v2, "rrl_discover_menu"

    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    const/4 v4, 0x0

    .line 24
    const/4 v5, 0x0

    .line 25
    const/4 v6, 0x0

    .line 26
    const/4 v7, 0x0

    .line 27
    invoke-static/range {v1 .. v9}, Lorg/wikipedia/analytics/eventplatform/WikiGamesEvent;->submit$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 28
    .line 29
    .line 30
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const v1, 0x7f12081d

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    invoke-static {v0, p0}, Lorg/wikipedia/util/UriUtil;->visitInExternalBrowser(Landroid/content/Context;Landroid/net/Uri;)V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
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
    iget-object p0, p0, Lorg/wikipedia/readinglist/ReadingListFragment$HeaderCallback;->this$0:Lorg/wikipedia/readinglist/ReadingListFragment;

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
    new-instance v0, Lorg/wikipedia/readinglist/ReadingListFragment$$ExternalSyntheticLambda3;

    .line 85
    .line 86
    const/16 v1, 0xe

    .line 87
    .line 88
    invoke-direct {v0, p0, v1}, Lorg/wikipedia/readinglist/ReadingListFragment$$ExternalSyntheticLambda3;-><init>(Lorg/wikipedia/readinglist/ReadingListFragment;I)V

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
    iget p0, p0, Lorg/wikipedia/readinglist/ReadingListFragment$HeaderCallback;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    nop

    .line 15
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Ljava/lang/Object;)V
    .locals 17

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    check-cast v0, Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 4
    .line 5
    move-object/from16 v1, p0

    .line 6
    .line 7
    iget-object v1, v1, Lorg/wikipedia/readinglist/ReadingListFragment$HeaderCallback;->this$0:Lorg/wikipedia/readinglist/ReadingListFragment;

    .line 8
    .line 9
    iget-object v2, v1, Lorg/wikipedia/readinglist/ReadingListFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    .line 10
    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    const-string v3, "multiSelectActionMode"

    .line 14
    .line 15
    iget-object v2, v2, Landroidx/appcompat/view/ActionMode;->mTag:Ljava/lang/Object;

    .line 16
    .line 17
    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    invoke-virtual {v1, v0}, Lorg/wikipedia/readinglist/ReadingListFragment;->toggleSelectPage(Lorg/wikipedia/readinglist/database/ReadingListPage;)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    if-eqz v0, :cond_3

    .line 28
    .line 29
    iget-object v5, v0, Lorg/wikipedia/readinglist/database/ReadingListPage;->wiki:Lorg/wikipedia/dataclient/WikiSite;

    .line 30
    .line 31
    iget-object v2, v0, Lorg/wikipedia/readinglist/database/ReadingListPage;->lang:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    iput-object v2, v5, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 40
    .line 41
    new-instance v3, Lorg/wikipedia/page/PageTitle;

    .line 42
    .line 43
    iget-object v4, v0, Lorg/wikipedia/readinglist/database/ReadingListPage;->apiTitle:Ljava/lang/String;

    .line 44
    .line 45
    iget-object v6, v0, Lorg/wikipedia/readinglist/database/ReadingListPage;->thumbUrl:Ljava/lang/String;

    .line 46
    .line 47
    iget-object v7, v0, Lorg/wikipedia/readinglist/database/ReadingListPage;->description:Ljava/lang/String;

    .line 48
    .line 49
    iget-object v8, v0, Lorg/wikipedia/readinglist/database/ReadingListPage;->displayTitle:Ljava/lang/String;

    .line 50
    .line 51
    invoke-direct/range {v3 .. v8}, Lorg/wikipedia/page/PageTitle;-><init>(Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    new-instance v2, Lorg/wikipedia/history/HistoryEntry;

    .line 55
    .line 56
    invoke-virtual {v1}, Lorg/wikipedia/readinglist/ReadingListFragment;->isRecommendedList()Z

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    if-eqz v4, :cond_1

    .line 61
    .line 62
    const/16 v4, 0x2c

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    const/16 v4, 0xb

    .line 66
    .line 67
    :goto_0
    invoke-direct {v2, v4, v3}, Lorg/wikipedia/history/HistoryEntry;-><init>(ILorg/wikipedia/page/PageTitle;)V

    .line 68
    .line 69
    .line 70
    sget-object v3, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->allReadingLists:Ljava/util/List;

    .line 71
    .line 72
    invoke-static {}, Lkotlinx/coroutines/AwaitKt;->MainScope()Lkotlinx/coroutines/internal/ContextScope;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    sget-object v4, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->exceptionHandler:Lorg/wikipedia/talk/UserTalkPopupHelper$sendThanks$$inlined$CoroutineExceptionHandler$1;

    .line 77
    .line 78
    new-instance v5, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;

    .line 79
    .line 80
    const/16 v6, 0x8

    .line 81
    .line 82
    const/4 v7, 0x0

    .line 83
    invoke-direct {v5, v6, v0, v7}, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 84
    .line 85
    .line 86
    const/4 v0, 0x2

    .line 87
    invoke-static {v3, v4, v7, v5, v0}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1}, Lorg/wikipedia/readinglist/ReadingListFragment;->isRecommendedList()Z

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    if-eqz v0, :cond_2

    .line 95
    .line 96
    const/4 v15, 0x0

    .line 97
    const/16 v16, 0x1fc

    .line 98
    .line 99
    const-string v8, "reading_list_click"

    .line 100
    .line 101
    const-string v9, "rrl_discover"

    .line 102
    .line 103
    const/4 v10, 0x0

    .line 104
    const/4 v11, 0x0

    .line 105
    const/4 v12, 0x0

    .line 106
    const/4 v13, 0x0

    .line 107
    const/4 v14, 0x0

    .line 108
    invoke-static/range {v8 .. v16}, Lorg/wikipedia/analytics/eventplatform/WikiGamesEvent;->submit$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 109
    .line 110
    .line 111
    :cond_2
    sget v0, Lorg/wikipedia/page/PageActivity;->$r8$clinit:I

    .line 112
    .line 113
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-virtual {v2}, Lorg/wikipedia/history/HistoryEntry;->getTitle()Lorg/wikipedia/page/PageTitle;

    .line 118
    .line 119
    .line 120
    move-result-object v3

    .line 121
    const/4 v4, 0x1

    .line 122
    invoke-static {v0, v2, v3, v4}, Lorg/wikipedia/login/LoginClient;->newIntentForCurrentTab(Landroid/content/Context;Lorg/wikipedia/history/HistoryEntry;Lorg/wikipedia/page/PageTitle;Z)Landroid/content/Intent;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    invoke-virtual {v1, v0, v7}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 127
    .line 128
    .line 129
    :cond_3
    return-void
.end method

.method public onClick(Lorg/wikipedia/readinglist/database/ReadingList;)V
    .locals 1

    iget v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment$HeaderCallback;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 130
    iget-object p0, p0, Lorg/wikipedia/readinglist/ReadingListFragment$HeaderCallback;->this$0:Lorg/wikipedia/readinglist/ReadingListFragment;

    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {v0}, Landroidx/appcompat/view/ActionMode;->finish()V

    .line 132
    :cond_0
    sget v0, Lorg/wikipedia/readinglist/ReadingListActivity;->$r8$clinit:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/jsoup/nodes/NodeUtils;->newIntent(Landroid/content/Context;Lorg/wikipedia/readinglist/database/ReadingList;)Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x0

    .line 133
    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void

    .line 134
    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onCustomize()V
    .locals 10

    .line 1
    iget v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment$HeaderCallback;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :pswitch_0
    const/4 v8, 0x0

    .line 8
    const/16 v9, 0x1fc

    .line 9
    .line 10
    const-string v1, "customize_click"

    .line 11
    .line 12
    const-string v2, "rrl_discover_menu"

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    const/4 v4, 0x0

    .line 16
    const/4 v5, 0x0

    .line 17
    const/4 v6, 0x0

    .line 18
    const/4 v7, 0x0

    .line 19
    invoke-static/range {v1 .. v9}, Lorg/wikipedia/analytics/eventplatform/WikiGamesEvent;->submit$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 20
    .line 21
    .line 22
    sget v0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsActivity;->$r8$clinit:I

    .line 23
    .line 24
    iget-object p0, p0, Lorg/wikipedia/readinglist/ReadingListFragment$HeaderCallback;->this$0:Lorg/wikipedia/readinglist/ReadingListFragment;

    .line 25
    .line 26
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    new-instance v1, Landroid/content/Intent;

    .line 31
    .line 32
    const-class v2, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsActivity;

    .line 33
    .line 34
    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 35
    .line 36
    .line 37
    const/4 v0, 0x0

    .line 38
    invoke-virtual {p0, v1, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    nop

    .line 43
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onDelete(Lorg/wikipedia/readinglist/database/ReadingList;)V
    .locals 4

    .line 1
    iget v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment$HeaderCallback;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iget-object p0, p0, Lorg/wikipedia/readinglist/ReadingListFragment$HeaderCallback;->this$0:Lorg/wikipedia/readinglist/ReadingListFragment;

    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    sget-object v0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->allReadingLists:Ljava/util/List;

    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    new-instance v2, Lorg/wikipedia/readinglist/ReadingListFragment$$ExternalSyntheticLambda7;

    .line 19
    .line 20
    const/4 v3, 0x2

    .line 21
    invoke-direct {v2, p0, p1, v3}, Lorg/wikipedia/readinglist/ReadingListFragment$$ExternalSyntheticLambda7;-><init>(Lorg/wikipedia/readinglist/ReadingListFragment;Lorg/wikipedia/readinglist/database/ReadingList;I)V

    .line 22
    .line 23
    .line 24
    invoke-static {v0, p1, v1, v2}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->deleteReadingList(Landroidx/appcompat/app/AppCompatActivity;Lorg/wikipedia/readinglist/database/ReadingList;ZLorg/wikipedia/readinglist/ReadingListBehaviorsUtil$Callback;)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :pswitch_0
    iget-object p1, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->readingList:Lorg/wikipedia/readinglist/database/ReadingList;

    .line 29
    .line 30
    if-eqz p1, :cond_0

    .line 31
    .line 32
    sget-object v0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->allReadingLists:Ljava/util/List;

    .line 33
    .line 34
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    new-instance v2, Lorg/wikipedia/readinglist/ReadingListFragment$$ExternalSyntheticLambda7;

    .line 39
    .line 40
    const/4 v3, 0x0

    .line 41
    invoke-direct {v2, p0, p1, v3}, Lorg/wikipedia/readinglist/ReadingListFragment$$ExternalSyntheticLambda7;-><init>(Lorg/wikipedia/readinglist/ReadingListFragment;Lorg/wikipedia/readinglist/database/ReadingList;I)V

    .line 42
    .line 43
    .line 44
    invoke-static {v0, p1, v1, v2}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->deleteReadingList(Landroidx/appcompat/app/AppCompatActivity;Lorg/wikipedia/readinglist/database/ReadingList;ZLorg/wikipedia/readinglist/ReadingListBehaviorsUtil$Callback;)V

    .line 45
    .line 46
    .line 47
    :cond_0
    return-void

    .line 48
    nop

    .line 49
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onListChipClick(Lorg/wikipedia/readinglist/database/ReadingList;)V
    .locals 1

    .line 1
    sget v0, Lorg/wikipedia/readinglist/ReadingListActivity;->$r8$clinit:I

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/readinglist/ReadingListFragment$HeaderCallback;->this$0:Lorg/wikipedia/readinglist/ReadingListFragment;

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
    iget-object p0, p0, Lorg/wikipedia/readinglist/ReadingListFragment$HeaderCallback;->this$0:Lorg/wikipedia/readinglist/ReadingListFragment;

    .line 4
    .line 5
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->readingListMode:Lorg/wikipedia/readinglist/ReadingListMode;

    .line 6
    .line 7
    sget-object v1, Lorg/wikipedia/readinglist/ReadingListMode;->DEFAULT:Lorg/wikipedia/readinglist/ReadingListMode;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    if-eq v0, v1, :cond_0

    .line 11
    .line 12
    goto :goto_2

    .line 13
    :cond_0
    if-eqz p1, :cond_4

    .line 14
    .line 15
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->currentSearchQuery:Ljava/lang/String;

    .line 23
    .line 24
    if-eqz v1, :cond_2

    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-nez v1, :cond_1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    sget-object v1, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->allReadingLists:Ljava/util/List;

    .line 34
    .line 35
    invoke-static {p1}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->getListsContainPage(Lorg/wikipedia/readinglist/database/ReadingListPage;)Ljava/util/ArrayList;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    goto :goto_1

    .line 40
    :cond_2
    :goto_0
    iget-object v1, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->readingList:Lorg/wikipedia/readinglist/database/ReadingList;

    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    invoke-static {v1}, Landroidx/room/Room;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    :goto_1
    iget-wide v3, p1, Lorg/wikipedia/readinglist/database/ReadingListPage;->id:J

    .line 50
    .line 51
    iget-object p0, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    .line 52
    .line 53
    const/4 p1, 0x1

    .line 54
    if-eqz p0, :cond_3

    .line 55
    .line 56
    move v2, p1

    .line 57
    :cond_3
    invoke-static {v3, v4, v1, v2}, Lorg/jsoup/select/NodeTraversor;->newInstance(JLjava/util/List;Z)Lorg/wikipedia/readinglist/ReadingListItemActionsDialog;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    invoke-static {v0, p0}, Lokio/Okio__OkioKt;->show(Landroidx/fragment/app/FragmentManagerImpl;Landroidx/fragment/app/DialogFragment;)V

    .line 62
    .line 63
    .line 64
    return p1

    .line 65
    :cond_4
    :goto_2
    return v2
.end method

.method public onNotification()V
    .locals 10

    .line 1
    iget v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment$HeaderCallback;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :pswitch_0
    const/4 v8, 0x0

    .line 8
    const/16 v9, 0x1fc

    .line 9
    .line 10
    const-string v1, "notifications_click"

    .line 11
    .line 12
    const-string v2, "rrl_discover"

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    const/4 v4, 0x0

    .line 16
    const/4 v5, 0x0

    .line 17
    const/4 v6, 0x0

    .line 18
    const/4 v7, 0x0

    .line 19
    invoke-static/range {v1 .. v9}, Lorg/wikipedia/analytics/eventplatform/WikiGamesEvent;->submit$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 20
    .line 21
    .line 22
    sget-object v0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 23
    .line 24
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->isRecommendedReadingListNotificationEnabled()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    const/4 v1, 0x1

    .line 29
    iget-object p0, p0, Lorg/wikipedia/readinglist/ReadingListFragment$HeaderCallback;->this$0:Lorg/wikipedia/readinglist/ReadingListFragment;

    .line 30
    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    new-instance v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 34
    .line 35
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    const/4 v3, 0x0

    .line 40
    invoke-direct {v0, v2, v3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    .line 41
    .line 42
    .line 43
    const v2, 0x7f1207fb

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(I)V

    .line 47
    .line 48
    .line 49
    const v2, 0x7f1207f8

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(I)V

    .line 53
    .line 54
    .line 55
    new-instance v2, Lorg/wikipedia/readinglist/ReadingListFragment$$ExternalSyntheticLambda14;

    .line 56
    .line 57
    invoke-direct {v2, p0, v3}, Lorg/wikipedia/readinglist/ReadingListFragment$$ExternalSyntheticLambda14;-><init>(Lorg/wikipedia/readinglist/ReadingListFragment;I)V

    .line 58
    .line 59
    .line 60
    const v3, 0x7f1207f9

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v3, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 64
    .line 65
    .line 66
    new-instance v2, Lorg/wikipedia/readinglist/ReadingListFragment$$ExternalSyntheticLambda14;

    .line 67
    .line 68
    invoke-direct {v2, p0, v1}, Lorg/wikipedia/readinglist/ReadingListFragment$$ExternalSyntheticLambda14;-><init>(Lorg/wikipedia/readinglist/ReadingListFragment;I)V

    .line 69
    .line 70
    .line 71
    const p0, 0x7f1207fa

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, p0, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0}, Lokio/PriorityQueue;->show()Landroidx/appcompat/app/AlertDialog;

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_0
    invoke-static {v1}, Lorg/wikipedia/settings/Prefs;->setRecommendedReadingListNotificationEnabled(Z)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0}, Lorg/wikipedia/readinglist/ReadingListFragment;->requestPermissionAndScheduleRecommendedReadingNotification$1()V

    .line 85
    .line 86
    .line 87
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->readingList:Lorg/wikipedia/readinglist/database/ReadingList;

    .line 88
    .line 89
    invoke-virtual {p0, v0}, Lorg/wikipedia/readinglist/ReadingListFragment;->update(Lorg/wikipedia/readinglist/database/ReadingList;)V

    .line 90
    .line 91
    .line 92
    :goto_0
    return-void

    .line 93
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onRemoveAllOffline(Lorg/wikipedia/readinglist/database/ReadingList;)V
    .locals 3

    .line 1
    iget v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment$HeaderCallback;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/readinglist/ReadingListFragment$HeaderCallback;->this$0:Lorg/wikipedia/readinglist/ReadingListFragment;

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
    sget-object v0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->allReadingLists:Ljava/util/List;

    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object p1, p1, Lorg/wikipedia/readinglist/database/ReadingList;->pages:Ljava/util/ArrayList;

    .line 18
    .line 19
    new-instance v1, Lorg/wikipedia/readinglist/ReadingListFragment$$ExternalSyntheticLambda3;

    .line 20
    .line 21
    const/16 v2, 0xb

    .line 22
    .line 23
    invoke-direct {v1, p0, v2}, Lorg/wikipedia/readinglist/ReadingListFragment$$ExternalSyntheticLambda3;-><init>(Lorg/wikipedia/readinglist/ReadingListFragment;I)V

    .line 24
    .line 25
    .line 26
    invoke-static {v0, p1, v1}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->removePagesFromOffline(Landroidx/appcompat/app/AppCompatActivity;Ljava/util/List;Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$Callback;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :pswitch_0
    sget-object v0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->allReadingLists:Ljava/util/List;

    .line 31
    .line 32
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iget-object p1, p1, Lorg/wikipedia/readinglist/database/ReadingList;->pages:Ljava/util/ArrayList;

    .line 37
    .line 38
    new-instance v1, Lorg/wikipedia/readinglist/ReadingListFragment$$ExternalSyntheticLambda3;

    .line 39
    .line 40
    const/4 v2, 0x7

    .line 41
    invoke-direct {v1, p0, v2}, Lorg/wikipedia/readinglist/ReadingListFragment$$ExternalSyntheticLambda3;-><init>(Lorg/wikipedia/readinglist/ReadingListFragment;I)V

    .line 42
    .line 43
    .line 44
    invoke-static {v0, p1, v1}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->removePagesFromOffline(Landroidx/appcompat/app/AppCompatActivity;Ljava/util/List;Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$Callback;)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    nop

    .line 49
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onRename(Lorg/wikipedia/readinglist/database/ReadingList;)V
    .locals 3

    .line 1
    iget v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment$HeaderCallback;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/readinglist/ReadingListFragment$HeaderCallback;->this$0:Lorg/wikipedia/readinglist/ReadingListFragment;

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
    sget-object v0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->allReadingLists:Ljava/util/List;

    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    new-instance v1, Lorg/wikipedia/readinglist/ReadingListFragment$$ExternalSyntheticLambda7;

    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    invoke-direct {v1, p0, p1, v2}, Lorg/wikipedia/readinglist/ReadingListFragment$$ExternalSyntheticLambda7;-><init>(Lorg/wikipedia/readinglist/ReadingListFragment;Lorg/wikipedia/readinglist/database/ReadingList;I)V

    .line 21
    .line 22
    .line 23
    invoke-static {v0, p1, v1}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->renameReadingList(Landroidx/appcompat/app/AppCompatActivity;Lorg/wikipedia/readinglist/database/ReadingList;Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$Callback;)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :pswitch_0
    sget-object p1, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->allReadingLists:Ljava/util/List;

    .line 28
    .line 29
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->readingList:Lorg/wikipedia/readinglist/database/ReadingList;

    .line 34
    .line 35
    new-instance v1, Lorg/wikipedia/readinglist/ReadingListFragment$$ExternalSyntheticLambda3;

    .line 36
    .line 37
    const/4 v2, 0x3

    .line 38
    invoke-direct {v1, p0, v2}, Lorg/wikipedia/readinglist/ReadingListFragment$$ExternalSyntheticLambda3;-><init>(Lorg/wikipedia/readinglist/ReadingListFragment;I)V

    .line 39
    .line 40
    .line 41
    invoke-static {p1, v0, v1}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->renameReadingList(Landroidx/appcompat/app/AppCompatActivity;Lorg/wikipedia/readinglist/database/ReadingList;Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$Callback;)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onSaveAllOffline(Lorg/wikipedia/readinglist/database/ReadingList;)V
    .locals 3

    .line 1
    iget v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment$HeaderCallback;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/readinglist/ReadingListFragment$HeaderCallback;->this$0:Lorg/wikipedia/readinglist/ReadingListFragment;

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
    sget-object v0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->allReadingLists:Ljava/util/List;

    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object p1, p1, Lorg/wikipedia/readinglist/database/ReadingList;->pages:Ljava/util/ArrayList;

    .line 18
    .line 19
    new-instance v1, Lorg/wikipedia/readinglist/ReadingListFragment$$ExternalSyntheticLambda3;

    .line 20
    .line 21
    const/16 v2, 0xc

    .line 22
    .line 23
    invoke-direct {v1, p0, v2}, Lorg/wikipedia/readinglist/ReadingListFragment$$ExternalSyntheticLambda3;-><init>(Lorg/wikipedia/readinglist/ReadingListFragment;I)V

    .line 24
    .line 25
    .line 26
    invoke-static {v0, p1, v1}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->savePagesForOffline(Landroidx/appcompat/app/AppCompatActivity;Ljava/util/List;Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$Callback;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :pswitch_0
    sget-object v0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->allReadingLists:Ljava/util/List;

    .line 31
    .line 32
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iget-object p1, p1, Lorg/wikipedia/readinglist/database/ReadingList;->pages:Ljava/util/ArrayList;

    .line 37
    .line 38
    new-instance v1, Lorg/wikipedia/readinglist/ReadingListFragment$$ExternalSyntheticLambda3;

    .line 39
    .line 40
    const/16 v2, 0x8

    .line 41
    .line 42
    invoke-direct {v1, p0, v2}, Lorg/wikipedia/readinglist/ReadingListFragment$$ExternalSyntheticLambda3;-><init>(Lorg/wikipedia/readinglist/ReadingListFragment;I)V

    .line 43
    .line 44
    .line 45
    invoke-static {v0, p1, v1}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->savePagesForOffline(Landroidx/appcompat/app/AppCompatActivity;Ljava/util/List;Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$Callback;)V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onSaveToList(Lorg/wikipedia/readinglist/database/ReadingList;)V
    .locals 9

    .line 1
    iget v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment$HeaderCallback;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    iget-object p0, p0, Lorg/wikipedia/readinglist/ReadingListFragment$HeaderCallback;->this$0:Lorg/wikipedia/readinglist/ReadingListFragment;

    .line 14
    .line 15
    invoke-virtual {p0}, Lorg/wikipedia/readinglist/ReadingListFragment;->isRecommendedList()Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    const/4 v7, 0x0

    .line 22
    const/16 v8, 0x1fc

    .line 23
    .line 24
    const-string v0, "save_click"

    .line 25
    .line 26
    const-string v1, "rrl_discover"

    .line 27
    .line 28
    const/4 v2, 0x0

    .line 29
    const/4 v3, 0x0

    .line 30
    const/4 v4, 0x0

    .line 31
    const/4 v5, 0x0

    .line 32
    const/4 v6, 0x0

    .line 33
    invoke-static/range {v0 .. v8}, Lorg/wikipedia/analytics/eventplatform/WikiGamesEvent;->submit$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 34
    .line 35
    .line 36
    :cond_0
    invoke-virtual {p0}, Lorg/wikipedia/readinglist/ReadingListFragment;->previewSaveDialog()V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    nop

    .line 41
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onSelectList(Lorg/wikipedia/readinglist/database/ReadingList;)V
    .locals 0

    .line 1
    iget p0, p0, Lorg/wikipedia/readinglist/ReadingListFragment$HeaderCallback;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    nop

    .line 15
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onShare(Lorg/wikipedia/readinglist/database/ReadingList;)V
    .locals 13

    .line 1
    iget v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment$HeaderCallback;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    iget-object p0, p0, Lorg/wikipedia/readinglist/ReadingListFragment$HeaderCallback;->this$0:Lorg/wikipedia/readinglist/ReadingListFragment;

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    new-instance v4, Lorg/wikipedia/readinglist/ReadingListsShareHelper$shareReadingList$$inlined$CoroutineExceptionHandler$1;

    .line 23
    .line 24
    invoke-direct {v4, p0, v3}, Lorg/wikipedia/readinglist/ReadingListsShareHelper$shareReadingList$$inlined$CoroutineExceptionHandler$1;-><init>(Landroidx/appcompat/app/AppCompatActivity;I)V

    .line 25
    .line 26
    .line 27
    new-instance v3, Lorg/wikipedia/readinglist/ReadingListsShareHelper$shareReadingList$2;

    .line 28
    .line 29
    invoke-direct {v3, p1, p0, v2}, Lorg/wikipedia/readinglist/ReadingListsShareHelper$shareReadingList$2;-><init>(Lorg/wikipedia/readinglist/database/ReadingList;Landroidx/appcompat/app/AppCompatActivity;Lkotlin/coroutines/Continuation;)V

    .line 30
    .line 31
    .line 32
    invoke-static {v0, v4, v2, v3, v1}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :pswitch_0
    invoke-virtual {p0}, Lorg/wikipedia/readinglist/ReadingListFragment;->isRecommendedList()Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_0

    .line 41
    .line 42
    const/4 v11, 0x0

    .line 43
    const/16 v12, 0x1fc

    .line 44
    .line 45
    const-string v4, "share_click"

    .line 46
    .line 47
    const-string v5, "rrl_discover_menu"

    .line 48
    .line 49
    const/4 v6, 0x0

    .line 50
    const/4 v7, 0x0

    .line 51
    const/4 v8, 0x0

    .line 52
    const/4 v9, 0x0

    .line 53
    const/4 v10, 0x0

    .line 54
    invoke-static/range {v4 .. v12}, Lorg/wikipedia/analytics/eventplatform/WikiGamesEvent;->submit$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 55
    .line 56
    .line 57
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    new-instance v4, Lorg/wikipedia/readinglist/ReadingListsShareHelper$shareReadingList$$inlined$CoroutineExceptionHandler$1;

    .line 66
    .line 67
    invoke-direct {v4, p0, v3}, Lorg/wikipedia/readinglist/ReadingListsShareHelper$shareReadingList$$inlined$CoroutineExceptionHandler$1;-><init>(Landroidx/appcompat/app/AppCompatActivity;I)V

    .line 68
    .line 69
    .line 70
    new-instance v3, Lorg/wikipedia/readinglist/ReadingListsShareHelper$shareReadingList$2;

    .line 71
    .line 72
    invoke-direct {v3, p1, p0, v2}, Lorg/wikipedia/readinglist/ReadingListsShareHelper$shareReadingList$2;-><init>(Lorg/wikipedia/readinglist/database/ReadingList;Landroidx/appcompat/app/AppCompatActivity;Lkotlin/coroutines/Continuation;)V

    .line 73
    .line 74
    .line 75
    invoke-static {v0, v4, v2, v3, v1}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 76
    .line 77
    .line 78
    return-void

    .line 79
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
