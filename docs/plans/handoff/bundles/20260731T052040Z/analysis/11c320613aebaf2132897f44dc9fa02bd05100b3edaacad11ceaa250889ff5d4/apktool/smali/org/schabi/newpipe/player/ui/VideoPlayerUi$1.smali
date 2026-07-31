.class public final Lorg/schabi/newpipe/player/ui/VideoPlayerUi$1;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lorg/reactivestreams/Subscriber;
.implements Lio/reactivex/rxjava3/functions/Consumer;
.implements Lorg/schabi/newpipe/util/OnClickGesture;
.implements Lio/reactivex/rxjava3/functions/Function;
.implements Lorg/schabi/newpipe/player/playqueue/PlayQueueItemBuilder$OnSelectedListener;
.implements Lio/reactivex/rxjava3/core/Observer;


# instance fields
.field public final synthetic $r8$classId:I

.field public this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 43
    iput p1, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[Lorg/schabi/newpipe/settings/tabs/AddTabDialog$ChooseTabListItem;Lorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda9;)V
    .locals 2

    .line 1
    const/16 v0, 0xf

    .line 2
    .line 3
    iput v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$1;->$r8$classId:I

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    .line 9
    .line 10
    invoke-direct {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    const v1, 0x7f1304eb

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    new-instance v1, Lorg/schabi/newpipe/settings/tabs/AddTabDialog$DialogListAdapter;

    .line 25
    .line 26
    invoke-direct {v1, p1, p2}, Lorg/schabi/newpipe/settings/tabs/AddTabDialog$DialogListAdapter;-><init>(Landroid/content/Context;[Lorg/schabi/newpipe/settings/tabs/AddTabDialog$ChooseTabListItem;)V

    .line 27
    .line 28
    .line 29
    iget-object p1, v0, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    .line 30
    .line 31
    iput-object v1, p1, Landroidx/appcompat/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    .line 32
    .line 33
    iput-object p3, p1, Landroidx/appcompat/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 34
    .line 35
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    iput-object p1, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$1;->this$0:Ljava/lang/Object;

    .line 40
    .line 41
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 42
    iput p2, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$1;->$r8$classId:I

    iput-object p1, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$1;->this$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final onComplete$org$schabi$newpipe$fragments$list$playlist$PlaylistFragment$1()V
    .locals 0

    .line 1
    return-void
.end method

.method private final onComplete$org$schabi$newpipe$player$playback$MediaSourceManager$1()V
    .locals 0

    .line 1
    return-void
.end method

.method private final onComplete$org$schabi$newpipe$settings$SelectChannelFragment$1()V
    .locals 0

    .line 1
    return-void
.end method

.method private final onComplete$org$schabi$newpipe$settings$SelectFeedGroupFragment$1()V
    .locals 0

    .line 1
    return-void
.end method

.method private final onError$org$schabi$newpipe$player$playback$MediaSourceManager$1(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final onSubscribe$org$schabi$newpipe$settings$SelectChannelFragment$1(Lio/reactivex/rxjava3/disposables/Disposable;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final onSubscribe$org$schabi$newpipe$settings$SelectFeedGroupFragment$1(Lio/reactivex/rxjava3/disposables/Disposable;)V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 8

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$1;->$r8$classId:I

    .line 2
    .line 3
    sparse-switch v0, :sswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Ljava/util/List;

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$1;->this$0:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p0, Landroidx/media/MediaBrowserServiceCompat$3;

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Landroidx/media/MediaBrowserServiceCompat$Result;->sendResult(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :sswitch_0
    check-cast p1, Ljava/util/List;

    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    iget-object p0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$1;->this$0:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast p0, Landroidx/media/MediaBrowserServiceCompat$Result;

    .line 27
    .line 28
    invoke-virtual {p0, p1}, Landroidx/media/MediaBrowserServiceCompat$Result;->sendResult(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :sswitch_1
    check-cast p1, Ljava/util/List;

    .line 33
    .line 34
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    iget-object p0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$1;->this$0:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast p0, Lorg/schabi/newpipe/player/PlayerService$$ExternalSyntheticLambda0;

    .line 40
    .line 41
    const-string p1, "playlists"

    .line 42
    .line 43
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/player/PlayerService$$ExternalSyntheticLambda0;->accept(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :sswitch_2
    check-cast p1, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;

    .line 48
    .line 49
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    iget p1, p1, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->serviceId:I

    .line 53
    .line 54
    sget-object v0, Lorg/schabi/newpipe/extractor/ServiceList;->YouTube:Lorg/schabi/newpipe/extractor/services/youtube/YoutubeService;

    .line 55
    .line 56
    iget v0, v0, Lorg/schabi/newpipe/extractor/StreamingService;->serviceId:I

    .line 57
    .line 58
    if-ne p1, v0, :cond_3

    .line 59
    .line 60
    iget-object p0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$1;->this$0:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast p0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 63
    .line 64
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 65
    .line 66
    .line 67
    move-result p0

    .line 68
    if-eqz p0, :cond_3

    .line 69
    .line 70
    rem-int/lit8 p0, p0, 0x32

    .line 71
    .line 72
    if-nez p0, :cond_3

    .line 73
    .line 74
    sget-object p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;->DELAY_BETWEEN_BATCHES_MILLIS:Lkotlin/ranges/LongRange;

    .line 75
    .line 76
    sget-object p1, Lkotlin/random/Random;->defaultRandom:Lkotlin/random/AbstractPlatformRandom;

    .line 77
    .line 78
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    .line 80
    .line 81
    :try_start_0
    sget-object p1, Lkotlin/random/Random;->defaultRandom:Lkotlin/random/AbstractPlatformRandom;

    .line 82
    .line 83
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    .line 85
    .line 86
    iget-wide v0, p0, Lkotlin/ranges/LongRange;->first:J

    .line 87
    .line 88
    iget-wide v2, p0, Lkotlin/ranges/LongRange;->last:J

    .line 89
    .line 90
    cmp-long p1, v0, v2

    .line 91
    .line 92
    if-gtz p1, :cond_2

    .line 93
    .line 94
    const-wide p0, 0x7fffffffffffffffL

    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    cmp-long p0, v2, p0

    .line 100
    .line 101
    const-wide/16 v4, 0x1

    .line 102
    .line 103
    if-gez p0, :cond_0

    .line 104
    .line 105
    add-long/2addr v2, v4

    .line 106
    sget-object p0, Lkotlin/random/Random;->defaultRandom:Lkotlin/random/AbstractPlatformRandom;

    .line 107
    .line 108
    invoke-virtual {p0, v0, v1, v2, v3}, Lkotlin/random/Random;->nextLong(JJ)J

    .line 109
    .line 110
    .line 111
    move-result-wide p0

    .line 112
    goto :goto_0

    .line 113
    :cond_0
    const-wide/high16 p0, -0x8000000000000000L

    .line 114
    .line 115
    cmp-long p0, v0, p0

    .line 116
    .line 117
    if-lez p0, :cond_1

    .line 118
    .line 119
    sub-long/2addr v0, v4

    .line 120
    sget-object p0, Lkotlin/random/Random;->defaultRandom:Lkotlin/random/AbstractPlatformRandom;

    .line 121
    .line 122
    invoke-virtual {p0, v0, v1, v2, v3}, Lkotlin/random/Random;->nextLong(JJ)J

    .line 123
    .line 124
    .line 125
    move-result-wide p0

    .line 126
    add-long/2addr p0, v4

    .line 127
    goto :goto_0

    .line 128
    :cond_1
    sget-object p0, Lkotlin/random/Random;->defaultRandom:Lkotlin/random/AbstractPlatformRandom;

    .line 129
    .line 130
    invoke-virtual {p0}, Lkotlin/random/AbstractPlatformRandom;->nextLong()J

    .line 131
    .line 132
    .line 133
    move-result-wide p0

    .line 134
    goto :goto_0

    .line 135
    :cond_2
    const-string p1, "Cannot get random in empty range: "

    .line 136
    .line 137
    invoke-static {p0, p1}, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;->m(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    .line 139
    .line 140
    const-wide/16 p0, 0x0

    .line 141
    .line 142
    :goto_0
    invoke-static {p0, p1}, Ljava/lang/Thread;->sleep(J)V

    .line 143
    .line 144
    .line 145
    goto :goto_1

    .line 146
    :catch_0
    move-exception v0

    .line 147
    move-object p0, v0

    .line 148
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object p0

    .line 152
    invoke-static {p0}, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    :cond_3
    :goto_1
    return-void

    .line 156
    :sswitch_3
    check-cast p1, Lorg/schabi/newpipe/local/feed/FeedViewModel$CombineResultDataHolder;

    .line 157
    .line 158
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 159
    .line 160
    .line 161
    iget-object v0, p1, Lorg/schabi/newpipe/local/feed/FeedViewModel$CombineResultDataHolder;->t1:Lorg/schabi/newpipe/local/feed/service/FeedEventManager$Event;

    .line 162
    .line 163
    iget-object v1, p1, Lorg/schabi/newpipe/local/feed/FeedViewModel$CombineResultDataHolder;->t2:Ljava/util/List;

    .line 164
    .line 165
    iget-wide v5, p1, Lorg/schabi/newpipe/local/feed/FeedViewModel$CombineResultDataHolder;->t3:J

    .line 166
    .line 167
    iget-object v4, p1, Lorg/schabi/newpipe/local/feed/FeedViewModel$CombineResultDataHolder;->t4:Lj$/time/OffsetDateTime;

    .line 168
    .line 169
    iget-object p0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$1;->this$0:Ljava/lang/Object;

    .line 170
    .line 171
    check-cast p0, Lorg/schabi/newpipe/local/feed/FeedViewModel;

    .line 172
    .line 173
    iget-object p0, p0, Lorg/schabi/newpipe/local/feed/FeedViewModel;->mutableStateLiveData:Landroidx/lifecycle/MutableLiveData;

    .line 174
    .line 175
    instance-of p1, v0, Lorg/schabi/newpipe/local/feed/service/FeedEventManager$Event$IdleEvent;

    .line 176
    .line 177
    const/16 v2, 0xa

    .line 178
    .line 179
    if-eqz p1, :cond_5

    .line 180
    .line 181
    new-instance v3, Ljava/util/ArrayList;

    .line 182
    .line 183
    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 184
    .line 185
    .line 186
    move-result p1

    .line 187
    invoke-direct {v3, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 188
    .line 189
    .line 190
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 191
    .line 192
    .line 193
    move-result-object p1

    .line 194
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 195
    .line 196
    .line 197
    move-result v1

    .line 198
    if-eqz v1, :cond_4

    .line 199
    .line 200
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object v1

    .line 204
    check-cast v1, Lorg/schabi/newpipe/database/stream/StreamWithState;

    .line 205
    .line 206
    new-instance v2, Lorg/schabi/newpipe/local/feed/item/StreamItem;

    .line 207
    .line 208
    invoke-direct {v2, v1}, Lorg/schabi/newpipe/local/feed/item/StreamItem;-><init>(Lorg/schabi/newpipe/database/stream/StreamWithState;)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    .line 213
    .line 214
    goto :goto_2

    .line 215
    :cond_4
    new-instance v2, Lorg/schabi/newpipe/local/feed/FeedState$LoadedState;

    .line 216
    .line 217
    sget-object v7, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 218
    .line 219
    invoke-direct/range {v2 .. v7}, Lorg/schabi/newpipe/local/feed/FeedState$LoadedState;-><init>(Ljava/util/ArrayList;Lj$/time/OffsetDateTime;JLjava/util/List;)V

    .line 220
    .line 221
    .line 222
    goto :goto_4

    .line 223
    :cond_5
    instance-of p1, v0, Lorg/schabi/newpipe/local/feed/service/FeedEventManager$Event$ProgressEvent;

    .line 224
    .line 225
    if-eqz p1, :cond_6

    .line 226
    .line 227
    new-instance v2, Lorg/schabi/newpipe/local/feed/FeedState$ProgressState;

    .line 228
    .line 229
    move-object p1, v0

    .line 230
    check-cast p1, Lorg/schabi/newpipe/local/feed/service/FeedEventManager$Event$ProgressEvent;

    .line 231
    .line 232
    iget v1, p1, Lorg/schabi/newpipe/local/feed/service/FeedEventManager$Event$ProgressEvent;->currentProgress:I

    .line 233
    .line 234
    iget v3, p1, Lorg/schabi/newpipe/local/feed/service/FeedEventManager$Event$ProgressEvent;->maxProgress:I

    .line 235
    .line 236
    iget p1, p1, Lorg/schabi/newpipe/local/feed/service/FeedEventManager$Event$ProgressEvent;->progressMessage:I

    .line 237
    .line 238
    invoke-direct {v2, v1, v3, p1}, Lorg/schabi/newpipe/local/feed/FeedState$ProgressState;-><init>(III)V

    .line 239
    .line 240
    .line 241
    goto :goto_4

    .line 242
    :cond_6
    instance-of p1, v0, Lorg/schabi/newpipe/local/feed/service/FeedEventManager$Event$SuccessResultEvent;

    .line 243
    .line 244
    if-eqz p1, :cond_8

    .line 245
    .line 246
    new-instance v3, Ljava/util/ArrayList;

    .line 247
    .line 248
    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 249
    .line 250
    .line 251
    move-result p1

    .line 252
    invoke-direct {v3, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 253
    .line 254
    .line 255
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 256
    .line 257
    .line 258
    move-result-object p1

    .line 259
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 260
    .line 261
    .line 262
    move-result v1

    .line 263
    if-eqz v1, :cond_7

    .line 264
    .line 265
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 266
    .line 267
    .line 268
    move-result-object v1

    .line 269
    check-cast v1, Lorg/schabi/newpipe/database/stream/StreamWithState;

    .line 270
    .line 271
    new-instance v2, Lorg/schabi/newpipe/local/feed/item/StreamItem;

    .line 272
    .line 273
    invoke-direct {v2, v1}, Lorg/schabi/newpipe/local/feed/item/StreamItem;-><init>(Lorg/schabi/newpipe/database/stream/StreamWithState;)V

    .line 274
    .line 275
    .line 276
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 277
    .line 278
    .line 279
    goto :goto_3

    .line 280
    :cond_7
    move-object p1, v0

    .line 281
    check-cast p1, Lorg/schabi/newpipe/local/feed/service/FeedEventManager$Event$SuccessResultEvent;

    .line 282
    .line 283
    iget-object v7, p1, Lorg/schabi/newpipe/local/feed/service/FeedEventManager$Event$SuccessResultEvent;->itemsErrors:Ljava/util/List;

    .line 284
    .line 285
    new-instance v2, Lorg/schabi/newpipe/local/feed/FeedState$LoadedState;

    .line 286
    .line 287
    invoke-direct/range {v2 .. v7}, Lorg/schabi/newpipe/local/feed/FeedState$LoadedState;-><init>(Ljava/util/ArrayList;Lj$/time/OffsetDateTime;JLjava/util/List;)V

    .line 288
    .line 289
    .line 290
    goto :goto_4

    .line 291
    :cond_8
    instance-of p1, v0, Lorg/schabi/newpipe/local/feed/service/FeedEventManager$Event$ErrorResultEvent;

    .line 292
    .line 293
    if-eqz p1, :cond_a

    .line 294
    .line 295
    new-instance v2, Lorg/schabi/newpipe/local/feed/FeedState$ErrorState;

    .line 296
    .line 297
    move-object p1, v0

    .line 298
    check-cast p1, Lorg/schabi/newpipe/local/feed/service/FeedEventManager$Event$ErrorResultEvent;

    .line 299
    .line 300
    iget-object p1, p1, Lorg/schabi/newpipe/local/feed/service/FeedEventManager$Event$ErrorResultEvent;->error:Ljava/lang/Throwable;

    .line 301
    .line 302
    invoke-direct {v2, p1}, Lorg/schabi/newpipe/local/feed/FeedState$ErrorState;-><init>(Ljava/lang/Throwable;)V

    .line 303
    .line 304
    .line 305
    :goto_4
    invoke-virtual {p0, v2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 306
    .line 307
    .line 308
    instance-of p0, v0, Lorg/schabi/newpipe/local/feed/service/FeedEventManager$Event$ErrorResultEvent;

    .line 309
    .line 310
    if-nez p0, :cond_9

    .line 311
    .line 312
    instance-of p0, v0, Lorg/schabi/newpipe/local/feed/service/FeedEventManager$Event$SuccessResultEvent;

    .line 313
    .line 314
    if-eqz p0, :cond_b

    .line 315
    .line 316
    :cond_9
    sget-object p0, Lorg/schabi/newpipe/local/feed/service/FeedEventManager;->ignoreUpstream:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 317
    .line 318
    const/4 p1, 0x1

    .line 319
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 320
    .line 321
    .line 322
    sget-object p1, Lorg/schabi/newpipe/local/feed/service/FeedEventManager$Event$IdleEvent;->INSTANCE:Lorg/schabi/newpipe/local/feed/service/FeedEventManager$Event$IdleEvent;

    .line 323
    .line 324
    sget-object v0, Lorg/schabi/newpipe/local/feed/service/FeedEventManager;->processor:Lio/reactivex/rxjava3/processors/BehaviorProcessor;

    .line 325
    .line 326
    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/processors/BehaviorProcessor;->onNext(Ljava/lang/Object;)V

    .line 327
    .line 328
    .line 329
    const/4 p1, 0x0

    .line 330
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 331
    .line 332
    .line 333
    goto :goto_5

    .line 334
    :cond_a
    invoke-static {}, Lcoil3/decode/DecodeUtils$$ExternalSyntheticBUOutline0;->m()V

    .line 335
    .line 336
    .line 337
    :cond_b
    :goto_5
    return-void

    .line 338
    nop

    .line 339
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_3
        0x4 -> :sswitch_2
        0x9 -> :sswitch_1
        0xa -> :sswitch_0
    .end sparse-switch
.end method

.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    check-cast p1, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel$Filter;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v0, p1, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel$Filter;->query:Ljava/lang/String;

    .line 7
    .line 8
    iget-boolean p1, p1, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel$Filter;->showOnlyUngrouped:Z

    .line 9
    .line 10
    iget-object p0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$1;->this$0:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel;

    .line 13
    .line 14
    iget-object v1, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel;->subscriptionManager:Lorg/schabi/newpipe/local/subscription/SubscriptionManager;

    .line 15
    .line 16
    iget-wide v2, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel;->groupId:J

    .line 17
    .line 18
    iget-object p0, v1, Lorg/schabi/newpipe/local/subscription/SubscriptionManager;->subscriptionTable:Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    const-string v4, "feed_group_subscription_join"

    .line 28
    .line 29
    const-string/jumbo v5, "subscriptions"

    .line 30
    .line 31
    .line 32
    const/4 v6, 0x0

    .line 33
    if-lez v1, :cond_1

    .line 34
    .line 35
    if-eqz p1, :cond_0

    .line 36
    .line 37
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    iget-object p0, p0, Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 41
    .line 42
    filled-new-array {v5, v4}, [Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    new-instance v1, Landroidx/work/impl/model/WorkSpecDao_Impl$$ExternalSyntheticLambda12;

    .line 47
    .line 48
    const/4 v4, 0x4

    .line 49
    invoke-direct {v1, v2, v3, v0, v4}, Landroidx/work/impl/model/WorkSpecDao_Impl$$ExternalSyntheticLambda12;-><init>(JLjava/lang/String;I)V

    .line 50
    .line 51
    .line 52
    invoke-static {p0, v6, p1, v1}, Lokhttp3/Cookie$Companion;->createFlowable(Landroidx/room/RoomDatabase;Z[Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Flowable;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    return-object p0

    .line 57
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    iget-object p0, p0, Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 61
    .line 62
    filled-new-array {v5}, [Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    new-instance v1, Lkotlin/text/StringsKt__IndentKt$$ExternalSyntheticLambda0;

    .line 67
    .line 68
    const/16 v2, 0x18

    .line 69
    .line 70
    invoke-direct {v1, v0, v2}, Lkotlin/text/StringsKt__IndentKt$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;I)V

    .line 71
    .line 72
    .line 73
    invoke-static {p0, v6, p1, v1}, Lokhttp3/Cookie$Companion;->createFlowable(Landroidx/room/RoomDatabase;Z[Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Flowable;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    return-object p0

    .line 78
    :cond_1
    if-eqz p1, :cond_2

    .line 79
    .line 80
    iget-object p0, p0, Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 81
    .line 82
    filled-new-array {v5, v4}, [Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    new-instance v0, Landroidx/work/impl/model/WorkSpecDao_Impl$$ExternalSyntheticLambda26;

    .line 87
    .line 88
    const/16 v1, 0x13

    .line 89
    .line 90
    invoke-direct {v0, v2, v3, v1}, Landroidx/work/impl/model/WorkSpecDao_Impl$$ExternalSyntheticLambda26;-><init>(JI)V

    .line 91
    .line 92
    .line 93
    invoke-static {p0, v6, p1, v0}, Lokhttp3/Cookie$Companion;->createFlowable(Landroidx/room/RoomDatabase;Z[Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Flowable;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    return-object p0

    .line 98
    :cond_2
    invoke-virtual {p0}, Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl;->getAll()Lio/reactivex/rxjava3/core/Flowable;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    return-object p0
.end method

.method public synthetic drag(Ljava/lang/Object;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 1
    return-void
.end method

.method public formatters()Lorg/schabi/newpipe/player/helper/PlayerHelper$Formatters;
    .locals 6

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$1;->this$0:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lorg/schabi/newpipe/player/helper/PlayerHelper$Formatters;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lorg/schabi/newpipe/util/Localization;->getAppLocale()Ljava/util/Locale;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Ljava/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DecimalFormatSymbols;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    new-instance v2, Lorg/schabi/newpipe/player/helper/PlayerHelper$Formatters;

    .line 16
    .line 17
    new-instance v3, Ljava/text/DecimalFormat;

    .line 18
    .line 19
    const-string v4, "0.##x"

    .line 20
    .line 21
    invoke-direct {v3, v4, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    .line 22
    .line 23
    .line 24
    new-instance v4, Ljava/text/DecimalFormat;

    .line 25
    .line 26
    const-string v5, "##%"

    .line 27
    .line 28
    invoke-direct {v4, v5, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    .line 29
    .line 30
    .line 31
    invoke-direct {v2, v0, v3, v4}, Lorg/schabi/newpipe/player/helper/PlayerHelper$Formatters;-><init>(Ljava/util/Locale;Ljava/text/DecimalFormat;Ljava/text/DecimalFormat;)V

    .line 32
    .line 33
    .line 34
    iput-object v2, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$1;->this$0:Ljava/lang/Object;

    .line 35
    .line 36
    :cond_0
    iget-object p0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$1;->this$0:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast p0, Lorg/schabi/newpipe/player/helper/PlayerHelper$Formatters;

    .line 39
    .line 40
    return-object p0
.end method

.method public held(Ljava/lang/Object;)V
    .locals 7

    .line 1
    check-cast p1, Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$1;->this$0:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p0, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;

    .line 9
    .line 10
    sget-object v0, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;->Companion:Lorg/schabi/newpipe/local/subscription/SubscriptionFragment$Companion;

    .line 11
    .line 12
    const v0, 0x7f13046f

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const v1, 0x7f13039a

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    const v2, 0x7f130513

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    new-instance v1, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment$$ExternalSyntheticLambda5;

    .line 38
    .line 39
    const/4 v2, 0x0

    .line 40
    invoke-direct {v1, p0, p1, v2}, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment$$ExternalSyntheticLambda5;-><init>(Landroidx/fragment/app/Fragment;Ljava/lang/Object;I)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    const/4 v4, 0x0

    .line 52
    const v5, 0x7f0d003a

    .line 53
    .line 54
    .line 55
    invoke-virtual {v3, v5, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    const v3, 0x7f0a01e9

    .line 60
    .line 61
    .line 62
    invoke-static {v3, v2}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    check-cast v4, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 67
    .line 68
    if-eqz v4, :cond_1

    .line 69
    .line 70
    move-object v3, v2

    .line 71
    check-cast v3, Landroid/widget/RelativeLayout;

    .line 72
    .line 73
    const v5, 0x7f0a01f2

    .line 74
    .line 75
    .line 76
    invoke-static {v5, v2}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 77
    .line 78
    .line 79
    move-result-object v6

    .line 80
    check-cast v6, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 81
    .line 82
    if-eqz v6, :cond_0

    .line 83
    .line 84
    const/4 v2, 0x1

    .line 85
    invoke-virtual {v3, v2}, Landroid/view/View;->setSelected(Z)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/InfoItem;->getName()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-virtual {v6, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    .line 94
    .line 95
    const/16 p1, 0x8

    .line 96
    .line 97
    invoke-virtual {v4, p1}, Landroid/view/View;->setVisibility(I)V

    .line 98
    .line 99
    .line 100
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    .line 101
    .line 102
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    invoke-direct {p1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 107
    .line 108
    .line 109
    iget-object p0, p1, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    .line 110
    .line 111
    iput-object v3, p0, Landroidx/appcompat/app/AlertController$AlertParams;->mCustomTitleView:Landroid/view/View;

    .line 112
    .line 113
    check-cast v0, [Ljava/lang/CharSequence;

    .line 114
    .line 115
    iput-object v0, p0, Landroidx/appcompat/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 116
    .line 117
    iput-object v1, p0, Landroidx/appcompat/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 118
    .line 119
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()V

    .line 120
    .line 121
    .line 122
    return-void

    .line 123
    :cond_0
    move v3, v5

    .line 124
    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 125
    .line 126
    .line 127
    move-result-object p0

    .line 128
    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object p0

    .line 132
    const-string p1, "Missing required view with ID: "

    .line 133
    .line 134
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object p0

    .line 138
    invoke-static {p0}, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    return-void
.end method

.method public held(Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;Landroid/view/View;)V
    .locals 6

    .line 142
    iget-object p0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$1;->this$0:Ljava/lang/Object;

    move-object v5, p0

    check-cast v5, Lorg/schabi/newpipe/player/PlayQueueActivity;

    iget-object p0, v5, Lorg/schabi/newpipe/player/PlayQueueActivity;->player:Lorg/schabi/newpipe/player/Player;

    if-eqz p0, :cond_0

    .line 143
    iget-object p0, p0, Lorg/schabi/newpipe/player/Player;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    .line 144
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->indexOf(Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    .line 145
    iget-object p0, v5, Lorg/schabi/newpipe/player/PlayQueueActivity;->player:Lorg/schabi/newpipe/player/Player;

    .line 146
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    const/4 v3, 0x0

    .line 147
    invoke-virtual {v5}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    move-result-object v4

    move-object v1, p1

    move-object v2, p2

    .line 148
    invoke-static/range {v0 .. v5}, Lokio/Options$Companion;->openPopupMenu(Lorg/schabi/newpipe/player/playqueue/PlayQueue;Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;Landroid/view/View;ZLandroidx/fragment/app/FragmentManagerImpl;Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public onComplete()V
    .locals 0

    .line 1
    iget p0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$1;->$r8$classId:I

    .line 2
    .line 3
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$1;->$r8$classId:I

    .line 2
    .line 3
    sparse-switch v0, :sswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$1;->this$0:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p0, Lorg/schabi/newpipe/settings/SelectFeedGroupFragment;

    .line 9
    .line 10
    const-string v0, "Loading Feed Groups"

    .line 11
    .line 12
    invoke-static {p0, v0, p1}, Lorg/schabi/newpipe/error/ErrorUtil;->showUiErrorSnackbar(Landroidx/fragment/app/Fragment;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :sswitch_0
    iget-object p0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$1;->this$0:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast p0, Lorg/schabi/newpipe/settings/SelectChannelFragment;

    .line 19
    .line 20
    const-string v0, "Loading subscription"

    .line 21
    .line 22
    invoke-static {p0, v0, p1}, Lorg/schabi/newpipe/error/ErrorUtil;->showUiErrorSnackbar(Landroidx/fragment/app/Fragment;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 23
    .line 24
    .line 25
    :sswitch_1
    return-void

    .line 26
    :sswitch_2
    iget-object p0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$1;->this$0:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast p0, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;

    .line 29
    .line 30
    new-instance v0, Lorg/schabi/newpipe/error/ErrorInfo;

    .line 31
    .line 32
    sget-object v1, Lorg/schabi/newpipe/error/UserAction;->REQUESTED_BOOKMARK:Lorg/schabi/newpipe/error/UserAction;

    .line 33
    .line 34
    const-string v2, "Get playlist bookmarks"

    .line 35
    .line 36
    invoke-direct {v0, p1, v1, v2}, Lorg/schabi/newpipe/error/ErrorInfo;-><init>(Ljava/lang/Throwable;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->showError(Lorg/schabi/newpipe/error/ErrorInfo;)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0xc -> :sswitch_1
        0xd -> :sswitch_0
    .end sparse-switch
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 12

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$1;->$r8$classId:I

    .line 2
    .line 3
    const-wide/16 v1, 0x1

    .line 4
    .line 5
    const/4 v3, 0x1

    .line 6
    const/16 v4, 0x8

    .line 7
    .line 8
    const/4 v5, 0x0

    .line 9
    sparse-switch v0, :sswitch_data_0

    .line 10
    .line 11
    .line 12
    check-cast p1, Ljava/util/List;

    .line 13
    .line 14
    iget-object p0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$1;->this$0:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast p0, Lorg/schabi/newpipe/settings/SelectFeedGroupFragment;

    .line 17
    .line 18
    iput-object p1, p0, Lorg/schabi/newpipe/settings/SelectFeedGroupFragment;->feedGroups:Ljava/util/List;

    .line 19
    .line 20
    iget-object v0, p0, Lorg/schabi/newpipe/settings/SelectFeedGroupFragment;->progressBar:Landroid/widget/ProgressBar;

    .line 21
    .line 22
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 23
    .line 24
    .line 25
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-eqz p1, :cond_0

    .line 30
    .line 31
    iget-object p0, p0, Lorg/schabi/newpipe/settings/SelectFeedGroupFragment;->emptyView:Landroid/widget/TextView;

    .line 32
    .line 33
    invoke-virtual {p0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    iget-object p0, p0, Lorg/schabi/newpipe/settings/SelectFeedGroupFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 38
    .line 39
    invoke-virtual {p0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 40
    .line 41
    .line 42
    :goto_0
    return-void

    .line 43
    :sswitch_0
    check-cast p1, Ljava/util/List;

    .line 44
    .line 45
    iget-object p0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$1;->this$0:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast p0, Lorg/schabi/newpipe/settings/SelectChannelFragment;

    .line 48
    .line 49
    iput-object p1, p0, Lorg/schabi/newpipe/settings/SelectChannelFragment;->subscriptions:Ljava/util/List;

    .line 50
    .line 51
    iget-object v0, p0, Lorg/schabi/newpipe/settings/SelectChannelFragment;->progressBar:Landroid/widget/ProgressBar;

    .line 52
    .line 53
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 54
    .line 55
    .line 56
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    if-eqz p1, :cond_1

    .line 61
    .line 62
    iget-object p0, p0, Lorg/schabi/newpipe/settings/SelectChannelFragment;->emptyView:Landroid/widget/TextView;

    .line 63
    .line 64
    invoke-virtual {p0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_1
    iget-object p0, p0, Lorg/schabi/newpipe/settings/SelectChannelFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 69
    .line 70
    invoke-virtual {p0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 71
    .line 72
    .line 73
    :goto_1
    return-void

    .line 74
    :sswitch_1
    check-cast p1, Lorg/schabi/newpipe/player/playqueue/PlayQueueEvent;

    .line 75
    .line 76
    iget-object p0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$1;->this$0:Ljava/lang/Object;

    .line 77
    .line 78
    check-cast p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager;

    .line 79
    .line 80
    iget-object v0, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    .line 81
    .line 82
    invoke-virtual {v0}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->isEmpty()Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-eqz v0, :cond_2

    .line 87
    .line 88
    iget-object v0, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    .line 89
    .line 90
    invoke-virtual {v0}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->isComplete()Z

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    if-eqz v0, :cond_2

    .line 95
    .line 96
    iget-object p0, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->playbackListener:Lorg/schabi/newpipe/player/Player;

    .line 97
    .line 98
    iget-object p0, p0, Lorg/schabi/newpipe/player/Player;->service:Lorg/schabi/newpipe/player/PlayerService;

    .line 99
    .line 100
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/PlayerService;->destroyPlayerAndStopService()V

    .line 101
    .line 102
    .line 103
    goto/16 :goto_8

    .line 104
    .line 105
    :cond_2
    invoke-interface {p1}, Lorg/schabi/newpipe/player/playqueue/PlayQueueEvent;->type()Lorg/schabi/newpipe/player/playqueue/PlayQueueEvent$Type;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    const/4 v4, 0x4

    .line 114
    const/4 v6, 0x7

    .line 115
    const/4 v7, 0x3

    .line 116
    const/4 v8, 0x2

    .line 117
    const/4 v9, 0x5

    .line 118
    if-eqz v0, :cond_9

    .line 119
    .line 120
    if-eq v0, v3, :cond_8

    .line 121
    .line 122
    if-eq v0, v8, :cond_a

    .line 123
    .line 124
    if-eq v0, v7, :cond_5

    .line 125
    .line 126
    if-eq v0, v4, :cond_4

    .line 127
    .line 128
    if-eq v0, v9, :cond_3

    .line 129
    .line 130
    if-eq v0, v6, :cond_9

    .line 131
    .line 132
    goto :goto_3

    .line 133
    :cond_3
    move-object v0, p1

    .line 134
    check-cast v0, Lorg/schabi/newpipe/player/playqueue/PlayQueueEvent$ReorderEvent;

    .line 135
    .line 136
    iget-object v10, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->playlist:Lorg/schabi/newpipe/player/mediasource/ManagedMediaSourcePlaylist;

    .line 137
    .line 138
    invoke-virtual {v0}, Lorg/schabi/newpipe/player/playqueue/PlayQueueEvent$ReorderEvent;->getFromSelectedIndex()I

    .line 139
    .line 140
    .line 141
    move-result v11

    .line 142
    invoke-virtual {v0}, Lorg/schabi/newpipe/player/playqueue/PlayQueueEvent$ReorderEvent;->getToSelectedIndex()I

    .line 143
    .line 144
    .line 145
    move-result v0

    .line 146
    invoke-virtual {v10, v11, v0}, Lorg/schabi/newpipe/player/mediasource/ManagedMediaSourcePlaylist;->move(II)V

    .line 147
    .line 148
    .line 149
    goto :goto_3

    .line 150
    :cond_4
    move-object v0, p1

    .line 151
    check-cast v0, Lorg/schabi/newpipe/player/playqueue/PlayQueueEvent$MoveEvent;

    .line 152
    .line 153
    iget-object v10, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->playlist:Lorg/schabi/newpipe/player/mediasource/ManagedMediaSourcePlaylist;

    .line 154
    .line 155
    invoke-virtual {v0}, Lorg/schabi/newpipe/player/playqueue/PlayQueueEvent$MoveEvent;->getFromIndex()I

    .line 156
    .line 157
    .line 158
    move-result v11

    .line 159
    invoke-virtual {v0}, Lorg/schabi/newpipe/player/playqueue/PlayQueueEvent$MoveEvent;->getToIndex()I

    .line 160
    .line 161
    .line 162
    move-result v0

    .line 163
    invoke-virtual {v10, v11, v0}, Lorg/schabi/newpipe/player/mediasource/ManagedMediaSourcePlaylist;->move(II)V

    .line 164
    .line 165
    .line 166
    goto :goto_3

    .line 167
    :cond_5
    move-object v0, p1

    .line 168
    check-cast v0, Lorg/schabi/newpipe/player/playqueue/PlayQueueEvent$RemoveEvent;

    .line 169
    .line 170
    iget-object v10, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->playlist:Lorg/schabi/newpipe/player/mediasource/ManagedMediaSourcePlaylist;

    .line 171
    .line 172
    invoke-virtual {v0}, Lorg/schabi/newpipe/player/playqueue/PlayQueueEvent$RemoveEvent;->getRemoveIndex()I

    .line 173
    .line 174
    .line 175
    move-result v0

    .line 176
    monitor-enter v10

    .line 177
    if-ltz v0, :cond_7

    .line 178
    .line 179
    :try_start_0
    iget-object v11, v10, Lorg/schabi/newpipe/player/mediasource/ManagedMediaSourcePlaylist;->internalSource:Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;

    .line 180
    .line 181
    invoke-virtual {v11}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->getSize()I

    .line 182
    .line 183
    .line 184
    move-result v11

    .line 185
    if-le v0, v11, :cond_6

    .line 186
    .line 187
    goto :goto_2

    .line 188
    :cond_6
    iget-object v11, v10, Lorg/schabi/newpipe/player/mediasource/ManagedMediaSourcePlaylist;->internalSource:Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;

    .line 189
    .line 190
    invoke-virtual {v11, v0}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->removeMediaSource(I)Lcom/google/android/exoplayer2/source/MediaSource;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    .line 192
    .line 193
    monitor-exit v10

    .line 194
    goto :goto_3

    .line 195
    :catchall_0
    move-exception p0

    .line 196
    :try_start_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 197
    throw p0

    .line 198
    :cond_7
    :goto_2
    monitor-exit v10

    .line 199
    goto :goto_3

    .line 200
    :cond_8
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->maybeRenewCurrentIndex()V

    .line 201
    .line 202
    .line 203
    goto :goto_3

    .line 204
    :cond_9
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->maybeBlock()V

    .line 205
    .line 206
    .line 207
    :cond_a
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->populateSources()V

    .line 208
    .line 209
    .line 210
    :goto_3
    invoke-interface {p1}, Lorg/schabi/newpipe/player/playqueue/PlayQueueEvent;->type()Lorg/schabi/newpipe/player/playqueue/PlayQueueEvent$Type;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 215
    .line 216
    .line 217
    move-result v0

    .line 218
    if-eqz v0, :cond_b

    .line 219
    .line 220
    if-eq v0, v3, :cond_b

    .line 221
    .line 222
    if-eq v0, v9, :cond_b

    .line 223
    .line 224
    if-eq v0, v6, :cond_b

    .line 225
    .line 226
    iget-object v0, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->debouncedSignal:Lio/reactivex/rxjava3/subjects/PublishSubject;

    .line 227
    .line 228
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 229
    .line 230
    .line 231
    move-result-wide v10

    .line 232
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 233
    .line 234
    .line 235
    move-result-object v6

    .line 236
    invoke-virtual {v0, v6}, Lio/reactivex/rxjava3/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    .line 237
    .line 238
    .line 239
    goto :goto_4

    .line 240
    :cond_b
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->loadImmediate()V

    .line 241
    .line 242
    .line 243
    :goto_4
    invoke-interface {p1}, Lorg/schabi/newpipe/player/playqueue/PlayQueueEvent;->type()Lorg/schabi/newpipe/player/playqueue/PlayQueueEvent$Type;

    .line 244
    .line 245
    .line 246
    move-result-object p1

    .line 247
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 248
    .line 249
    .line 250
    move-result p1

    .line 251
    if-eq p1, v8, :cond_c

    .line 252
    .line 253
    if-eq p1, v7, :cond_c

    .line 254
    .line 255
    if-eq p1, v4, :cond_c

    .line 256
    .line 257
    if-eq p1, v9, :cond_c

    .line 258
    .line 259
    goto :goto_5

    .line 260
    :cond_c
    iget-object p1, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->playbackListener:Lorg/schabi/newpipe/player/Player;

    .line 261
    .line 262
    invoke-virtual {p1}, Lorg/schabi/newpipe/player/Player;->notifyPlaybackUpdateToListeners()V

    .line 263
    .line 264
    .line 265
    iget-object p1, p1, Lorg/schabi/newpipe/player/Player;->UIs:Lorg/schabi/newpipe/player/ui/PlayerUiList;

    .line 266
    .line 267
    new-instance v0, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda3;

    .line 268
    .line 269
    invoke-direct {v0, v4}, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda3;-><init>(I)V

    .line 270
    .line 271
    .line 272
    invoke-virtual {p1, v0}, Lorg/schabi/newpipe/player/ui/PlayerUiList;->call(Ljava/util/function/Consumer;)V

    .line 273
    .line 274
    .line 275
    :goto_5
    iget-object p1, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    .line 276
    .line 277
    invoke-virtual {p1}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->size()I

    .line 278
    .line 279
    .line 280
    move-result v0

    .line 281
    invoke-virtual {p1}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->getIndex()I

    .line 282
    .line 283
    .line 284
    move-result v4

    .line 285
    sub-int/2addr v0, v4

    .line 286
    if-le v0, v3, :cond_d

    .line 287
    .line 288
    goto :goto_6

    .line 289
    :cond_d
    move v3, v5

    .line 290
    :goto_6
    invoke-virtual {p1}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->isComplete()Z

    .line 291
    .line 292
    .line 293
    move-result p1

    .line 294
    if-nez p1, :cond_f

    .line 295
    .line 296
    if-eqz v3, :cond_e

    .line 297
    .line 298
    goto :goto_7

    .line 299
    :cond_e
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->maybeBlock()V

    .line 300
    .line 301
    .line 302
    iget-object p1, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    .line 303
    .line 304
    invoke-virtual {p1}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->fetch()V

    .line 305
    .line 306
    .line 307
    :cond_f
    :goto_7
    iget-object p0, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->playQueueReactor:Lorg/reactivestreams/Subscription;

    .line 308
    .line 309
    invoke-interface {p0, v1, v2}, Lorg/reactivestreams/Subscription;->request(J)V

    .line 310
    .line 311
    .line 312
    :goto_8
    return-void

    .line 313
    :sswitch_2
    check-cast p1, Ljava/util/List;

    .line 314
    .line 315
    iget-object p0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$1;->this$0:Ljava/lang/Object;

    .line 316
    .line 317
    check-cast p0, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;

    .line 318
    .line 319
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 320
    .line 321
    .line 322
    move-result v0

    .line 323
    if-eqz v0, :cond_10

    .line 324
    .line 325
    const/4 p1, 0x0

    .line 326
    goto :goto_9

    .line 327
    :cond_10
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 328
    .line 329
    .line 330
    move-result-object p1

    .line 331
    check-cast p1, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;

    .line 332
    .line 333
    :goto_9
    iput-object p1, p0, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;->playlistEntity:Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;

    .line 334
    .line 335
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;->updateBookmarkButtons()V

    .line 336
    .line 337
    .line 338
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;->isBookmarkButtonReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 339
    .line 340
    invoke-virtual {p1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 341
    .line 342
    .line 343
    iget-object p0, p0, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;->bookmarkReactor:Lorg/reactivestreams/Subscription;

    .line 344
    .line 345
    if-eqz p0, :cond_11

    .line 346
    .line 347
    invoke-interface {p0, v1, v2}, Lorg/reactivestreams/Subscription;->request(J)V

    .line 348
    .line 349
    .line 350
    :cond_11
    return-void

    .line 351
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0xc -> :sswitch_1
        0xd -> :sswitch_0
    .end sparse-switch
.end method

.method public onStartDrag(Lorg/schabi/newpipe/player/playqueue/PlayQueueItemHolder;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$1;->this$0:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lorg/schabi/newpipe/player/PlayQueueActivity;

    .line 4
    .line 5
    iget-object p0, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->itemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/ItemTouchHelper;->startDrag(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public onSubscribe(Lio/reactivex/rxjava3/disposables/Disposable;)V
    .locals 0

    .line 41
    iget p0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$1;->$r8$classId:I

    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .locals 3

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$1;->$r8$classId:I

    .line 2
    .line 3
    const-wide/16 v1, 0x1

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$1;->this$0:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager;

    .line 11
    .line 12
    iget-object v0, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->playQueueReactor:Lorg/reactivestreams/Subscription;

    .line 13
    .line 14
    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->playQueueReactor:Lorg/reactivestreams/Subscription;

    .line 18
    .line 19
    invoke-interface {p1, v1, v2}, Lorg/reactivestreams/Subscription;->request(J)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :pswitch_0
    iget-object p0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$1;->this$0:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast p0, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;

    .line 26
    .line 27
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;->bookmarkReactor:Lorg/reactivestreams/Subscription;

    .line 28
    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 32
    .line 33
    .line 34
    :cond_0
    iput-object p1, p0, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;->bookmarkReactor:Lorg/reactivestreams/Subscription;

    .line 35
    .line 36
    invoke-interface {p1, v1, v2}, Lorg/reactivestreams/Subscription;->request(J)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    nop

    .line 41
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public selected(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$1;->this$0:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p0, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;

    .line 9
    .line 10
    sget-object v0, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;->Companion:Lorg/schabi/newpipe/local/subscription/SubscriptionFragment$Companion;

    .line 11
    .line 12
    invoke-virtual {p0}, Lorg/schabi/newpipe/BaseFragment;->getFM()Landroidx/fragment/app/FragmentManager;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/InfoItem;->getServiceId()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/InfoItem;->getUrl()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/InfoItem;->getName()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-static {p0, v0, v1, p1}, Landroidx/sqlite/SQLite;->openChannelFragment(Landroidx/fragment/app/FragmentManager;ILjava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public selected(Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;)V
    .locals 0

    .line 32
    iget-object p0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lorg/schabi/newpipe/player/PlayQueueActivity;

    iget-object p0, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->player:Lorg/schabi/newpipe/player/Player;

    if-eqz p0, :cond_0

    .line 33
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/player/Player;->selectQueueItem(Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;)V

    :cond_0
    return-void
.end method
