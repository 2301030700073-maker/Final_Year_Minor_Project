.class public final synthetic Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Action;
.implements Lio/reactivex/rxjava3/functions/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 6

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    sget-object v2, Lorg/schabi/newpipe/error/UserAction;->REQUESTED_BOOKMARK:Lorg/schabi/newpipe/error/UserAction;

    .line 5
    .line 6
    iget-object p0, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 7
    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    check-cast p0, Landroid/widget/Toast;

    .line 12
    .line 13
    check-cast p1, Ljava/lang/Integer;

    .line 14
    .line 15
    sget p1, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->$r8$clinit:I

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :pswitch_0
    check-cast p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;

    .line 22
    .line 23
    check-cast p1, Ljava/lang/Throwable;

    .line 24
    .line 25
    sget v0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->$r8$clinit:I

    .line 26
    .line 27
    new-instance v0, Lorg/schabi/newpipe/error/ErrorInfo;

    .line 28
    .line 29
    const-string v1, "Changing playlist thumbnail"

    .line 30
    .line 31
    invoke-direct {v0, p1, v2, v1}, Lorg/schabi/newpipe/error/ErrorInfo;-><init>(Ljava/lang/Throwable;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->showError(Lorg/schabi/newpipe/error/ErrorInfo;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :pswitch_1
    check-cast p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;

    .line 39
    .line 40
    check-cast p1, Landroid/util/Pair;

    .line 41
    .line 42
    sget v0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->$r8$clinit:I

    .line 43
    .line 44
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v0, Ljava/util/List;

    .line 47
    .line 48
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast p1, Ljava/lang/Boolean;

    .line 51
    .line 52
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    iget-object v2, p0, Lorg/schabi/newpipe/local/BaseLocalListFragment;->itemListAdapter:Lorg/schabi/newpipe/local/LocalItemListAdapter;

    .line 57
    .line 58
    invoke-virtual {v2}, Lorg/schabi/newpipe/local/LocalItemListAdapter;->clearStreamItemList()V

    .line 59
    .line 60
    .line 61
    iget-object v2, p0, Lorg/schabi/newpipe/local/BaseLocalListFragment;->itemListAdapter:Lorg/schabi/newpipe/local/LocalItemListAdapter;

    .line 62
    .line 63
    invoke-virtual {v2, v0}, Lorg/schabi/newpipe/local/LocalItemListAdapter;->addItems(Ljava/util/List;)V

    .line 64
    .line 65
    .line 66
    iget-object v0, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->debounceSaver:Lokhttp3/internal/connection/RealConnectionPool;

    .line 67
    .line 68
    invoke-virtual {v0}, Lokhttp3/internal/connection/RealConnectionPool;->setHasChangesToSave()V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->saveImmediate()V

    .line 72
    .line 73
    .line 74
    if-eqz p1, :cond_0

    .line 75
    .line 76
    invoke-virtual {p0}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->updateThumbnailUrl()V

    .line 77
    .line 78
    .line 79
    :cond_0
    iget-object p1, p0, Lorg/schabi/newpipe/local/BaseLocalListFragment;->itemListAdapter:Lorg/schabi/newpipe/local/LocalItemListAdapter;

    .line 80
    .line 81
    iget-object p1, p1, Lorg/schabi/newpipe/local/LocalItemListAdapter;->localItems:Ljava/util/ArrayList;

    .line 82
    .line 83
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    int-to-long v2, p1

    .line 88
    iget-object p1, p0, Lorg/schabi/newpipe/local/BaseLocalListFragment;->itemListAdapter:Lorg/schabi/newpipe/local/LocalItemListAdapter;

    .line 89
    .line 90
    iget-object p1, p1, Lorg/schabi/newpipe/local/LocalItemListAdapter;->localItems:Ljava/util/ArrayList;

    .line 91
    .line 92
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->setStreamCountAndOverallDuration(Ljava/util/ArrayList;)V

    .line 93
    .line 94
    .line 95
    const-wide/16 v4, 0x0

    .line 96
    .line 97
    cmp-long p1, v2, v4

    .line 98
    .line 99
    if-nez p1, :cond_1

    .line 100
    .line 101
    invoke-virtual {p0}, Lorg/schabi/newpipe/local/BaseLocalListFragment;->showEmptyState()V

    .line 102
    .line 103
    .line 104
    :cond_1
    invoke-virtual {p0}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->hideLoading()V

    .line 105
    .line 106
    .line 107
    iput-boolean v1, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->isRewritingPlaylist:Z

    .line 108
    .line 109
    return-void

    .line 110
    :pswitch_2
    check-cast p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;

    .line 111
    .line 112
    check-cast p1, Ljava/lang/Throwable;

    .line 113
    .line 114
    sget v0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->$r8$clinit:I

    .line 115
    .line 116
    new-instance v0, Lorg/schabi/newpipe/error/ErrorInfo;

    .line 117
    .line 118
    const-string v1, "Saving playlist"

    .line 119
    .line 120
    invoke-direct {v0, p1, v2, v1}, Lorg/schabi/newpipe/error/ErrorInfo;-><init>(Ljava/lang/Throwable;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->showError(Lorg/schabi/newpipe/error/ErrorInfo;)V

    .line 124
    .line 125
    .line 126
    return-void

    .line 127
    :pswitch_3
    check-cast p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;

    .line 128
    .line 129
    check-cast p1, Ljava/lang/Throwable;

    .line 130
    .line 131
    sget v0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->$r8$clinit:I

    .line 132
    .line 133
    const-string v0, "Sharing playlist"

    .line 134
    .line 135
    invoke-static {p0, v0, p1}, Lorg/schabi/newpipe/error/ErrorUtil;->showUiErrorSnackbar(Landroidx/fragment/app/Fragment;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 136
    .line 137
    .line 138
    return-void

    .line 139
    :pswitch_4
    check-cast p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;

    .line 140
    .line 141
    check-cast p1, Ljava/lang/Throwable;

    .line 142
    .line 143
    sget v0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->$r8$clinit:I

    .line 144
    .line 145
    new-instance v0, Lorg/schabi/newpipe/error/ErrorInfo;

    .line 146
    .line 147
    const-string v1, "Removing duplicated streams"

    .line 148
    .line 149
    invoke-direct {v0, p1, v2, v1}, Lorg/schabi/newpipe/error/ErrorInfo;-><init>(Ljava/lang/Throwable;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->showError(Lorg/schabi/newpipe/error/ErrorInfo;)V

    .line 153
    .line 154
    .line 155
    return-void

    .line 156
    :pswitch_5
    check-cast p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;

    .line 157
    .line 158
    check-cast p1, Ljava/util/List;

    .line 159
    .line 160
    sget v0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->$r8$clinit:I

    .line 161
    .line 162
    iget-object v0, p0, Lorg/schabi/newpipe/local/BaseLocalListFragment;->itemListAdapter:Lorg/schabi/newpipe/local/LocalItemListAdapter;

    .line 163
    .line 164
    invoke-virtual {v0}, Lorg/schabi/newpipe/local/LocalItemListAdapter;->clearStreamItemList()V

    .line 165
    .line 166
    .line 167
    iget-object v0, p0, Lorg/schabi/newpipe/local/BaseLocalListFragment;->itemListAdapter:Lorg/schabi/newpipe/local/LocalItemListAdapter;

    .line 168
    .line 169
    invoke-virtual {v0, p1}, Lorg/schabi/newpipe/local/LocalItemListAdapter;->addItems(Ljava/util/List;)V

    .line 170
    .line 171
    .line 172
    iget-object p1, p0, Lorg/schabi/newpipe/local/BaseLocalListFragment;->itemListAdapter:Lorg/schabi/newpipe/local/LocalItemListAdapter;

    .line 173
    .line 174
    iget-object p1, p1, Lorg/schabi/newpipe/local/LocalItemListAdapter;->localItems:Ljava/util/ArrayList;

    .line 175
    .line 176
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->setStreamCountAndOverallDuration(Ljava/util/ArrayList;)V

    .line 177
    .line 178
    .line 179
    iget-object p1, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->debounceSaver:Lokhttp3/internal/connection/RealConnectionPool;

    .line 180
    .line 181
    invoke-virtual {p1}, Lokhttp3/internal/connection/RealConnectionPool;->setHasChangesToSave()V

    .line 182
    .line 183
    .line 184
    invoke-virtual {p0}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->saveImmediate()V

    .line 185
    .line 186
    .line 187
    invoke-virtual {p0}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->hideLoading()V

    .line 188
    .line 189
    .line 190
    iput-boolean v1, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->isRewritingPlaylist:Z

    .line 191
    .line 192
    return-void

    .line 193
    :pswitch_6
    check-cast p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;

    .line 194
    .line 195
    check-cast p1, Ljava/lang/Throwable;

    .line 196
    .line 197
    sget v0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->$r8$clinit:I

    .line 198
    .line 199
    new-instance v0, Lorg/schabi/newpipe/error/ErrorInfo;

    .line 200
    .line 201
    const-string v1, "Renaming playlist"

    .line 202
    .line 203
    invoke-direct {v0, p1, v2, v1}, Lorg/schabi/newpipe/error/ErrorInfo;-><init>(Ljava/lang/Throwable;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->showError(Lorg/schabi/newpipe/error/ErrorInfo;)V

    .line 207
    .line 208
    .line 209
    return-void

    .line 210
    nop

    .line 211
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public run()V
    .locals 1

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;

    .line 4
    .line 5
    iget-object p0, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->debounceSaver:Lokhttp3/internal/connection/RealConnectionPool;

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lokhttp3/internal/connection/RealConnectionPool;->connections:Ljava/io/Serializable;

    .line 10
    .line 11
    check-cast p0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method
