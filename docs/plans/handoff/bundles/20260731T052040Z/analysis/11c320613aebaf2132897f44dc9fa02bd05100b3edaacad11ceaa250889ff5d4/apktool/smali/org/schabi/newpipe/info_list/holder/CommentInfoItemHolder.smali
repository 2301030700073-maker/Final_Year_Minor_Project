.class public final Lorg/schabi/newpipe/info_list/holder/CommentInfoItemHolder;
.super Lorg/schabi/newpipe/info_list/holder/InfoItemHolder;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final commentHorizontalPadding:I

.field public final commentVerticalPadding:I

.field public final itemContentView:Landroid/widget/TextView;

.field public final itemHeartView:Landroid/widget/ImageView;

.field public final itemLikesCountView:Landroid/widget/TextView;

.field public final itemPinnedView:Landroid/widget/ImageView;

.field public final itemRoot:Landroid/widget/RelativeLayout;

.field public final itemThumbnailView:Landroid/widget/ImageView;

.field public final itemThumbsUpView:Landroid/widget/ImageView;

.field public final itemTitleView:Landroid/widget/TextView;

.field public final repliesButton:Landroid/widget/Button;

.field public final textEllipsizer:Lorg/schabi/newpipe/util/text/TextEllipsizer;


# direct methods
.method public constructor <init>(Lcoil3/ComponentRegistry$Builder;Landroid/view/ViewGroup;)V
    .locals 2

    .line 1
    const v0, 0x7f0d0078

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, v0, p2}, Lorg/schabi/newpipe/info_list/holder/InfoItemHolder;-><init>(Lcoil3/ComponentRegistry$Builder;ILandroid/view/ViewGroup;)V

    .line 5
    .line 6
    .line 7
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 8
    .line 9
    const v0, 0x7f0a01ef

    .line 10
    .line 11
    .line 12
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    check-cast p2, Landroid/widget/RelativeLayout;

    .line 17
    .line 18
    iput-object p2, p0, Lorg/schabi/newpipe/info_list/holder/CommentInfoItemHolder;->itemRoot:Landroid/widget/RelativeLayout;

    .line 19
    .line 20
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 21
    .line 22
    const v0, 0x7f0a01f1

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    check-cast p2, Landroid/widget/ImageView;

    .line 30
    .line 31
    iput-object p2, p0, Lorg/schabi/newpipe/info_list/holder/CommentInfoItemHolder;->itemThumbnailView:Landroid/widget/ImageView;

    .line 32
    .line 33
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 34
    .line 35
    const v0, 0x7f0a01eb

    .line 36
    .line 37
    .line 38
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    check-cast p2, Landroid/widget/TextView;

    .line 43
    .line 44
    iput-object p2, p0, Lorg/schabi/newpipe/info_list/holder/CommentInfoItemHolder;->itemContentView:Landroid/widget/TextView;

    .line 45
    .line 46
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 47
    .line 48
    const v1, 0x7f0a0114

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    check-cast v0, Landroid/widget/ImageView;

    .line 56
    .line 57
    iput-object v0, p0, Lorg/schabi/newpipe/info_list/holder/CommentInfoItemHolder;->itemThumbsUpView:Landroid/widget/ImageView;

    .line 58
    .line 59
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 60
    .line 61
    const v1, 0x7f0a0113

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    check-cast v0, Landroid/widget/TextView;

    .line 69
    .line 70
    iput-object v0, p0, Lorg/schabi/newpipe/info_list/holder/CommentInfoItemHolder;->itemLikesCountView:Landroid/widget/TextView;

    .line 71
    .line 72
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 73
    .line 74
    const v1, 0x7f0a01f2

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    check-cast v0, Landroid/widget/TextView;

    .line 82
    .line 83
    iput-object v0, p0, Lorg/schabi/newpipe/info_list/holder/CommentInfoItemHolder;->itemTitleView:Landroid/widget/TextView;

    .line 84
    .line 85
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 86
    .line 87
    const v1, 0x7f0a0101

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    check-cast v0, Landroid/widget/ImageView;

    .line 95
    .line 96
    iput-object v0, p0, Lorg/schabi/newpipe/info_list/holder/CommentInfoItemHolder;->itemHeartView:Landroid/widget/ImageView;

    .line 97
    .line 98
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 99
    .line 100
    const v1, 0x7f0a0106

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    check-cast v0, Landroid/widget/ImageView;

    .line 108
    .line 109
    iput-object v0, p0, Lorg/schabi/newpipe/info_list/holder/CommentInfoItemHolder;->itemPinnedView:Landroid/widget/ImageView;

    .line 110
    .line 111
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 112
    .line 113
    const v1, 0x7f0a0332

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    check-cast v0, Landroid/widget/Button;

    .line 121
    .line 122
    iput-object v0, p0, Lorg/schabi/newpipe/info_list/holder/CommentInfoItemHolder;->repliesButton:Landroid/widget/Button;

    .line 123
    .line 124
    iget-object p1, p1, Lcoil3/ComponentRegistry$Builder;->interceptors:Ljava/lang/Object;

    .line 125
    .line 126
    check-cast p1, Landroid/content/Context;

    .line 127
    .line 128
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    const v1, 0x7f070066

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    float-to-int v0, v0

    .line 140
    iput v0, p0, Lorg/schabi/newpipe/info_list/holder/CommentInfoItemHolder;->commentHorizontalPadding:I

    .line 141
    .line 142
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    const v0, 0x7f070067

    .line 147
    .line 148
    .line 149
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    .line 150
    .line 151
    .line 152
    move-result p1

    .line 153
    float-to-int p1, p1

    .line 154
    iput p1, p0, Lorg/schabi/newpipe/info_list/holder/CommentInfoItemHolder;->commentVerticalPadding:I

    .line 155
    .line 156
    new-instance p1, Lorg/schabi/newpipe/util/text/TextEllipsizer;

    .line 157
    .line 158
    const/4 v0, 0x2

    .line 159
    const/4 v1, 0x0

    .line 160
    invoke-direct {p1, p2, v0, v1}, Lorg/schabi/newpipe/util/text/TextEllipsizer;-><init>(Landroid/widget/TextView;ILorg/schabi/newpipe/extractor/StreamingService;)V

    .line 161
    .line 162
    .line 163
    iput-object p1, p0, Lorg/schabi/newpipe/info_list/holder/CommentInfoItemHolder;->textEllipsizer:Lorg/schabi/newpipe/util/text/TextEllipsizer;

    .line 164
    .line 165
    new-instance p2, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda1;

    .line 166
    .line 167
    const/16 v0, 0xa

    .line 168
    .line 169
    invoke-direct {p2, p0, v0}, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;I)V

    .line 170
    .line 171
    .line 172
    iput-object p2, p1, Lorg/schabi/newpipe/util/text/TextEllipsizer;->stateChangeListener:Ljava/util/function/Consumer;

    .line 173
    .line 174
    return-void
