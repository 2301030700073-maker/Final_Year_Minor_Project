.class public Lorg/schabi/newpipe/local/holder/LocalPlaylistItemHolder;
.super Lorg/schabi/newpipe/local/holder/LocalItemHolder;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final synthetic $r8$classId:I

.field public final itemStreamCountView:Landroid/widget/TextView;

.field public final itemThumbnailView:Landroid/widget/ImageView;

.field public final itemTitleView:Landroid/widget/TextView;

.field public final itemUploaderView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lorg/jsoup/parser/TokenData;ILandroid/view/ViewGroup;I)V
    .locals 0

    .line 1
    iput p4, p0, Lorg/schabi/newpipe/local/holder/LocalPlaylistItemHolder;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0, p1, p2, p3}, Lorg/schabi/newpipe/local/holder/LocalItemHolder;-><init>(Lorg/jsoup/parser/TokenData;ILandroid/view/ViewGroup;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 7
    .line 8
    const p2, 0x7f0a01f1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Landroid/widget/ImageView;

    .line 16
    .line 17
    iput-object p1, p0, Lorg/schabi/newpipe/local/holder/LocalPlaylistItemHolder;->itemThumbnailView:Landroid/widget/ImageView;

    .line 18
    .line 19
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 20
    .line 21
    const p2, 0x7f0a01f2

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Landroid/widget/TextView;

    .line 29
    .line 30
    iput-object p1, p0, Lorg/schabi/newpipe/local/holder/LocalPlaylistItemHolder;->itemTitleView:Landroid/widget/TextView;

    .line 31
    .line 32
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 33
    .line 34
    const p2, 0x7f0a01f0

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    check-cast p1, Landroid/widget/TextView;

    .line 42
    .line 43
    iput-object p1, p0, Lorg/schabi/newpipe/local/holder/LocalPlaylistItemHolder;->itemStreamCountView:Landroid/widget/TextView;

    .line 44
    .line 45
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 46
    .line 47
    const p2, 0x7f0a01f3

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    check-cast p1, Landroid/widget/TextView;

    .line 55
    .line 56
    iput-object p1, p0, Lorg/schabi/newpipe/local/holder/LocalPlaylistItemHolder;->itemUploaderView:Landroid/widget/TextView;

    .line 57
    .line 58
    return-void
.end method


# virtual methods
.method public updateFromItem(Lorg/schabi/newpipe/database/LocalItem;Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;Lj$/time/format/DateTimeFormatter;)V
    .locals 11

    .line 1
    iget p2, p0, Lorg/schabi/newpipe/local/holder/LocalPlaylistItemHolder;->$r8$classId:I

    .line 2
    .line 3
    const/4 p3, 0x0

    .line 4
    const/16 v0, 0xb

    .line 5
    .line 6
    const v1, 0x7f0801b7

    .line 7
    .line 8
    .line 9
    iget-object v2, p0, Lorg/schabi/newpipe/local/holder/LocalPlaylistItemHolder;->itemThumbnailView:Landroid/widget/ImageView;

    .line 10
    .line 11
    iget-object v3, p0, Lorg/schabi/newpipe/local/holder/LocalPlaylistItemHolder;->itemUploaderView:Landroid/widget/TextView;

    .line 12
    .line 13
    iget-object v4, p0, Lorg/schabi/newpipe/local/holder/LocalPlaylistItemHolder;->itemStreamCountView:Landroid/widget/TextView;

    .line 14
    .line 15
    iget-object v5, p0, Lorg/schabi/newpipe/local/holder/LocalPlaylistItemHolder;->itemTitleView:Landroid/widget/TextView;

    .line 16
    .line 17
    const/4 v6, 0x1

    .line 18
    packed-switch p2, :pswitch_data_0

    .line 19
    .line 20
    .line 21
    instance-of p2, p1, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;

    .line 22
    .line 23
    if-eqz p2, :cond_1

    .line 24
    .line 25
    move-object p2, p1

    .line 26
    check-cast p2, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;

    .line 27
    .line 28
    iget v7, p2, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;->serviceId:I

    .line 29
    .line 30
    iget-object v8, p2, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;->uploader:Ljava/lang/String;

    .line 31
    .line 32
    iget-object v9, p2, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;->orderingName:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    iget-object v9, p2, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;->streamCount:Ljava/lang/Long;

    .line 42
    .line 43
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    .line 44
    .line 45
    .line 46
    move-result-wide v9

    .line 47
    invoke-static {v5, v9, v10}, Lorg/schabi/newpipe/util/Localization;->localizeStreamCountMini(Landroid/content/Context;J)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    .line 53
    .line 54
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    if-nez v4, :cond_0

    .line 59
    .line 60
    invoke-static {v7}, Lorg/schabi/newpipe/util/ServiceHelper;->getNameOfServiceById(I)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    filled-new-array {v8, v4}, [Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    invoke-static {v4}, Lorg/schabi/newpipe/util/Localization;->concatenateStrings([Ljava/lang/String;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_0
    invoke-static {v7}, Lorg/schabi/newpipe/util/ServiceHelper;->getNameOfServiceById(I)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    .line 82
    .line 83
    :goto_0
    iget-object p2, p2, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;->thumbnailUrl:Ljava/lang/String;

    .line 84
    .line 85
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 86
    .line 87
    .line 88
    invoke-static {v2, p2, v1, v6}, Lokhttp3/Cookie$Companion;->loadImageDefault(Landroid/widget/ImageView;Ljava/lang/String;IZ)V

    .line 89
    .line 90
    .line 91
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 92
    .line 93
    new-instance v1, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda42;

    .line 94
    .line 95
    invoke-direct {v1, p0, p1, v0}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda42;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    .line 100
    .line 101
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 102
    .line 103
    invoke-virtual {p2, v6}, Landroid/view/View;->setLongClickable(Z)V

    .line 104
    .line 105
    .line 106
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 107
    .line 108
    new-instance v0, Lorg/schabi/newpipe/local/holder/PlaylistItemHolder$$ExternalSyntheticLambda1;

    .line 109
    .line 110
    invoke-direct {v0, p0, p1, p3}, Lorg/schabi/newpipe/local/holder/PlaylistItemHolder$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 114
    .line 115
    .line 116
    :cond_1
    return-void

    .line 117
    :pswitch_0
    instance-of p2, p1, Lorg/schabi/newpipe/database/playlist/PlaylistMetadataEntry;

    .line 118
    .line 119
    if-eqz p2, :cond_3

    .line 120
    .line 121
    move-object p2, p1

    .line 122
    check-cast p2, Lorg/schabi/newpipe/database/playlist/PlaylistMetadataEntry;

    .line 123
    .line 124
    invoke-virtual {p2}, Lorg/schabi/newpipe/database/playlist/PlaylistMetadataEntry;->getOrderingName()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v7

    .line 128
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 132
    .line 133
    .line 134
    move-result-object v5

    .line 135
    invoke-virtual {p2}, Lorg/schabi/newpipe/database/playlist/PlaylistMetadataEntry;->getStreamCount()J

    .line 136
    .line 137
    .line 138
    move-result-wide v7

    .line 139
    invoke-static {v5, v7, v8}, Lorg/schabi/newpipe/util/Localization;->localizeStreamCountMini(Landroid/content/Context;J)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v5

    .line 143
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    .line 145
    .line 146
    const/4 v4, 0x4

    .line 147
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {p2}, Lorg/schabi/newpipe/database/playlist/PlaylistMetadataEntry;->getThumbnailUrl()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v3

    .line 154
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 155
    .line 156
    .line 157
    invoke-static {v2, v3, v1, v6}, Lokhttp3/Cookie$Companion;->loadImageDefault(Landroid/widget/ImageView;Ljava/lang/String;IZ)V

    .line 158
    .line 159
    .line 160
    instance-of v1, p2, Lorg/schabi/newpipe/database/playlist/PlaylistDuplicatesEntry;

    .line 161
    .line 162
    if-eqz v1, :cond_2

    .line 163
    .line 164
    check-cast p2, Lorg/schabi/newpipe/database/playlist/PlaylistDuplicatesEntry;

    .line 165
    .line 166
    iget-wide v1, p2, Lorg/schabi/newpipe/database/playlist/PlaylistDuplicatesEntry;->timesStreamIsContained:J

    .line 167
    .line 168
    const-wide/16 v3, 0x0

    .line 169
    .line 170
    cmp-long p2, v1, v3

    .line 171
    .line 172
    if-lez p2, :cond_2

    .line 173
    .line 174
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 175
    .line 176
    const v1, 0x3f19999a    # 0.6f

    .line 177
    .line 178
    .line 179
    invoke-virtual {p2, v1}, Landroid/view/View;->setAlpha(F)V

    .line 180
    .line 181
    .line 182
    goto :goto_1

    .line 183
    :cond_2
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 184
    .line 185
    const/high16 v1, 0x3f800000    # 1.0f

    .line 186
    .line 187
    invoke-virtual {p2, v1}, Landroid/view/View;->setAlpha(F)V

    .line 188
    .line 189
    .line 190
    :goto_1
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 191
    .line 192
    new-instance v1, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda42;

    .line 193
    .line 194
    invoke-direct {v1, p0, p1, v0}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda42;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    .line 199
    .line 200
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 201
    .line 202
    invoke-virtual {p2, v6}, Landroid/view/View;->setLongClickable(Z)V

    .line 203
    .line 204
    .line 205
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 206
    .line 207
    new-instance v0, Lorg/schabi/newpipe/local/holder/PlaylistItemHolder$$ExternalSyntheticLambda1;

    .line 208
    .line 209
    invoke-direct {v0, p0, p1, p3}, Lorg/schabi/newpipe/local/holder/PlaylistItemHolder$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 213
    .line 214
    .line 215
    :cond_3
    return-void

    .line 216
    nop

    .line 217
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
