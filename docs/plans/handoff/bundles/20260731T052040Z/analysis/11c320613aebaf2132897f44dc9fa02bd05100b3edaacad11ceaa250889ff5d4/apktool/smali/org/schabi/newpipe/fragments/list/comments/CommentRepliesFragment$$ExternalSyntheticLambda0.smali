.class public final synthetic Lorg/schabi/newpipe/fragments/list/comments/CommentRepliesFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/fragments/list/comments/CommentRepliesFragment;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/fragments/list/comments/CommentRepliesFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/schabi/newpipe/fragments/list/comments/CommentRepliesFragment$$ExternalSyntheticLambda0;->f$0:Lorg/schabi/newpipe/fragments/list/comments/CommentRepliesFragment;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 13

    .line 1
    sget v0, Lorg/schabi/newpipe/fragments/list/comments/CommentRepliesFragment;->$r8$clinit:I

    .line 2
    .line 3
    iget-object p0, p0, Lorg/schabi/newpipe/fragments/list/comments/CommentRepliesFragment$$ExternalSyntheticLambda0;->f$0:Lorg/schabi/newpipe/fragments/list/comments/CommentRepliesFragment;

    .line 4
    .line 5
    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->itemsList:Landroidx/recyclerview/widget/RecyclerView;

    .line 12
    .line 13
    const v2, 0x7f0d0024

    .line 14
    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const v1, 0x7f0a0074

    .line 22
    .line 23
    .line 24
    invoke-static {v1, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Lcom/google/android/material/imageview/ShapeableImageView;

    .line 29
    .line 30
    if-eqz v2, :cond_8

    .line 31
    .line 32
    const v1, 0x7f0a0075

    .line 33
    .line 34
    .line 35
    invoke-static {v1, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    check-cast v4, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 40
    .line 41
    if-eqz v4, :cond_8

    .line 42
    .line 43
    const v1, 0x7f0a0076

    .line 44
    .line 45
    .line 46
    invoke-static {v1, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object v5

    .line 50
    if-eqz v5, :cond_8

    .line 51
    .line 52
    const v1, 0x7f0a00c0

    .line 53
    .line 54
    .line 55
    invoke-static {v1, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 56
    .line 57
    .line 58
    move-result-object v6

    .line 59
    move-object v7, v6

    .line 60
    check-cast v7, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 61
    .line 62
    if-eqz v7, :cond_8

    .line 63
    .line 64
    const v1, 0x7f0a01bf

    .line 65
    .line 66
    .line 67
    invoke-static {v1, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 68
    .line 69
    .line 70
    move-result-object v6

    .line 71
    check-cast v6, Landroid/widget/ImageView;

    .line 72
    .line 73
    if-eqz v6, :cond_8

    .line 74
    .line 75
    const v1, 0x7f0a02da

    .line 76
    .line 77
    .line 78
    invoke-static {v1, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 79
    .line 80
    .line 81
    move-result-object v8

    .line 82
    check-cast v8, Landroid/widget/ImageView;

    .line 83
    .line 84
    if-eqz v8, :cond_8

    .line 85
    .line 86
    const v1, 0x7f0a03f4

    .line 87
    .line 88
    .line 89
    invoke-static {v1, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 90
    .line 91
    .line 92
    move-result-object v9

    .line 93
    check-cast v9, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 94
    .line 95
    if-eqz v9, :cond_8

    .line 96
    .line 97
    const v1, 0x7f0a03f5

    .line 98
    .line 99
    .line 100
    invoke-static {v1, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 101
    .line 102
    .line 103
    move-result-object v10

    .line 104
    check-cast v10, Landroid/widget/ImageView;

    .line 105
    .line 106
    if-eqz v10, :cond_8

    .line 107
    .line 108
    const v1, 0x7f0a041b

    .line 109
    .line 110
    .line 111
    invoke-static {v1, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 112
    .line 113
    .line 114
    move-result-object v10

    .line 115
    check-cast v10, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 116
    .line 117
    if-eqz v10, :cond_8

    .line 118
    .line 119
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 120
    .line 121
    iget-object v1, p0, Lorg/schabi/newpipe/fragments/list/comments/CommentRepliesFragment;->commentsInfoItem:Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;

    .line 122
    .line 123
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->getUploaderAvatars()Ljava/util/List;

    .line 124
    .line 125
    .line 126
    move-result-object v11

    .line 127
    invoke-static {v2, v11}, Lokhttp3/Cookie$Companion;->loadAvatar(Landroid/widget/ImageView;Ljava/util/List;)V

    .line 128
    .line 129
    .line 130
    invoke-static {}, Lorg/schabi/newpipe/util/image/ImageStrategy;->shouldLoadImages()Z

    .line 131
    .line 132
    .line 133
    move-result v11

    .line 134
    const/16 v12, 0x8

    .line 135
    .line 136
    if-eqz v11, :cond_0

    .line 137
    .line 138
    move v11, v3

    .line 139
    goto :goto_0

    .line 140
    :cond_0
    move v11, v12

    .line 141
    :goto_0
    invoke-virtual {v2, v11}, Landroid/view/View;->setVisibility(I)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->getUploaderName()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v2

    .line 148
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->getUploadDate()Lorg/schabi/newpipe/extractor/localization/DateWrapper;

    .line 155
    .line 156
    .line 157
    move-result-object v2

    .line 158
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->getTextualUploadDate()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v4

    .line 162
    sget-object v11, Lorg/schabi/newpipe/util/Localization;->TAG:Ljava/lang/String;

    .line 163
    .line 164
    if-nez v2, :cond_1

    .line 165
    .line 166
    goto :goto_1

    .line 167
    :cond_1
    sget v4, Lorg/schabi/newpipe/MainActivity;->$r8$clinit:I

    .line 168
    .line 169
    invoke-virtual {v2}, Lorg/schabi/newpipe/extractor/localization/DateWrapper;->offsetDateTime()Lj$/time/OffsetDateTime;

    .line 170
    .line 171
    .line 172
    move-result-object v2

    .line 173
    sget-object v4, Lorg/schabi/newpipe/util/Localization;->prettyTime:Lorg/ocpsoft/prettytime/PrettyTime;

    .line 174
    .line 175
    invoke-virtual {v4, v2}, Lorg/ocpsoft/prettytime/PrettyTime;->formatUnrounded(Lj$/time/OffsetDateTime;)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v4

    .line 179
    :goto_1
    invoke-virtual {v10, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    .line 181
    .line 182
    new-instance v2, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda42;

    .line 183
    .line 184
    const/4 v4, 0x4

    .line 185
    invoke-direct {v2, p0, v1, v4}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda42;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v5, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 192
    .line 193
    .line 194
    move-result-object v2

    .line 195
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->getLikeCount()I

    .line 196
    .line 197
    .line 198
    move-result v4

    .line 199
    if-gez v4, :cond_2

    .line 200
    .line 201
    const-string v2, "-"

    .line 202
    .line 203
    goto :goto_2

    .line 204
    :cond_2
    int-to-long v4, v4

    .line 205
    invoke-static {v2, v4, v5}, Lorg/schabi/newpipe/util/Localization;->shortCount(Landroid/content/Context;J)Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v2

    .line 209
    :goto_2
    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 213
    .line 214
    .line 215
    move-result-object v2

    .line 216
    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 217
    .line 218
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->isHeartedByUploader()Z

    .line 219
    .line 220
    .line 221
    move-result v4

    .line 222
    if-nez v4, :cond_4

    .line 223
    .line 224
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->isPinned()Z

    .line 225
    .line 226
    .line 227
    move-result v4

    .line 228
    if-eqz v4, :cond_3

    .line 229
    .line 230
    goto :goto_3

    .line 231
    :cond_3
    const/16 v4, 0x10

    .line 232
    .line 233
    goto :goto_4

    .line 234
    :cond_4
    :goto_3
    move v4, v12

    .line 235
    :goto_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 236
    .line 237
    .line 238
    move-result-object v5

    .line 239
    invoke-static {v5, v4}, Lorg/schabi/newpipe/util/DeviceUtils;->dpToPx(Landroid/content/Context;I)I

    .line 240
    .line 241
    .line 242
    move-result v4

    .line 243
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 244
    .line 245
    .line 246
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->isHeartedByUploader()Z

    .line 247
    .line 248
    .line 249
    move-result v2

    .line 250
    if-eqz v2, :cond_5

    .line 251
    .line 252
    move v2, v3

    .line 253
    goto :goto_5

    .line 254
    :cond_5
    move v2, v12

    .line 255
    :goto_5
    invoke-virtual {v6, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 256
    .line 257
    .line 258
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->isPinned()Z

    .line 259
    .line 260
    .line 261
    move-result v2

    .line 262
    if-eqz v2, :cond_6

    .line 263
    .line 264
    move v12, v3

    .line 265
    :cond_6
    invoke-virtual {v8, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 266
    .line 267
    .line 268
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->getCommentText()Lorg/schabi/newpipe/extractor/stream/Description;

    .line 269
    .line 270
    .line 271
    move-result-object v8

    .line 272
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/InfoItem;->getServiceId()I

    .line 273
    .line 274
    .line 275
    move-result v2

    .line 276
    invoke-static {v2}, Lorg/schabi/newpipe/util/ServiceHelper;->getServiceById(I)Lorg/schabi/newpipe/extractor/StreamingService;

    .line 277
    .line 278
    .line 279
    move-result-object v9

    .line 280
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/InfoItem;->getUrl()Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v10

    .line 284
    iget-object v11, p0, Lorg/schabi/newpipe/fragments/list/comments/CommentRepliesFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 285
    .line 286
    const/4 v12, 0x0

    .line 287
    invoke-static/range {v7 .. v12}, Lorg/schabi/newpipe/util/text/TextLinkifier;->fromDescription(Landroid/widget/TextView;Lorg/schabi/newpipe/extractor/stream/Description;Lorg/schabi/newpipe/extractor/StreamingService;Ljava/lang/String;Lio/reactivex/rxjava3/disposables/CompositeDisposable;Ljava/util/function/Consumer;)V

    .line 288
    .line 289
    .line 290
    sget-object p0, Lorg/schabi/newpipe/util/text/LongPressLinkMovementMethod;->instance:Lorg/schabi/newpipe/util/text/LongPressLinkMovementMethod;

    .line 291
    .line 292
    if-nez p0, :cond_7

    .line 293
    .line 294
    new-instance p0, Lorg/schabi/newpipe/util/text/LongPressLinkMovementMethod;

    .line 295
    .line 296
    invoke-direct {p0}, Landroid/text/method/LinkMovementMethod;-><init>()V

    .line 297
    .line 298
    .line 299
    iput-boolean v3, p0, Lorg/schabi/newpipe/util/text/LongPressLinkMovementMethod;->isLongPressed:Z

    .line 300
    .line 301
    sput-object p0, Lorg/schabi/newpipe/util/text/LongPressLinkMovementMethod;->instance:Lorg/schabi/newpipe/util/text/LongPressLinkMovementMethod;

    .line 302
    .line 303
    new-instance v1, Landroid/os/Handler;

    .line 304
    .line 305
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 306
    .line 307
    .line 308
    move-result-object v2

    .line 309
    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 310
    .line 311
    .line 312
    iput-object v1, p0, Lorg/schabi/newpipe/util/text/LongPressLinkMovementMethod;->longClickHandler:Landroid/os/Handler;

    .line 313
    .line 314
    :cond_7
    sget-object p0, Lorg/schabi/newpipe/util/text/LongPressLinkMovementMethod;->instance:Lorg/schabi/newpipe/util/text/LongPressLinkMovementMethod;

    .line 315
    .line 316
    invoke-virtual {v7, p0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 317
    .line 318
    .line 319
    return-object v0

    .line 320
    :cond_8
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 321
    .line 322
    .line 323
    move-result-object p0

    .line 324
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 325
    .line 326
    .line 327
    move-result-object p0

    .line 328
    const-string v0, "Missing required view with ID: "

    .line 329
    .line 330
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 331
    .line 332
    .line 333
    move-result-object p0

    .line 334
    invoke-static {p0}, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 335
    .line 336
    .line 337
    const/4 p0, 0x0

    .line 338
    return-object p0
.end method
