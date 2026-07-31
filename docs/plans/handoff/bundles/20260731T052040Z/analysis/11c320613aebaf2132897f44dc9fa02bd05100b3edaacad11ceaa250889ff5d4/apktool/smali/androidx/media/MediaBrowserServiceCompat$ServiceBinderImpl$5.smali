.class public final Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$5;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$1:Lcoil3/memory/MemoryCacheService;

.field public final synthetic val$callbacks:Lcoil3/memory/MemoryCacheService;

.field public final synthetic val$mediaId:Ljava/lang/String;

.field public final synthetic val$receiver:Landroid/support/v4/os/ResultReceiver;


# direct methods
.method public constructor <init>(Lcoil3/memory/MemoryCacheService;Lcoil3/memory/MemoryCacheService;Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v4/os/ResultReceiver;)V
    .locals 0

    const/4 p4, 0x1

    iput p4, p0, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$5;->$r8$classId:I

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$5;->this$1:Lcoil3/memory/MemoryCacheService;

    iput-object p2, p0, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$5;->val$callbacks:Lcoil3/memory/MemoryCacheService;

    iput-object p3, p0, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$5;->val$mediaId:Ljava/lang/String;

    iput-object p5, p0, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$5;->val$receiver:Landroid/support/v4/os/ResultReceiver;

    return-void
.end method

