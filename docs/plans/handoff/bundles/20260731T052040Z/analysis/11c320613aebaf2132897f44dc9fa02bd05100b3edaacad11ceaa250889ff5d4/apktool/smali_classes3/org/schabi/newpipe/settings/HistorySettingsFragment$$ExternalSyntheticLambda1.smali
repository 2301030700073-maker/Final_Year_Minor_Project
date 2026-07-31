.class public final synthetic Lorg/schabi/newpipe/settings/HistorySettingsFragment$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

.field public final synthetic f$1:Landroid/content/Context;

.field public final synthetic f$2:Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;


# direct methods
.method public synthetic constructor <init>(Lio/reactivex/rxjava3/disposables/CompositeDisposable;Landroid/content/Context;Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;I)V
    .locals 0

    .line 1
    iput p4, p0, Lorg/schabi/newpipe/settings/HistorySettingsFragment$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/schabi/newpipe/settings/HistorySettingsFragment$$ExternalSyntheticLambda1;->f$0:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 4
    .line 5
    iput-object p2, p0, Lorg/schabi/newpipe/settings/HistorySettingsFragment$$ExternalSyntheticLambda1;->f$1:Landroid/content/Context;

    .line 6
    .line 7
    iput-object p3, p0, Lorg/schabi/newpipe/settings/HistorySettingsFragment$$ExternalSyntheticLambda1;->f$2:Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 9

    .line 1
    iget p1, p0, Lorg/schabi/newpipe/settings/HistorySettingsFragment$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    const-string p2, "subscribeActual failed"

    .line 4
    .line 5
    const/4 v0, 0x4

    .line 6
    const/4 v1, 0x3

    .line 7
    iget-object v2, p0, Lorg/schabi/newpipe/settings/HistorySettingsFragment$$ExternalSyntheticLambda1;->f$2:Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;

    .line 8
    .line 9
    iget-object v3, p0, Lorg/schabi/newpipe/settings/HistorySettingsFragment$$ExternalSyntheticLambda1;->f$1:Landroid/content/Context;

    .line 10
    .line 11
    iget-object p0, p0, Lorg/schabi/newpipe/settings/HistorySettingsFragment$$ExternalSyntheticLambda1;->f$0:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 12
    .line 13
    packed-switch p1, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    sget p1, Lorg/schabi/newpipe/settings/HistorySettingsFragment;->$r8$clinit:I

    .line 17
    .line 18
    iget-object p1, v2, Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;->playlistDescriptionReadMore:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast p1, Lorg/schabi/newpipe/database/history/dao/SearchHistoryDAO_Impl;

    .line 21
    .line 22
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    new-instance v2, Lcoil3/decode/StaticImageDecoderKt$$ExternalSyntheticLambda0;

    .line 26
    .line 27
    invoke-direct {v2, p1, v0}, Lcoil3/decode/StaticImageDecoderKt$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    .line 28
    .line 29
    .line 30
    new-instance p1, Lio/reactivex/rxjava3/internal/operators/single/SingleAmb;

    .line 31
    .line 32
    invoke-direct {p1, v2, v1}, Lio/reactivex/rxjava3/internal/operators/single/SingleAmb;-><init>(Ljava/lang/Object;I)V

    .line 33
    .line 34
    .line 35
    sget-object v0, Lio/reactivex/rxjava3/schedulers/Schedulers;->IO:Lio/reactivex/rxjava3/internal/schedulers/IoScheduler;

    .line 36
    .line 37
    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Single;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/internal/operators/single/SingleObserveOn;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    new-instance v1, Lorg/schabi/newpipe/settings/HistorySettingsFragment$$ExternalSyntheticLambda7;

    .line 46
    .line 47
    const/4 v2, 0x0

    .line 48
    invoke-direct {v1, v3, v2}, Lorg/schabi/newpipe/settings/HistorySettingsFragment$$ExternalSyntheticLambda7;-><init>(Landroid/content/Context;I)V

    .line 49
    .line 50
    .line 51
    new-instance v2, Lorg/schabi/newpipe/settings/HistorySettingsFragment$$ExternalSyntheticLambda7;

    .line 52
    .line 53
    const/4 v4, 0x5

    .line 54
    invoke-direct {v2, v3, v4}, Lorg/schabi/newpipe/settings/HistorySettingsFragment$$ExternalSyntheticLambda7;-><init>(Landroid/content/Context;I)V

    .line 55
    .line 56
    .line 57
    new-instance v3, Lio/reactivex/rxjava3/internal/observers/ConsumerSingleObserver;

    .line 58
    .line 59
    invoke-direct {v3, v1, v2}, Lio/reactivex/rxjava3/internal/observers/ConsumerSingleObserver;-><init>(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)V

    .line 60
    .line 61
    .line 62
    :try_start_0
    new-instance v1, Lio/reactivex/rxjava3/internal/operators/single/SingleObserveOn$ObserveOnSingleObserver;

    .line 63
    .line 64
    invoke-direct {v1, v3, v0}, Lio/reactivex/rxjava3/internal/operators/single/SingleObserveOn$ObserveOnSingleObserver;-><init>(Lio/reactivex/rxjava3/core/SingleObserver;Lio/reactivex/rxjava3/core/Scheduler;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, v1}, Lio/reactivex/rxjava3/core/Single;->subscribe(Lio/reactivex/rxjava3/core/SingleObserver;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0, v3}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    .line 71
    .line 72
    .line 73
    return-void

    .line 74
    :catchall_0
    move-exception p0

    .line 75
    invoke-static {p0, p2, p0}, Landroidx/compose/ui/node/Owner$-CC;->m(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/NullPointerException;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    throw p0

    .line 80
    :catch_0
    move-exception p0

    .line 81
    throw p0

    .line 82
    :pswitch_0
    invoke-static {v3, v2}, Lorg/schabi/newpipe/settings/HistorySettingsFragment;->getDeletePlaybackStatesDisposable(Landroid/content/Context;Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;)Lio/reactivex/rxjava3/internal/observers/ConsumerSingleObserver;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    .line 87
    .line 88
    .line 89
    return-void

    .line 90
    :pswitch_1
    invoke-static {v3, v2}, Lorg/schabi/newpipe/settings/HistorySettingsFragment;->getDeletePlaybackStatesDisposable(Landroid/content/Context;Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;)Lio/reactivex/rxjava3/internal/observers/ConsumerSingleObserver;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    .line 95
    .line 96
    .line 97
    iget-object p1, v2, Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;->playlistDescription:Ljava/lang/Object;

    .line 98
    .line 99
    check-cast p1, Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl;

    .line 100
    .line 101
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    new-instance v4, Lcoil3/decode/StaticImageDecoderKt$$ExternalSyntheticLambda0;

    .line 105
    .line 106
    const/4 v5, 0x6

    .line 107
    invoke-direct {v4, p1, v5}, Lcoil3/decode/StaticImageDecoderKt$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    .line 108
    .line 109
    .line 110
    new-instance p1, Lio/reactivex/rxjava3/internal/operators/single/SingleAmb;

    .line 111
    .line 112
    invoke-direct {p1, v4, v1}, Lio/reactivex/rxjava3/internal/operators/single/SingleAmb;-><init>(Ljava/lang/Object;I)V

    .line 113
    .line 114
    .line 115
    sget-object v4, Lio/reactivex/rxjava3/schedulers/Schedulers;->IO:Lio/reactivex/rxjava3/internal/schedulers/IoScheduler;

    .line 116
    .line 117
    invoke-virtual {p1, v4}, Lio/reactivex/rxjava3/core/Single;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/internal/operators/single/SingleObserveOn;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    .line 122
    .line 123
    .line 124
    move-result-object v6

    .line 125
    new-instance v7, Lorg/schabi/newpipe/settings/HistorySettingsFragment$$ExternalSyntheticLambda7;

    .line 126
    .line 127
    invoke-direct {v7, v3, v5}, Lorg/schabi/newpipe/settings/HistorySettingsFragment$$ExternalSyntheticLambda7;-><init>(Landroid/content/Context;I)V

    .line 128
    .line 129
    .line 130
    new-instance v5, Lorg/schabi/newpipe/settings/HistorySettingsFragment$$ExternalSyntheticLambda7;

    .line 131
    .line 132
    const/4 v8, 0x1

    .line 133
    invoke-direct {v5, v3, v8}, Lorg/schabi/newpipe/settings/HistorySettingsFragment$$ExternalSyntheticLambda7;-><init>(Landroid/content/Context;I)V

    .line 134
    .line 135
    .line 136
    new-instance v8, Lio/reactivex/rxjava3/internal/observers/ConsumerSingleObserver;

    .line 137
    .line 138
    invoke-direct {v8, v7, v5}, Lio/reactivex/rxjava3/internal/observers/ConsumerSingleObserver;-><init>(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)V

    .line 139
    .line 140
    .line 141
    :try_start_1
    new-instance v5, Lio/reactivex/rxjava3/internal/operators/single/SingleObserveOn$ObserveOnSingleObserver;

    .line 142
    .line 143
    invoke-direct {v5, v8, v6}, Lio/reactivex/rxjava3/internal/operators/single/SingleObserveOn$ObserveOnSingleObserver;-><init>(Lio/reactivex/rxjava3/core/SingleObserver;Lio/reactivex/rxjava3/core/Scheduler;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {p1, v5}, Lio/reactivex/rxjava3/core/Single;->subscribe(Lio/reactivex/rxjava3/core/SingleObserver;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 147
    .line 148
    .line 149
    invoke-virtual {p0, v8}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    .line 150
    .line 151
    .line 152
    iget-object p1, v2, Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;->uploaderLayout:Ljava/lang/Object;

    .line 153
    .line 154
    check-cast p1, Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl;

    .line 155
    .line 156
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    new-instance v2, Lcoil3/decode/StaticImageDecoderKt$$ExternalSyntheticLambda0;

    .line 160
    .line 161
    const/4 v5, 0x7

    .line 162
    invoke-direct {v2, p1, v5}, Lcoil3/decode/StaticImageDecoderKt$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    .line 163
    .line 164
    .line 165
    new-instance p1, Lio/reactivex/rxjava3/internal/operators/single/SingleAmb;

    .line 166
    .line 167
    invoke-direct {p1, v2, v1}, Lio/reactivex/rxjava3/internal/operators/single/SingleAmb;-><init>(Ljava/lang/Object;I)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {p1, v4}, Lio/reactivex/rxjava3/core/Single;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/internal/operators/single/SingleObserveOn;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    .line 175
    .line 176
    .line 177
    move-result-object v1

    .line 178
    new-instance v2, Lorg/schabi/newpipe/local/feed/FeedViewModel$$ExternalSyntheticLambda0;

    .line 179
    .line 180
    const/16 v4, 0x18

    .line 181
    .line 182
    invoke-direct {v2, v4}, Lorg/schabi/newpipe/local/feed/FeedViewModel$$ExternalSyntheticLambda0;-><init>(I)V

    .line 183
    .line 184
    .line 185
    new-instance v4, Lorg/schabi/newpipe/settings/HistorySettingsFragment$$ExternalSyntheticLambda7;

    .line 186
    .line 187
    invoke-direct {v4, v3, v0}, Lorg/schabi/newpipe/settings/HistorySettingsFragment$$ExternalSyntheticLambda7;-><init>(Landroid/content/Context;I)V

    .line 188
    .line 189
    .line 190
    new-instance v0, Lio/reactivex/rxjava3/internal/observers/ConsumerSingleObserver;

    .line 191
    .line 192
    invoke-direct {v0, v2, v4}, Lio/reactivex/rxjava3/internal/observers/ConsumerSingleObserver;-><init>(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)V

    .line 193
    .line 194
    .line 195
    :try_start_2
    new-instance v2, Lio/reactivex/rxjava3/internal/operators/single/SingleObserveOn$ObserveOnSingleObserver;

    .line 196
    .line 197
    invoke-direct {v2, v0, v1}, Lio/reactivex/rxjava3/internal/operators/single/SingleObserveOn$ObserveOnSingleObserver;-><init>(Lio/reactivex/rxjava3/core/SingleObserver;Lio/reactivex/rxjava3/core/Scheduler;)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {p1, v2}, Lio/reactivex/rxjava3/core/Single;->subscribe(Lio/reactivex/rxjava3/core/SingleObserver;)V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 201
    .line 202
    .line 203
    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    .line 204
    .line 205
    .line 206
    return-void

    .line 207
    :catchall_1
    move-exception p0

    .line 208
    invoke-static {p0, p2, p0}, Landroidx/compose/ui/node/Owner$-CC;->m(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/NullPointerException;

    .line 209
    .line 210
    .line 211
    move-result-object p0

    .line 212
    throw p0

    .line 213
    :catch_1
    move-exception p0

    .line 214
    throw p0

    .line 215
    :catchall_2
    move-exception p0

    .line 216
    invoke-static {p0, p2, p0}, Landroidx/compose/ui/node/Owner$-CC;->m(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/NullPointerException;

    .line 217
    .line 218
    .line 219
    move-result-object p0

    .line 220
    throw p0

    .line 221
    :catch_2
    move-exception p0

    .line 222
    throw p0

    .line 223
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
