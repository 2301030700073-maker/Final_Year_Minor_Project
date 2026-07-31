.class public final synthetic Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p3, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda3;->f$0:Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;

    .line 4
    .line 5
    iput-object p2, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 10

    .line 1
    iget p1, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    const-string/jumbo p2, "subscribeActual failed"

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    .line 7
    .line 8
    iget-object p0, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda3;->f$0:Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    packed-switch p1, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    check-cast v0, Landroid/widget/CheckBox;

    .line 15
    .line 16
    sget p1, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->$r8$clinit:I

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    iget-boolean v0, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->isRewritingPlaylist:Z

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    goto/16 :goto_0

    .line 27
    .line 28
    :cond_0
    iput-boolean v1, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->isRewritingPlaylist:Z

    .line 29
    .line 30
    invoke-virtual {p0}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->showLoading()V

    .line 31
    .line 32
    .line 33
    new-instance v0, Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;

    .line 34
    .line 35
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-direct {v0, v2}, Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;-><init>(Landroid/content/Context;)V

    .line 40
    .line 41
    .line 42
    iget-object v2, v0, Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;->playlistDescription:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v2, Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl;

    .line 45
    .line 46
    iget-object v3, v2, Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 47
    .line 48
    const-string/jumbo v4, "streams"

    .line 49
    .line 50
    .line 51
    const-string/jumbo v5, "stream_history"

    .line 52
    .line 53
    .line 54
    filled-new-array {v4, v5}, [Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    new-instance v5, Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl$$ExternalSyntheticLambda0;

    .line 59
    .line 60
    invoke-direct {v5, v2, v1}, Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl;I)V

    .line 61
    .line 62
    .line 63
    const/4 v2, 0x0

    .line 64
    invoke-static {v3, v2, v4, v5}, Lokhttp3/Cookie$Companion;->createFlowable(Landroidx/room/RoomDatabase;Z[Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Flowable;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    sget-object v4, Lio/reactivex/rxjava3/schedulers/Schedulers;->IO:Lio/reactivex/rxjava3/internal/schedulers/IoScheduler;

    .line 69
    .line 70
    invoke-virtual {v3, v4}, Lio/reactivex/rxjava3/core/Flowable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSubscribeOn;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    new-instance v5, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableElementAtMaybe;

    .line 75
    .line 76
    invoke-direct {v5, v3}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableElementAtMaybe;-><init>(Lio/reactivex/rxjava3/core/Flowable;)V

    .line 77
    .line 78
    .line 79
    new-instance v3, Lorg/schabi/newpipe/local/feed/FeedViewModel$$ExternalSyntheticLambda0;

    .line 80
    .line 81
    const/16 v6, 0xf

    .line 82
    .line 83
    invoke-direct {v3, v6}, Lorg/schabi/newpipe/local/feed/FeedViewModel$$ExternalSyntheticLambda0;-><init>(I)V

    .line 84
    .line 85
    .line 86
    new-instance v7, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeMap;

    .line 87
    .line 88
    invoke-direct {v7, v5, v3, v2}, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeMap;-><init>(Lio/reactivex/rxjava3/core/Maybe;Lio/reactivex/rxjava3/functions/Function;I)V

    .line 89
    .line 90
    .line 91
    iget-object v3, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->playlistManager:Lokhttp3/Dispatcher;

    .line 92
    .line 93
    iget-object v5, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->playlistId:Ljava/lang/Long;

    .line 94
    .line 95
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 96
    .line 97
    .line 98
    move-result-wide v8

    .line 99
    invoke-virtual {v3, v8, v9}, Lokhttp3/Dispatcher;->getPlaylistStreams(J)Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSubscribeOn;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    new-instance v5, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableElementAtMaybe;

    .line 104
    .line 105
    invoke-direct {v5, v3}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableElementAtMaybe;-><init>(Lio/reactivex/rxjava3/core/Flowable;)V

    .line 106
    .line 107
    .line 108
    new-instance v3, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda19;

    .line 109
    .line 110
    invoke-direct {v3, p0, v0, p1}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda19;-><init>(Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;Z)V

    .line 111
    .line 112
    .line 113
    new-instance v0, Lokhttp3/ConnectionPool;

    .line 114
    .line 115
    invoke-direct {v0, v3, v6}, Lokhttp3/ConnectionPool;-><init>(Ljava/lang/Object;I)V

    .line 116
    .line 117
    .line 118
    const/4 v3, 0x2

    .line 119
    new-array v3, v3, [Lio/reactivex/rxjava3/core/MaybeSource;

    .line 120
    .line 121
    aput-object v5, v3, v2

    .line 122
    .line 123
    aput-object v7, v3, v1

    .line 124
    .line 125
    new-instance v1, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeZipArray;

    .line 126
    .line 127
    invoke-direct {v1, v3, v0}, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeZipArray;-><init>([Lio/reactivex/rxjava3/core/MaybeSource;Lokhttp3/ConnectionPool;)V

    .line 128
    .line 129
    .line 130
    iget-object v0, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 131
    .line 132
    invoke-virtual {v1, v4}, Lio/reactivex/rxjava3/core/Maybe;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/internal/operators/maybe/MaybeObserveOn;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    .line 137
    .line 138
    .line 139
    move-result-object v3

    .line 140
    new-instance v4, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda0;

    .line 141
    .line 142
    const/4 v5, 0x6

    .line 143
    invoke-direct {v4, p0, v5}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    .line 144
    .line 145
    .line 146
    new-instance v5, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda21;

    .line 147
    .line 148
    invoke-direct {v5, v2, p0, p1}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda21;-><init>(ILjava/lang/Object;Z)V

    .line 149
    .line 150
    .line 151
    sget-object p0, Lio/reactivex/rxjava3/internal/functions/Functions;->EMPTY_ACTION:Landroidx/transition/Transition$1;

    .line 152
    .line 153
    new-instance p1, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeCallbackObserver;

    .line 154
    .line 155
    invoke-direct {p1, v4, v5, p0}, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeCallbackObserver;-><init>(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;)V

    .line 156
    .line 157
    .line 158
    :try_start_0
    new-instance p0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeObserveOn$ObserveOnMaybeObserver;

    .line 159
    .line 160
    invoke-direct {p0, p1, v3}, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeObserveOn$ObserveOnMaybeObserver;-><init>(Lio/reactivex/rxjava3/core/MaybeObserver;Lio/reactivex/rxjava3/core/Scheduler;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v1, p0}, Lio/reactivex/rxjava3/core/Maybe;->subscribe(Lio/reactivex/rxjava3/core/MaybeObserver;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    .line 165
    .line 166
    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    .line 167
    .line 168
    .line 169
    :goto_0
    return-void

    .line 170
    :catchall_0
    move-exception v0

    .line 171
    move-object p0, v0

    .line 172
    invoke-static {p0, p2, p0}, Landroidx/compose/ui/node/Owner$-CC;->m(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/NullPointerException;

    .line 173
    .line 174
    .line 175
    move-result-object p0

    .line 176
    throw p0

    .line 177
    :catch_0
    move-exception v0

    .line 178
    move-object p0, v0

    .line 179
    throw p0

    .line 180
    :pswitch_0
    check-cast v0, Lorg/jsoup/parser/TokenData;

    .line 181
    .line 182
    sget p1, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->$r8$clinit:I

    .line 183
    .line 184
    iget-object p1, v0, Lorg/jsoup/parser/TokenData;->builder:Ljava/lang/Object;

    .line 185
    .line 186
    check-cast p1, Lorg/schabi/newpipe/views/NewPipeEditText;

    .line 187
    .line 188
    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 189
    .line 190
    .line 191
    move-result-object p1

    .line 192
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v7

    .line 196
    iget-object p1, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->playlistManager:Lokhttp3/Dispatcher;

    .line 197
    .line 198
    if-nez p1, :cond_1

    .line 199
    .line 200
    goto :goto_1

    .line 201
    :cond_1
    iput-object v7, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->name:Ljava/lang/String;

    .line 202
    .line 203
    invoke-virtual {p0, v7}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->setTitle(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    iget-object v2, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->playlistManager:Lokhttp3/Dispatcher;

    .line 207
    .line 208
    iget-object p1, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->playlistId:Ljava/lang/Long;

    .line 209
    .line 210
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 211
    .line 212
    .line 213
    move-result-wide v3

    .line 214
    const-wide/16 v5, -0x2

    .line 215
    .line 216
    const/4 v8, 0x0

    .line 217
    invoke-virtual/range {v2 .. v8}, Lokhttp3/Dispatcher;->modifyPlaylist(JJLjava/lang/String;Z)Lio/reactivex/rxjava3/internal/operators/maybe/MaybeObserveOn;

    .line 218
    .line 219
    .line 220
    move-result-object p1

    .line 221
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    new-instance v2, Lorg/schabi/newpipe/local/feed/FeedViewModel$$ExternalSyntheticLambda0;

    .line 226
    .line 227
    const/16 v3, 0xe

    .line 228
    .line 229
    invoke-direct {v2, v3}, Lorg/schabi/newpipe/local/feed/FeedViewModel$$ExternalSyntheticLambda0;-><init>(I)V

    .line 230
    .line 231
    .line 232
    new-instance v3, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda0;

    .line 233
    .line 234
    invoke-direct {v3, p0, v1}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    .line 235
    .line 236
    .line 237
    sget-object v1, Lio/reactivex/rxjava3/internal/functions/Functions;->EMPTY_ACTION:Landroidx/transition/Transition$1;

    .line 238
    .line 239
    new-instance v4, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeCallbackObserver;

    .line 240
    .line 241
    invoke-direct {v4, v2, v3, v1}, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeCallbackObserver;-><init>(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;)V

    .line 242
    .line 243
    .line 244
    :try_start_1
    new-instance v1, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeObserveOn$ObserveOnMaybeObserver;

    .line 245
    .line 246
    invoke-direct {v1, v4, v0}, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeObserveOn$ObserveOnMaybeObserver;-><init>(Lio/reactivex/rxjava3/core/MaybeObserver;Lio/reactivex/rxjava3/core/Scheduler;)V

    .line 247
    .line 248
    .line 249
    invoke-virtual {p1, v1}, Lio/reactivex/rxjava3/core/Maybe;->subscribe(Lio/reactivex/rxjava3/core/MaybeObserver;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 250
    .line 251
    .line 252
    iget-object p0, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 253
    .line 254
    invoke-virtual {p0, v4}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    .line 255
    .line 256
    .line 257
    :goto_1
    return-void

    .line 258
    :catchall_1
    move-exception v0

    .line 259
    move-object p0, v0

    .line 260
    invoke-static {p0, p2, p0}, Landroidx/compose/ui/node/Owner$-CC;->m(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/NullPointerException;

    .line 261
    .line 262
    .line 263
    move-result-object p0

    .line 264
    throw p0

    .line 265
    :catch_1
    move-exception v0

    .line 266
    move-object p0, v0

    .line 267
    throw p0

    .line 268
    nop

    .line 269
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
