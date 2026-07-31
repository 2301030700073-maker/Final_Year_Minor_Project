.class public final Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;
.super Landroidx/fragment/app/Fragment;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;",
        "Landroidx/fragment/app/Fragment;",
        "<init>",
        "()V",
        "app"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public _binding:Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;

.field public final cardAnimatorSetIn:Landroid/animation/AnimatorSet;

.field public final cardAnimatorSetOut:Landroid/animation/AnimatorSet;

.field public mainActivity:Lorg/wikipedia/games/onthisday/OnThisDayGameActivity;

.field public mediaPlayer:Landroid/media/MediaPlayer;

.field public selectedCardView:Lorg/wikipedia/views/WikiCardView;

.field public final viewModel$delegate:Lokhttp3/Request$Builder;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 2
    .line 3
    .line 4
    const-class v0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;

    .line 5
    .line 6
    sget-object v1, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    .line 7
    .line 8
    invoke-virtual {v1, v0}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    new-instance v1, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment$special$$inlined$activityViewModels$default$1;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-direct {v1, p0, v2}, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment$special$$inlined$activityViewModels$default$1;-><init>(Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;I)V

    .line 16
    .line 17
    .line 18
    new-instance v2, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment$special$$inlined$activityViewModels$default$1;

    .line 19
    .line 20
    const/4 v3, 0x1

    .line 21
    invoke-direct {v2, p0, v3}, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment$special$$inlined$activityViewModels$default$1;-><init>(Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;I)V

    .line 22
    .line 23
    .line 24
    new-instance v3, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment$special$$inlined$activityViewModels$default$1;

    .line 25
    .line 26
    const/4 v4, 0x2

    .line 27
    invoke-direct {v3, p0, v4}, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment$special$$inlined$activityViewModels$default$1;-><init>(Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;I)V

    .line 28
    .line 29
    .line 30
    new-instance v4, Lokhttp3/Request$Builder;

    .line 31
    .line 32
    invoke-direct {v4, v0, v1, v3, v2}, Lokhttp3/Request$Builder;-><init>(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 33
    .line 34
    .line 35
    iput-object v4, p0, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->viewModel$delegate:Lokhttp3/Request$Builder;

    .line 36
    .line 37
    new-instance v0, Landroid/animation/AnimatorSet;

    .line 38
    .line 39
    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 40
    .line 41
    .line 42
    iput-object v0, p0, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->cardAnimatorSetIn:Landroid/animation/AnimatorSet;

    .line 43
    .line 44
    new-instance v0, Landroid/animation/AnimatorSet;

    .line 45
    .line 46
    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 47
    .line 48
    .line 49
    iput-object v0, p0, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->cardAnimatorSetOut:Landroid/animation/AnimatorSet;

    .line 50
    .line 51
    return-void
.end method


# virtual methods
.method public final animateQuestionsIn()V
    .locals 13

    .line 1
    invoke-virtual {p0}, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->getViewModel$4()Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;->getCurrentScreenName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v6

    .line 9
    invoke-virtual {p0}, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->getViewModel$4()Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-boolean v0, v0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;->isArchiveGame:Z

    .line 14
    .line 15
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    const/4 v3, 0x0

    .line 20
    const/16 v1, 0x3d8

    .line 21
    .line 22
    const-string v4, "impression"

    .line 23
    .line 24
    const-string v5, "game_play"

    .line 25
    .line 26
    const/4 v7, 0x0

    .line 27
    const/4 v8, 0x0

    .line 28
    invoke-static/range {v1 .. v8}, Lorg/wikipedia/analytics/eventplatform/WikiGamesEvent;->submit$default(ILjava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->mainActivity:Lorg/wikipedia/games/onthisday/OnThisDayGameActivity;

    .line 32
    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    invoke-virtual {v0}, Lorg/wikipedia/games/onthisday/OnThisDayGameActivity;->showAppBarDateText()V

    .line 36
    .line 37
    .line 38
    :cond_0
    iget-object v0, p0, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->_binding:Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;

    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    iget-object v0, v0, Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;->whichCameFirstText:Landroid/widget/TextView;

    .line 44
    .line 45
    const/4 v1, 0x0

    .line 46
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->_binding:Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;

    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    iget-object v0, v0, Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;->questionCard1:Lorg/wikipedia/views/WikiCardView;

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->_binding:Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;

    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    iget-object v0, v0, Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;->questionCard2:Lorg/wikipedia/views/WikiCardView;

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 67
    .line 68
    .line 69
    iget-object v0, p0, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->_binding:Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;

    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    .line 73
    .line 74
    iget-object v0, v0, Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;->whichCameFirstText:Landroid/widget/TextView;

    .line 75
    .line 76
    const/4 v2, 0x2

    .line 77
    new-array v3, v2, [F

    .line 78
    .line 79
    fill-array-data v3, :array_0

    .line 80
    .line 81
    .line 82
    const-string v4, "alpha"

    .line 83
    .line 84
    invoke-static {v0, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    iget-object v3, p0, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->_binding:Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;

    .line 89
    .line 90
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 91
    .line 92
    .line 93
    iget-object v3, v3, Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;->questionCard1:Lorg/wikipedia/views/WikiCardView;

    .line 94
    .line 95
    const/high16 v5, 0x43c80000    # 400.0f

    .line 96
    .line 97
    invoke-static {v5}, Lokio/Okio__OkioKt;->dpToPx(F)F

    .line 98
    .line 99
    .line 100
    move-result v6

    .line 101
    new-array v7, v2, [F

    .line 102
    .line 103
    const/4 v8, 0x0

    .line 104
    aput v6, v7, v8

    .line 105
    .line 106
    const/4 v6, 0x1

    .line 107
    aput v1, v7, v6

    .line 108
    .line 109
    const-string/jumbo v9, "translationX"

    .line 110
    .line 111
    .line 112
    invoke-static {v3, v9, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    iget-object v7, p0, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->_binding:Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;

    .line 117
    .line 118
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 119
    .line 120
    .line 121
    iget-object v7, v7, Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;->questionCard1:Lorg/wikipedia/views/WikiCardView;

    .line 122
    .line 123
    new-array v10, v2, [F

    .line 124
    .line 125
    fill-array-data v10, :array_1

    .line 126
    .line 127
    .line 128
    invoke-static {v7, v4, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 129
    .line 130
    .line 131
    move-result-object v7

    .line 132
    iget-object v10, p0, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->_binding:Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;

    .line 133
    .line 134
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 135
    .line 136
    .line 137
    iget-object v10, v10, Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;->questionCard2:Lorg/wikipedia/views/WikiCardView;

    .line 138
    .line 139
    invoke-static {v5}, Lokio/Okio__OkioKt;->dpToPx(F)F

    .line 140
    .line 141
    .line 142
    move-result v5

    .line 143
    new-array v11, v2, [F

    .line 144
    .line 145
    aput v5, v11, v8

    .line 146
    .line 147
    aput v1, v11, v6

    .line 148
    .line 149
    invoke-static {v10, v9, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    iget-object v5, p0, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->_binding:Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;

    .line 154
    .line 155
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 156
    .line 157
    .line 158
    iget-object v5, v5, Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;->questionCard2:Lorg/wikipedia/views/WikiCardView;

    .line 159
    .line 160
    new-array v9, v2, [F

    .line 161
    .line 162
    fill-array-data v9, :array_2

    .line 163
    .line 164
    .line 165
    invoke-static {v5, v4, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 166
    .line 167
    .line 168
    move-result-object v4

    .line 169
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    .line 170
    .line 171
    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 172
    .line 173
    .line 174
    const-wide/16 v9, 0x2ee

    .line 175
    .line 176
    invoke-virtual {v0, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 177
    .line 178
    .line 179
    const-wide/16 v11, 0x1f4

    .line 180
    .line 181
    invoke-virtual {v0, v11, v12}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v0, v5}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v3, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 188
    .line 189
    .line 190
    const-wide/16 v11, 0x4e2

    .line 191
    .line 192
    invoke-virtual {v3, v11, v12}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v3, v5}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v7, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v7, v11, v12}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v7, v5}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v1, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 208
    .line 209
    .line 210
    const-wide/16 v11, 0x7d0

    .line 211
    .line 212
    invoke-virtual {v1, v11, v12}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v1, v5}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v4, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v4, v11, v12}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {v4, v5}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 225
    .line 226
    .line 227
    iget-object v5, p0, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->_binding:Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;

    .line 228
    .line 229
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 230
    .line 231
    .line 232
    iget-object v5, v5, Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;->questionCard1:Lorg/wikipedia/views/WikiCardView;

    .line 233
    .line 234
    invoke-virtual {v5, v8}, Landroid/view/View;->setEnabled(Z)V

    .line 235
    .line 236
    .line 237
    iget-object v5, p0, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->_binding:Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;

    .line 238
    .line 239
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 240
    .line 241
    .line 242
    iget-object v5, v5, Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;->questionCard2:Lorg/wikipedia/views/WikiCardView;

    .line 243
    .line 244
    invoke-virtual {v5, v8}, Landroid/view/View;->setEnabled(Z)V

    .line 245
    .line 246
    .line 247
    iget-object v5, p0, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->_binding:Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;

    .line 248
    .line 249
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 250
    .line 251
    .line 252
    iget-object v5, v5, Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;->questionText1:Landroid/widget/TextView;

    .line 253
    .line 254
    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 255
    .line 256
    .line 257
    iget-object v5, p0, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->_binding:Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;

    .line 258
    .line 259
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 260
    .line 261
    .line 262
    iget-object v5, v5, Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;->questionText2:Landroid/widget/TextView;

    .line 263
    .line 264
    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 265
    .line 266
    .line 267
    iget-object v5, p0, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->cardAnimatorSetIn:Landroid/animation/AnimatorSet;

    .line 268
    .line 269
    invoke-virtual {v5}, Landroid/animation/Animator;->removeAllListeners()V

    .line 270
    .line 271
    .line 272
    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->cancel()V

    .line 273
    .line 274
    .line 275
    const/4 v9, 0x5

    .line 276
    new-array v9, v9, [Landroid/animation/Animator;

    .line 277
    .line 278
    aput-object v0, v9, v8

    .line 279
    .line 280
    aput-object v3, v9, v6

    .line 281
    .line 282
    aput-object v7, v9, v2

    .line 283
    .line 284
    const/4 v0, 0x3

    .line 285
    aput-object v1, v9, v0

    .line 286
    .line 287
    const/4 v0, 0x4

    .line 288
    aput-object v4, v9, v0

    .line 289
    .line 290
    invoke-virtual {v5, v9}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 291
    .line 292
    .line 293
    new-instance v0, Lorg/wikipedia/page/PageFragment$PageActionItemCallback$onThemeSelected$$inlined$doOnEnd$1;

    .line 294
    .line 295
    invoke-direct {v0, v6, p0}, Lorg/wikipedia/page/PageFragment$PageActionItemCallback$onThemeSelected$$inlined$doOnEnd$1;-><init>(ILandroidx/fragment/app/Fragment;)V

    .line 296
    .line 297
    .line 298
    invoke-virtual {v5, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    .line 302
    .line 303
    .line 304
    return-void

    .line 305
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final enqueueGoNext(Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameState;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->_binding:Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v0, v0, Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;->questionDate1:Landroid/widget/TextView;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->_binding:Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    iget-object v0, v0, Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;->questionDate2:Landroid/widget/TextView;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->_binding:Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    iget-object v0, v0, Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;->questionCard1:Lorg/wikipedia/views/WikiCardView;

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->_binding:Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;

    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    iget-object v0, v0, Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;->questionCard2:Lorg/wikipedia/views/WikiCardView;

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->_binding:Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;

    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    iget-object v0, v0, Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;->questionText1:Landroid/widget/TextView;

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->_binding:Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;

    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    iget-object v0, v0, Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;->questionText2:Landroid/widget/TextView;

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 60
    .line 61
    .line 62
    iget-object v0, p0, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->_binding:Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;

    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    .line 66
    .line 67
    iget-object v0, v0, Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;->whichCameFirstText:Landroid/widget/TextView;

    .line 68
    .line 69
    const/16 v2, 0x8

    .line 70
    .line 71
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 72
    .line 73
    .line 74
    iget-object v0, p0, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->_binding:Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;

    .line 75
    .line 76
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    .line 78
    .line 79
    iget-object v0, v0, Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;->nextQuestionText:Landroid/widget/TextView;

    .line 80
    .line 81
    iget v2, p1, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameState;->currentQuestionIndex:I

    .line 82
    .line 83
    iget p1, p1, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameState;->totalQuestions:I

    .line 84
    .line 85
    add-int/lit8 p1, p1, -0x1

    .line 86
    .line 87
    if-lt v2, p1, :cond_0

    .line 88
    .line 89
    const p1, 0x7f1204cd

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_0
    const p1, 0x7f1204d3

    .line 94
    .line 95
    .line 96
    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 97
    .line 98
    .line 99
    iget-object p0, p0, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->_binding:Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;

    .line 100
    .line 101
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 102
    .line 103
    .line 104
    iget-object p0, p0, Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;->nextQuestionText:Landroid/widget/TextView;

    .line 105
    .line 106
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 107
    .line 108
    .line 109
    return-void
.end method

.method public final enqueueSubmit(Lorg/wikipedia/views/WikiCardView;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->getViewModel$4()Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;->_gameState:Landroidx/lifecycle/MutableLiveData;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    instance-of v0, v0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$CurrentQuestion;

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {p0}, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->getViewModel$4()Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v0, v0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;->_gameState:Landroidx/lifecycle/MutableLiveData;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    instance-of v0, v0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameStarted;

    .line 26
    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    return-void

    .line 31
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->_binding:Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    iget-object v0, v0, Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;->questionCard1:Lorg/wikipedia/views/WikiCardView;

    .line 37
    .line 38
    invoke-virtual {v0}, Lorg/wikipedia/views/WikiCardView;->setDefaultBorder()V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->_binding:Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;

    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    iget-object v0, v0, Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;->questionCard2:Lorg/wikipedia/views/WikiCardView;

    .line 47
    .line 48
    invoke-virtual {v0}, Lorg/wikipedia/views/WikiCardView;->setDefaultBorder()V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->_binding:Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;

    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    iget-object v0, v0, Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;->nextQuestionText:Landroid/widget/TextView;

    .line 57
    .line 58
    const v1, 0x7f1204f2

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 62
    .line 63
    .line 64
    iget-object v0, p0, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->_binding:Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;

    .line 65
    .line 66
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    iget-object v0, v0, Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;->nextQuestionText:Landroid/widget/TextView;

    .line 70
    .line 71
    const/4 v1, 0x0

    .line 72
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    const v1, 0x7f040520

    .line 80
    .line 81
    .line 82
    invoke-static {v0, v1}, Lokhttp3/Cache$Companion;->getThemedColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-virtual {p1, v0}, Lcom/google/android/material/card/MaterialCardView;->setStrokeColor(Landroid/content/res/ColorStateList;)V

    .line 87
    .line 88
    .line 89
    const/high16 v0, 0x40000000    # 2.0f

    .line 90
    .line 91
    invoke-static {v0}, Lokio/Okio__OkioKt;->roundedDpToPx(F)I

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    invoke-virtual {p1, v0}, Lcom/google/android/material/card/MaterialCardView;->setStrokeWidth(I)V

    .line 96
    .line 97
    .line 98
    iput-object p1, p0, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->selectedCardView:Lorg/wikipedia/views/WikiCardView;

    .line 99
    .line 100
    return-void
.end method

.method public final getViewModel$4()Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->viewModel$delegate:Lokhttp3/Request$Builder;

    .line 2
    .line 3
    invoke-virtual {p0}, Lokhttp3/Request$Builder;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;

    .line 8
    .line 9
    return-object p0
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 29

    .line 1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const v0, 0x7f0c019e

    .line 5
    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    move-object/from16 v2, p1

    .line 9
    .line 10
    move-object/from16 v3, p2

    .line 11
    .line 12
    invoke-virtual {v2, v0, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const v1, 0x7f0900a5

    .line 17
    .line 18
    .line 19
    invoke-static {v0, v1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    move-object v5, v2

    .line 24
    check-cast v5, Landroid/widget/FrameLayout;

    .line 25
    .line 26
    if-eqz v5, :cond_0

    .line 27
    .line 28
    const v1, 0x7f0900dd

    .line 29
    .line 30
    .line 31
    invoke-static {v0, v1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    move-object v6, v2

    .line 36
    check-cast v6, Landroid/widget/FrameLayout;

    .line 37
    .line 38
    if-eqz v6, :cond_0

    .line 39
    .line 40
    const v1, 0x7f09017a

    .line 41
    .line 42
    .line 43
    invoke-static {v0, v1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    move-object v7, v2

    .line 48
    check-cast v7, Landroid/widget/TextView;

    .line 49
    .line 50
    if-eqz v7, :cond_0

    .line 51
    .line 52
    const v1, 0x7f09018c

    .line 53
    .line 54
    .line 55
    invoke-static {v0, v1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    move-object v8, v2

    .line 60
    check-cast v8, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 61
    .line 62
    if-eqz v8, :cond_0

    .line 63
    .line 64
    const v1, 0x7f09021f

    .line 65
    .line 66
    .line 67
    invoke-static {v0, v1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    move-object v9, v2

    .line 72
    check-cast v9, Lorg/wikipedia/views/WikiErrorView;

    .line 73
    .line 74
    if-eqz v9, :cond_0

    .line 75
    .line 76
    const v1, 0x7f090458

    .line 77
    .line 78
    .line 79
    invoke-static {v0, v1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    move-object v10, v2

    .line 84
    check-cast v10, Landroid/widget/TextView;

    .line 85
    .line 86
    if-eqz v10, :cond_0

    .line 87
    .line 88
    const v1, 0x7f090505

    .line 89
    .line 90
    .line 91
    invoke-static {v0, v1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    move-object v11, v2

    .line 96
    check-cast v11, Landroid/widget/TextView;

    .line 97
    .line 98
    if-eqz v11, :cond_0

    .line 99
    .line 100
    const v1, 0x7f090513

    .line 101
    .line 102
    .line 103
    invoke-static {v0, v1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    move-object v12, v2

    .line 108
    check-cast v12, Landroid/widget/ProgressBar;

    .line 109
    .line 110
    if-eqz v12, :cond_0

    .line 111
    .line 112
    const v1, 0x7f09051d

    .line 113
    .line 114
    .line 115
    invoke-static {v0, v1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    move-object v13, v2

    .line 120
    check-cast v13, Lorg/wikipedia/views/WikiCardView;

    .line 121
    .line 122
    if-eqz v13, :cond_0

    .line 123
    .line 124
    const v1, 0x7f09051e

    .line 125
    .line 126
    .line 127
    invoke-static {v0, v1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 128
    .line 129
    .line 130
    move-result-object v2

    .line 131
    move-object v14, v2

    .line 132
    check-cast v14, Lorg/wikipedia/views/WikiCardView;

    .line 133
    .line 134
    if-eqz v14, :cond_0

    .line 135
    .line 136
    const v1, 0x7f09051f

    .line 137
    .line 138
    .line 139
    invoke-static {v0, v1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 140
    .line 141
    .line 142
    move-result-object v2

    .line 143
    move-object v15, v2

    .line 144
    check-cast v15, Landroid/widget/LinearLayout;

    .line 145
    .line 146
    if-eqz v15, :cond_0

    .line 147
    .line 148
    const v1, 0x7f090520

    .line 149
    .line 150
    .line 151
    invoke-static {v0, v1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 152
    .line 153
    .line 154
    move-result-object v2

    .line 155
    move-object/from16 v16, v2

    .line 156
    .line 157
    check-cast v16, Landroid/widget/LinearLayout;

    .line 158
    .line 159
    if-eqz v16, :cond_0

    .line 160
    .line 161
    const v1, 0x7f090521

    .line 162
    .line 163
    .line 164
    invoke-static {v0, v1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 165
    .line 166
    .line 167
    move-result-object v2

    .line 168
    move-object/from16 v17, v2

    .line 169
    .line 170
    check-cast v17, Landroid/widget/TextView;

    .line 171
    .line 172
    if-eqz v17, :cond_0

    .line 173
    .line 174
    const v1, 0x7f090522

    .line 175
    .line 176
    .line 177
    invoke-static {v0, v1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 178
    .line 179
    .line 180
    move-result-object v2

    .line 181
    move-object/from16 v18, v2

    .line 182
    .line 183
    check-cast v18, Landroid/widget/TextView;

    .line 184
    .line 185
    if-eqz v18, :cond_0

    .line 186
    .line 187
    const v1, 0x7f090525

    .line 188
    .line 189
    .line 190
    invoke-static {v0, v1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 191
    .line 192
    .line 193
    move-result-object v2

    .line 194
    move-object/from16 v19, v2

    .line 195
    .line 196
    check-cast v19, Landroid/widget/ScrollView;

    .line 197
    .line 198
    if-eqz v19, :cond_0

    .line 199
    .line 200
    const v1, 0x7f090526

    .line 201
    .line 202
    .line 203
    invoke-static {v0, v1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 204
    .line 205
    .line 206
    move-result-object v2

    .line 207
    move-object/from16 v20, v2

    .line 208
    .line 209
    check-cast v20, Landroid/widget/ScrollView;

    .line 210
    .line 211
    if-eqz v20, :cond_0

    .line 212
    .line 213
    const v1, 0x7f090527

    .line 214
    .line 215
    .line 216
    invoke-static {v0, v1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 217
    .line 218
    .line 219
    move-result-object v2

    .line 220
    move-object/from16 v21, v2

    .line 221
    .line 222
    check-cast v21, Landroid/widget/ImageView;

    .line 223
    .line 224
    if-eqz v21, :cond_0

    .line 225
    .line 226
    const v1, 0x7f090528

    .line 227
    .line 228
    .line 229
    invoke-static {v0, v1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 230
    .line 231
    .line 232
    move-result-object v2

    .line 233
    move-object/from16 v22, v2

    .line 234
    .line 235
    check-cast v22, Landroid/widget/ImageView;

    .line 236
    .line 237
    if-eqz v22, :cond_0

    .line 238
    .line 239
    const v1, 0x7f090529

    .line 240
    .line 241
    .line 242
    invoke-static {v0, v1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 243
    .line 244
    .line 245
    move-result-object v2

    .line 246
    move-object/from16 v23, v2

    .line 247
    .line 248
    check-cast v23, Landroid/widget/TextView;

    .line 249
    .line 250
    if-eqz v23, :cond_0

    .line 251
    .line 252
    const v1, 0x7f09052a

    .line 253
    .line 254
    .line 255
    invoke-static {v0, v1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 256
    .line 257
    .line 258
    move-result-object v2

    .line 259
    move-object/from16 v24, v2

    .line 260
    .line 261
    check-cast v24, Landroid/widget/TextView;

    .line 262
    .line 263
    if-eqz v24, :cond_0

    .line 264
    .line 265
    const v1, 0x7f09052b

    .line 266
    .line 267
    .line 268
    invoke-static {v0, v1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 269
    .line 270
    .line 271
    move-result-object v2

    .line 272
    move-object/from16 v25, v2

    .line 273
    .line 274
    check-cast v25, Lorg/wikipedia/views/FaceAndColorDetectImageView;

    .line 275
    .line 276
    if-eqz v25, :cond_0

    .line 277
    .line 278
    const v1, 0x7f09052c

    .line 279
    .line 280
    .line 281
    invoke-static {v0, v1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 282
    .line 283
    .line 284
    move-result-object v2

    .line 285
    move-object/from16 v26, v2

    .line 286
    .line 287
    check-cast v26, Lorg/wikipedia/views/FaceAndColorDetectImageView;

    .line 288
    .line 289
    if-eqz v26, :cond_0

    .line 290
    .line 291
    const v1, 0x7f0905a8

    .line 292
    .line 293
    .line 294
    invoke-static {v0, v1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 295
    .line 296
    .line 297
    move-result-object v2

    .line 298
    move-object/from16 v27, v2

    .line 299
    .line 300
    check-cast v27, Lorg/wikipedia/games/onthisday/ScoreView;

    .line 301
    .line 302
    if-eqz v27, :cond_0

    .line 303
    .line 304
    const v1, 0x7f09076c

    .line 305
    .line 306
    .line 307
    invoke-static {v0, v1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 308
    .line 309
    .line 310
    move-result-object v2

    .line 311
    move-object/from16 v28, v2

    .line 312
    .line 313
    check-cast v28, Landroid/widget/TextView;

    .line 314
    .line 315
    if-eqz v28, :cond_0

    .line 316
    .line 317
    new-instance v3, Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;

    .line 318
    .line 319
    move-object v4, v0

    .line 320
    check-cast v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 321
    .line 322
    invoke-direct/range {v3 .. v28}, Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;-><init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/widget/TextView;Landroidx/constraintlayout/widget/ConstraintLayout;Lorg/wikipedia/views/WikiErrorView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ProgressBar;Lorg/wikipedia/views/WikiCardView;Lorg/wikipedia/views/WikiCardView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ScrollView;Landroid/widget/ScrollView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Lorg/wikipedia/views/FaceAndColorDetectImageView;Lorg/wikipedia/views/FaceAndColorDetectImageView;Lorg/wikipedia/games/onthisday/ScoreView;Landroid/widget/TextView;)V

    .line 323
    .line 324
    .line 325
    move-object/from16 v0, p0

    .line 326
    .line 327
    iput-object v3, v0, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->_binding:Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;

    .line 328
    .line 329
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 330
    .line 331
    .line 332
    return-object v4

    .line 333
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 334
    .line 335
    .line 336
    move-result-object v0

    .line 337
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object v0

    .line 341
    const-string v1, "Missing required view with ID: "

    .line 342
    .line 343
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 344
    .line 345
    .line 346
    move-result-object v0

    .line 347
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 348
    .line 349
    .line 350
    const/4 v0, 0x0

    .line 351
    return-object v0
.end method

.method public final onDestroy()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 3
    .line 4
    iget-object p0, p0, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->release()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 10

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance p1, Landroid/media/MediaPlayer;

    .line 5
    .line 6
    invoke-direct {p1}, Landroid/media/MediaPlayer;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    instance-of p2, p1, Lorg/wikipedia/games/onthisday/OnThisDayGameActivity;

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    if-eqz p2, :cond_0

    .line 19
    .line 20
    check-cast p1, Lorg/wikipedia/games/onthisday/OnThisDayGameActivity;

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move-object p1, v0

    .line 24
    :goto_0
    iput-object p1, p0, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->mainActivity:Lorg/wikipedia/games/onthisday/OnThisDayGameActivity;

    .line 25
    .line 26
    iget-object p1, p0, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->_binding:Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;

    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    iget-object p1, p1, Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;->errorView:Lorg/wikipedia/views/WikiErrorView;

    .line 32
    .line 33
    new-instance p2, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment$$ExternalSyntheticLambda0;

    .line 34
    .line 35
    const/4 v1, 0x0

    .line 36
    invoke-direct {p2, p0, v1}, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;I)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, p2}, Lorg/wikipedia/views/WikiErrorView;->setRetryClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    .line 41
    .line 42
    iget-object p1, p0, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->_binding:Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;

    .line 43
    .line 44
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    iget-object p1, p1, Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;->errorView:Lorg/wikipedia/views/WikiErrorView;

    .line 48
    .line 49
    new-instance p2, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment$$ExternalSyntheticLambda0;

    .line 50
    .line 51
    const/4 v2, 0x1

    .line 52
    invoke-direct {p2, p0, v2}, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;I)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, p2}, Lorg/wikipedia/views/WikiErrorView;->setBackClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    .line 57
    .line 58
    iget-object p1, p0, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->_binding:Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;

    .line 59
    .line 60
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    iget-object p1, p1, Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;->questionCard1:Lorg/wikipedia/views/WikiCardView;

    .line 64
    .line 65
    new-instance p2, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment$$ExternalSyntheticLambda0;

    .line 66
    .line 67
    const/4 v2, 0x2

    .line 68
    invoke-direct {p2, p0, v2}, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;I)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    .line 73
    .line 74
    iget-object p1, p0, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->_binding:Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;

    .line 75
    .line 76
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    .line 78
    .line 79
    iget-object p1, p1, Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;->questionContainer1:Landroid/widget/LinearLayout;

    .line 80
    .line 81
    new-instance p2, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment$$ExternalSyntheticLambda0;

    .line 82
    .line 83
    const/4 v3, 0x3

    .line 84
    invoke-direct {p2, p0, v3}, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;I)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    .line 89
    .line 90
    iget-object p1, p0, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->_binding:Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;

    .line 91
    .line 92
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 93
    .line 94
    .line 95
    iget-object p1, p1, Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;->questionText1:Landroid/widget/TextView;

    .line 96
    .line 97
    new-instance p2, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment$$ExternalSyntheticLambda0;

    .line 98
    .line 99
    const/4 v4, 0x4

    .line 100
    invoke-direct {p2, p0, v4}, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;I)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    .line 105
    .line 106
    iget-object p1, p0, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->_binding:Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;

    .line 107
    .line 108
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 109
    .line 110
    .line 111
    iget-object p1, p1, Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;->questionCard2:Lorg/wikipedia/views/WikiCardView;

    .line 112
    .line 113
    new-instance p2, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment$$ExternalSyntheticLambda0;

    .line 114
    .line 115
    const/4 v4, 0x5

    .line 116
    invoke-direct {p2, p0, v4}, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;I)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    .line 121
    .line 122
    iget-object p1, p0, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->_binding:Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;

    .line 123
    .line 124
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 125
    .line 126
    .line 127
    iget-object p1, p1, Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;->questionContainer2:Landroid/widget/LinearLayout;

    .line 128
    .line 129
    new-instance p2, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment$$ExternalSyntheticLambda0;

    .line 130
    .line 131
    const/4 v5, 0x6

    .line 132
    invoke-direct {p2, p0, v5}, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;I)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    .line 137
    .line 138
    iget-object p1, p0, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->_binding:Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;

    .line 139
    .line 140
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 141
    .line 142
    .line 143
    iget-object p1, p1, Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;->questionText2:Landroid/widget/TextView;

    .line 144
    .line 145
    new-instance p2, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment$$ExternalSyntheticLambda0;

    .line 146
    .line 147
    const/4 v5, 0x7

    .line 148
    invoke-direct {p2, p0, v5}, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;I)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    .line 153
    .line 154
    iget-object p1, p0, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->_binding:Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;

    .line 155
    .line 156
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 157
    .line 158
    .line 159
    iget-object p1, p1, Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;->questionText1:Landroid/widget/TextView;

    .line 160
    .line 161
    new-instance p2, Landroid/text/method/ScrollingMovementMethod;

    .line 162
    .line 163
    invoke-direct {p2}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    .line 164
    .line 165
    .line 166
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 167
    .line 168
    .line 169
    iget-object p1, p0, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->_binding:Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;

    .line 170
    .line 171
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 172
    .line 173
    .line 174
    iget-object p1, p1, Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;->questionText2:Landroid/widget/TextView;

    .line 175
    .line 176
    new-instance p2, Landroid/text/method/ScrollingMovementMethod;

    .line 177
    .line 178
    invoke-direct {p2}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    .line 179
    .line 180
    .line 181
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 182
    .line 183
    .line 184
    iget-object p1, p0, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->_binding:Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;

    .line 185
    .line 186
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 187
    .line 188
    .line 189
    iget-object p1, p1, Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;->nextQuestionText:Landroid/widget/TextView;

    .line 190
    .line 191
    new-instance p2, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment$$ExternalSyntheticLambda0;

    .line 192
    .line 193
    const/16 v5, 0x8

    .line 194
    .line 195
    invoke-direct {p2, p0, v5}, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;I)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    .line 200
    .line 201
    iget-object p1, p0, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->_binding:Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;

    .line 202
    .line 203
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 204
    .line 205
    .line 206
    iget-object p1, p1, Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;->rootView:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 207
    .line 208
    new-instance p2, Lorg/wikipedia/main/MainActivity$$ExternalSyntheticLambda0;

    .line 209
    .line 210
    invoke-direct {p2, v2, p0}, Lorg/wikipedia/main/MainActivity$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 214
    .line 215
    .line 216
    iget-object p1, p0, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->_binding:Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;

    .line 217
    .line 218
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 219
    .line 220
    .line 221
    iget-object p1, p1, Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;->scoreView:Lorg/wikipedia/games/onthisday/ScoreView;

    .line 222
    .line 223
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 224
    .line 225
    .line 226
    iget-object p2, p1, Lorg/wikipedia/games/onthisday/ScoreView;->scoreViews:Ljava/util/ArrayList;

    .line 227
    .line 228
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 229
    .line 230
    .line 231
    move v5, v1

    .line 232
    :goto_1
    if-ge v5, v4, :cond_1

    .line 233
    .line 234
    new-instance v6, Lcom/google/android/material/imageview/ShapeableImageView;

    .line 235
    .line 236
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 237
    .line 238
    .line 239
    move-result-object v7

    .line 240
    invoke-direct {v6, v7, v0, v1}, Lcom/google/android/material/imageview/ShapeableImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 241
    .line 242
    .line 243
    const/high16 v7, 0x41b00000    # 22.0f

    .line 244
    .line 245
    invoke-static {v7}, Lokio/Okio__OkioKt;->roundedDpToPx(F)I

    .line 246
    .line 247
    .line 248
    move-result v7

    .line 249
    const/high16 v8, 0x40000000    # 2.0f

    .line 250
    .line 251
    invoke-static {v8}, Lokio/Okio__OkioKt;->roundedDpToPx(F)I

    .line 252
    .line 253
    .line 254
    move-result v8

    .line 255
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    .line 256
    .line 257
    invoke-direct {v9, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 258
    .line 259
    .line 260
    invoke-virtual {v9, v8}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 261
    .line 262
    .line 263
    invoke-virtual {v9, v8}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 264
    .line 265
    .line 266
    invoke-virtual {v6, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 267
    .line 268
    .line 269
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 270
    .line 271
    .line 272
    move-result-object v7

    .line 273
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 274
    .line 275
    .line 276
    const v8, 0x7f0404e7

    .line 277
    .line 278
    .line 279
    invoke-static {v7, v8}, Lokhttp3/Cache$Companion;->getThemedColor(Landroid/content/Context;I)I

    .line 280
    .line 281
    .line 282
    move-result v7

    .line 283
    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundColor(I)V

    .line 284
    .line 285
    .line 286
    const/high16 v7, 0x3f800000    # 1.0f

    .line 287
    .line 288
    invoke-virtual {v6, v7}, Lcom/google/android/material/imageview/ShapeableImageView;->setStrokeWidth(F)V

    .line 289
    .line 290
    .line 291
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 292
    .line 293
    .line 294
    move-result-object v7

    .line 295
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 296
    .line 297
    .line 298
    invoke-static {v7, v8}, Lokhttp3/Cache$Companion;->getThemedColor(Landroid/content/Context;I)I

    .line 299
    .line 300
    .line 301
    move-result v7

    .line 302
    invoke-static {v7}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 303
    .line 304
    .line 305
    move-result-object v7

    .line 306
    invoke-virtual {v6, v7}, Lcom/google/android/material/imageview/ShapeableImageView;->setStrokeColor(Landroid/content/res/ColorStateList;)V

    .line 307
    .line 308
    .line 309
    invoke-virtual {v6, v2, v2, v2, v2}, Lcom/google/android/material/imageview/ShapeableImageView;->setPadding(IIII)V

    .line 310
    .line 311
    .line 312
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 313
    .line 314
    .line 315
    move-result-object v7

    .line 316
    const v8, 0x7f13015c

    .line 317
    .line 318
    .line 319
    invoke-static {v7, v1, v8}, Lcom/google/android/material/shape/ShapeAppearanceModel;->builder(Landroid/content/Context;II)Lorg/wikipedia/databinding/ItemNotificationBinding;

    .line 320
    .line 321
    .line 322
    move-result-object v7

    .line 323
    invoke-virtual {v7}, Lorg/wikipedia/databinding/ItemNotificationBinding;->build()Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 324
    .line 325
    .line 326
    move-result-object v7

    .line 327
    invoke-virtual {v6, v7}, Lcom/google/android/material/imageview/ShapeableImageView;->setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 328
    .line 329
    .line 330
    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 331
    .line 332
    .line 333
    invoke-virtual {p1, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 334
    .line 335
    .line 336
    add-int/lit8 v5, v5, 0x1

    .line 337
    .line 338
    goto :goto_1

    .line 339
    :cond_1
    invoke-virtual {p0}, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->getViewModel$4()Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;

    .line 340
    .line 341
    .line 342
    move-result-object p1

    .line 343
    iget-object p1, p1, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;->_gameState:Landroidx/lifecycle/MutableLiveData;

    .line 344
    .line 345
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/fragment/app/FragmentViewLifecycleOwner;

    .line 346
    .line 347
    .line 348
    move-result-object p2

    .line 349
    new-instance v0, Lorg/wikipedia/main/MainActivity$$ExternalSyntheticLambda1;

    .line 350
    .line 351
    const/16 v1, 0xf

    .line 352
    .line 353
    invoke-direct {v0, v1, p0}, Lorg/wikipedia/main/MainActivity$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    .line 354
    .line 355
    .line 356
    new-instance p0, Lorg/wikipedia/util/SingleLiveData$sam$androidx_lifecycle_Observer$0;

    .line 357
    .line 358
    invoke-direct {p0, v0, v3}, Lorg/wikipedia/util/SingleLiveData$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;I)V

    .line 359
    .line 360
    .line 361
    invoke-virtual {p1, p2, p0}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 362
    .line 363
    .line 364
    return-void
.end method

.method public final playSound(Ljava/lang/String;)V
    .locals 4

    .line 1
    const-string v0, "android.resource://"

    .line 2
    .line 3
    sget-object v1, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 4
    .line 5
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->isOtdSoundOn()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    :try_start_0
    iget-object v1, p0, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    new-instance v3, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string p0, "/raw/"

    .line 39
    .line 40
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1, v2, p0}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :catch_0
    move-exception p0

    .line 68
    invoke-static {p0}, Lorg/wikipedia/util/log/L;->e(Ljava/lang/Throwable;)V

    .line 69
    .line 70
    .line 71
    :cond_0
    return-void
.end method

.method public final setCorrectIcon(Landroid/widget/ImageView;)V
    .locals 1

    .line 1
    const v0, 0x7f0800d0

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    const v0, 0x7f0405d1

    .line 12
    .line 13
    .line 14
    invoke-static {p0, v0}, Lokhttp3/Cache$Companion;->getThemedColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 19
    .line 20
    .line 21
    const/4 p0, 0x0

    .line 22
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final updateGameState(Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameState;)V
    .locals 14

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameState;->currentQuestionState:Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$QuestionState;

    .line 5
    .line 6
    iget-object v1, p0, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->_binding:Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    iget-object v1, v1, Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;->progressBar:Landroid/widget/ProgressBar;

    .line 12
    .line 13
    const/16 v2, 0x8

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->_binding:Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;

    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    iget-object v1, v1, Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;->errorView:Lorg/wikipedia/views/WikiErrorView;

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->_binding:Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;

    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    iget-object v1, v1, Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;->scoreView:Lorg/wikipedia/games/onthisday/ScoreView;

    .line 34
    .line 35
    const/4 v3, 0x0

    .line 36
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 37
    .line 38
    .line 39
    iget-object v1, p0, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->mainActivity:Lorg/wikipedia/games/onthisday/OnThisDayGameActivity;

    .line 40
    .line 41
    if-eqz v1, :cond_0

    .line 42
    .line 43
    invoke-virtual {v1}, Lorg/wikipedia/games/onthisday/OnThisDayGameActivity;->showAppBarDateText()V

    .line 44
    .line 45
    .line 46
    :cond_0
    iget-object v1, p0, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->_binding:Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;

    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    iget-object v1, v1, Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;->questionDate1:Landroid/widget/TextView;

    .line 52
    .line 53
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 54
    .line 55
    .line 56
    iget-object v1, p0, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->_binding:Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;

    .line 57
    .line 58
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    iget-object v1, v1, Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;->questionDate2:Landroid/widget/TextView;

    .line 62
    .line 63
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 64
    .line 65
    .line 66
    iget-object v1, p0, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->_binding:Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;

    .line 67
    .line 68
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    iget-object v1, v1, Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;->questionStatusIcon1:Landroid/widget/ImageView;

    .line 72
    .line 73
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 74
    .line 75
    .line 76
    iget-object v1, p0, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->_binding:Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;

    .line 77
    .line 78
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    .line 80
    .line 81
    iget-object v1, v1, Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;->questionStatusIcon2:Landroid/widget/ImageView;

    .line 82
    .line 83
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0}, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->getViewModel$4()Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    iget-object v1, v1, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;->currentDate:Lj$/time/LocalDate;

    .line 91
    .line 92
    invoke-virtual {v1}, Lj$/time/LocalDate;->getMonthValue()I

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    invoke-virtual {p0}, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->getViewModel$4()Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;

    .line 97
    .line 98
    .line 99
    move-result-object v4

    .line 100
    iget-object v4, v4, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;->currentDate:Lj$/time/LocalDate;

    .line 101
    .line 102
    invoke-virtual {v4}, Lj$/time/LocalDate;->getDayOfMonth()I

    .line 103
    .line 104
    .line 105
    move-result v4

    .line 106
    invoke-static {v1, v4}, Lj$/time/MonthDay;->of(II)Lj$/time/MonthDay;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 111
    .line 112
    .line 113
    move-result-object v4

    .line 114
    const-string v5, "MMMM d"

    .line 115
    .line 116
    invoke-static {v4, v5}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v4

    .line 120
    invoke-static {v4}, Lj$/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Lj$/time/format/DateTimeFormatter;

    .line 121
    .line 122
    .line 123
    move-result-object v4

    .line 124
    invoke-virtual {v1, v4}, Lj$/time/MonthDay;->format(Lj$/time/format/DateTimeFormatter;)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    iget-object v4, p0, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->mainActivity:Lorg/wikipedia/games/onthisday/OnThisDayGameActivity;

    .line 129
    .line 130
    const/4 v5, 0x0

    .line 131
    if-eqz v4, :cond_2

    .line 132
    .line 133
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 134
    .line 135
    .line 136
    iget-object v4, v4, Lorg/wikipedia/games/onthisday/OnThisDayGameActivity;->binding:Lokhttp3/Request$Builder;

    .line 137
    .line 138
    if-eqz v4, :cond_1

    .line 139
    .line 140
    iget-object v4, v4, Lokhttp3/Request$Builder;->headers:Ljava/lang/Object;

    .line 141
    .line 142
    check-cast v4, Landroid/widget/TextView;

    .line 143
    .line 144
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    .line 146
    .line 147
    goto :goto_0

    .line 148
    :cond_1
    const-string p0, "binding"

    .line 149
    .line 150
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    throw v5

    .line 154
    :cond_2
    :goto_0
    iget-object v1, p0, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->_binding:Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;

    .line 155
    .line 156
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 157
    .line 158
    .line 159
    iget-object v1, v1, Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;->scoreView:Lorg/wikipedia/games/onthisday/ScoreView;

    .line 160
    .line 161
    iget-object v4, p1, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameState;->answerState:Ljava/util/List;

    .line 162
    .line 163
    iget p1, p1, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameState;->currentQuestionIndex:I

    .line 164
    .line 165
    iget-boolean v6, v0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$QuestionState;->goToNext:Z

    .line 166
    .line 167
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 168
    .line 169
    .line 170
    invoke-interface {v4}, Ljava/util/Collection;->size()I

    .line 171
    .line 172
    .line 173
    move-result v7

    .line 174
    move v8, v3

    .line 175
    :goto_1
    const/4 v9, 0x1

    .line 176
    if-ge v8, v7, :cond_e

    .line 177
    .line 178
    if-lt v8, p1, :cond_4

    .line 179
    .line 180
    if-ne v8, p1, :cond_3

    .line 181
    .line 182
    if-eqz v6, :cond_3

    .line 183
    .line 184
    goto :goto_2

    .line 185
    :cond_3
    move v10, v3

    .line 186
    goto :goto_3

    .line 187
    :cond_4
    :goto_2
    move v10, v9

    .line 188
    :goto_3
    if-eqz v10, :cond_5

    .line 189
    .line 190
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object v11

    .line 194
    check-cast v11, Ljava/lang/Boolean;

    .line 195
    .line 196
    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    .line 197
    .line 198
    .line 199
    move-result v11

    .line 200
    if-eqz v11, :cond_5

    .line 201
    .line 202
    move v11, v9

    .line 203
    goto :goto_4

    .line 204
    :cond_5
    move v11, v3

    .line 205
    :goto_4
    iget-object v12, v1, Lorg/wikipedia/games/onthisday/ScoreView;->scoreViews:Ljava/util/ArrayList;

    .line 206
    .line 207
    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object v12

    .line 211
    check-cast v12, Landroid/widget/ImageView;

    .line 212
    .line 213
    if-ne v10, v9, :cond_7

    .line 214
    .line 215
    if-eqz v11, :cond_6

    .line 216
    .line 217
    const v13, 0x7f08013c

    .line 218
    .line 219
    .line 220
    goto :goto_5

    .line 221
    :cond_6
    const v13, 0x7f080135

    .line 222
    .line 223
    .line 224
    goto :goto_5

    .line 225
    :cond_7
    if-nez v10, :cond_d

    .line 226
    .line 227
    const v13, 0x7f0802fc

    .line 228
    .line 229
    .line 230
    :goto_5
    if-ne v10, v9, :cond_9

    .line 231
    .line 232
    if-eqz v11, :cond_8

    .line 233
    .line 234
    const v10, 0x7f0405d1

    .line 235
    .line 236
    .line 237
    goto :goto_6

    .line 238
    :cond_8
    const v10, 0x7f0401c3

    .line 239
    .line 240
    .line 241
    goto :goto_6

    .line 242
    :cond_9
    if-nez v10, :cond_c

    .line 243
    .line 244
    const v10, 0x7f0404e7

    .line 245
    .line 246
    .line 247
    :goto_6
    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 251
    .line 252
    .line 253
    move-result-object v11

    .line 254
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 255
    .line 256
    .line 257
    new-instance v13, Landroid/util/TypedValue;

    .line 258
    .line 259
    invoke-direct {v13}, Landroid/util/TypedValue;-><init>()V

    .line 260
    .line 261
    .line 262
    invoke-virtual {v11}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 263
    .line 264
    .line 265
    move-result-object v11

    .line 266
    invoke-virtual {v11, v10, v13, v9}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 267
    .line 268
    .line 269
    move-result v9

    .line 270
    if-eqz v9, :cond_a

    .line 271
    .line 272
    goto :goto_7

    .line 273
    :cond_a
    move-object v13, v5

    .line 274
    :goto_7
    if-eqz v13, :cond_b

    .line 275
    .line 276
    iget v9, v13, Landroid/util/TypedValue;->data:I

    .line 277
    .line 278
    invoke-static {v9}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 279
    .line 280
    .line 281
    move-result-object v9

    .line 282
    invoke-virtual {v12, v9}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 283
    .line 284
    .line 285
    add-int/lit8 v8, v8, 0x1

    .line 286
    .line 287
    goto :goto_1

    .line 288
    :cond_b
    const-string p0, "Attribute not found; ID="

    .line 289
    .line 290
    invoke-static {v10, p0}, Landroidx/compose/animation/core/Animation$-CC;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object p0

    .line 294
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 295
    .line 296
    .line 297
    return-void

    .line 298
    :cond_c
    invoke-static {}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m()V

    .line 299
    .line 300
    .line 301
    return-void

    .line 302
    :cond_d
    invoke-static {}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m()V

    .line 303
    .line 304
    .line 305
    return-void

    .line 306
    :cond_e
    iget-object p1, v0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$QuestionState;->event1:Lorg/wikipedia/feed/onthisday/OnThisDay$Event;

    .line 307
    .line 308
    iget-object v0, v0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$QuestionState;->event2:Lorg/wikipedia/feed/onthisday/OnThisDay$Event;

    .line 309
    .line 310
    iget-object v1, p0, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->_binding:Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;

    .line 311
    .line 312
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 313
    .line 314
    .line 315
    iget-object v1, v1, Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;->questionCard1:Lorg/wikipedia/views/WikiCardView;

    .line 316
    .line 317
    invoke-virtual {v1, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 318
    .line 319
    .line 320
    iget-object v1, p0, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->_binding:Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;

    .line 321
    .line 322
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 323
    .line 324
    .line 325
    iget-object v1, v1, Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;->questionCard2:Lorg/wikipedia/views/WikiCardView;

    .line 326
    .line 327
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 328
    .line 329
    .line 330
    iget-object v1, p0, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->_binding:Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;

    .line 331
    .line 332
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 333
    .line 334
    .line 335
    iget-object v1, v1, Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;->questionDate1:Landroid/widget/TextView;

    .line 336
    .line 337
    sget-object v4, Lj$/time/format/FormatStyle;->LONG:Lj$/time/format/FormatStyle;

    .line 338
    .line 339
    invoke-static {v4}, Lj$/time/format/DateTimeFormatter;->ofLocalizedDate(Lj$/time/format/FormatStyle;)Lj$/time/format/DateTimeFormatter;

    .line 340
    .line 341
    .line 342
    move-result-object v6

    .line 343
    iget v7, p1, Lorg/wikipedia/feed/onthisday/OnThisDay$Event;->year:I

    .line 344
    .line 345
    invoke-virtual {p0}, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->getViewModel$4()Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;

    .line 346
    .line 347
    .line 348
    move-result-object v8

    .line 349
    iget-object v8, v8, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;->currentDate:Lj$/time/LocalDate;

    .line 350
    .line 351
    invoke-virtual {v8}, Lj$/time/LocalDate;->getMonthValue()I

    .line 352
    .line 353
    .line 354
    move-result v8

    .line 355
    invoke-virtual {p0}, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->getViewModel$4()Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;

    .line 356
    .line 357
    .line 358
    move-result-object v10

    .line 359
    iget-object v10, v10, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;->currentDate:Lj$/time/LocalDate;

    .line 360
    .line 361
    invoke-virtual {v10}, Lj$/time/LocalDate;->getDayOfMonth()I

    .line 362
    .line 363
    .line 364
    move-result v10

    .line 365
    invoke-static {v7, v8, v10}, Lj$/time/LocalDate;->of(III)Lj$/time/LocalDate;

    .line 366
    .line 367
    .line 368
    move-result-object v7

    .line 369
    invoke-virtual {v6, v7}, Lj$/time/format/DateTimeFormatter;->format(Lj$/time/temporal/TemporalAccessor;)Ljava/lang/String;

    .line 370
    .line 371
    .line 372
    move-result-object v6

    .line 373
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 374
    .line 375
    .line 376
    iget-object v1, p0, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->_binding:Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;

    .line 377
    .line 378
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 379
    .line 380
    .line 381
    iget-object v1, v1, Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;->questionText1:Landroid/widget/TextView;

    .line 382
    .line 383
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 384
    .line 385
    .line 386
    move-result-object v6

    .line 387
    const-string v7, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    .line 388
    .line 389
    if-eqz v6, :cond_19

    .line 390
    .line 391
    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 392
    .line 393
    iput v3, v6, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 394
    .line 395
    invoke-virtual {v1, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 396
    .line 397
    .line 398
    iget-object v1, p0, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->_binding:Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;

    .line 399
    .line 400
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 401
    .line 402
    .line 403
    iget-object v1, v1, Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;->questionText1:Landroid/widget/TextView;

    .line 404
    .line 405
    iget-object v6, p1, Lorg/wikipedia/feed/onthisday/OnThisDay$Event;->text:Ljava/lang/String;

    .line 406
    .line 407
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 408
    .line 409
    .line 410
    iget-object v1, p0, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->_binding:Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;

    .line 411
    .line 412
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 413
    .line 414
    .line 415
    iget-object v1, v1, Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;->questionText1:Landroid/widget/TextView;

    .line 416
    .line 417
    invoke-virtual {v1, v3}, Landroid/view/View;->setScrollY(I)V

    .line 418
    .line 419
    .line 420
    invoke-virtual {p0}, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->getViewModel$4()Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;

    .line 421
    .line 422
    .line 423
    invoke-static {p1}, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;->getThumbnailUrlForEvent(Lorg/wikipedia/feed/onthisday/OnThisDay$Event;)Ljava/lang/String;

    .line 424
    .line 425
    .line 426
    move-result-object p1

    .line 427
    iget-object v1, p0, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->_binding:Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;

    .line 428
    .line 429
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 430
    .line 431
    .line 432
    iget-object v1, v1, Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;->questionThumbnail1:Lorg/wikipedia/views/FaceAndColorDetectImageView;

    .line 433
    .line 434
    if-eqz p1, :cond_10

    .line 435
    .line 436
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 437
    .line 438
    .line 439
    move-result v6

    .line 440
    if-nez v6, :cond_f

    .line 441
    .line 442
    goto :goto_8

    .line 443
    :cond_f
    move v6, v3

    .line 444
    goto :goto_9

    .line 445
    :cond_10
    :goto_8
    move v6, v9

    .line 446
    :goto_9
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 447
    .line 448
    .line 449
    move-result-object v6

    .line 450
    invoke-virtual {v1, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 451
    .line 452
    .line 453
    const/16 v1, 0x14

    .line 454
    .line 455
    if-eqz p1, :cond_12

    .line 456
    .line 457
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 458
    .line 459
    .line 460
    move-result v6

    .line 461
    if-nez v6, :cond_11

    .line 462
    .line 463
    goto :goto_a

    .line 464
    :cond_11
    iget-object v6, p0, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->_binding:Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;

    .line 465
    .line 466
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 467
    .line 468
    .line 469
    iget-object v6, v6, Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;->questionThumbnail1:Lorg/wikipedia/views/FaceAndColorDetectImageView;

    .line 470
    .line 471
    invoke-virtual {v6, v3}, Landroid/view/View;->setVisibility(I)V

    .line 472
    .line 473
    .line 474
    iget-object v6, p0, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->_binding:Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;

    .line 475
    .line 476
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 477
    .line 478
    .line 479
    iget-object v6, v6, Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;->questionThumbnail1:Lorg/wikipedia/views/FaceAndColorDetectImageView;

    .line 480
    .line 481
    invoke-static {v6, p1, v5, v1}, Lorg/wikipedia/views/ViewUtil;->loadImage$default(Landroid/widget/ImageView;Ljava/lang/String;Lorg/wikipedia/views/imageservice/ImageLoadListener;I)V

    .line 482
    .line 483
    .line 484
    goto :goto_b

    .line 485
    :cond_12
    :goto_a
    iget-object p1, p0, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->_binding:Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;

    .line 486
    .line 487
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 488
    .line 489
    .line 490
    iget-object p1, p1, Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;->questionThumbnail1:Lorg/wikipedia/views/FaceAndColorDetectImageView;

    .line 491
    .line 492
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 493
    .line 494
    .line 495
    :goto_b
    iget-object p1, p0, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->_binding:Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;

    .line 496
    .line 497
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 498
    .line 499
    .line 500
    iget-object p1, p1, Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;->questionDate2:Landroid/widget/TextView;

    .line 501
    .line 502
    invoke-static {v4}, Lj$/time/format/DateTimeFormatter;->ofLocalizedDate(Lj$/time/format/FormatStyle;)Lj$/time/format/DateTimeFormatter;

    .line 503
    .line 504
    .line 505
    move-result-object v4

    .line 506
    iget v6, v0, Lorg/wikipedia/feed/onthisday/OnThisDay$Event;->year:I

    .line 507
    .line 508
    invoke-virtual {p0}, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->getViewModel$4()Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;

    .line 509
    .line 510
    .line 511
    move-result-object v8

    .line 512
    iget-object v8, v8, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;->currentDate:Lj$/time/LocalDate;

    .line 513
    .line 514
    invoke-virtual {v8}, Lj$/time/LocalDate;->getMonthValue()I

    .line 515
    .line 516
    .line 517
    move-result v8

    .line 518
    invoke-virtual {p0}, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->getViewModel$4()Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;

    .line 519
    .line 520
    .line 521
    move-result-object v10

    .line 522
    iget-object v10, v10, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;->currentDate:Lj$/time/LocalDate;

    .line 523
    .line 524
    invoke-virtual {v10}, Lj$/time/LocalDate;->getDayOfMonth()I

    .line 525
    .line 526
    .line 527
    move-result v10

    .line 528
    invoke-static {v6, v8, v10}, Lj$/time/LocalDate;->of(III)Lj$/time/LocalDate;

    .line 529
    .line 530
    .line 531
    move-result-object v6

    .line 532
    invoke-virtual {v4, v6}, Lj$/time/format/DateTimeFormatter;->format(Lj$/time/temporal/TemporalAccessor;)Ljava/lang/String;

    .line 533
    .line 534
    .line 535
    move-result-object v4

    .line 536
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 537
    .line 538
    .line 539
    iget-object p1, p0, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->_binding:Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;

    .line 540
    .line 541
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 542
    .line 543
    .line 544
    iget-object p1, p1, Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;->questionText2:Landroid/widget/TextView;

    .line 545
    .line 546
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 547
    .line 548
    .line 549
    move-result-object v4

    .line 550
    if-eqz v4, :cond_18

    .line 551
    .line 552
    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 553
    .line 554
    iput v3, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 555
    .line 556
    invoke-virtual {p1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 557
    .line 558
    .line 559
    iget-object p1, p0, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->_binding:Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;

    .line 560
    .line 561
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 562
    .line 563
    .line 564
    iget-object p1, p1, Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;->questionText2:Landroid/widget/TextView;

    .line 565
    .line 566
    iget-object v4, v0, Lorg/wikipedia/feed/onthisday/OnThisDay$Event;->text:Ljava/lang/String;

    .line 567
    .line 568
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 569
    .line 570
    .line 571
    iget-object p1, p0, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->_binding:Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;

    .line 572
    .line 573
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 574
    .line 575
    .line 576
    iget-object p1, p1, Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;->questionText2:Landroid/widget/TextView;

    .line 577
    .line 578
    invoke-virtual {p1, v3}, Landroid/view/View;->setScrollY(I)V

    .line 579
    .line 580
    .line 581
    invoke-virtual {p0}, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->getViewModel$4()Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;

    .line 582
    .line 583
    .line 584
    invoke-static {v0}, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;->getThumbnailUrlForEvent(Lorg/wikipedia/feed/onthisday/OnThisDay$Event;)Ljava/lang/String;

    .line 585
    .line 586
    .line 587
    move-result-object p1

    .line 588
    iget-object v0, p0, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->_binding:Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;

    .line 589
    .line 590
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 591
    .line 592
    .line 593
    iget-object v0, v0, Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;->questionThumbnail2:Lorg/wikipedia/views/FaceAndColorDetectImageView;

    .line 594
    .line 595
    if-eqz p1, :cond_14

    .line 596
    .line 597
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 598
    .line 599
    .line 600
    move-result v4

    .line 601
    if-nez v4, :cond_13

    .line 602
    .line 603
    goto :goto_c

    .line 604
    :cond_13
    move v9, v3

    .line 605
    :cond_14
    :goto_c
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 606
    .line 607
    .line 608
    move-result-object v4

    .line 609
    invoke-virtual {v0, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 610
    .line 611
    .line 612
    if-eqz p1, :cond_16

    .line 613
    .line 614
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 615
    .line 616
    .line 617
    move-result v0

    .line 618
    if-nez v0, :cond_15

    .line 619
    .line 620
    goto :goto_d

    .line 621
    :cond_15
    iget-object v0, p0, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->_binding:Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;

    .line 622
    .line 623
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 624
    .line 625
    .line 626
    iget-object v0, v0, Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;->questionThumbnail2:Lorg/wikipedia/views/FaceAndColorDetectImageView;

    .line 627
    .line 628
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 629
    .line 630
    .line 631
    iget-object v0, p0, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->_binding:Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;

    .line 632
    .line 633
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 634
    .line 635
    .line 636
    iget-object v0, v0, Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;->questionThumbnail2:Lorg/wikipedia/views/FaceAndColorDetectImageView;

    .line 637
    .line 638
    invoke-static {v0, p1, v5, v1}, Lorg/wikipedia/views/ViewUtil;->loadImage$default(Landroid/widget/ImageView;Ljava/lang/String;Lorg/wikipedia/views/imageservice/ImageLoadListener;I)V

    .line 639
    .line 640
    .line 641
    goto :goto_e

    .line 642
    :cond_16
    :goto_d
    iget-object p1, p0, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->_binding:Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;

    .line 643
    .line 644
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 645
    .line 646
    .line 647
    iget-object p1, p1, Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;->questionThumbnail2:Lorg/wikipedia/views/FaceAndColorDetectImageView;

    .line 648
    .line 649
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 650
    .line 651
    .line 652
    :goto_e
    iget-object p1, p0, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->_binding:Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;

    .line 653
    .line 654
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 655
    .line 656
    .line 657
    iget-object p1, p1, Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;->whichCameFirstText:Landroid/widget/TextView;

    .line 658
    .line 659
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 660
    .line 661
    .line 662
    iget-object p1, p0, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->_binding:Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;

    .line 663
    .line 664
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 665
    .line 666
    .line 667
    iget-object p1, p1, Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;->whichCameFirstText:Landroid/widget/TextView;

    .line 668
    .line 669
    const v0, 0x7f1204f3

    .line 670
    .line 671
    .line 672
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 673
    .line 674
    .line 675
    iget-object p1, p0, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->_binding:Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;

    .line 676
    .line 677
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 678
    .line 679
    .line 680
    iget-object p1, p1, Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;->pointsText:Landroid/widget/TextView;

    .line 681
    .line 682
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 683
    .line 684
    .line 685
    iget-object p1, p0, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->_binding:Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;

    .line 686
    .line 687
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 688
    .line 689
    .line 690
    iget-object p1, p1, Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;->nextQuestionText:Landroid/widget/TextView;

    .line 691
    .line 692
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 693
    .line 694
    .line 695
    iget-object p1, p0, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->_binding:Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;

    .line 696
    .line 697
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 698
    .line 699
    .line 700
    iget-object p1, p1, Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;->questionDate1:Landroid/widget/TextView;

    .line 701
    .line 702
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 703
    .line 704
    .line 705
    move-result-object v0

    .line 706
    const v1, 0x7f04051a

    .line 707
    .line 708
    .line 709
    invoke-static {v0, v1}, Lokhttp3/Cache$Companion;->getThemedColor(Landroid/content/Context;I)I

    .line 710
    .line 711
    .line 712
    move-result v0

    .line 713
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 714
    .line 715
    .line 716
    iget-object p1, p0, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->_binding:Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;

    .line 717
    .line 718
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 719
    .line 720
    .line 721
    iget-object p1, p1, Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;->questionDate2:Landroid/widget/TextView;

    .line 722
    .line 723
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 724
    .line 725
    .line 726
    move-result-object v0

    .line 727
    invoke-static {v0, v1}, Lokhttp3/Cache$Companion;->getThemedColor(Landroid/content/Context;I)I

    .line 728
    .line 729
    .line 730
    move-result v0

    .line 731
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 732
    .line 733
    .line 734
    iget-object p1, p0, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->_binding:Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;

    .line 735
    .line 736
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 737
    .line 738
    .line 739
    iget-object p1, p1, Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;->questionDate1:Landroid/widget/TextView;

    .line 740
    .line 741
    const v0, 0x7f0800ee

    .line 742
    .line 743
    .line 744
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 745
    .line 746
    .line 747
    iget-object p1, p0, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->_binding:Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;

    .line 748
    .line 749
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 750
    .line 751
    .line 752
    iget-object p1, p1, Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;->questionDate2:Landroid/widget/TextView;

    .line 753
    .line 754
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 755
    .line 756
    .line 757
    iget-object p1, p0, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->_binding:Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;

    .line 758
    .line 759
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 760
    .line 761
    .line 762
    iget-object p1, p1, Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;->centerContent:Landroid/widget/FrameLayout;

    .line 763
    .line 764
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 765
    .line 766
    .line 767
    iget-object p1, p0, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->_binding:Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;

    .line 768
    .line 769
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 770
    .line 771
    .line 772
    iget-object p1, p1, Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;->correctIncorrectText:Landroid/widget/TextView;

    .line 773
    .line 774
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 775
    .line 776
    .line 777
    iget-object p1, p0, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->_binding:Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;

    .line 778
    .line 779
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 780
    .line 781
    .line 782
    iget-object p1, p1, Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;->currentQuestionContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 783
    .line 784
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 785
    .line 786
    .line 787
    iget-object p1, p0, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->_binding:Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;

    .line 788
    .line 789
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 790
    .line 791
    .line 792
    iget-object p1, p1, Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;->rootView:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 793
    .line 794
    new-instance v0, Lorg/wikipedia/main/MainFragment$$ExternalSyntheticLambda5;

    .line 795
    .line 796
    const/16 v1, 0x9

    .line 797
    .line 798
    invoke-direct {v0, v1, p0}, Lorg/wikipedia/main/MainFragment$$ExternalSyntheticLambda5;-><init>(ILjava/lang/Object;)V

    .line 799
    .line 800
    .line 801
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 802
    .line 803
    .line 804
    iget-object p0, p0, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->mainActivity:Lorg/wikipedia/games/onthisday/OnThisDayGameActivity;

    .line 805
    .line 806
    if-eqz p0, :cond_17

    .line 807
    .line 808
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    .line 809
    .line 810
    .line 811
    move-result-object p0

    .line 812
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegate;->invalidateOptionsMenu()V

    .line 813
    .line 814
    .line 815
    :cond_17
    return-void

    .line 816
    :cond_18
    invoke-static {v7}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 817
    .line 818
    .line 819
    return-void

    .line 820
    :cond_19
    invoke-static {v7}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 821
    .line 822
    .line 823
    return-void
.end method

.method public final updateQuestionEndLayout()V
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->_binding:Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v0, v0, Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;->whichCameFirstText:Landroid/widget/TextView;

    .line 7
    .line 8
    const/16 v1, 0x8

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->_binding:Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    iget-object v0, v0, Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;->nextQuestionText:Landroid/widget/TextView;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->_binding:Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    iget-object v0, v0, Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;->centerContent:Landroid/widget/FrameLayout;

    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->_binding:Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;

    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    iget-object v0, v0, Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;->questionThumbnail1:Lorg/wikipedia/views/FaceAndColorDetectImageView;

    .line 40
    .line 41
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    const/high16 v1, 0x42200000    # 40.0f

    .line 46
    .line 47
    const-string v2, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    .line 48
    .line 49
    if-nez v0, :cond_0

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    iget-object v0, p0, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->_binding:Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;

    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    iget-object v0, v0, Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;->questionText1:Landroid/widget/TextView;

    .line 58
    .line 59
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    if-eqz v3, :cond_3

    .line 64
    .line 65
    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 66
    .line 67
    invoke-static {v1}, Lokio/Okio__OkioKt;->roundedDpToPx(F)I

    .line 68
    .line 69
    .line 70
    move-result v4

    .line 71
    iput v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 72
    .line 73
    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 74
    .line 75
    .line 76
    :goto_0
    iget-object v0, p0, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->_binding:Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;

    .line 77
    .line 78
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    .line 80
    .line 81
    iget-object v0, v0, Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;->questionThumbnail2:Lorg/wikipedia/views/FaceAndColorDetectImageView;

    .line 82
    .line 83
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    if-nez v0, :cond_1

    .line 88
    .line 89
    return-void

    .line 90
    :cond_1
    iget-object p0, p0, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->_binding:Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;

    .line 91
    .line 92
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 93
    .line 94
    .line 95
    iget-object p0, p0, Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;->questionText2:Landroid/widget/TextView;

    .line 96
    .line 97
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    if-eqz v0, :cond_2

    .line 102
    .line 103
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 104
    .line 105
    invoke-static {v1}, Lokio/Okio__OkioKt;->roundedDpToPx(F)I

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 110
    .line 111
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 112
    .line 113
    .line 114
    return-void

    .line 115
    :cond_2
    invoke-static {v2}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    return-void

    .line 119
    :cond_3
    invoke-static {v2}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    return-void
.end method
