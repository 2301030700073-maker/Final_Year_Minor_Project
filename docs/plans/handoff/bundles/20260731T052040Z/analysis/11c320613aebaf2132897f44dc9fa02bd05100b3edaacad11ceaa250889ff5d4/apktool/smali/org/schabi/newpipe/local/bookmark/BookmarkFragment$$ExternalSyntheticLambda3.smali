.class public final synthetic Lorg/schabi/newpipe/local/bookmark/BookmarkFragment$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;

.field public final synthetic f$1:Ljava/util/ArrayList;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Lorg/schabi/newpipe/database/playlist/PlaylistMetadataEntry;

.field public final synthetic f$4:Ljava/lang/String;

.field public final synthetic f$5:Z

.field public final synthetic f$6:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;Ljava/util/ArrayList;Ljava/lang/String;Lorg/schabi/newpipe/database/playlist/PlaylistMetadataEntry;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment$$ExternalSyntheticLambda3;->f$0:Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment$$ExternalSyntheticLambda3;->f$1:Ljava/util/ArrayList;

    .line 7
    .line 8
    iput-object p3, p0, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment$$ExternalSyntheticLambda3;->f$2:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment$$ExternalSyntheticLambda3;->f$3:Lorg/schabi/newpipe/database/playlist/PlaylistMetadataEntry;

    .line 11
    .line 12
    iput-object p5, p0, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment$$ExternalSyntheticLambda3;->f$4:Ljava/lang/String;

    .line 13
    .line 14
    iput-boolean p6, p0, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment$$ExternalSyntheticLambda3;->f$5:Z

    .line 15
    .line 16
    iput-object p7, p0, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment$$ExternalSyntheticLambda3;->f$6:Ljava/lang/String;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 10

    .line 1
    sget p1, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;->$r8$clinit:I

    .line 2
    .line 3
    iget-object p1, p0, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment$$ExternalSyntheticLambda3;->f$1:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Ljava/lang/String;

    .line 10
    .line 11
    iget-object v1, p0, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment$$ExternalSyntheticLambda3;->f$2:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iget-object v1, p0, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment$$ExternalSyntheticLambda3;->f$0:Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;

    .line 18
    .line 19
    iget-object v2, p0, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment$$ExternalSyntheticLambda3;->f$3:Lorg/schabi/newpipe/database/playlist/PlaylistMetadataEntry;

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-static {p0}, Lorg/jsoup/parser/TokenData;->inflate(Landroid/view/LayoutInflater;)Lorg/jsoup/parser/TokenData;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    iget-object p1, p0, Lorg/jsoup/parser/TokenData;->builder:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast p1, Lorg/schabi/newpipe/views/NewPipeEditText;

    .line 34
    .line 35
    const p2, 0x7f130347

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setHint(I)V

    .line 39
    .line 40
    .line 41
    const/4 p2, 0x1

    .line 42
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setInputType(I)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2}, Lorg/schabi/newpipe/database/playlist/PlaylistMetadataEntry;->getOrderingName()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    .line 51
    .line 52
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    .line 53
    .line 54
    iget-object p2, v1, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 55
    .line 56
    invoke-direct {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 57
    .line 58
    .line 59
    iget-object p2, p0, Lorg/jsoup/parser/TokenData;->value:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast p2, Landroid/widget/RelativeLayout;

    .line 62
    .line 63
    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    new-instance p2, Lorg/schabi/newpipe/error/ErrorActivity$$ExternalSyntheticLambda4;

    .line 68
    .line 69
    const/4 v0, 0x2

    .line 70
    invoke-direct {p2, v0, v1, v2, p0}, Lorg/schabi/newpipe/error/ErrorActivity$$ExternalSyntheticLambda4;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    const p0, 0x7f13041f

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1, p0, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    const p1, 0x7f130076

    .line 81
    .line 82
    .line 83
    const/4 p2, 0x0

    .line 84
    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()V

    .line 89
    .line 90
    .line 91
    return-void

    .line 92
    :cond_0
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    check-cast v0, Ljava/lang/String;

    .line 97
    .line 98
    iget-object v3, p0, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment$$ExternalSyntheticLambda3;->f$4:Ljava/lang/String;

    .line 99
    .line 100
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    if-eqz v0, :cond_1

    .line 105
    .line 106
    invoke-virtual {v2}, Lorg/schabi/newpipe/database/playlist/PlaylistMetadataEntry;->getOrderingName()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    invoke-virtual {v1, p0, v2}, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;->showDeleteDialog(Ljava/lang/String;Lorg/schabi/newpipe/database/playlist/PlaylistLocalItem;)V

    .line 111
    .line 112
    .line 113
    return-void

    .line 114
    :cond_1
    iget-boolean v0, p0, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment$$ExternalSyntheticLambda3;->f$5:Z

    .line 115
    .line 116
    if-eqz v0, :cond_3

    .line 117
    .line 118
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    check-cast p1, Ljava/lang/String;

    .line 123
    .line 124
    iget-object p0, p0, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment$$ExternalSyntheticLambda3;->f$6:Ljava/lang/String;

    .line 125
    .line 126
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    move-result p0

    .line 130
    if-eqz p0, :cond_3

    .line 131
    .line 132
    iget-object p0, v1, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;->localPlaylistManager:Lokhttp3/Dispatcher;

    .line 133
    .line 134
    invoke-virtual {v2}, Lorg/schabi/newpipe/database/playlist/PlaylistMetadataEntry;->getUid()J

    .line 135
    .line 136
    .line 137
    move-result-wide p1

    .line 138
    iget-object p0, p0, Lokhttp3/Dispatcher;->runningSyncCalls:Ljava/lang/Object;

    .line 139
    .line 140
    check-cast p0, Lorg/schabi/newpipe/database/playlist/dao/PlaylistStreamDAO_Impl;

    .line 141
    .line 142
    iget-object p0, p0, Lorg/schabi/newpipe/database/playlist/dao/PlaylistStreamDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 143
    .line 144
    const-string/jumbo v0, "streams"

    .line 145
    .line 146
    .line 147
    const-string v3, "playlist_stream_join"

    .line 148
    .line 149
    filled-new-array {v0, v3}, [Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    new-instance v3, Landroidx/work/impl/model/WorkSpecDao_Impl$$ExternalSyntheticLambda26;

    .line 154
    .line 155
    const/16 v4, 0xd

    .line 156
    .line 157
    invoke-direct {v3, p1, p2, v4}, Landroidx/work/impl/model/WorkSpecDao_Impl$$ExternalSyntheticLambda26;-><init>(JI)V

    .line 158
    .line 159
    .line 160
    const/4 p1, 0x0

    .line 161
    invoke-static {p0, p1, v0, v3}, Lokhttp3/Cookie$Companion;->createFlowable(Landroidx/room/RoomDatabase;Z[Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Flowable;

    .line 162
    .line 163
    .line 164
    move-result-object p0

    .line 165
    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Flowable;->blockingFirst()Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object p0

    .line 169
    check-cast p0, Ljava/lang/Long;

    .line 170
    .line 171
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 172
    .line 173
    .line 174
    move-result-wide p0

    .line 175
    const-wide/16 v3, 0x0

    .line 176
    .line 177
    cmp-long p2, p0, v3

    .line 178
    .line 179
    if-gez p2, :cond_2

    .line 180
    .line 181
    const-wide/16 p0, -0x1

    .line 182
    .line 183
    :cond_2
    move-wide v6, p0

    .line 184
    iget-object v3, v1, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;->localPlaylistManager:Lokhttp3/Dispatcher;

    .line 185
    .line 186
    invoke-virtual {v2}, Lorg/schabi/newpipe/database/playlist/PlaylistMetadataEntry;->getUid()J

    .line 187
    .line 188
    .line 189
    move-result-wide v4

    .line 190
    const/4 v9, 0x0

    .line 191
    const/4 v8, 0x0

    .line 192
    invoke-virtual/range {v3 .. v9}, Lokhttp3/Dispatcher;->modifyPlaylist(JJLjava/lang/String;Z)Lio/reactivex/rxjava3/internal/operators/maybe/MaybeObserveOn;

    .line 193
    .line 194
    .line 195
    move-result-object p0

    .line 196
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    .line 197
    .line 198
    .line 199
    move-result-object p1

    .line 200
    sget-object p2, Lio/reactivex/rxjava3/internal/functions/Functions;->EMPTY_CONSUMER:Lio/noties/markwon/BlockHandlerDef;

    .line 201
    .line 202
    sget-object v0, Lio/reactivex/rxjava3/internal/functions/Functions;->ON_ERROR_MISSING:Lokio/ByteString$Companion;

    .line 203
    .line 204
    sget-object v1, Lio/reactivex/rxjava3/internal/functions/Functions;->EMPTY_ACTION:Landroidx/transition/Transition$1;

    .line 205
    .line 206
    new-instance v2, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeCallbackObserver;

    .line 207
    .line 208
    invoke-direct {v2, p2, v0, v1}, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeCallbackObserver;-><init>(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;)V

    .line 209
    .line 210
    .line 211
    :try_start_0
    new-instance p2, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeObserveOn$ObserveOnMaybeObserver;

    .line 212
    .line 213
    invoke-direct {p2, v2, p1}, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeObserveOn$ObserveOnMaybeObserver;-><init>(Lio/reactivex/rxjava3/core/MaybeObserver;Lio/reactivex/rxjava3/core/Scheduler;)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {p0, p2}, Lio/reactivex/rxjava3/core/Maybe;->subscribe(Lio/reactivex/rxjava3/core/MaybeObserver;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    .line 218
    .line 219
    return-void

    .line 220
    :catchall_0
    move-exception v0

    .line 221
    move-object p0, v0

    .line 222
    const-string/jumbo p1, "subscribeActual failed"

    .line 223
    .line 224
    .line 225
    invoke-static {p0, p1, p0}, Landroidx/compose/ui/node/Owner$-CC;->m(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/NullPointerException;

    .line 226
    .line 227
    .line 228
    move-result-object p0

    .line 229
    throw p0

    .line 230
    :catch_0
    move-exception v0

    .line 231
    move-object p0, v0

    .line 232
    throw p0

    .line 233
    :cond_3
    return-void
.end method
