.class public final Lnet/thunderbird/feature/notification/api/ui/layout/BannerInlineListScrollBehaviour$connection$1;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;


# instance fields
.field public final synthetic this$0:Lnet/thunderbird/feature/notification/api/ui/layout/BannerInlineListScrollBehaviour;


# direct methods
.method public constructor <init>(Lnet/thunderbird/feature/notification/api/ui/layout/BannerInlineListScrollBehaviour;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnet/thunderbird/feature/notification/api/ui/layout/BannerInlineListScrollBehaviour$connection$1;->this$0:Lnet/thunderbird/feature/notification/api/ui/layout/BannerInlineListScrollBehaviour;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onPostFling-RZ2iAVY(JJLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p5

    .line 4
    .line 5
    iget-object v2, v0, Lnet/thunderbird/feature/notification/api/ui/layout/BannerInlineListScrollBehaviour$connection$1;->this$0:Lnet/thunderbird/feature/notification/api/ui/layout/BannerInlineListScrollBehaviour;

    .line 6
    .line 7
    iget-object v3, v2, Lnet/thunderbird/feature/notification/api/ui/layout/BannerInlineListScrollBehaviour;->state:Lnet/thunderbird/feature/notification/api/ui/layout/BannerInlineListScrollState;

    .line 8
    .line 9
    instance-of v4, v1, Lnet/thunderbird/feature/notification/api/ui/layout/BannerInlineListScrollBehaviour$connection$1$onPostFling$1;

    .line 10
    .line 11
    if-eqz v4, :cond_0

    .line 12
    .line 13
    move-object v4, v1

    .line 14
    check-cast v4, Lnet/thunderbird/feature/notification/api/ui/layout/BannerInlineListScrollBehaviour$connection$1$onPostFling$1;

    .line 15
    .line 16
    iget v5, v4, Lnet/thunderbird/feature/notification/api/ui/layout/BannerInlineListScrollBehaviour$connection$1$onPostFling$1;->label:I

    .line 17
    .line 18
    const/high16 v6, -0x80000000

    .line 19
    .line 20
    and-int v7, v5, v6

    .line 21
    .line 22
    if-eqz v7, :cond_0

    .line 23
    .line 24
    sub-int/2addr v5, v6

    .line 25
    iput v5, v4, Lnet/thunderbird/feature/notification/api/ui/layout/BannerInlineListScrollBehaviour$connection$1$onPostFling$1;->label:I

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    new-instance v4, Lnet/thunderbird/feature/notification/api/ui/layout/BannerInlineListScrollBehaviour$connection$1$onPostFling$1;

    .line 29
    .line 30
    check-cast v1, Lkotlin/coroutines/jvm/internal/ContinuationImpl;

    .line 31
    .line 32
    invoke-direct {v4, v0, v1}, Lnet/thunderbird/feature/notification/api/ui/layout/BannerInlineListScrollBehaviour$connection$1$onPostFling$1;-><init>(Lnet/thunderbird/feature/notification/api/ui/layout/BannerInlineListScrollBehaviour$connection$1;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 33
    .line 34
    .line 35
    :goto_0
    iget-object v0, v4, Lnet/thunderbird/feature/notification/api/ui/layout/BannerInlineListScrollBehaviour$connection$1$onPostFling$1;->result:Ljava/lang/Object;

    .line 36
    .line 37
    iget v1, v4, Lnet/thunderbird/feature/notification/api/ui/layout/BannerInlineListScrollBehaviour$connection$1$onPostFling$1;->label:I

    .line 38
    .line 39
    const-wide/16 v5, 0x0

    .line 40
    .line 41
    const/4 v7, 0x2

    .line 42
    const/4 v8, 0x1

    .line 43
    sget-object v10, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 44
    .line 45
    if-eqz v1, :cond_3

    .line 46
    .line 47
    if-eq v1, v8, :cond_2

    .line 48
    .line 49
    if-ne v1, v7, :cond_1

    .line 50
    .line 51
    iget-wide v1, v4, Lnet/thunderbird/feature/notification/api/ui/layout/BannerInlineListScrollBehaviour$connection$1$onPostFling$1;->J$2:J

    .line 52
    .line 53
    iget-object v3, v4, Lnet/thunderbird/feature/notification/api/ui/layout/BannerInlineListScrollBehaviour$connection$1$onPostFling$1;->L$0:Lkotlin/jvm/internal/Ref$FloatRef;

    .line 54
    .line 55
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    const/16 p0, 0x0

    .line 59
    .line 60
    goto/16 :goto_3

    .line 61
    .line 62
    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 63
    .line 64
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    const/4 v0, 0x0

    .line 68
    return-object v0

    .line 69
    :cond_2
    iget v1, v4, Lnet/thunderbird/feature/notification/api/ui/layout/BannerInlineListScrollBehaviour$connection$1$onPostFling$1;->F$1:F

    .line 70
    .line 71
    iget v8, v4, Lnet/thunderbird/feature/notification/api/ui/layout/BannerInlineListScrollBehaviour$connection$1$onPostFling$1;->F$0:F

    .line 72
    .line 73
    iget-wide v11, v4, Lnet/thunderbird/feature/notification/api/ui/layout/BannerInlineListScrollBehaviour$connection$1$onPostFling$1;->J$1:J

    .line 74
    .line 75
    iget-wide v13, v4, Lnet/thunderbird/feature/notification/api/ui/layout/BannerInlineListScrollBehaviour$connection$1$onPostFling$1;->J$0:J

    .line 76
    .line 77
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    move-wide/from16 v17, v13

    .line 81
    .line 82
    move-wide v13, v11

    .line 83
    move-wide/from16 v11, v17

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_3
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    iget-object v0, v3, Lnet/thunderbird/feature/notification/api/ui/layout/BannerInlineListScrollState;->bannerInlineListHeightOffset$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    .line 90
    .line 91
    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;->getFloatValue()F

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    iget-object v1, v3, Lnet/thunderbird/feature/notification/api/ui/layout/BannerInlineListScrollState;->bannerInlineListHeight$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    .line 96
    .line 97
    invoke-virtual {v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;->getFloatValue()F

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    move-wide/from16 v11, p1

    .line 102
    .line 103
    iput-wide v11, v4, Lnet/thunderbird/feature/notification/api/ui/layout/BannerInlineListScrollBehaviour$connection$1$onPostFling$1;->J$0:J

    .line 104
    .line 105
    move-wide/from16 v13, p3

    .line 106
    .line 107
    iput-wide v13, v4, Lnet/thunderbird/feature/notification/api/ui/layout/BannerInlineListScrollBehaviour$connection$1$onPostFling$1;->J$1:J

    .line 108
    .line 109
    iput v0, v4, Lnet/thunderbird/feature/notification/api/ui/layout/BannerInlineListScrollBehaviour$connection$1$onPostFling$1;->F$0:F

    .line 110
    .line 111
    iput v1, v4, Lnet/thunderbird/feature/notification/api/ui/layout/BannerInlineListScrollBehaviour$connection$1$onPostFling$1;->F$1:F

    .line 112
    .line 113
    iput v8, v4, Lnet/thunderbird/feature/notification/api/ui/layout/BannerInlineListScrollBehaviour$connection$1$onPostFling$1;->label:I

    .line 114
    .line 115
    new-instance v8, Landroidx/compose/ui/unit/Velocity;

    .line 116
    .line 117
    invoke-direct {v8, v5, v6}, Landroidx/compose/ui/unit/Velocity;-><init>(J)V

    .line 118
    .line 119
    .line 120
    if-ne v8, v10, :cond_4

    .line 121
    .line 122
    move-object v1, v10

    .line 123
    goto :goto_2

    .line 124
    :cond_4
    move-object/from16 v17, v8

    .line 125
    .line 126
    move v8, v0

    .line 127
    move-object/from16 v0, v17

    .line 128
    .line 129
    :goto_1
    check-cast v0, Landroidx/compose/ui/unit/Velocity;

    .line 130
    .line 131
    iget-wide v5, v0, Landroidx/compose/ui/unit/Velocity;->packedValue:J

    .line 132
    .line 133
    neg-float v0, v1

    .line 134
    cmpg-float v16, v8, v0

    .line 135
    .line 136
    if-nez v16, :cond_7

    .line 137
    .line 138
    new-instance v15, Lkotlin/jvm/internal/Ref$FloatRef;

    .line 139
    .line 140
    invoke-direct {v15}, Ljava/lang/Object;-><init>()V

    .line 141
    .line 142
    .line 143
    const/16 p0, 0x0

    .line 144
    .line 145
    invoke-static {v13, v14}, Landroidx/compose/ui/unit/Velocity;->getY-impl(J)F

    .line 146
    .line 147
    .line 148
    move-result v9

    .line 149
    iput v9, v15, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 150
    .line 151
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    .line 152
    .line 153
    .line 154
    move-result v9

    .line 155
    cmpl-float v9, v9, p0

    .line 156
    .line 157
    if-lez v9, :cond_6

    .line 158
    .line 159
    iget-object v3, v3, Lnet/thunderbird/feature/notification/api/ui/layout/BannerInlineListScrollState;->contentOffset$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    .line 160
    .line 161
    invoke-virtual {v3}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;->getFloatValue()F

    .line 162
    .line 163
    .line 164
    move-result v3

    .line 165
    invoke-static {v3}, Lkotlin/math/MathKt;->roundToInt(F)I

    .line 166
    .line 167
    .line 168
    move-result v3

    .line 169
    if-nez v3, :cond_6

    .line 170
    .line 171
    cmpg-float v0, v0, v8

    .line 172
    .line 173
    if-gtz v0, :cond_6

    .line 174
    .line 175
    cmpg-float v0, v8, p0

    .line 176
    .line 177
    if-gtz v0, :cond_6

    .line 178
    .line 179
    new-instance v0, Lkotlin/jvm/internal/Ref$FloatRef;

    .line 180
    .line 181
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 182
    .line 183
    .line 184
    invoke-static {v13, v14}, Landroidx/compose/ui/unit/Velocity;->getY-impl(J)F

    .line 185
    .line 186
    .line 187
    move-result v3

    .line 188
    const/16 v9, 0x1c

    .line 189
    .line 190
    invoke-static {v9, v3}, Landroidx/compose/animation/core/ArcSplineKt;->AnimationState$default(IF)Landroidx/compose/animation/core/AnimationState;

    .line 191
    .line 192
    .line 193
    move-result-object v3

    .line 194
    iget-object v9, v2, Lnet/thunderbird/feature/notification/api/ui/layout/BannerInlineListScrollBehaviour;->flingAnimation:Landroidx/compose/animation/core/DecayAnimationSpecImpl;

    .line 195
    .line 196
    new-instance v7, Lnet/thunderbird/core/ui/setting/dialog/ui/components/list/SettingListKt$$ExternalSyntheticLambda0;

    .line 197
    .line 198
    move-object/from16 v16, v10

    .line 199
    .line 200
    const/16 v10, 0x8

    .line 201
    .line 202
    invoke-direct {v7, v0, v2, v15, v10}, Lnet/thunderbird/core/ui/setting/dialog/ui/components/list/SettingListKt$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 203
    .line 204
    .line 205
    iput-object v15, v4, Lnet/thunderbird/feature/notification/api/ui/layout/BannerInlineListScrollBehaviour$connection$1$onPostFling$1;->L$0:Lkotlin/jvm/internal/Ref$FloatRef;

    .line 206
    .line 207
    iput-wide v11, v4, Lnet/thunderbird/feature/notification/api/ui/layout/BannerInlineListScrollBehaviour$connection$1$onPostFling$1;->J$0:J

    .line 208
    .line 209
    iput-wide v13, v4, Lnet/thunderbird/feature/notification/api/ui/layout/BannerInlineListScrollBehaviour$connection$1$onPostFling$1;->J$1:J

    .line 210
    .line 211
    iput v8, v4, Lnet/thunderbird/feature/notification/api/ui/layout/BannerInlineListScrollBehaviour$connection$1$onPostFling$1;->F$0:F

    .line 212
    .line 213
    iput v1, v4, Lnet/thunderbird/feature/notification/api/ui/layout/BannerInlineListScrollBehaviour$connection$1$onPostFling$1;->F$1:F

    .line 214
    .line 215
    iput-wide v5, v4, Lnet/thunderbird/feature/notification/api/ui/layout/BannerInlineListScrollBehaviour$connection$1$onPostFling$1;->J$2:J

    .line 216
    .line 217
    const/4 v0, 0x2

    .line 218
    iput v0, v4, Lnet/thunderbird/feature/notification/api/ui/layout/BannerInlineListScrollBehaviour$connection$1$onPostFling$1;->label:I

    .line 219
    .line 220
    invoke-static {v3, v9, v7, v4}, Landroidx/compose/animation/core/ArcSplineKt;->animateDecay$default(Landroidx/compose/animation/core/AnimationState;Landroidx/compose/animation/core/DecayAnimationSpecImpl;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    move-object/from16 v1, v16

    .line 225
    .line 226
    if-ne v0, v1, :cond_5

    .line 227
    .line 228
    :goto_2
    return-object v1

    .line 229
    :cond_5
    move-wide v1, v5

    .line 230
    move-object v3, v15

    .line 231
    :goto_3
    move-wide v5, v1

    .line 232
    move-object v15, v3

    .line 233
    :cond_6
    iget v0, v15, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 234
    .line 235
    move/from16 v1, p0

    .line 236
    .line 237
    invoke-static {v1, v0}, Lorg/slf4j/helpers/Util;->Velocity(FF)J

    .line 238
    .line 239
    .line 240
    move-result-wide v0

    .line 241
    invoke-static {v5, v6, v0, v1}, Landroidx/compose/ui/unit/Velocity;->plus-AH228Gc(JJ)J

    .line 242
    .line 243
    .line 244
    move-result-wide v0

    .line 245
    new-instance v2, Landroidx/compose/ui/unit/Velocity;

    .line 246
    .line 247
    invoke-direct {v2, v0, v1}, Landroidx/compose/ui/unit/Velocity;-><init>(J)V

    .line 248
    .line 249
    .line 250
    return-object v2

    .line 251
    :cond_7
    new-instance v0, Landroidx/compose/ui/unit/Velocity;

    .line 252
    .line 253
    const-wide/16 v1, 0x0

    .line 254
    .line 255
    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/unit/Velocity;-><init>(J)V

    .line 256
    .line 257
    .line 258
    return-object v0
.end method

.method public final onPostScroll-DzOQY0M(IJJ)J
    .locals 7

    .line 1
    iget-object p0, p0, Lnet/thunderbird/feature/notification/api/ui/layout/BannerInlineListScrollBehaviour$connection$1;->this$0:Lnet/thunderbird/feature/notification/api/ui/layout/BannerInlineListScrollBehaviour;

    .line 2
    .line 3
    iget-object p0, p0, Lnet/thunderbird/feature/notification/api/ui/layout/BannerInlineListScrollBehaviour;->state:Lnet/thunderbird/feature/notification/api/ui/layout/BannerInlineListScrollState;

    .line 4
    .line 5
    iget-object p1, p0, Lnet/thunderbird/feature/notification/api/ui/layout/BannerInlineListScrollState;->accumulatedContentOffset$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    .line 6
    .line 7
    invoke-virtual {p1}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;->getFloatValue()F

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    const-wide v0, 0xffffffffL

    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    and-long/2addr p2, v0

    .line 17
    long-to-int p2, p2

    .line 18
    invoke-static {p2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 19
    .line 20
    .line 21
    move-result p3

    .line 22
    add-float/2addr p3, p1

    .line 23
    iget-object p1, p0, Lnet/thunderbird/feature/notification/api/ui/layout/BannerInlineListScrollState;->accumulatedContentOffset$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    .line 24
    .line 25
    invoke-virtual {p1, p3}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;->setFloatValue(F)V

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Lnet/thunderbird/feature/notification/api/ui/layout/BannerInlineListScrollState;->bannerInlineListHeight$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    .line 29
    .line 30
    invoke-virtual {p1}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;->getFloatValue()F

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    const/4 p3, 0x0

    .line 35
    cmpg-float p1, p1, p3

    .line 36
    .line 37
    const-wide/16 v2, 0x0

    .line 38
    .line 39
    if-gtz p1, :cond_0

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_0
    iget-object p1, p0, Lnet/thunderbird/feature/notification/api/ui/layout/BannerInlineListScrollState;->bannerInlineListHeight$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    .line 43
    .line 44
    invoke-virtual {p1}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;->getFloatValue()F

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    iget-object v4, p0, Lnet/thunderbird/feature/notification/api/ui/layout/BannerInlineListScrollState;->bannerInlineListHeightOffset$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    .line 49
    .line 50
    invoke-virtual {v4}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;->getFloatValue()F

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    neg-float p1, p1

    .line 55
    cmpg-float p1, v4, p1

    .line 56
    .line 57
    if-nez p1, :cond_2

    .line 58
    .line 59
    iget-object v5, p0, Lnet/thunderbird/feature/notification/api/ui/layout/BannerInlineListScrollState;->contentOffset$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    .line 60
    .line 61
    invoke-virtual {v5}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;->getFloatValue()F

    .line 62
    .line 63
    .line 64
    move-result v5

    .line 65
    invoke-static {p2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 66
    .line 67
    .line 68
    move-result v6

    .line 69
    add-float/2addr v6, v5

    .line 70
    iget-object v5, p0, Lnet/thunderbird/feature/notification/api/ui/layout/BannerInlineListScrollState;->contentOffset$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    .line 71
    .line 72
    invoke-virtual {v5, v6}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;->setFloatValue(F)V

    .line 73
    .line 74
    .line 75
    cmpg-float v4, v4, p3

    .line 76
    .line 77
    if-nez v4, :cond_1

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_1
    if-nez p1, :cond_2

    .line 81
    .line 82
    :goto_0
    invoke-static {p2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    cmpg-float p1, p1, p3

    .line 87
    .line 88
    if-nez p1, :cond_2

    .line 89
    .line 90
    and-long p1, p4, v0

    .line 91
    .line 92
    long-to-int p1, p1

    .line 93
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 94
    .line 95
    .line 96
    move-result p1

    .line 97
    cmpl-float p1, p1, p3

    .line 98
    .line 99
    if-lez p1, :cond_2

    .line 100
    .line 101
    iget-object p0, p0, Lnet/thunderbird/feature/notification/api/ui/layout/BannerInlineListScrollState;->contentOffset$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    .line 102
    .line 103
    invoke-virtual {p0, p3}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;->setFloatValue(F)V

    .line 104
    .line 105
    .line 106
    :cond_2
    :goto_1
    return-wide v2
.end method

.method public final onPreFling-QWom1Mo(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    new-instance p0, Landroidx/compose/ui/unit/Velocity;

    .line 2
    .line 3
    const-wide/16 p1, 0x0

    .line 4
    .line 5
    invoke-direct {p0, p1, p2}, Landroidx/compose/ui/unit/Velocity;-><init>(J)V

    .line 6
    .line 7
    .line 8
    return-object p0
.end method

.method public final onPreScroll-OzD1aCk(IJ)J
    .locals 4

    .line 1
    iget-object p0, p0, Lnet/thunderbird/feature/notification/api/ui/layout/BannerInlineListScrollBehaviour$connection$1;->this$0:Lnet/thunderbird/feature/notification/api/ui/layout/BannerInlineListScrollBehaviour;

    .line 2
    .line 3
    iget-object p0, p0, Lnet/thunderbird/feature/notification/api/ui/layout/BannerInlineListScrollBehaviour;->state:Lnet/thunderbird/feature/notification/api/ui/layout/BannerInlineListScrollState;

    .line 4
    .line 5
    iget-object p1, p0, Lnet/thunderbird/feature/notification/api/ui/layout/BannerInlineListScrollState;->bannerInlineListHeight$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    .line 6
    .line 7
    invoke-virtual {p1}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;->getFloatValue()F

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    const/4 v0, 0x0

    .line 12
    cmpg-float v1, p1, v0

    .line 13
    .line 14
    if-gtz v1, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object v1, p0, Lnet/thunderbird/feature/notification/api/ui/layout/BannerInlineListScrollState;->contentOffset$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    .line 18
    .line 19
    invoke-virtual {v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;->getFloatValue()F

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    cmpg-float v1, v1, v0

    .line 24
    .line 25
    if-nez v1, :cond_2

    .line 26
    .line 27
    iget-object v1, p0, Lnet/thunderbird/feature/notification/api/ui/layout/BannerInlineListScrollState;->contentOffset$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    .line 28
    .line 29
    invoke-virtual {v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;->getFloatValue()F

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    cmpg-float v1, v1, v0

    .line 34
    .line 35
    if-nez v1, :cond_2

    .line 36
    .line 37
    const-wide v1, 0xffffffffL

    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    and-long/2addr v1, p2

    .line 43
    long-to-int v1, v1

    .line 44
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    iget-object v2, p0, Lnet/thunderbird/feature/notification/api/ui/layout/BannerInlineListScrollState;->bannerInlineListHeightOffset$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    .line 49
    .line 50
    invoke-virtual {v2}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;->getFloatValue()F

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    iget-object v3, p0, Lnet/thunderbird/feature/notification/api/ui/layout/BannerInlineListScrollState;->bannerInlineListHeightOffset$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    .line 55
    .line 56
    invoke-virtual {v3}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;->getFloatValue()F

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    add-float/2addr v3, v1

    .line 61
    neg-float p1, p1

    .line 62
    invoke-static {v3, p1, v0}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    iget-object v0, p0, Lnet/thunderbird/feature/notification/api/ui/layout/BannerInlineListScrollState;->bannerInlineListHeightOffset$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    .line 67
    .line 68
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;->setFloatValue(F)V

    .line 69
    .line 70
    .line 71
    iget-object p0, p0, Lnet/thunderbird/feature/notification/api/ui/layout/BannerInlineListScrollState;->bannerInlineListHeightOffset$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    .line 72
    .line 73
    invoke-virtual {p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;->getFloatValue()F

    .line 74
    .line 75
    .line 76
    move-result p0

    .line 77
    cmpg-float p0, v2, p0

    .line 78
    .line 79
    if-nez p0, :cond_1

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_1
    const/4 p0, 0x1

    .line 83
    invoke-static {v1, p0, p2, p3}, Landroidx/compose/ui/geometry/Offset;->copy-dBAh8RU$default(FIJ)J

    .line 84
    .line 85
    .line 86
    move-result-wide p0

    .line 87
    return-wide p0

    .line 88
    :cond_2
    :goto_0
    const-wide/16 p0, 0x0

    .line 89
    .line 90
    return-wide p0
.end method