.end method


# virtual methods
.method public final updateFromItem(Lorg/schabi/newpipe/extractor/InfoItem;Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    instance-of v2, v1, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;

    .line 6
    .line 7
    if-eqz v2, :cond_a

    .line 8
    .line 9
    check-cast v1, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;

    .line 10
    .line 11
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->getUploaderAvatars()Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    iget-object v3, v0, Lorg/schabi/newpipe/info_list/holder/CommentInfoItemHolder;->itemThumbnailView:Landroid/widget/ImageView;

    .line 16
    .line 17
    invoke-static {v3, v2}, Lokhttp3/Cookie$Companion;->loadAvatar(Landroid/widget/ImageView;Ljava/util/List;)V

    .line 18
    .line 19
    .line 20
    invoke-static {}, Lorg/schabi/newpipe/util/image/ImageStrategy;->shouldLoadImages()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    iget v4, v0, Lorg/schabi/newpipe/info_list/holder/CommentInfoItemHolder;->commentVerticalPadding:I

    .line 25
    .line 26
    iget-object v5, v0, Lorg/schabi/newpipe/info_list/holder/CommentInfoItemHolder;->itemRoot:Landroid/widget/RelativeLayout;

    .line 27
    .line 28
    const/16 v6, 0x8

    .line 29
    .line 30
    const/4 v7, 0x0

    .line 31
    if-eqz v2, :cond_0

    .line 32
    .line 33
    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v5, v4, v4, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 41
    .line 42
    .line 43
    iget v2, v0, Lorg/schabi/newpipe/info_list/holder/CommentInfoItemHolder;->commentHorizontalPadding:I

    .line 44
    .line 45
    invoke-virtual {v5, v2, v4, v2, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 46
    .line 47
    .line 48
    :goto_0
    new-instance v2, Lorg/schabi/newpipe/info_list/holder/CommentInfoItemHolder$$ExternalSyntheticLambda1;

    .line 49
    .line 50
    invoke-direct {v2, v0, v1, v7}, Lorg/schabi/newpipe/info_list/holder/CommentInfoItemHolder$$ExternalSyntheticLambda1;-><init>(Lorg/schabi/newpipe/info_list/holder/CommentInfoItemHolder;Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;I)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v3, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->isPinned()Z

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    if-eqz v2, :cond_1

    .line 61
    .line 62
    move v2, v7

    .line 63
    goto :goto_1

    .line 64
    :cond_1
    move v2, v6

    .line 65
    :goto_1
    iget-object v3, v0, Lorg/schabi/newpipe/info_list/holder/CommentInfoItemHolder;->itemPinnedView:Landroid/widget/ImageView;

    .line 66
    .line 67
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->getUploaderName()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    sget-object v3, Lorg/schabi/newpipe/util/Localization;->TAG:Ljava/lang/String;

    .line 75
    .line 76
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    invoke-virtual {v3, v2}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    iget-object v3, v0, Lorg/schabi/newpipe/info_list/holder/InfoItemHolder;->itemBuilder:Lcoil3/ComponentRegistry$Builder;

    .line 85
    .line 86
    iget-object v4, v3, Lcoil3/ComponentRegistry$Builder;->interceptors:Ljava/lang/Object;

    .line 87
    .line 88
    iget-object v4, v3, Lcoil3/ComponentRegistry$Builder;->interceptors:Ljava/lang/Object;

    .line 89
    .line 90
    check-cast v4, Landroid/content/Context;

    .line 91
    .line 92
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->getUploadDate()Lorg/schabi/newpipe/extractor/localization/DateWrapper;

    .line 93
    .line 94
    .line 95
    move-result-object v5

    .line 96
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->getTextualUploadDate()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v8

    .line 100
    if-nez v5, :cond_2

    .line 101
    .line 102
    goto :goto_2

    .line 103
    :cond_2
    sget v8, Lorg/schabi/newpipe/MainActivity;->$r8$clinit:I

    .line 104
    .line 105
    invoke-virtual {v5}, Lorg/schabi/newpipe/extractor/localization/DateWrapper;->offsetDateTime()Lj$/time/OffsetDateTime;

    .line 106
    .line 107
    .line 108
    move-result-object v5

    .line 109
    sget-object v8, Lorg/schabi/newpipe/util/Localization;->prettyTime:Lorg/ocpsoft/prettytime/PrettyTime;

    .line 110
    .line 111
    invoke-virtual {v8, v5}, Lorg/ocpsoft/prettytime/PrettyTime;->formatUnrounded(Lj$/time/OffsetDateTime;)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v8

    .line 115
    :goto_2
    filled-new-array {v2, v8}, [Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    invoke-static {v2}, Lorg/schabi/newpipe/util/Localization;->concatenateStrings([Ljava/lang/String;)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    iget-object v5, v0, Lorg/schabi/newpipe/info_list/holder/CommentInfoItemHolder;->itemTitleView:Landroid/widget/TextView;

    .line 124
    .line 125
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->getLikeCount()I

    .line 129
    .line 130
    .line 131
    move-result v2

    .line 132
    if-gez v2, :cond_3

    .line 133
    .line 134
    const-string v2, "-"

    .line 135
    .line 136
    goto :goto_3

    .line 137
    :cond_3
    int-to-long v8, v2

    .line 138
    invoke-static {v4, v8, v9}, Lorg/schabi/newpipe/util/Localization;->shortCount(Landroid/content/Context;J)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    :goto_3
    iget-object v5, v0, Lorg/schabi/newpipe/info_list/holder/CommentInfoItemHolder;->itemLikesCountView:Landroid/widget/TextView;

    .line 143
    .line 144
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->isHeartedByUploader()Z

    .line 148
    .line 149
    .line 150
    move-result v2

    .line 151
    if-eqz v2, :cond_4

    .line 152
    .line 153
    move v2, v7

    .line 154
    goto :goto_4

    .line 155
    :cond_4
    move v2, v6

    .line 156
    :goto_4
    iget-object v5, v0, Lorg/schabi/newpipe/info_list/holder/CommentInfoItemHolder;->itemHeartView:Landroid/widget/ImageView;

    .line 157
    .line 158
    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->getReplies()Lorg/schabi/newpipe/extractor/Page;

    .line 162
    .line 163
    .line 164
    move-result-object v2

    .line 165
    const/4 v5, 0x1

    .line 166
    if-eqz v2, :cond_5

    .line 167
    .line 168
    move v2, v5

    .line 169
    goto :goto_5

    .line 170
    :cond_5
    move v2, v7

    .line 171
    :goto_5
    const/4 v8, 0x0

    .line 172
    if-eqz v2, :cond_6

    .line 173
    .line 174
    new-instance v9, Lorg/schabi/newpipe/info_list/holder/CommentInfoItemHolder$$ExternalSyntheticLambda1;

    .line 175
    .line 176
    invoke-direct {v9, v0, v1, v5}, Lorg/schabi/newpipe/info_list/holder/CommentInfoItemHolder$$ExternalSyntheticLambda1;-><init>(Lorg/schabi/newpipe/info_list/holder/CommentInfoItemHolder;Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;I)V

    .line 177
    .line 178
    .line 179
    goto :goto_6

    .line 180
    :cond_6
    move-object v9, v8

    .line 181
    :goto_6
    iget-object v10, v0, Lorg/schabi/newpipe/info_list/holder/CommentInfoItemHolder;->repliesButton:Landroid/widget/Button;

    .line 182
    .line 183
    invoke-virtual {v10, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    .line 185
    .line 186
    if-eqz v2, :cond_7

    .line 187
    .line 188
    move v6, v7

    .line 189
    :cond_7
    invoke-virtual {v10, v6}, Landroid/view/View;->setVisibility(I)V

    .line 190
    .line 191
    .line 192
    if-eqz v2, :cond_8

    .line 193
    .line 194
    iget-object v3, v3, Lcoil3/ComponentRegistry$Builder;->interceptors:Ljava/lang/Object;

    .line 195
    .line 196
    move-object v11, v3

    .line 197
    check-cast v11, Landroid/content/Context;

    .line 198
    .line 199
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->getReplyCount()I

    .line 200
    .line 201
    .line 202
    move-result v3

    .line 203
    int-to-long v14, v3

    .line 204
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v16

    .line 208
    const v12, 0x7f11000e

    .line 209
    .line 210
    .line 211
    const/4 v13, 0x0

    .line 212
    invoke-static/range {v11 .. v16}, Lorg/schabi/newpipe/util/Localization;->getQuantity(Landroid/content/Context;IIJLjava/lang/String;)Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v3

    .line 216
    goto :goto_7

    .line 217
    :cond_8
    const-string v3, ""

    .line 218
    .line 219
    :goto_7
    invoke-virtual {v10, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 220
    .line 221
    .line 222
    iget-object v3, v0, Lorg/schabi/newpipe/info_list/holder/CommentInfoItemHolder;->itemThumbsUpView:Landroid/widget/ImageView;

    .line 223
    .line 224
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 225
    .line 226
    .line 227
    move-result-object v3

    .line 228
    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 229
    .line 230
    if-eqz v2, :cond_9

    .line 231
    .line 232
    move v2, v7

    .line 233
    goto :goto_8

    .line 234
    :cond_9
    const/4 v2, 0x6

    .line 235
    invoke-static {v4, v2}, Lorg/schabi/newpipe/util/DeviceUtils;->dpToPx(Landroid/content/Context;I)I

    .line 236
    .line 237
    .line 238
    move-result v2

    .line 239
    :goto_8
    iput v2, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 240
    .line 241
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/InfoItem;->getServiceId()I

    .line 242
    .line 243
    .line 244
    move-result v2

    .line 245
    invoke-static {v2}, Lorg/schabi/newpipe/util/ServiceHelper;->getServiceById(I)Lorg/schabi/newpipe/extractor/StreamingService;

    .line 246
    .line 247
    .line 248
    move-result-object v2

    .line 249
    iget-object v3, v0, Lorg/schabi/newpipe/info_list/holder/CommentInfoItemHolder;->textEllipsizer:Lorg/schabi/newpipe/util/text/TextEllipsizer;

    .line 250
    .line 251
    iput-object v2, v3, Lorg/schabi/newpipe/util/text/TextEllipsizer;->streamingService:Lorg/schabi/newpipe/extractor/StreamingService;

    .line 252
    .line 253
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/InfoItem;->getUrl()Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v2

    .line 257
    iput-object v2, v3, Lorg/schabi/newpipe/util/text/TextEllipsizer;->streamUrl:Ljava/lang/String;

    .line 258
    .line 259
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->getCommentText()Lorg/schabi/newpipe/extractor/stream/Description;

    .line 260
    .line 261
    .line 262
    move-result-object v2

    .line 263
    iput-object v2, v3, Lorg/schabi/newpipe/util/text/TextEllipsizer;->content:Lorg/schabi/newpipe/extractor/stream/Description;

    .line 264
    .line 265
    iput-object v8, v3, Lorg/schabi/newpipe/util/text/TextEllipsizer;->canBeEllipsized:Ljava/lang/Boolean;

    .line 266
    .line 267
    new-instance v2, Lorg/schabi/newpipe/util/text/TextEllipsizer$$ExternalSyntheticLambda0;

    .line 268
    .line 269
    invoke-direct {v2, v3, v5}, Lorg/schabi/newpipe/util/text/TextEllipsizer$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/util/text/TextEllipsizer;I)V

    .line 270
    .line 271
    .line 272
    invoke-virtual {v3, v2}, Lorg/schabi/newpipe/util/text/TextEllipsizer;->linkifyContentView(Ljava/util/function/Consumer;)V

    .line 273
    .line 274
    .line 275
    iget-object v2, v3, Lorg/schabi/newpipe/util/text/TextEllipsizer;->view:Landroid/widget/TextView;

    .line 276
    .line 277
    const v4, 0x7fffffff

    .line 278
    .line 279
    .line 280
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 281
    .line 282
    .line 283
    new-instance v2, Lorg/schabi/newpipe/util/text/TextEllipsizer$$ExternalSyntheticLambda0;

    .line 284
    .line 285
    invoke-direct {v2, v3, v7}, Lorg/schabi/newpipe/util/text/TextEllipsizer$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/util/text/TextEllipsizer;I)V

    .line 286
    .line 287
    .line 288
    invoke-virtual {v3, v2}, Lorg/schabi/newpipe/util/text/TextEllipsizer;->linkifyContentView(Ljava/util/function/Consumer;)V

    .line 289
    .line 290
    .line 291
    new-instance v2, Lorg/schabi/newpipe/info_list/holder/CommentInfoItemHolder$$ExternalSyntheticLambda3;

    .line 292
    .line 293
    invoke-direct {v2, v0, v7}, Lorg/schabi/newpipe/info_list/holder/CommentInfoItemHolder$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Object;I)V

    .line 294
    .line 295
    .line 296
    iget-object v3, v0, Lorg/schabi/newpipe/info_list/holder/CommentInfoItemHolder;->itemContentView:Landroid/widget/TextView;

    .line 297
    .line 298
    invoke-virtual {v3, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 299
    .line 300
    .line 301
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 302
    .line 303
    new-instance v3, Lorg/schabi/newpipe/info_list/holder/CommentInfoItemHolder$$ExternalSyntheticLambda1;

    .line 304
    .line 305
    const/4 v4, 0x2

    .line 306
    invoke-direct {v3, v0, v1, v4}, Lorg/schabi/newpipe/info_list/holder/CommentInfoItemHolder$$ExternalSyntheticLambda1;-><init>(Lorg/schabi/newpipe/info_list/holder/CommentInfoItemHolder;Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;I)V

    .line 307
    .line 308
    .line 309
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 310
    .line 311
    .line 312
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 313
    .line 314
    new-instance v3, Lorg/schabi/newpipe/local/holder/PlaylistItemHolder$$ExternalSyntheticLambda1;

    .line 315
    .line 316
    const/4 v4, 0x3

    .line 317
    invoke-direct {v3, v0, v1, v4}, Lorg/schabi/newpipe/local/holder/PlaylistItemHolder$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 318
    .line 319
    .line 320
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 321
    .line 322
    .line 323
    :cond_a
    return-void
.end method
