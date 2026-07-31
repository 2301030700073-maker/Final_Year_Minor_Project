.class public Lorg/schabi/newpipe/info_list/holder/StreamMiniInfoItemHolder;
.super Lorg/schabi/newpipe/info_list/holder/InfoItemHolder;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final itemDurationView:Landroid/widget/TextView;

.field public final itemProgressView:Lorg/schabi/newpipe/views/AnimatedProgressBar;

.field public final itemThumbnailView:Landroid/widget/ImageView;

.field public final itemUploaderView:Landroid/widget/TextView;

.field public final itemVideoTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcoil3/ComponentRegistry$Builder;ILandroid/view/ViewGroup;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lorg/schabi/newpipe/info_list/holder/InfoItemHolder;-><init>(Lcoil3/ComponentRegistry$Builder;ILandroid/view/ViewGroup;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 5
    .line 6
    const p2, 0x7f0a01f1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Landroid/widget/ImageView;

    .line 14
    .line 15
    iput-object p1, p0, Lorg/schabi/newpipe/info_list/holder/StreamMiniInfoItemHolder;->itemThumbnailView:Landroid/widget/ImageView;

    .line 16
    .line 17
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 18
    .line 19
    const p2, 0x7f0a01f4

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Landroid/widget/TextView;

    .line 27
    .line 28
    iput-object p1, p0, Lorg/schabi/newpipe/info_list/holder/StreamMiniInfoItemHolder;->itemVideoTitleView:Landroid/widget/TextView;

    .line 29
    .line 30
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 31
    .line 32
    const p2, 0x7f0a01f3

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    check-cast p1, Landroid/widget/TextView;

    .line 40
    .line 41
    iput-object p1, p0, Lorg/schabi/newpipe/info_list/holder/StreamMiniInfoItemHolder;->itemUploaderView:Landroid/widget/TextView;

    .line 42
    .line 43
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 44
    .line 45
    const p2, 0x7f0a01ec

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    check-cast p1, Landroid/widget/TextView;

    .line 53
    .line 54
    iput-object p1, p0, Lorg/schabi/newpipe/info_list/holder/StreamMiniInfoItemHolder;->itemDurationView:Landroid/widget/TextView;

    .line 55
    .line 56
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 57
    .line 58
    const p2, 0x7f0a01ee

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    check-cast p1, Lorg/schabi/newpipe/views/AnimatedProgressBar;

    .line 66
    .line 67
    iput-object p1, p0, Lorg/schabi/newpipe/info_list/holder/StreamMiniInfoItemHolder;->itemProgressView:Lorg/schabi/newpipe/views/AnimatedProgressBar;

    .line 68
    .line 69
    return-void
.end method


# virtual methods
.method public updateFromItem(Lorg/schabi/newpipe/extractor/InfoItem;Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;)V
    .locals 10

    .line 1
    instance-of v0, p1, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    move-object v0, p1

    .line 7
    check-cast v0, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;

    .line 8
    .line 9
    iget-object v1, p0, Lorg/schabi/newpipe/info_list/holder/StreamMiniInfoItemHolder;->itemVideoTitleView:Landroid/widget/TextView;

    .line 10
    .line 11
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/InfoItem;->getName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lorg/schabi/newpipe/info_list/holder/StreamMiniInfoItemHolder;->itemUploaderView:Landroid/widget/TextView;

    .line 19
    .line 20
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->getUploaderName()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->getDuration()J

    .line 28
    .line 29
    .line 30
    move-result-wide v1

    .line 31
    const-wide/16 v3, 0x0

    .line 32
    .line 33
    cmp-long v1, v1, v3

    .line 34
    .line 35
    const/4 v2, 0x0

    .line 36
    iget-object v3, p0, Lorg/schabi/newpipe/info_list/holder/InfoItemHolder;->itemBuilder:Lcoil3/ComponentRegistry$Builder;

    .line 37
    .line 38
    const/16 v4, 0x8

    .line 39
    .line 40
    const/4 v5, 0x0

    .line 41
    iget-object v6, p0, Lorg/schabi/newpipe/info_list/holder/StreamMiniInfoItemHolder;->itemProgressView:Lorg/schabi/newpipe/views/AnimatedProgressBar;

    .line 42
    .line 43
    iget-object v7, p0, Lorg/schabi/newpipe/info_list/holder/StreamMiniInfoItemHolder;->itemDurationView:Landroid/widget/TextView;

    .line 44
    .line 45
    if-lez v1, :cond_3

    .line 46
    .line 47
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->getDuration()J

    .line 48
    .line 49
    .line 50
    move-result-wide v8

    .line 51
    invoke-static {v8, v9}, Lorg/schabi/newpipe/util/Localization;->getDurationString(J)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    .line 57
    .line 58
    iget-object v1, v3, Lcoil3/ComponentRegistry$Builder;->interceptors:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast v1, Landroid/content/Context;

    .line 61
    .line 62
    const v3, 0x7f060083

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, v3}, Landroid/content/Context;->getColor(I)I

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    invoke-virtual {v7, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v7, v5}, Landroid/view/View;->setVisibility(I)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-static {v1}, Landroidx/core/os/BundleKt;->getPositionsInListsEnabled(Landroid/content/Context;)Z

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    if-eqz v1, :cond_1

    .line 84
    .line 85
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 86
    .line 87
    .line 88
    new-instance v1, Landroidx/work/impl/WorkerWrapper$launch$1$$ExternalSyntheticLambda0;

    .line 89
    .line 90
    const/4 v3, 0x6

    .line 91
    invoke-direct {v1, p2, p1, v3}, Landroidx/work/impl/WorkerWrapper$launch$1$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 92
    .line 93
    .line 94
    new-instance p1, Lio/reactivex/rxjava3/internal/operators/single/SingleAmb;

    .line 95
    .line 96
    const/4 p2, 0x3

    .line 97
    invoke-direct {p1, v1, p2}, Lio/reactivex/rxjava3/internal/operators/single/SingleAmb;-><init>(Ljava/lang/Object;I)V

    .line 98
    .line 99
    .line 100
    sget-object p2, Lio/reactivex/rxjava3/schedulers/Schedulers;->IO:Lio/reactivex/rxjava3/internal/schedulers/IoScheduler;

    .line 101
    .line 102
    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Single;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/internal/operators/single/SingleObserveOn;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    invoke-virtual {p1}, Lio/reactivex/rxjava3/core/Single;->blockingGet()Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    check-cast p1, [Lorg/schabi/newpipe/database/stream/model/StreamStateEntity;

    .line 111
    .line 112
    aget-object p1, p1, v5

    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_1
    move-object p1, v2

    .line 116
    :goto_0
    if-eqz p1, :cond_2

    .line 117
    .line 118
    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->getDuration()J

    .line 122
    .line 123
    .line 124
    move-result-wide v7

    .line 125
    long-to-int p2, v7

    .line 126
    invoke-virtual {v6, p2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 127
    .line 128
    .line 129
    iget-wide p1, p1, Lorg/schabi/newpipe/database/stream/model/StreamStateEntity;->progressMillis:J

    .line 130
    .line 131
    const-wide/16 v7, 0x3e8

    .line 132
    .line 133
    div-long/2addr p1, v7

    .line 134
    long-to-int p1, p1

    .line 135
    invoke-virtual {v6, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 136
    .line 137
    .line 138
    goto :goto_1

    .line 139
    :cond_2
    invoke-virtual {v6, v4}, Landroid/view/View;->setVisibility(I)V

    .line 140
    .line 141
    .line 142
    goto :goto_1

    .line 143
    :cond_3
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->getStreamType()Lorg/schabi/newpipe/extractor/stream/StreamType;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    invoke-static {p1}, Lokio/Okio;->isLiveStream(Lorg/schabi/newpipe/extractor/stream/StreamType;)Z

    .line 148
    .line 149
    .line 150
    move-result p1

    .line 151
    if-eqz p1, :cond_4

    .line 152
    .line 153
    const p1, 0x7f130132

    .line 154
    .line 155
    .line 156
    invoke-virtual {v7, p1}, Landroid/widget/TextView;->setText(I)V

    .line 157
    .line 158
    .line 159
    iget-object p1, v3, Lcoil3/ComponentRegistry$Builder;->interceptors:Ljava/lang/Object;

    .line 160
    .line 161
    check-cast p1, Landroid/content/Context;

    .line 162
    .line 163
    const p2, 0x7f0600ac

    .line 164
    .line 165
    .line 166
    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    .line 167
    .line 168
    .line 169
    move-result p1

    .line 170
    invoke-virtual {v7, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v7, v5}, Landroid/view/View;->setVisibility(I)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v6, v4}, Landroid/view/View;->setVisibility(I)V

    .line 177
    .line 178
    .line 179
    goto :goto_1

    .line 180
    :cond_4
    invoke-virtual {v7, v4}, Landroid/view/View;->setVisibility(I)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v6, v4}, Landroid/view/View;->setVisibility(I)V

    .line 184
    .line 185
    .line 186
    :goto_1
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/InfoItem;->getThumbnails()Ljava/util/List;

    .line 187
    .line 188
    .line 189
    move-result-object p1

    .line 190
    iget-object p2, p0, Lorg/schabi/newpipe/info_list/holder/StreamMiniInfoItemHolder;->itemThumbnailView:Landroid/widget/ImageView;

    .line 191
    .line 192
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 193
    .line 194
    .line 195
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 196
    .line 197
    .line 198
    const v1, 0x7f0801b8

    .line 199
    .line 200
    .line 201
    invoke-static {p1}, Lorg/schabi/newpipe/util/image/ImageStrategy;->choosePreferredImage(Ljava/util/List;)Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object p1

    .line 205
    const/4 v3, 0x1

    .line 206
    invoke-static {p2, p1, v1, v3}, Lokhttp3/Cookie$Companion;->loadImageDefault(Landroid/widget/ImageView;Ljava/lang/String;IZ)V

    .line 207
    .line 208
    .line 209
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 210
    .line 211
    new-instance p2, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda42;

    .line 212
    .line 213
    invoke-direct {p2, p0, v0, v4}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda42;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->getStreamType()Lorg/schabi/newpipe/extractor/stream/StreamType;

    .line 220
    .line 221
    .line 222
    move-result-object p1

    .line 223
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 224
    .line 225
    .line 226
    move-result p1

    .line 227
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 228
    .line 229
    packed-switch p1, :pswitch_data_0

    .line 230
    .line 231
    .line 232
    invoke-virtual {p2, v5}, Landroid/view/View;->setLongClickable(Z)V

    .line 233
    .line 234
    .line 235
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 236
    .line 237
    invoke-virtual {p0, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 238
    .line 239
    .line 240
    return-void

    .line 241
    :pswitch_0
    invoke-virtual {p2, v3}, Landroid/view/View;->setLongClickable(Z)V

    .line 242
    .line 243
    .line 244
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 245
    .line 246
    new-instance p2, Lorg/schabi/newpipe/local/holder/PlaylistItemHolder$$ExternalSyntheticLambda1;

    .line 247
    .line 248
    const/4 v1, 0x4

    .line 249
    invoke-direct {p2, p0, v0, v1}, Lorg/schabi/newpipe/local/holder/PlaylistItemHolder$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 250
    .line 251
    .line 252
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 253
    .line 254
    .line 255
    return-void

    .line 256
    nop

    .line 257
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
