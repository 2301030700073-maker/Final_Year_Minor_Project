.class public Lorg/schabi/newpipe/local/holder/LocalPlaylistStreamItemHolder;
.super Lorg/schabi/newpipe/local/holder/LocalItemHolder;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final synthetic $r8$classId:I

.field public final itemAdditionalDetailsView:Landroid/widget/TextView;

.field public final itemDurationView:Landroid/widget/TextView;

.field public final itemHandleView:Landroid/view/View;

.field public final itemProgressView:Lorg/schabi/newpipe/views/AnimatedProgressBar;

.field public final itemThumbnailView:Landroid/widget/ImageView;

.field public final itemVideoTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lorg/jsoup/parser/TokenData;ILandroid/view/ViewGroup;I)V
    .locals 5

    .line 1
    iput p4, p0, Lorg/schabi/newpipe/local/holder/LocalPlaylistStreamItemHolder;->$r8$classId:I

    .line 2
    .line 3
    const v0, 0x7f0a01ee

    .line 4
    .line 5
    .line 6
    const v1, 0x7f0a01ec

    .line 7
    .line 8
    .line 9
    const v2, 0x7f0a01e9

    .line 10
    .line 11
    .line 12
    const v3, 0x7f0a01f4

    .line 13
    .line 14
    .line 15
    const v4, 0x7f0a01f1

    .line 16
    .line 17
    .line 18
    packed-switch p4, :pswitch_data_0

    .line 19
    .line 20
    .line 21
    invoke-direct {p0, p1, p2, p3}, Lorg/schabi/newpipe/local/holder/LocalItemHolder;-><init>(Lorg/jsoup/parser/TokenData;ILandroid/view/ViewGroup;)V

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 25
    .line 26
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Landroid/widget/ImageView;

    .line 31
    .line 32
    iput-object p1, p0, Lorg/schabi/newpipe/local/holder/LocalPlaylistStreamItemHolder;->itemThumbnailView:Landroid/widget/ImageView;

    .line 33
    .line 34
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 35
    .line 36
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    check-cast p1, Landroid/widget/TextView;

    .line 41
    .line 42
    iput-object p1, p0, Lorg/schabi/newpipe/local/holder/LocalPlaylistStreamItemHolder;->itemVideoTitleView:Landroid/widget/TextView;

    .line 43
    .line 44
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 45
    .line 46
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    check-cast p1, Landroid/widget/TextView;

    .line 51
    .line 52
    iput-object p1, p0, Lorg/schabi/newpipe/local/holder/LocalPlaylistStreamItemHolder;->itemAdditionalDetailsView:Landroid/widget/TextView;

    .line 53
    .line 54
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 55
    .line 56
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    check-cast p1, Landroid/widget/TextView;

    .line 61
    .line 62
    iput-object p1, p0, Lorg/schabi/newpipe/local/holder/LocalPlaylistStreamItemHolder;->itemDurationView:Landroid/widget/TextView;

    .line 63
    .line 64
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 65
    .line 66
    const p2, 0x7f0a01ed

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    iput-object p1, p0, Lorg/schabi/newpipe/local/holder/LocalPlaylistStreamItemHolder;->itemHandleView:Landroid/view/View;

    .line 74
    .line 75
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 76
    .line 77
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    check-cast p1, Lorg/schabi/newpipe/views/AnimatedProgressBar;

    .line 82
    .line 83
    iput-object p1, p0, Lorg/schabi/newpipe/local/holder/LocalPlaylistStreamItemHolder;->itemProgressView:Lorg/schabi/newpipe/views/AnimatedProgressBar;

    .line 84
    .line 85
    return-void

    .line 86
    :pswitch_0
    invoke-direct {p0, p1, p2, p3}, Lorg/schabi/newpipe/local/holder/LocalItemHolder;-><init>(Lorg/jsoup/parser/TokenData;ILandroid/view/ViewGroup;)V

    .line 87
    .line 88
    .line 89
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 90
    .line 91
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    check-cast p1, Landroid/widget/ImageView;

    .line 96
    .line 97
    iput-object p1, p0, Lorg/schabi/newpipe/local/holder/LocalPlaylistStreamItemHolder;->itemThumbnailView:Landroid/widget/ImageView;

    .line 98
    .line 99
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 100
    .line 101
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    check-cast p1, Landroid/widget/TextView;

    .line 106
    .line 107
    iput-object p1, p0, Lorg/schabi/newpipe/local/holder/LocalPlaylistStreamItemHolder;->itemVideoTitleView:Landroid/widget/TextView;

    .line 108
    .line 109
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 110
    .line 111
    const p2, 0x7f0a01f3

    .line 112
    .line 113
    .line 114
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    check-cast p1, Landroid/widget/TextView;

    .line 119
    .line 120
    iput-object p1, p0, Lorg/schabi/newpipe/local/holder/LocalPlaylistStreamItemHolder;->itemAdditionalDetailsView:Landroid/widget/TextView;

    .line 121
    .line 122
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 123
    .line 124
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    check-cast p1, Landroid/widget/TextView;

    .line 129
    .line 130
    iput-object p1, p0, Lorg/schabi/newpipe/local/holder/LocalPlaylistStreamItemHolder;->itemDurationView:Landroid/widget/TextView;

    .line 131
    .line 132
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 133
    .line 134
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    check-cast p1, Landroid/widget/TextView;

    .line 139
    .line 140
    iput-object p1, p0, Lorg/schabi/newpipe/local/holder/LocalPlaylistStreamItemHolder;->itemHandleView:Landroid/view/View;

    .line 141
    .line 142
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 143
    .line 144
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    check-cast p1, Lorg/schabi/newpipe/views/AnimatedProgressBar;

    .line 149
    .line 150
    iput-object p1, p0, Lorg/schabi/newpipe/local/holder/LocalPlaylistStreamItemHolder;->itemProgressView:Lorg/schabi/newpipe/views/AnimatedProgressBar;

    .line 151
    .line 152
    return-void

    .line 153
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final updateFromItem(Lorg/schabi/newpipe/database/LocalItem;Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;Lj$/time/format/DateTimeFormatter;)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget v2, v0, Lorg/schabi/newpipe/local/holder/LocalPlaylistStreamItemHolder;->$r8$classId:I

    .line 6
    .line 7
    iget-object v4, v0, Lorg/schabi/newpipe/local/holder/LocalPlaylistStreamItemHolder;->itemThumbnailView:Landroid/widget/ImageView;

    .line 8
    .line 9
    iget-object v5, v0, Lorg/schabi/newpipe/local/holder/LocalPlaylistStreamItemHolder;->itemHandleView:Landroid/view/View;

    .line 10
    .line 11
    const v8, 0x7f060083

    .line 12
    .line 13
    .line 14
    iget-object v9, v0, Lorg/schabi/newpipe/local/holder/LocalPlaylistStreamItemHolder;->itemAdditionalDetailsView:Landroid/widget/TextView;

    .line 15
    .line 16
    iget-object v10, v0, Lorg/schabi/newpipe/local/holder/LocalPlaylistStreamItemHolder;->itemVideoTitleView:Landroid/widget/TextView;

    .line 17
    .line 18
    iget-object v11, v0, Lorg/schabi/newpipe/local/holder/LocalPlaylistStreamItemHolder;->itemProgressView:Lorg/schabi/newpipe/views/AnimatedProgressBar;

    .line 19
    .line 20
    iget-object v12, v0, Lorg/schabi/newpipe/local/holder/LocalPlaylistStreamItemHolder;->itemDurationView:Landroid/widget/TextView;

    .line 21
    .line 22
    const/16 v13, 0x8

    .line 23
    .line 24
    const-wide/16 v16, 0x3e8

    .line 25
    .line 26
    iget-object v6, v0, Lorg/schabi/newpipe/local/holder/LocalItemHolder;->itemBuilder:Lorg/jsoup/parser/TokenData;

    .line 27
    .line 28
    const/4 v7, 0x0

    .line 29
    const-wide/16 v18, 0x0

    .line 30
    .line 31
    packed-switch v2, :pswitch_data_0

    .line 32
    .line 33
    .line 34
    instance-of v2, v1, Lorg/schabi/newpipe/database/stream/StreamStatisticsEntry;

    .line 35
    .line 36
    if-nez v2, :cond_0

    .line 37
    .line 38
    goto/16 :goto_1

    .line 39
    .line 40
    :cond_0
    check-cast v1, Lorg/schabi/newpipe/database/stream/StreamStatisticsEntry;

    .line 41
    .line 42
    move-object v2, v4

    .line 43
    iget-wide v3, v1, Lorg/schabi/newpipe/database/stream/StreamStatisticsEntry;->progressMillis:J

    .line 44
    .line 45
    iget-object v15, v1, Lorg/schabi/newpipe/database/stream/StreamStatisticsEntry;->streamEntity:Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    .line 46
    .line 47
    invoke-virtual {v15}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getTitle()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v14

    .line 51
    invoke-virtual {v10, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v15}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getUploader()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v10

    .line 58
    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v15}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getDuration()J

    .line 62
    .line 63
    .line 64
    move-result-wide v9

    .line 65
    cmp-long v9, v9, v18

    .line 66
    .line 67
    if-lez v9, :cond_2

    .line 68
    .line 69
    invoke-virtual {v15}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getDuration()J

    .line 70
    .line 71
    .line 72
    move-result-wide v9

    .line 73
    invoke-static {v9, v10}, Lorg/schabi/newpipe/util/Localization;->getDurationString(J)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v9

    .line 77
    invoke-virtual {v12, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    .line 79
    .line 80
    iget-object v9, v6, Lorg/jsoup/parser/TokenData;->value:Ljava/lang/Object;

    .line 81
    .line 82
    check-cast v9, Landroid/content/Context;

    .line 83
    .line 84
    invoke-virtual {v9, v8}, Landroid/content/Context;->getColor(I)I

    .line 85
    .line 86
    .line 87
    move-result v8

    .line 88
    invoke-virtual {v12, v8}, Landroid/view/View;->setBackgroundColor(I)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v12, v7}, Landroid/view/View;->setVisibility(I)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v11}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 95
    .line 96
    .line 97
    move-result-object v8

    .line 98
    invoke-static {v8}, Landroidx/core/os/BundleKt;->getPositionsInListsEnabled(Landroid/content/Context;)Z

    .line 99
    .line 100
    .line 101
    move-result v8

    .line 102
    if-eqz v8, :cond_1

    .line 103
    .line 104
    cmp-long v8, v3, v18

    .line 105
    .line 106
    if-lez v8, :cond_1

    .line 107
    .line 108
    invoke-virtual {v11, v7}, Landroid/view/View;->setVisibility(I)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v15}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getDuration()J

    .line 112
    .line 113
    .line 114
    move-result-wide v7

    .line 115
    long-to-int v7, v7

    .line 116
    invoke-virtual {v11, v7}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 117
    .line 118
    .line 119
    div-long v3, v3, v16

    .line 120
    .line 121
    long-to-int v3, v3

    .line 122
    invoke-virtual {v11, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 123
    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_1
    invoke-virtual {v11, v13}, Landroid/view/View;->setVisibility(I)V

    .line 127
    .line 128
    .line 129
    goto :goto_0

    .line 130
    :cond_2
    invoke-virtual {v12, v13}, Landroid/view/View;->setVisibility(I)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v11, v13}, Landroid/view/View;->setVisibility(I)V

    .line 134
    .line 135
    .line 136
    :goto_0
    check-cast v5, Landroid/widget/TextView;

    .line 137
    .line 138
    if-eqz v5, :cond_3

    .line 139
    .line 140
    iget-object v3, v6, Lorg/jsoup/parser/TokenData;->value:Ljava/lang/Object;

    .line 141
    .line 142
    move-object v6, v3

    .line 143
    check-cast v6, Landroid/content/Context;

    .line 144
    .line 145
    iget-wide v9, v1, Lorg/schabi/newpipe/database/stream/StreamStatisticsEntry;->watchCount:J

    .line 146
    .line 147
    const v8, 0x7f130373

    .line 148
    .line 149
    .line 150
    invoke-static {v6, v9, v10}, Lorg/schabi/newpipe/util/Localization;->shortCount(Landroid/content/Context;J)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v11

    .line 154
    const v7, 0x7f110012

    .line 155
    .line 156
    .line 157
    invoke-static/range {v6 .. v11}, Lorg/schabi/newpipe/util/Localization;->getQuantity(Landroid/content/Context;IIJLjava/lang/String;)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v3

    .line 161
    iget-object v4, v1, Lorg/schabi/newpipe/database/stream/StreamStatisticsEntry;->latestAccessDate:Lj$/time/OffsetDateTime;

    .line 162
    .line 163
    move-object/from16 v6, p3

    .line 164
    .line 165
    invoke-virtual {v6, v4}, Lj$/time/format/DateTimeFormatter;->format(Lj$/time/temporal/TemporalAccessor;)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v4

    .line 169
    invoke-virtual {v15}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getServiceId()I

    .line 170
    .line 171
    .line 172
    move-result v6

    .line 173
    invoke-static {v6}, Lorg/schabi/newpipe/util/ServiceHelper;->getNameOfServiceById(I)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v6

    .line 177
    filled-new-array {v3, v4, v6}, [Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v3

    .line 181
    invoke-static {v3}, Lorg/schabi/newpipe/util/Localization;->concatenateStrings([Ljava/lang/String;)Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v3

    .line 185
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    .line 187
    .line 188
    :cond_3
    invoke-virtual {v15}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getThumbnailUrl()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v3

    .line 192
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 193
    .line 194
    .line 195
    move-object v4, v2

    .line 196
    const v2, 0x7f0801b8

    .line 197
    .line 198
    .line 199
    const/4 v5, 0x1

    .line 200
    invoke-static {v4, v3, v2, v5}, Lokhttp3/Cookie$Companion;->loadImageDefault(Landroid/widget/ImageView;Ljava/lang/String;IZ)V

    .line 201
    .line 202
    .line 203
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 204
    .line 205
    new-instance v3, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda42;

    .line 206
    .line 207
    const/16 v4, 0xa

    .line 208
    .line 209
    invoke-direct {v3, v0, v1, v4}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda42;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    .line 214
    .line 215
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 216
    .line 217
    invoke-virtual {v2, v5}, Landroid/view/View;->setLongClickable(Z)V

    .line 218
    .line 219
    .line 220
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 221
    .line 222
    new-instance v3, Lorg/schabi/newpipe/local/holder/PlaylistItemHolder$$ExternalSyntheticLambda1;

    .line 223
    .line 224
    const/4 v4, 0x6

    .line 225
    invoke-direct {v3, v0, v1, v4}, Lorg/schabi/newpipe/local/holder/PlaylistItemHolder$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 229
    .line 230
    .line 231
    :goto_1
    return-void

    .line 232
    :pswitch_0
    instance-of v2, v1, Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;

    .line 233
    .line 234
    if-nez v2, :cond_4

    .line 235
    .line 236
    goto/16 :goto_3

    .line 237
    .line 238
    :cond_4
    check-cast v1, Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;

    .line 239
    .line 240
    iget-wide v2, v1, Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;->progressMillis:J

    .line 241
    .line 242
    iget-object v14, v1, Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;->streamEntity:Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    .line 243
    .line 244
    invoke-virtual {v14}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getTitle()Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v15

    .line 248
    invoke-virtual {v10, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {v14}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getUploader()Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v10

    .line 255
    invoke-virtual {v14}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getServiceId()I

    .line 256
    .line 257
    .line 258
    move-result v15

    .line 259
    invoke-static {v15}, Lorg/schabi/newpipe/util/ServiceHelper;->getNameOfServiceById(I)Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v15

    .line 263
    filled-new-array {v10, v15}, [Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v10

    .line 267
    invoke-static {v10}, Lorg/schabi/newpipe/util/Localization;->concatenateStrings([Ljava/lang/String;)Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v10

    .line 271
    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 272
    .line 273
    .line 274
    invoke-virtual {v14}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getDuration()J

    .line 275
    .line 276
    .line 277
    move-result-wide v9

    .line 278
    cmp-long v9, v9, v18

    .line 279
    .line 280
    if-lez v9, :cond_6

    .line 281
    .line 282
    invoke-virtual {v14}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getDuration()J

    .line 283
    .line 284
    .line 285
    move-result-wide v9

    .line 286
    invoke-static {v9, v10}, Lorg/schabi/newpipe/util/Localization;->getDurationString(J)Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object v9

    .line 290
    invoke-virtual {v12, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 291
    .line 292
    .line 293
    iget-object v6, v6, Lorg/jsoup/parser/TokenData;->value:Ljava/lang/Object;

    .line 294
    .line 295
    check-cast v6, Landroid/content/Context;

    .line 296
    .line 297
    invoke-virtual {v6, v8}, Landroid/content/Context;->getColor(I)I

    .line 298
    .line 299
    .line 300
    move-result v6

    .line 301
    invoke-virtual {v12, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 302
    .line 303
    .line 304
    invoke-virtual {v12, v7}, Landroid/view/View;->setVisibility(I)V

    .line 305
    .line 306
    .line 307
    invoke-virtual {v11}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 308
    .line 309
    .line 310
    move-result-object v6

    .line 311
    invoke-static {v6}, Landroidx/core/os/BundleKt;->getPositionsInListsEnabled(Landroid/content/Context;)Z

    .line 312
    .line 313
    .line 314
    move-result v6

    .line 315
    if-eqz v6, :cond_5

    .line 316
    .line 317
    cmp-long v6, v2, v18

    .line 318
    .line 319
    if-lez v6, :cond_5

    .line 320
    .line 321
    invoke-virtual {v11, v7}, Landroid/view/View;->setVisibility(I)V

    .line 322
    .line 323
    .line 324
    invoke-virtual {v14}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getDuration()J

    .line 325
    .line 326
    .line 327
    move-result-wide v6

    .line 328
    long-to-int v6, v6

    .line 329
    invoke-virtual {v11, v6}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 330
    .line 331
    .line 332
    div-long v2, v2, v16

    .line 333
    .line 334
    long-to-int v2, v2

    .line 335
    invoke-virtual {v11, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 336
    .line 337
    .line 338
    goto :goto_2

    .line 339
    :cond_5
    invoke-virtual {v11, v13}, Landroid/view/View;->setVisibility(I)V

    .line 340
    .line 341
    .line 342
    goto :goto_2

    .line 343
    :cond_6
    invoke-virtual {v12, v13}, Landroid/view/View;->setVisibility(I)V

    .line 344
    .line 345
    .line 346
    :goto_2
    invoke-virtual {v14}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getThumbnailUrl()Ljava/lang/String;

    .line 347
    .line 348
    .line 349
    move-result-object v2

    .line 350
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 351
    .line 352
    .line 353
    const v3, 0x7f0801b8

    .line 354
    .line 355
    .line 356
    const/4 v6, 0x1

    .line 357
    invoke-static {v4, v2, v3, v6}, Lokhttp3/Cookie$Companion;->loadImageDefault(Landroid/widget/ImageView;Ljava/lang/String;IZ)V

    .line 358
    .line 359
    .line 360
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 361
    .line 362
    new-instance v3, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda42;

    .line 363
    .line 364
    const/16 v4, 0x9

    .line 365
    .line 366
    invoke-direct {v3, v0, v1, v4}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda42;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 367
    .line 368
    .line 369
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 370
    .line 371
    .line 372
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 373
    .line 374
    invoke-virtual {v2, v6}, Landroid/view/View;->setLongClickable(Z)V

    .line 375
    .line 376
    .line 377
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 378
    .line 379
    new-instance v3, Lorg/schabi/newpipe/local/holder/PlaylistItemHolder$$ExternalSyntheticLambda1;

    .line 380
    .line 381
    const/4 v4, 0x5

    .line 382
    invoke-direct {v3, v0, v1, v4}, Lorg/schabi/newpipe/local/holder/PlaylistItemHolder$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 383
    .line 384
    .line 385
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 386
    .line 387
    .line 388
    new-instance v2, Lorg/schabi/newpipe/player/playqueue/PlayQueueItemBuilder$$ExternalSyntheticLambda2;

    .line 389
    .line 390
    const/4 v3, 0x2

    .line 391
    invoke-direct {v2, v0, v1, v3}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItemBuilder$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 392
    .line 393
    .line 394
    invoke-virtual {v5, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 395
    .line 396
    .line 397
    :goto_3
    return-void

    .line 398
    nop

    .line 399
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final updateState(Lorg/schabi/newpipe/database/LocalItem;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget v2, v0, Lorg/schabi/newpipe/local/holder/LocalPlaylistStreamItemHolder;->$r8$classId:I

    .line 6
    .line 7
    const-wide/16 v3, 0x0

    .line 8
    .line 9
    const-wide/16 v5, 0x3e8

    .line 10
    .line 11
    packed-switch v2, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    instance-of v2, v1, Lorg/schabi/newpipe/database/stream/StreamStatisticsEntry;

    .line 15
    .line 16
    if-nez v2, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    check-cast v1, Lorg/schabi/newpipe/database/stream/StreamStatisticsEntry;

    .line 20
    .line 21
    iget-object v2, v1, Lorg/schabi/newpipe/database/stream/StreamStatisticsEntry;->streamEntity:Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    .line 22
    .line 23
    iget-wide v7, v1, Lorg/schabi/newpipe/database/stream/StreamStatisticsEntry;->progressMillis:J

    .line 24
    .line 25
    iget-object v9, v0, Lorg/schabi/newpipe/local/holder/LocalPlaylistStreamItemHolder;->itemProgressView:Lorg/schabi/newpipe/views/AnimatedProgressBar;

    .line 26
    .line 27
    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-static {v0}, Landroidx/core/os/BundleKt;->getPositionsInListsEnabled(Landroid/content/Context;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    const-wide/16 v11, 0x1f4

    .line 36
    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    cmp-long v0, v7, v3

    .line 40
    .line 41
    if-lez v0, :cond_2

    .line 42
    .line 43
    invoke-virtual {v2}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getDuration()J

    .line 44
    .line 45
    .line 46
    move-result-wide v0

    .line 47
    cmp-long v0, v0, v3

    .line 48
    .line 49
    if-lez v0, :cond_2

    .line 50
    .line 51
    invoke-virtual {v2}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getDuration()J

    .line 52
    .line 53
    .line 54
    move-result-wide v0

    .line 55
    long-to-int v0, v0

    .line 56
    invoke-virtual {v9, v0}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-nez v0, :cond_1

    .line 64
    .line 65
    div-long/2addr v7, v5

    .line 66
    long-to-int v0, v7

    .line 67
    invoke-virtual {v9, v0}, Lorg/schabi/newpipe/views/AnimatedProgressBar;->setProgressAnimated(I)V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_1
    div-long/2addr v7, v5

    .line 72
    long-to-int v0, v7

    .line 73
    invoke-virtual {v9, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 74
    .line 75
    .line 76
    const/16 v16, 0x0

    .line 77
    .line 78
    const/16 v17, 0x1c

    .line 79
    .line 80
    const/4 v10, 0x1

    .line 81
    const/4 v13, 0x0

    .line 82
    const-wide/16 v14, 0x0

    .line 83
    .line 84
    invoke-static/range {v9 .. v17}, Lnet/newpipe/app/AppKt;->animate$default(Landroid/view/View;ZJLorg/schabi/newpipe/ktx/AnimationType;JLorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda13;I)V

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_2
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    if-nez v0, :cond_3

    .line 93
    .line 94
    const/16 v16, 0x0

    .line 95
    .line 96
    const/16 v17, 0x1c

    .line 97
    .line 98
    const/4 v10, 0x0

    .line 99
    const/4 v13, 0x0

    .line 100
    const-wide/16 v14, 0x0

    .line 101
    .line 102
    invoke-static/range {v9 .. v17}, Lnet/newpipe/app/AppKt;->animate$default(Landroid/view/View;ZJLorg/schabi/newpipe/ktx/AnimationType;JLorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda13;I)V

    .line 103
    .line 104
    .line 105
    :cond_3
    :goto_0
    return-void

    .line 106
    :pswitch_0
    instance-of v2, v1, Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;

    .line 107
    .line 108
    if-nez v2, :cond_4

    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_4
    check-cast v1, Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;

    .line 112
    .line 113
    iget-object v2, v1, Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;->streamEntity:Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    .line 114
    .line 115
    iget-wide v7, v1, Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;->progressMillis:J

    .line 116
    .line 117
    iget-object v9, v0, Lorg/schabi/newpipe/local/holder/LocalPlaylistStreamItemHolder;->itemProgressView:Lorg/schabi/newpipe/views/AnimatedProgressBar;

    .line 118
    .line 119
    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    invoke-static {v0}, Landroidx/core/os/BundleKt;->getPositionsInListsEnabled(Landroid/content/Context;)Z

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    const-wide/16 v11, 0x1f4

    .line 128
    .line 129
    if-eqz v0, :cond_6

    .line 130
    .line 131
    cmp-long v0, v7, v3

    .line 132
    .line 133
    if-lez v0, :cond_6

    .line 134
    .line 135
    invoke-virtual {v2}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getDuration()J

    .line 136
    .line 137
    .line 138
    move-result-wide v0

    .line 139
    cmp-long v0, v0, v3

    .line 140
    .line 141
    if-lez v0, :cond_6

    .line 142
    .line 143
    invoke-virtual {v2}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getDuration()J

    .line 144
    .line 145
    .line 146
    move-result-wide v0

    .line 147
    long-to-int v0, v0

    .line 148
    invoke-virtual {v9, v0}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    .line 152
    .line 153
    .line 154
    move-result v0

    .line 155
    if-nez v0, :cond_5

    .line 156
    .line 157
    div-long/2addr v7, v5

    .line 158
    long-to-int v0, v7

    .line 159
    invoke-virtual {v9, v0}, Lorg/schabi/newpipe/views/AnimatedProgressBar;->setProgressAnimated(I)V

    .line 160
    .line 161
    .line 162
    goto :goto_1

    .line 163
    :cond_5
    div-long/2addr v7, v5

    .line 164
    long-to-int v0, v7

    .line 165
    invoke-virtual {v9, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 166
    .line 167
    .line 168
    const/16 v16, 0x0

    .line 169
    .line 170
    const/16 v17, 0x1c

    .line 171
    .line 172
    const/4 v10, 0x1

    .line 173
    const/4 v13, 0x0

    .line 174
    const-wide/16 v14, 0x0

    .line 175
    .line 176
    invoke-static/range {v9 .. v17}, Lnet/newpipe/app/AppKt;->animate$default(Landroid/view/View;ZJLorg/schabi/newpipe/ktx/AnimationType;JLorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda13;I)V

    .line 177
    .line 178
    .line 179
    goto :goto_1

    .line 180
    :cond_6
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    .line 181
    .line 182
    .line 183
    move-result v0

    .line 184
    if-nez v0, :cond_7

    .line 185
    .line 186
    const/16 v16, 0x0

    .line 187
    .line 188
    const/16 v17, 0x1c

    .line 189
    .line 190
    const/4 v10, 0x0

    .line 191
    const/4 v13, 0x0

    .line 192
    const-wide/16 v14, 0x0

    .line 193
    .line 194
    invoke-static/range {v9 .. v17}, Lnet/newpipe/app/AppKt;->animate$default(Landroid/view/View;ZJLorg/schabi/newpipe/ktx/AnimationType;JLorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda13;I)V

    .line 195
    .line 196
    .line 197
    :cond_7
    :goto_1
    return-void

    .line 198
    nop

    .line 199
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
