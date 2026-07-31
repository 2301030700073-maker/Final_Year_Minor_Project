.class public final synthetic Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/schabi/newpipe/player/Player;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/player/Player;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda0;->f$0:Lorg/schabi/newpipe/player/Player;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 9

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda0;->f$0:Lorg/schabi/newpipe/player/Player;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p1, Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    .line 9
    .line 10
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getDuration()J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    const-wide/16 v2, 0x1

    .line 15
    .line 16
    add-long/2addr v0, v2

    .line 17
    const-wide/16 v2, 0x3e8

    .line 18
    .line 19
    mul-long/2addr v0, v2

    .line 20
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->getCurrentStreamInfo()Lj$/util/Optional;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    new-instance v2, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda25;

    .line 25
    .line 26
    invoke-direct {v2, p0, v0, v1}, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda25;-><init>(Lorg/schabi/newpipe/player/Player;J)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v2}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :pswitch_0
    check-cast p1, Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    .line 34
    .line 35
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->databaseUpdateDisposable:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 36
    .line 37
    iget-object p0, p0, Lorg/schabi/newpipe/player/Player;->recordManager:Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;

    .line 38
    .line 39
    iget-object v1, p0, Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;->playlistTitleView:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast v1, Landroid/content/SharedPreferences;

    .line 42
    .line 43
    iget-object v2, p0, Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;->uploaderAvatarView:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v2, Ljava/lang/String;

    .line 46
    .line 47
    const/4 v3, 0x0

    .line 48
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-nez v1, :cond_0

    .line 53
    .line 54
    sget-object p0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeEmpty;->INSTANCE:Lio/reactivex/rxjava3/internal/operators/maybe/MaybeEmpty;

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    sget-object v1, Lj$/time/ZoneOffset;->UTC:Lj$/time/ZoneOffset;

    .line 58
    .line 59
    invoke-static {v1}, Lj$/time/OffsetDateTime;->now(Lj$/time/ZoneId;)Lj$/time/OffsetDateTime;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    new-instance v2, Lorg/schabi/newpipe/local/history/HistoryRecordManager$$ExternalSyntheticLambda9;

    .line 64
    .line 65
    invoke-direct {v2, p0, p1, v1, v3}, Lorg/schabi/newpipe/local/history/HistoryRecordManager$$ExternalSyntheticLambda9;-><init>(Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;Lorg/schabi/newpipe/extractor/stream/StreamInfo;Lj$/time/OffsetDateTime;I)V

    .line 66
    .line 67
    .line 68
    new-instance p0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeFromCallable;

    .line 69
    .line 70
    invoke-direct {p0, v2}, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeFromCallable;-><init>(Ljava/util/concurrent/Callable;)V

    .line 71
    .line 72
    .line 73
    sget-object p1, Lio/reactivex/rxjava3/schedulers/Schedulers;->IO:Lio/reactivex/rxjava3/internal/schedulers/IoScheduler;

    .line 74
    .line 75
    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/Maybe;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/internal/operators/maybe/MaybeObserveOn;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    :goto_0
    sget-object p1, Lio/reactivex/rxjava3/internal/functions/Functions;->EMPTY_CONSUMER:Lio/noties/markwon/BlockHandlerDef;

    .line 80
    .line 81
    sget-object v1, Lio/reactivex/rxjava3/internal/functions/Functions;->ON_ERROR_MISSING:Lokio/ByteString$Companion;

    .line 82
    .line 83
    sget-object v2, Lio/reactivex/rxjava3/internal/functions/Functions;->EMPTY_ACTION:Landroidx/transition/Transition$1;

    .line 84
    .line 85
    new-instance v3, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeCallbackObserver;

    .line 86
    .line 87
    invoke-direct {v3, p1, v1, v2}, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeCallbackObserver;-><init>(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;)V

    .line 88
    .line 89
    .line 90
    :try_start_0
    new-instance p1, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeFromSingle$FromSingleObserver;

    .line 91
    .line 92
    const/4 v1, 0x1

    .line 93
    invoke-direct {p1, v3, v1}, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeFromSingle$FromSingleObserver;-><init>(Lio/reactivex/rxjava3/core/MaybeObserver;I)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/Maybe;->subscribe(Lio/reactivex/rxjava3/core/MaybeObserver;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, v3}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    .line 100
    .line 101
    .line 102
    return-void

    .line 103
    :catchall_0
    move-exception v0

    .line 104
    move-object p0, v0

    .line 105
    const-string p1, "subscribeActual failed"

    .line 106
    .line 107
    invoke-static {p0, p1, p0}, Landroidx/compose/ui/node/Owner$-CC;->m(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/NullPointerException;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    throw p0

    .line 112
    :catch_0
    move-exception v0

    .line 113
    move-object p0, v0

    .line 114
    throw p0

    .line 115
    :pswitch_1
    check-cast p1, Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;

    .line 116
    .line 117
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->currentMetadata:Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;

    .line 118
    .line 119
    if-ne p1, v0, :cond_1

    .line 120
    .line 121
    goto/16 :goto_1

    .line 122
    .line 123
    :cond_1
    invoke-static {v0}, Lj$/util/Optional;->ofNullable(Ljava/lang/Object;)Lj$/util/Optional;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    new-instance v1, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda28;

    .line 128
    .line 129
    const/16 v2, 0xb

    .line 130
    .line 131
    invoke-direct {v1, v2}, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda28;-><init>(I)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0, v1}, Lj$/util/Optional;->flatMap(Ljava/util/function/Function;)Lj$/util/Optional;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    const/4 v1, 0x0

    .line 139
    invoke-virtual {v0, v1}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    check-cast v0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    .line 144
    .line 145
    iget-object v2, p0, Lorg/schabi/newpipe/player/Player;->currentMetadata:Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;

    .line 146
    .line 147
    invoke-static {v2}, Lj$/util/Optional;->ofNullable(Ljava/lang/Object;)Lj$/util/Optional;

    .line 148
    .line 149
    .line 150
    move-result-object v2

    .line 151
    new-instance v3, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda28;

    .line 152
    .line 153
    const/16 v4, 0x8

    .line 154
    .line 155
    invoke-direct {v3, v4}, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda28;-><init>(I)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v2, v3}, Lj$/util/Optional;->flatMap(Ljava/util/function/Function;)Lj$/util/Optional;

    .line 159
    .line 160
    .line 161
    move-result-object v2

    .line 162
    invoke-virtual {v2, v1}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v1

    .line 166
    check-cast v1, Lorg/schabi/newpipe/player/mediaitem/MediaItemTag$AudioTrack;

    .line 167
    .line 168
    iput-object p1, p0, Lorg/schabi/newpipe/player/Player;->currentMetadata:Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;

    .line 169
    .line 170
    invoke-interface {p1}, Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;->getErrors()Ljava/util/List;

    .line 171
    .line 172
    .line 173
    move-result-object v2

    .line 174
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 175
    .line 176
    .line 177
    move-result v2

    .line 178
    if-nez v2, :cond_2

    .line 179
    .line 180
    new-instance v3, Lorg/schabi/newpipe/error/ErrorInfo;

    .line 181
    .line 182
    iget-object v2, p0, Lorg/schabi/newpipe/player/Player;->currentMetadata:Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;

    .line 183
    .line 184
    invoke-interface {v2}, Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;->getErrors()Ljava/util/List;

    .line 185
    .line 186
    .line 187
    move-result-object v4

    .line 188
    new-instance v2, Ljava/lang/StringBuilder;

    .line 189
    .line 190
    const-string v5, "Loading failed for ["

    .line 191
    .line 192
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    iget-object v5, p0, Lorg/schabi/newpipe/player/Player;->currentMetadata:Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;

    .line 196
    .line 197
    invoke-interface {v5}, Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;->getTitle()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v5

    .line 201
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    const-string v5, "]: "

    .line 205
    .line 206
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    iget-object v5, p0, Lorg/schabi/newpipe/player/Player;->currentMetadata:Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;

    .line 210
    .line 211
    invoke-interface {v5}, Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;->getStreamUrl()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v5

    .line 215
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v6

    .line 222
    iget-object v2, p0, Lorg/schabi/newpipe/player/Player;->currentMetadata:Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;

    .line 223
    .line 224
    invoke-interface {v2}, Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;->getServiceId()I

    .line 225
    .line 226
    .line 227
    move-result v2

    .line 228
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 229
    .line 230
    .line 231
    move-result-object v7

    .line 232
    iget-object v2, p0, Lorg/schabi/newpipe/player/Player;->currentMetadata:Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;

    .line 233
    .line 234
    invoke-interface {v2}, Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;->getStreamUrl()Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v8

    .line 238
    sget-object v5, Lorg/schabi/newpipe/error/UserAction;->PLAY_STREAM:Lorg/schabi/newpipe/error/UserAction;

    .line 239
    .line 240
    invoke-direct/range {v3 .. v8}, Lorg/schabi/newpipe/error/ErrorInfo;-><init>(Ljava/util/List;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    iget-object v2, p0, Lorg/schabi/newpipe/player/Player;->context:Lorg/schabi/newpipe/player/PlayerService;

    .line 244
    .line 245
    invoke-static {v2, v3}, Lorg/schabi/newpipe/error/ErrorUtil;->createNotification(Landroid/content/Context;Lorg/schabi/newpipe/error/ErrorInfo;)V

    .line 246
    .line 247
    .line 248
    :cond_2
    iget-object v2, p0, Lorg/schabi/newpipe/player/Player;->currentMetadata:Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;

    .line 249
    .line 250
    invoke-interface {v2}, Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;->getMaybeStreamInfo()Lj$/util/Optional;

    .line 251
    .line 252
    .line 253
    move-result-object v2

    .line 254
    new-instance v3, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda35;

    .line 255
    .line 256
    invoke-direct {v3, p0, v0, v1, p1}, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda35;-><init>(Lorg/schabi/newpipe/player/Player;Lorg/schabi/newpipe/extractor/stream/StreamInfo;Lorg/schabi/newpipe/player/mediaitem/MediaItemTag$AudioTrack;Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;)V

    .line 257
    .line 258
    .line 259
    invoke-virtual {v2, v3}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 260
    .line 261
    .line 262
    :goto_1
    return-void

    .line 263
    :pswitch_2
    check-cast p1, Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    .line 264
    .line 265
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->fragmentListener:Lorg/schabi/newpipe/player/helper/PlayerHolder$1;

    .line 266
    .line 267
    if-eqz v0, :cond_3

    .line 268
    .line 269
    iget-object v1, p0, Lorg/schabi/newpipe/player/Player;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    .line 270
    .line 271
    invoke-virtual {v0, p1, v1}, Lorg/schabi/newpipe/player/helper/PlayerHolder$1;->onMetadataUpdate(Lorg/schabi/newpipe/extractor/stream/StreamInfo;Lorg/schabi/newpipe/player/playqueue/PlayQueue;)V

    .line 272
    .line 273
    .line 274
    :cond_3
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->activityListener:Lorg/schabi/newpipe/player/event/PlayerEventListener;

    .line 275
    .line 276
    if-eqz v0, :cond_4

    .line 277
    .line 278
    iget-object p0, p0, Lorg/schabi/newpipe/player/Player;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    .line 279
    .line 280
    invoke-interface {v0, p1, p0}, Lorg/schabi/newpipe/player/event/PlayerEventListener;->onMetadataUpdate(Lorg/schabi/newpipe/extractor/stream/StreamInfo;Lorg/schabi/newpipe/player/playqueue/PlayQueue;)V

    .line 281
    .line 282
    .line 283
    :cond_4
    return-void

    .line 284
    nop

    .line 285
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 1

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method
