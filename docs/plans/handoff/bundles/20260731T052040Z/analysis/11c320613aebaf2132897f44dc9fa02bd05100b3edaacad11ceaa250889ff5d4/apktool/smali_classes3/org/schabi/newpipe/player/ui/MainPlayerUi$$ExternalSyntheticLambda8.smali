.class public final synthetic Lorg/schabi/newpipe/player/ui/MainPlayerUi$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/schabi/newpipe/player/ui/MainPlayerUi;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/player/ui/MainPlayerUi;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/schabi/newpipe/player/ui/MainPlayerUi$$ExternalSyntheticLambda8;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/schabi/newpipe/player/ui/MainPlayerUi$$ExternalSyntheticLambda8;->f$0:Lorg/schabi/newpipe/player/ui/MainPlayerUi;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lorg/schabi/newpipe/player/ui/MainPlayerUi$$ExternalSyntheticLambda8;->$r8$classId:I

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    const-wide/16 v3, 0x0

    .line 7
    .line 8
    const/16 v5, 0x8

    .line 9
    .line 10
    const/4 v6, 0x0

    .line 11
    iget-object v0, v0, Lorg/schabi/newpipe/player/ui/MainPlayerUi$$ExternalSyntheticLambda8;->f$0:Lorg/schabi/newpipe/player/ui/MainPlayerUi;

    .line 12
    .line 13
    packed-switch v1, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    iget-object v1, v0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    .line 17
    .line 18
    const/4 v8, 0x1

    .line 19
    iput-boolean v8, v0, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->areSegmentsVisible:Z

    .line 20
    .line 21
    invoke-virtual {v0}, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->hideSystemUIIfNeeded()V

    .line 22
    .line 23
    .line 24
    iget-object v2, v0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    .line 25
    .line 26
    iget-object v7, v2, Lorg/schabi/newpipe/databinding/PlayerBinding;->itemsList:Landroidx/recyclerview/widget/RecyclerView;

    .line 27
    .line 28
    iget-object v9, v2, Lorg/schabi/newpipe/databinding/PlayerBinding;->itemsListPanel:Landroid/widget/RelativeLayout;

    .line 29
    .line 30
    iget-object v10, v2, Lorg/schabi/newpipe/databinding/PlayerBinding;->addToPlaylistButton:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 31
    .line 32
    iget-object v11, v2, Lorg/schabi/newpipe/databinding/PlayerBinding;->repeatButton:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 33
    .line 34
    iget-object v12, v2, Lorg/schabi/newpipe/databinding/PlayerBinding;->shuffleButton:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 35
    .line 36
    iget-object v13, v0, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->segmentAdapter:Lorg/schabi/newpipe/info_list/StreamSegmentAdapter;

    .line 37
    .line 38
    invoke-virtual {v7, v13}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 39
    .line 40
    .line 41
    iget-object v7, v2, Lorg/schabi/newpipe/databinding/PlayerBinding;->itemsList:Landroidx/recyclerview/widget/RecyclerView;

    .line 42
    .line 43
    invoke-virtual {v7, v8}, Landroid/view/View;->setClickable(Z)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v7, v8}, Landroid/view/View;->setLongClickable(Z)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView;->clearOnScrollListeners()V

    .line 50
    .line 51
    .line 52
    iget-object v13, v0, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->itemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 53
    .line 54
    if-eqz v13, :cond_0

    .line 55
    .line 56
    const/4 v14, 0x0

    .line 57
    invoke-virtual {v13, v14}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 58
    .line 59
    .line 60
    :cond_0
    invoke-virtual {v1}, Lorg/schabi/newpipe/player/Player;->getCurrentStreamInfo()Lj$/util/Optional;

    .line 61
    .line 62
    .line 63
    move-result-object v13

    .line 64
    iget-object v14, v0, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->segmentAdapter:Lorg/schabi/newpipe/info_list/StreamSegmentAdapter;

    .line 65
    .line 66
    invoke-static {v14}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    new-instance v15, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda1;

    .line 70
    .line 71
    const/16 v8, 0x12

    .line 72
    .line 73
    invoke-direct {v15, v14, v8}, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;I)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v13, v15}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v12, v5}, Landroid/view/View;->setVisibility(I)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v11, v5}, Landroid/view/View;->setVisibility(I)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v10, v5}, Landroid/view/View;->setVisibility(I)V

    .line 86
    .line 87
    .line 88
    iget-object v8, v2, Lorg/schabi/newpipe/databinding/PlayerBinding;->itemsListClose:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 89
    .line 90
    new-instance v13, Lorg/schabi/newpipe/player/ui/MainPlayerUi$$ExternalSyntheticLambda8;

    .line 91
    .line 92
    const/4 v14, 0x3

    .line 93
    invoke-direct {v13, v0, v14}, Lorg/schabi/newpipe/player/ui/MainPlayerUi$$ExternalSyntheticLambda8;-><init>(Lorg/schabi/newpipe/player/ui/MainPlayerUi;I)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v8, v13}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    .line 98
    .line 99
    iget-object v8, v2, Lorg/schabi/newpipe/databinding/PlayerBinding;->itemsListHeaderTitle:Landroidx/appcompat/widget/AppCompatTextView;

    .line 100
    .line 101
    invoke-virtual {v8, v6}, Landroid/view/View;->setVisibility(I)V

    .line 102
    .line 103
    .line 104
    iget-object v2, v2, Lorg/schabi/newpipe/databinding/PlayerBinding;->itemsListHeaderDuration:Landroidx/appcompat/widget/AppCompatTextView;

    .line 105
    .line 106
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v12, v5}, Landroid/view/View;->setVisibility(I)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v11, v5}, Landroid/view/View;->setVisibility(I)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v10, v5}, Landroid/view/View;->setVisibility(I)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0, v3, v4, v3, v4}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->hideControls(JJ)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v9}, Landroid/view/View;->requestFocus()Z

    .line 122
    .line 123
    .line 124
    const/4 v14, 0x0

    .line 125
    const/16 v15, 0x18

    .line 126
    .line 127
    move-object v2, v7

    .line 128
    move-object v7, v9

    .line 129
    const-wide/16 v9, 0x12c

    .line 130
    .line 131
    sget-object v11, Lorg/schabi/newpipe/ktx/AnimationType;->SLIDE_AND_ALPHA:Lorg/schabi/newpipe/ktx/AnimationType;

    .line 132
    .line 133
    const-wide/16 v12, 0x0

    .line 134
    .line 135
    const/4 v8, 0x1

    .line 136
    invoke-static/range {v7 .. v15}, Lnet/newpipe/app/AppKt;->animate$default(Landroid/view/View;ZJLorg/schabi/newpipe/ktx/AnimationType;JLorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda13;I)V

    .line 137
    .line 138
    .line 139
    iget-object v1, v1, Lorg/schabi/newpipe/player/Player;->simpleExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    .line 140
    .line 141
    invoke-interface {v1}, Lcom/google/android/exoplayer2/Player;->getCurrentPosition()J

    .line 142
    .line 143
    .line 144
    move-result-wide v3

    .line 145
    invoke-virtual {v0, v3, v4}, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->getNearestStreamSegmentPosition(J)I

    .line 146
    .line 147
    .line 148
    move-result v1

    .line 149
    iget-object v0, v0, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->segmentAdapter:Lorg/schabi/newpipe/info_list/StreamSegmentAdapter;

    .line 150
    .line 151
    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/info_list/StreamSegmentAdapter;->selectSegmentAt(I)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 155
    .line 156
    .line 157
    return-void

    .line 158
    :pswitch_0
    invoke-virtual {v0}, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->closeItemsList()V

    .line 159
    .line 160
    .line 161
    return-void

    .line 162
    :pswitch_1
    invoke-virtual {v0}, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->closeItemsList()V

    .line 163
    .line 164
    .line 165
    return-void

    .line 166
    :pswitch_2
    invoke-virtual {v0}, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->getParentActivity()Lj$/util/Optional;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    new-instance v3, Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda0;

    .line 171
    .line 172
    invoke-direct {v3, v5}, Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda0;-><init>(I)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v1, v3}, Lj$/util/Optional;->map(Ljava/util/function/Function;)Lj$/util/Optional;

    .line 176
    .line 177
    .line 178
    move-result-object v1

    .line 179
    new-instance v3, Lorg/schabi/newpipe/player/ui/MainPlayerUi$$ExternalSyntheticLambda16;

    .line 180
    .line 181
    invoke-direct {v3, v0, v2}, Lorg/schabi/newpipe/player/ui/MainPlayerUi$$ExternalSyntheticLambda16;-><init>(Lorg/schabi/newpipe/player/ui/MainPlayerUi;I)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v1, v3}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 185
    .line 186
    .line 187
    return-void

    .line 188
    :pswitch_3
    const/4 v1, 0x1

    .line 189
    iput-boolean v1, v0, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->isQueueVisible:Z

    .line 190
    .line 191
    invoke-virtual {v0}, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->hideSystemUIIfNeeded()V

    .line 192
    .line 193
    .line 194
    iget-object v7, v0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    .line 195
    .line 196
    iget-object v8, v7, Lorg/schabi/newpipe/databinding/PlayerBinding;->itemsList:Landroidx/recyclerview/widget/RecyclerView;

    .line 197
    .line 198
    iget-object v9, v0, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->playQueueAdapter:Lorg/schabi/newpipe/player/playqueue/PlayQueueAdapter;

    .line 199
    .line 200
    invoke-virtual {v8, v9}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 201
    .line 202
    .line 203
    iget-object v13, v7, Lorg/schabi/newpipe/databinding/PlayerBinding;->itemsList:Landroidx/recyclerview/widget/RecyclerView;

    .line 204
    .line 205
    invoke-virtual {v13, v1}, Landroid/view/View;->setClickable(Z)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {v13, v1}, Landroid/view/View;->setLongClickable(Z)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v13}, Landroidx/recyclerview/widget/RecyclerView;->clearOnScrollListeners()V

    .line 212
    .line 213
    .line 214
    new-instance v8, Lorg/schabi/newpipe/player/ui/MainPlayerUi$2;

    .line 215
    .line 216
    invoke-direct {v8, v0, v6}, Lorg/schabi/newpipe/player/ui/MainPlayerUi$2;-><init>(Ljava/lang/Object;I)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v13, v8}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 220
    .line 221
    .line 222
    new-instance v8, Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 223
    .line 224
    new-instance v9, Lorg/schabi/newpipe/player/ui/MainPlayerUi$4;

    .line 225
    .line 226
    invoke-direct {v9, v0, v6}, Lorg/schabi/newpipe/player/ui/MainPlayerUi$4;-><init>(Landroid/widget/SeekBar$OnSeekBarChangeListener;I)V

    .line 227
    .line 228
    .line 229
    invoke-direct {v8, v9}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    .line 230
    .line 231
    .line 232
    iput-object v8, v0, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->itemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 233
    .line 234
    invoke-virtual {v8, v13}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 235
    .line 236
    .line 237
    iget-object v8, v0, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->playQueueAdapter:Lorg/schabi/newpipe/player/playqueue/PlayQueueAdapter;

    .line 238
    .line 239
    new-instance v9, Lorg/schabi/newpipe/player/ui/MainPlayerUi$3;

    .line 240
    .line 241
    invoke-direct {v9, v0}, Lorg/schabi/newpipe/player/ui/MainPlayerUi$3;-><init>(Lorg/schabi/newpipe/player/ui/MainPlayerUi;)V

    .line 242
    .line 243
    .line 244
    iget-object v8, v8, Lorg/schabi/newpipe/player/playqueue/PlayQueueAdapter;->playQueueItemBuilder:Lorg/schabi/newpipe/player/playqueue/PlayQueueItemBuilder;

    .line 245
    .line 246
    iput-object v9, v8, Lorg/schabi/newpipe/player/playqueue/PlayQueueItemBuilder;->onItemClickListener:Lorg/schabi/newpipe/player/playqueue/PlayQueueItemBuilder$OnSelectedListener;

    .line 247
    .line 248
    iget-object v8, v7, Lorg/schabi/newpipe/databinding/PlayerBinding;->itemsListClose:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 249
    .line 250
    new-instance v9, Lorg/schabi/newpipe/player/ui/MainPlayerUi$$ExternalSyntheticLambda8;

    .line 251
    .line 252
    invoke-direct {v9, v0, v2}, Lorg/schabi/newpipe/player/ui/MainPlayerUi$$ExternalSyntheticLambda8;-><init>(Lorg/schabi/newpipe/player/ui/MainPlayerUi;I)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 256
    .line 257
    .line 258
    iget-object v2, v7, Lorg/schabi/newpipe/databinding/PlayerBinding;->itemsListHeaderTitle:Landroidx/appcompat/widget/AppCompatTextView;

    .line 259
    .line 260
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 261
    .line 262
    .line 263
    iget-object v2, v7, Lorg/schabi/newpipe/databinding/PlayerBinding;->itemsListHeaderDuration:Landroidx/appcompat/widget/AppCompatTextView;

    .line 264
    .line 265
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 266
    .line 267
    .line 268
    iget-object v2, v7, Lorg/schabi/newpipe/databinding/PlayerBinding;->shuffleButton:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 269
    .line 270
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 271
    .line 272
    .line 273
    iget-object v2, v7, Lorg/schabi/newpipe/databinding/PlayerBinding;->repeatButton:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 274
    .line 275
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 276
    .line 277
    .line 278
    iget-object v2, v7, Lorg/schabi/newpipe/databinding/PlayerBinding;->addToPlaylistButton:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 279
    .line 280
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 281
    .line 282
    .line 283
    invoke-virtual {v0, v3, v4, v3, v4}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->hideControls(JJ)V

    .line 284
    .line 285
    .line 286
    iget-object v4, v7, Lorg/schabi/newpipe/databinding/PlayerBinding;->itemsListPanel:Landroid/widget/RelativeLayout;

    .line 287
    .line 288
    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    .line 289
    .line 290
    .line 291
    const/4 v11, 0x0

    .line 292
    const/16 v12, 0x18

    .line 293
    .line 294
    const-wide/16 v6, 0x12c

    .line 295
    .line 296
    sget-object v8, Lorg/schabi/newpipe/ktx/AnimationType;->SLIDE_AND_ALPHA:Lorg/schabi/newpipe/ktx/AnimationType;

    .line 297
    .line 298
    const-wide/16 v9, 0x0

    .line 299
    .line 300
    move v5, v1

    .line 301
    invoke-static/range {v4 .. v12}, Lnet/newpipe/app/AppKt;->animate$default(Landroid/view/View;ZJLorg/schabi/newpipe/ktx/AnimationType;JLorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda13;I)V

    .line 302
    .line 303
    .line 304
    iget-object v1, v0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    .line 305
    .line 306
    iget-object v2, v1, Lorg/schabi/newpipe/player/Player;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    .line 307
    .line 308
    if-eqz v2, :cond_1

    .line 309
    .line 310
    invoke-virtual {v2}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->getIndex()I

    .line 311
    .line 312
    .line 313
    move-result v2

    .line 314
    invoke-virtual {v13, v2}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 315
    .line 316
    .line 317
    :cond_1
    iget-object v1, v1, Lorg/schabi/newpipe/player/Player;->simpleExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    .line 318
    .line 319
    invoke-interface {v1}, Lcom/google/android/exoplayer2/Player;->getCurrentPosition()J

    .line 320
    .line 321
    .line 322
    move-result-wide v1

    .line 323
    long-to-int v1, v1

    .line 324
    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->updateQueueTime(I)V

    .line 325
    .line 326
    .line 327
    return-void

    .line 328
    nop

    .line 329
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
