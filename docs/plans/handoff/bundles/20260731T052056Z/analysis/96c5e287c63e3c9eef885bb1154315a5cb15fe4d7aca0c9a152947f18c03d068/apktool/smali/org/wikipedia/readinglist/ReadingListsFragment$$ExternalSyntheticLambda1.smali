.class public final synthetic Lorg/wikipedia/readinglist/ReadingListsFragment$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$SnackbarCallback;
.implements Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$Callback;
.implements Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;
.implements Landroidx/activity/result/ActivityResultCallback;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/wikipedia/readinglist/ReadingListsFragment;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/readinglist/ReadingListsFragment;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/readinglist/ReadingListsFragment$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/readinglist/ReadingListsFragment$$ExternalSyntheticLambda1;->f$0:Lorg/wikipedia/readinglist/ReadingListsFragment;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onActivityResult(Ljava/lang/Object;)V
    .locals 7

    .line 1
    check-cast p1, Landroidx/activity/result/ActivityResult;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget v0, p1, Landroidx/activity/result/ActivityResult;->resultCode:I

    .line 7
    .line 8
    const/4 v1, -0x1

    .line 9
    if-ne v0, v1, :cond_1

    .line 10
    .line 11
    iget-object p1, p1, Landroidx/activity/result/ActivityResult;->data:Landroid/content/Intent;

    .line 12
    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    iget-object p0, p0, Lorg/wikipedia/readinglist/ReadingListsFragment$$ExternalSyntheticLambda1;->f$0:Lorg/wikipedia/readinglist/ReadingListsFragment;

    .line 22
    .line 23
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListsFragment;->_binding:Landroidx/compose/ui/node/NodeChain;

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    iget-object v0, v0, Landroidx/compose/ui/node/NodeChain;->cachedDiffer:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v0, Lorg/wikipedia/views/WikiSwipeRefreshLayout;

    .line 31
    .line 32
    const/4 v1, 0x1

    .line 33
    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    if-eqz v0, :cond_1

    .line 47
    .line 48
    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    if-eqz p1, :cond_1

    .line 53
    .line 54
    :try_start_0
    sget-object v0, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 55
    .line 56
    new-instance v2, Ljava/io/InputStreamReader;

    .line 57
    .line 58
    invoke-direct {v2, p1, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 59
    .line 60
    .line 61
    const/16 v0, 0x2000

    .line 62
    .line 63
    new-instance v3, Ljava/io/BufferedReader;

    .line 64
    .line 65
    invoke-direct {v3, v2, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    .line 67
    .line 68
    :try_start_1
    new-instance v2, Ljava/io/StringWriter;

    .line 69
    .line 70
    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 71
    .line 72
    .line 73
    new-array v0, v0, [C

    .line 74
    .line 75
    invoke-virtual {v3, v0}, Ljava/io/Reader;->read([C)I

    .line 76
    .line 77
    .line 78
    move-result v4

    .line 79
    :goto_0
    if-ltz v4, :cond_0

    .line 80
    .line 81
    const/4 v5, 0x0

    .line 82
    invoke-virtual {v2, v0, v5, v4}, Ljava/io/Writer;->write([CII)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v3, v0}, Ljava/io/Reader;->read([C)I

    .line 86
    .line 87
    .line 88
    move-result v4

    .line 89
    goto :goto_0

    .line 90
    :cond_0
    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 95
    .line 96
    .line 97
    :try_start_2
    invoke-interface {v3}, Ljava/io/Closeable;->close()V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 105
    .line 106
    .line 107
    sget-object v3, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->INSTANCE:Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;

    .line 108
    .line 109
    new-instance v3, Lorg/wikipedia/analytics/eventplatform/BreadCrumbLogEvent;

    .line 110
    .line 111
    const/4 v4, 0x0

    .line 112
    invoke-static {v2, v4}, Lorg/wikipedia/analytics/eventplatform/WikiGamesEvent;->getReadableScreenName(Landroid/content/Context;Landroidx/fragment/app/Fragment;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v5

    .line 116
    const-string v6, "ReadingList.import_started"

    .line 117
    .line 118
    invoke-direct {v3, v5, v6}, Lorg/wikipedia/analytics/eventplatform/BreadCrumbLogEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    invoke-static {v3}, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->submit(Lorg/wikipedia/analytics/eventplatform/Event;)V

    .line 122
    .line 123
    .line 124
    invoke-static {v2}, Landroidx/lifecycle/ViewModelKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    .line 125
    .line 126
    .line 127
    move-result-object v3

    .line 128
    new-instance v5, Lorg/wikipedia/readinglist/ReadingListsShareHelper$shareReadingList$$inlined$CoroutineExceptionHandler$1;

    .line 129
    .line 130
    invoke-direct {v5, v2, v1}, Lorg/wikipedia/readinglist/ReadingListsShareHelper$shareReadingList$$inlined$CoroutineExceptionHandler$1;-><init>(Landroidx/appcompat/app/AppCompatActivity;I)V

    .line 131
    .line 132
    .line 133
    new-instance v6, Lorg/wikipedia/readinglist/ReadingListsExportImportHelper$importLists$2;

    .line 134
    .line 135
    invoke-direct {v6, v0, v2, v4}, Lorg/wikipedia/readinglist/ReadingListsExportImportHelper$importLists$2;-><init>(Ljava/lang/String;Landroidx/appcompat/app/AppCompatActivity;Lkotlin/coroutines/Continuation;)V

    .line 136
    .line 137
    .line 138
    const/4 v0, 0x2

    .line 139
    invoke-static {v3, v5, v4, v6, v0}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 140
    .line 141
    .line 142
    iput-boolean v1, p0, Lorg/wikipedia/readinglist/ReadingListsFragment;->importMode:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 143
    .line 144
    invoke-interface {p1}, Ljava/io/Closeable;->close()V

    .line 145
    .line 146
    .line 147
    return-void

    .line 148
    :catchall_0
    move-exception p0

    .line 149
    goto :goto_1

    .line 150
    :catchall_1
    move-exception p0

    .line 151
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 152
    :catchall_2
    move-exception v0

    .line 153
    :try_start_4
    invoke-static {v3, p0}, Lkotlin/ResultKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 154
    .line 155
    .line 156
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 157
    :goto_1
    :try_start_5
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 158
    :catchall_3
    move-exception v0

    .line 159
    invoke-static {p1, p0}, Lkotlin/ResultKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 160
    .line 161
    .line 162
    throw v0

    .line 163
    :cond_1
    return-void
.end method

.method public onCompleted()V
    .locals 2

    .line 1
    iget v0, p0, Lorg/wikipedia/readinglist/ReadingListsFragment$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iget-object p0, p0, Lorg/wikipedia/readinglist/ReadingListsFragment$$ExternalSyntheticLambda1;->f$0:Lorg/wikipedia/readinglist/ReadingListsFragment;

    .line 5
    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    :pswitch_0
    iget-object p0, p0, Lorg/wikipedia/readinglist/ReadingListsFragment;->adapter:Lorg/wikipedia/diff/DiffUtil$DiffLinesAdapter;

    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :pswitch_1
    invoke-static {}, Lokio/Path$Companion;->manualSync$default()V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListsFragment;->currentSearchQuery:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {p0, v0, v1}, Lorg/wikipedia/readinglist/ReadingListsFragment;->updateLists(Ljava/lang/String;Z)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :pswitch_2
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListsFragment;->currentSearchQuery:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {p0, v0, v1}, Lorg/wikipedia/readinglist/ReadingListsFragment;->updateLists(Ljava/lang/String;Z)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :pswitch_3
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListsFragment;->currentSearchQuery:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {p0, v0, v1}, Lorg/wikipedia/readinglist/ReadingListsFragment;->updateLists(Ljava/lang/String;Z)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :pswitch_4
    invoke-virtual {p0}, Lorg/wikipedia/readinglist/ReadingListsFragment;->updateLists()V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :pswitch_5
    invoke-virtual {p0}, Lorg/wikipedia/readinglist/ReadingListsFragment;->updateLists()V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    nop

    .line 45
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onRefresh()V
    .locals 2

    .line 1
    iget-object p0, p0, Lorg/wikipedia/readinglist/ReadingListsFragment$$ExternalSyntheticLambda1;->f$0:Lorg/wikipedia/readinglist/ReadingListsFragment;

    .line 2
    .line 3
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListsFragment;->_binding:Landroidx/compose/ui/node/NodeChain;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    iget-object v0, v0, Landroidx/compose/ui/node/NodeChain;->cachedDiffer:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, Lorg/wikipedia/views/WikiSwipeRefreshLayout;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    invoke-static {}, Lokhttp3/Headers$Companion;->isLoggedIn()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    invoke-static {}, Lokhttp3/Headers$Companion;->isTemporaryAccount()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    sget-object p0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 29
    .line 30
    const/4 p0, 0x1

    .line 31
    invoke-static {p0}, Lorg/wikipedia/settings/Prefs;->setReadingListSyncEnabled(Z)V

    .line 32
    .line 33
    .line 34
    invoke-static {}, Lokio/Path$Companion;->manualSyncWithForce()V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-static {p0}, Lokhttp3/Cache$Companion;->promptLogInToSyncDialog(Landroidx/appcompat/app/AppCompatActivity;)V

    .line 43
    .line 44
    .line 45
    const/4 p0, 0x0

    .line 46
    invoke-virtual {v0, p0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public onUndoDeleteClicked()V
    .locals 1

    .line 1
    iget v0, p0, Lorg/wikipedia/readinglist/ReadingListsFragment$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/readinglist/ReadingListsFragment$$ExternalSyntheticLambda1;->f$0:Lorg/wikipedia/readinglist/ReadingListsFragment;

    .line 4
    .line 5
    sparse-switch v0, :sswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lorg/wikipedia/readinglist/ReadingListsFragment;->updateLists()V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :sswitch_0
    invoke-virtual {p0}, Lorg/wikipedia/readinglist/ReadingListsFragment;->updateLists()V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :sswitch_1
    invoke-virtual {p0}, Lorg/wikipedia/readinglist/ReadingListsFragment;->updateLists()V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :sswitch_2
    invoke-virtual {p0}, Lorg/wikipedia/readinglist/ReadingListsFragment;->updateLists()V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    nop

    .line 25
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x4 -> :sswitch_1
        0x6 -> :sswitch_0
    .end sparse-switch
.end method
