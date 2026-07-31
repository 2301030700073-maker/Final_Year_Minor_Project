.class public final synthetic Lorg/wikipedia/readinglist/ReadingListFragment$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$SnackbarCallback;
.implements Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$Callback;
.implements Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/wikipedia/readinglist/ReadingListFragment;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/readinglist/ReadingListFragment;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/readinglist/ReadingListFragment$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/readinglist/ReadingListFragment$$ExternalSyntheticLambda3;->f$0:Lorg/wikipedia/readinglist/ReadingListFragment;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .line 1
    iget v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/readinglist/ReadingListFragment$$ExternalSyntheticLambda3;->f$0:Lorg/wikipedia/readinglist/ReadingListFragment;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    :pswitch_0
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->readingList:Lorg/wikipedia/readinglist/database/ReadingList;

    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lorg/wikipedia/readinglist/ReadingListFragment;->update(Lorg/wikipedia/readinglist/database/ReadingList;)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_1
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->adapter:Lorg/wikipedia/diff/DiffUtil$DiffLinesAdapter;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->readingList:Lorg/wikipedia/readinglist/database/ReadingList;

    .line 20
    .line 21
    invoke-virtual {p0, v0}, Lorg/wikipedia/readinglist/ReadingListFragment;->update(Lorg/wikipedia/readinglist/database/ReadingList;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :pswitch_2
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->currentSearchQuery:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {p0, v0}, Lorg/wikipedia/readinglist/ReadingListFragment;->setSearchQuery$1(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :pswitch_3
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->currentSearchQuery:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {p0, v0}, Lorg/wikipedia/readinglist/ReadingListFragment;->setSearchQuery$1(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :pswitch_4
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->adapter:Lorg/wikipedia/diff/DiffUtil$DiffLinesAdapter;

    .line 38
    .line 39
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->readingList:Lorg/wikipedia/readinglist/database/ReadingList;

    .line 43
    .line 44
    invoke-virtual {p0, v0}, Lorg/wikipedia/readinglist/ReadingListFragment;->update(Lorg/wikipedia/readinglist/database/ReadingList;)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :pswitch_5
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->adapter:Lorg/wikipedia/diff/DiffUtil$DiffLinesAdapter;

    .line 49
    .line 50
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->readingList:Lorg/wikipedia/readinglist/database/ReadingList;

    .line 54
    .line 55
    invoke-virtual {p0, v0}, Lorg/wikipedia/readinglist/ReadingListFragment;->update(Lorg/wikipedia/readinglist/database/ReadingList;)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :pswitch_6
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->adapter:Lorg/wikipedia/diff/DiffUtil$DiffLinesAdapter;

    .line 60
    .line 61
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 62
    .line 63
    .line 64
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->readingList:Lorg/wikipedia/readinglist/database/ReadingList;

    .line 65
    .line 66
    invoke-virtual {p0, v0}, Lorg/wikipedia/readinglist/ReadingListFragment;->update(Lorg/wikipedia/readinglist/database/ReadingList;)V

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :pswitch_7
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->adapter:Lorg/wikipedia/diff/DiffUtil$DiffLinesAdapter;

    .line 71
    .line 72
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 73
    .line 74
    .line 75
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->readingList:Lorg/wikipedia/readinglist/database/ReadingList;

    .line 76
    .line 77
    invoke-virtual {p0, v0}, Lorg/wikipedia/readinglist/ReadingListFragment;->update(Lorg/wikipedia/readinglist/database/ReadingList;)V

    .line 78
    .line 79
    .line 80
    return-void

    .line 81
    :pswitch_8
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->adapter:Lorg/wikipedia/diff/DiffUtil$DiffLinesAdapter;

    .line 82
    .line 83
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 84
    .line 85
    .line 86
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->readingList:Lorg/wikipedia/readinglist/database/ReadingList;

    .line 87
    .line 88
    invoke-virtual {p0, v0}, Lorg/wikipedia/readinglist/ReadingListFragment;->update(Lorg/wikipedia/readinglist/database/ReadingList;)V

    .line 89
    .line 90
    .line 91
    return-void

    .line 92
    :pswitch_9
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->adapter:Lorg/wikipedia/diff/DiffUtil$DiffLinesAdapter;

    .line 93
    .line 94
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 95
    .line 96
    .line 97
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->readingList:Lorg/wikipedia/readinglist/database/ReadingList;

    .line 98
    .line 99
    invoke-virtual {p0, v0}, Lorg/wikipedia/readinglist/ReadingListFragment;->update(Lorg/wikipedia/readinglist/database/ReadingList;)V

    .line 100
    .line 101
    .line 102
    return-void

    .line 103
    :pswitch_a
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->adapter:Lorg/wikipedia/diff/DiffUtil$DiffLinesAdapter;

    .line 104
    .line 105
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 106
    .line 107
    .line 108
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->readingList:Lorg/wikipedia/readinglist/database/ReadingList;

    .line 109
    .line 110
    invoke-virtual {p0, v0}, Lorg/wikipedia/readinglist/ReadingListFragment;->update(Lorg/wikipedia/readinglist/database/ReadingList;)V

    .line 111
    .line 112
    .line 113
    return-void

    .line 114
    :pswitch_b
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->readingList:Lorg/wikipedia/readinglist/database/ReadingList;

    .line 115
    .line 116
    invoke-virtual {p0, v0}, Lorg/wikipedia/readinglist/ReadingListFragment;->update(Lorg/wikipedia/readinglist/database/ReadingList;)V

    .line 117
    .line 118
    .line 119
    return-void

    .line 120
    :pswitch_c
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->readingList:Lorg/wikipedia/readinglist/database/ReadingList;

    .line 121
    .line 122
    invoke-virtual {p0, v0}, Lorg/wikipedia/readinglist/ReadingListFragment;->update(Lorg/wikipedia/readinglist/database/ReadingList;)V

    .line 123
    .line 124
    .line 125
    return-void

    .line 126
    nop

    .line 127
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onRefresh()V
    .locals 2

    .line 1
    iget-object p0, p0, Lorg/wikipedia/readinglist/ReadingListFragment$$ExternalSyntheticLambda3;->f$0:Lorg/wikipedia/readinglist/ReadingListFragment;

    .line 2
    .line 3
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    iget-object v0, v0, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginButton:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, Lorg/wikipedia/views/WikiSwipeRefreshLayout;

    .line 11
    .line 12
    invoke-static {}, Lokhttp3/Headers$Companion;->isLoggedIn()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    invoke-static {}, Lokhttp3/Headers$Companion;->isTemporaryAccount()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    sget-object p0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 26
    .line 27
    const/4 p0, 0x1

    .line 28
    invoke-static {p0}, Lorg/wikipedia/settings/Prefs;->setReadingListSyncEnabled(Z)V

    .line 29
    .line 30
    .line 31
    invoke-static {}, Lokio/Path$Companion;->manualSyncWithForce()V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-static {p0}, Lokhttp3/Cache$Companion;->promptLogInToSyncDialog(Landroidx/appcompat/app/AppCompatActivity;)V

    .line 40
    .line 41
    .line 42
    const/4 p0, 0x0

    .line 43
    invoke-virtual {v0, p0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public onUndoDeleteClicked()V
    .locals 1

    .line 1
    iget v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/readinglist/ReadingListFragment$$ExternalSyntheticLambda3;->f$0:Lorg/wikipedia/readinglist/ReadingListFragment;

    .line 4
    .line 5
    sparse-switch v0, :sswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lorg/wikipedia/readinglist/ReadingListFragment;->updateReadingListData()V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :sswitch_0
    invoke-virtual {p0}, Lorg/wikipedia/readinglist/ReadingListFragment;->updateReadingListData()V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :sswitch_1
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->currentSearchQuery:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Lorg/wikipedia/readinglist/ReadingListFragment;->setSearchQuery$1(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :sswitch_2
    invoke-virtual {p0}, Lorg/wikipedia/readinglist/ReadingListFragment;->updateReadingListData()V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    nop

    .line 27
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0xd -> :sswitch_1
        0xf -> :sswitch_0
    .end sparse-switch
.end method