.method public constructor <init>(Lcoil3/memory/MemoryCacheService;Lcoil3/memory/MemoryCacheService;Ljava/lang/String;Landroid/support/v4/os/ResultReceiver;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$5;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$5;->this$1:Lcoil3/memory/MemoryCacheService;

    .line 8
    .line 9
    iput-object p2, p0, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$5;->val$callbacks:Lcoil3/memory/MemoryCacheService;

    .line 10
    .line 11
    iput-object p3, p0, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$5;->val$mediaId:Ljava/lang/String;

    .line 12
    .line 13
    iput-object p4, p0, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$5;->val$receiver:Landroid/support/v4/os/ResultReceiver;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget v0, p0, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$5;->$r8$classId:I

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$5;->val$receiver:Landroid/support/v4/os/ResultReceiver;

    .line 4
    .line 5
    const-string v2, "MBServiceCompat"

    .line 6
    .line 7
    iget-object v3, p0, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$5;->this$1:Lcoil3/memory/MemoryCacheService;

    .line 8
    .line 9
    iget-object v4, p0, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$5;->val$callbacks:Lcoil3/memory/MemoryCacheService;

    .line 10
    .line 11
    iget-object p0, p0, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$5;->val$mediaId:Ljava/lang/String;

    .line 12
    .line 13
    const/4 v5, 0x0

    .line 14
    packed-switch v0, :pswitch_data_0

    .line 15
    .line 16
    .line 17
    iget-object v0, v4, Lcoil3/memory/MemoryCacheService;->imageLoader:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v0, Landroid/os/Messenger;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iget-object v4, v3, Lcoil3/memory/MemoryCacheService;->imageLoader:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v4, Landroidx/media/MediaBrowserServiceCompat;

    .line 28
    .line 29
    iget-object v4, v4, Landroidx/media/MediaBrowserServiceCompat;->mConnections:Landroidx/collection/ArrayMap;

    .line 30
    .line 31
    invoke-virtual {v4, v0}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Landroidx/media/MediaBrowserServiceCompat$ConnectionRecord;

    .line 36
    .line 37
    if-nez v0, :cond_0

    .line 38
    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    const-string v1, "search for callback that isn\'t registered query="

    .line 42
    .line 43
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    iget-object v0, v3, Lcoil3/memory/MemoryCacheService;->imageLoader:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast v0, Landroidx/media/MediaBrowserServiceCompat;

    .line 60
    .line 61
    new-instance v2, Landroidx/media/MediaBrowserServiceCompat$3;

    .line 62
    .line 63
    invoke-direct {v2, p0, v1, v5}, Landroidx/media/MediaBrowserServiceCompat$3;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 64
    .line 65
    .line 66
    check-cast v0, Lorg/schabi/newpipe/player/PlayerService;

    .line 67
    .line 68
    iget-object v0, v0, Lorg/schabi/newpipe/player/PlayerService;->mediaBrowserImpl:Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl;

    .line 69
    .line 70
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    .line 75
    .line 76
    sget v1, Lorg/schabi/newpipe/MainActivity;->$r8$clinit:I

    .line 77
    .line 78
    invoke-virtual {v2}, Landroidx/media/MediaBrowserServiceCompat$Result;->detach()V

    .line 79
    .line 80
    .line 81
    iget-object v1, v0, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 82
    .line 83
    iget-object v3, v0, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl;->context:Lorg/schabi/newpipe/player/PlayerService;

    .line 84
    .line 85
    invoke-static {v3}, Lorg/schabi/newpipe/util/ServiceHelper;->getSelectedServiceId(Landroid/content/Context;)I

    .line 86
    .line 87
    .line 88
    move-result v3

    .line 89
    invoke-static {v3}, Lorg/schabi/newpipe/util/ExtractorHelper;->checkServiceId(I)V

    .line 90
    .line 91
    .line 92
    new-instance v4, Lorg/schabi/newpipe/util/ExtractorHelper$$ExternalSyntheticLambda2;

    .line 93
    .line 94
    sget-object v6, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 95
    .line 96
    const-string v7, ""

    .line 97
    .line 98
    invoke-direct {v4, v3, p0, v6, v7}, Lorg/schabi/newpipe/util/ExtractorHelper$$ExternalSyntheticLambda2;-><init>(ILjava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    new-instance v3, Lio/reactivex/rxjava3/internal/operators/single/SingleAmb;

    .line 102
    .line 103
    const/4 v6, 0x3

    .line 104
    invoke-direct {v3, v4, v6}, Lio/reactivex/rxjava3/internal/operators/single/SingleAmb;-><init>(Ljava/lang/Object;I)V

    .line 105
    .line 106
    .line 107
    new-instance v4, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl$onSearch$1;

    .line 108
    .line 109
    invoke-direct {v4, v0, v5}, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl$onSearch$1;-><init>(Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl;I)V

    .line 110
    .line 111
    .line 112
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/single/SingleMap;

    .line 113
    .line 114
    invoke-direct {v0, v3, v4, v5}, Lio/reactivex/rxjava3/internal/operators/single/SingleMap;-><init>(Lio/reactivex/rxjava3/core/Single;Lio/reactivex/rxjava3/functions/Function;I)V

    .line 115
    .line 116
    .line 117
    sget-object v3, Lio/reactivex/rxjava3/schedulers/Schedulers;->IO:Lio/reactivex/rxjava3/internal/schedulers/IoScheduler;

    .line 118
    .line 119
    invoke-virtual {v0, v3}, Lio/reactivex/rxjava3/core/Single;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/internal/operators/single/SingleObserveOn;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    new-instance v3, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$1;

    .line 124
    .line 125
    const/16 v4, 0xb

    .line 126
    .line 127
    invoke-direct {v3, v2, v4}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$1;-><init>(Ljava/lang/Object;I)V

    .line 128
    .line 129
    .line 130
    new-instance v4, Lorg/jsoup/parser/TokenData;

    .line 131
    .line 132
    const/16 v5, 0x13

    .line 133
    .line 134
    invoke-direct {v4, v2, p0, v5}, Lorg/jsoup/parser/TokenData;-><init>(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 135
    .line 136
    .line 137
    new-instance v5, Lio/reactivex/rxjava3/internal/observers/ConsumerSingleObserver;

    .line 138
    .line 139
    invoke-direct {v5, v3, v4}, Lio/reactivex/rxjava3/internal/observers/ConsumerSingleObserver;-><init>(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v0, v5}, Lio/reactivex/rxjava3/core/Single;->subscribe(Lio/reactivex/rxjava3/core/SingleObserver;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v1, v5}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    .line 146
    .line 147
    .line 148
    invoke-virtual {v2}, Landroidx/media/MediaBrowserServiceCompat$Result;->isDone()Z

    .line 149
    .line 150
    .line 151
    move-result v0

    .line 152
    if-eqz v0, :cond_1

    .line 153
    .line 154
    goto :goto_0

    .line 155
    :cond_1
    const-string v0, "onSearch must call detach() or sendResult() before returning for query="

    .line 156
    .line 157
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object p0

    .line 161
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$2(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    :goto_0
    return-void

    .line 165
    :pswitch_0
    iget-object v0, v4, Lcoil3/memory/MemoryCacheService;->imageLoader:Ljava/lang/Object;

    .line 166
    .line 167
    check-cast v0, Landroid/os/Messenger;

    .line 168
    .line 169
    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    iget-object v3, v3, Lcoil3/memory/MemoryCacheService;->imageLoader:Ljava/lang/Object;

    .line 174
    .line 175
    check-cast v3, Landroidx/media/MediaBrowserServiceCompat;

    .line 176
    .line 177
    iget-object v3, v3, Landroidx/media/MediaBrowserServiceCompat;->mConnections:Landroidx/collection/ArrayMap;

    .line 178
    .line 179
    invoke-virtual {v3, v0}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    check-cast v0, Landroidx/media/MediaBrowserServiceCompat$ConnectionRecord;

    .line 184
    .line 185
    if-nez v0, :cond_2

    .line 186
    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    .line 188
    .line 189
    const-string v1, "getMediaItem for callback that isn\'t registered id="

    .line 190
    .line 191
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object p0

    .line 201
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    .line 203
    .line 204
    goto :goto_1

    .line 205
    :cond_2
    const/4 p0, 0x2

    .line 206
    and-int/2addr p0, p0

    .line 207
    const/4 v0, 0x0

    .line 208
    if-eqz p0, :cond_3

    .line 209
    .line 210
    const/4 p0, -0x1

    .line 211
    invoke-virtual {v1, p0, v0}, Landroid/support/v4/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 212
    .line 213
    .line 214
    goto :goto_1

    .line 215
    :cond_3
    new-instance p0, Landroid/os/Bundle;

    .line 216
    .line 217
    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 218
    .line 219
    .line 220
    const-string v2, "media_item"

    .line 221
    .line 222
    invoke-virtual {p0, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {v1, v5, p0}, Landroid/support/v4/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 226
    .line 227
    .line 228
    :goto_1
    return-void

    .line 229
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
