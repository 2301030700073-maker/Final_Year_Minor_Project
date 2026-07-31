.class public final Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $animationState:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic $speed:F

.field public final synthetic $targetScrollDelta:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic $targetValue:Lkotlin/jvm/internal/Ref$FloatRef;

.field public final synthetic $this_dispatchMouseWheelScroll:Landroidx/compose/foundation/gestures/ScrollingLogic;

.field public final synthetic $threshold:F

.field public I$0:I

.field public synthetic L$0:Ljava/lang/Object;

.field public L$1:Lkotlin/jvm/internal/Ref$BooleanRef;

.field public L$2:Lkotlin/jvm/internal/Ref$BooleanRef;

.field public label:I

.field public final synthetic this$0:Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;FLandroidx/compose/foundation/gestures/MouseWheelScrollingLogic;FLandroidx/compose/foundation/gestures/ScrollingLogic;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->$targetValue:Lkotlin/jvm/internal/Ref$FloatRef;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->$animationState:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 4
    .line 5
    iput-object p3, p0, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->$targetScrollDelta:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 6
    .line 7
    iput p4, p0, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->$threshold:F

    .line 8
    .line 9
    iput-object p5, p0, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->this$0:Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;

    .line 10
    .line 11
    iput p6, p0, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->$speed:F

    .line 12
    .line 13
    iput-object p7, p0, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->$this_dispatchMouseWheelScroll:Landroidx/compose/foundation/gestures/ScrollingLogic;

    .line 14
    .line 15
    const/4 p1, 0x2

    .line 16
    invoke-direct {p0, p1, p8}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 9

    .line 1
    new-instance v0, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;

    .line 2
    .line 3
    iget v6, p0, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->$speed:F

    .line 4
    .line 5
    iget-object v7, p0, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->$this_dispatchMouseWheelScroll:Landroidx/compose/foundation/gestures/ScrollingLogic;

    .line 6
    .line 7
    iget-object v1, p0, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->$targetValue:Lkotlin/jvm/internal/Ref$FloatRef;

    .line 8
    .line 9
    iget-object v2, p0, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->$animationState:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 10
    .line 11
    iget-object v3, p0, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->$targetScrollDelta:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 12
    .line 13
    iget v4, p0, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->$threshold:F

    .line 14
    .line 15
    iget-object v5, p0, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->this$0:Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;

    .line 16
    .line 17
    move-object v8, p2

    .line 18
    invoke-direct/range {v0 .. v8}, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;-><init>(Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;FLandroidx/compose/foundation/gestures/MouseWheelScrollingLogic;FLandroidx/compose/foundation/gestures/ScrollingLogic;Lkotlin/coroutines/Continuation;)V

    .line 19
    .line 20
    .line 21
    iput-object p1, v0, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->L$0:Ljava/lang/Object;

    .line 22
    .line 23
    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroidx/compose/foundation/gestures/ScrollingLogic$nestedScrollScope$1;

    .line 2
    .line 3
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 22

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    sget-object v8, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 4
    .line 5
    iget v0, v7, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->label:I

    .line 6
    .line 7
    iget-object v1, v7, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->$targetScrollDelta:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 8
    .line 9
    const/4 v6, 0x0

    .line 10
    iget-object v2, v7, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->$targetValue:Lkotlin/jvm/internal/Ref$FloatRef;

    .line 11
    .line 12
    const/4 v3, 0x3

    .line 13
    const/4 v4, 0x2

    .line 14
    const/4 v5, 0x1

    .line 15
    iget-object v9, v7, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->$animationState:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 16
    .line 17
    if-eqz v0, :cond_3

    .line 18
    .line 19
    if-eq v0, v5, :cond_2

    .line 20
    .line 21
    if-eq v0, v4, :cond_1

    .line 22
    .line 23
    if-ne v0, v3, :cond_0

    .line 24
    .line 25
    iget-object v0, v7, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->L$2:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 26
    .line 27
    iget-object v10, v7, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->L$1:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 28
    .line 29
    iget-object v11, v7, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->L$0:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v11, Landroidx/compose/foundation/gestures/ScrollingLogic$nestedScrollScope$1;

    .line 32
    .line 33
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    move v13, v4

    .line 37
    move v15, v5

    .line 38
    move-object/from16 v16, v6

    .line 39
    .line 40
    move-object v4, v9

    .line 41
    move-object v14, v11

    .line 42
    move-object v9, v0

    .line 43
    move v11, v3

    .line 44
    move-object/from16 v0, p1

    .line 45
    .line 46
    goto/16 :goto_4

    .line 47
    .line 48
    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 49
    .line 50
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    return-object v6

    .line 54
    :cond_1
    iget v0, v7, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->I$0:I

    .line 55
    .line 56
    iget-object v10, v7, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->L$1:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 57
    .line 58
    iget-object v11, v7, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->L$0:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast v11, Landroidx/compose/foundation/gestures/ScrollingLogic$nestedScrollScope$1;

    .line 61
    .line 62
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    move-object/from16 v20, v2

    .line 66
    .line 67
    move v13, v4

    .line 68
    move v15, v5

    .line 69
    move-object/from16 v19, v9

    .line 70
    .line 71
    move-object v9, v10

    .line 72
    move-object v14, v11

    .line 73
    move-object v10, v1

    .line 74
    move v11, v3

    .line 75
    goto/16 :goto_3

    .line 76
    .line 77
    :cond_2
    iget-object v0, v7, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->L$2:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 78
    .line 79
    iget-object v10, v7, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->L$1:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 80
    .line 81
    iget-object v11, v7, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->L$0:Ljava/lang/Object;

    .line 82
    .line 83
    check-cast v11, Landroidx/compose/foundation/gestures/ScrollingLogic$nestedScrollScope$1;

    .line 84
    .line 85
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    move v13, v4

    .line 89
    move v15, v5

    .line 90
    move-object/from16 v16, v6

    .line 91
    .line 92
    move-object v4, v9

    .line 93
    move-object v14, v11

    .line 94
    move-object v9, v0

    .line 95
    move v11, v3

    .line 96
    move-object/from16 v0, p1

    .line 97
    .line 98
    goto/16 :goto_8

    .line 99
    .line 100
    :cond_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    iget-object v0, v7, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->L$0:Ljava/lang/Object;

    .line 104
    .line 105
    check-cast v0, Landroidx/compose/foundation/gestures/ScrollingLogic$nestedScrollScope$1;

    .line 106
    .line 107
    new-instance v10, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 108
    .line 109
    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    .line 110
    .line 111
    .line 112
    iput-boolean v5, v10, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 113
    .line 114
    :goto_0
    move-object v14, v10

    .line 115
    :goto_1
    iget-boolean v10, v14, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 116
    .line 117
    sget-object v17, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 118
    .line 119
    if-eqz v10, :cond_c

    .line 120
    .line 121
    const/4 v10, 0x0

    .line 122
    iput-boolean v10, v14, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 123
    .line 124
    iget v10, v2, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 125
    .line 126
    iget-object v11, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 127
    .line 128
    check-cast v11, Landroidx/compose/animation/core/AnimationState;

    .line 129
    .line 130
    iget-object v11, v11, Landroidx/compose/animation/core/AnimationState;->value$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 131
    .line 132
    invoke-virtual {v11}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v11

    .line 136
    check-cast v11, Ljava/lang/Number;

    .line 137
    .line 138
    invoke-virtual {v11}, Ljava/lang/Number;->floatValue()F

    .line 139
    .line 140
    .line 141
    move-result v11

    .line 142
    sub-float/2addr v10, v11

    .line 143
    iget-object v11, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 144
    .line 145
    check-cast v11, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$MouseWheelScrollDelta;

    .line 146
    .line 147
    iget-boolean v11, v11, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$MouseWheelScrollDelta;->shouldApplyImmediately:Z

    .line 148
    .line 149
    iget-object v12, v7, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->this$0:Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;

    .line 150
    .line 151
    if-nez v11, :cond_4

    .line 152
    .line 153
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    .line 154
    .line 155
    .line 156
    move-result v11

    .line 157
    iget v13, v7, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->$threshold:F

    .line 158
    .line 159
    cmpg-float v11, v11, v13

    .line 160
    .line 161
    if-gez v11, :cond_5

    .line 162
    .line 163
    :cond_4
    move v11, v3

    .line 164
    move v13, v4

    .line 165
    move v15, v5

    .line 166
    move-object/from16 v16, v6

    .line 167
    .line 168
    move-object v4, v9

    .line 169
    move-object v9, v14

    .line 170
    move-object v14, v0

    .line 171
    goto/16 :goto_6

    .line 172
    .line 173
    :cond_5
    invoke-static {v10}, Ljava/lang/Math;->signum(F)F

    .line 174
    .line 175
    .line 176
    move-result v10

    .line 177
    mul-float/2addr v10, v13

    .line 178
    invoke-virtual {v12, v0, v10}, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;->dispatchMouseWheelScroll(Landroidx/compose/foundation/gestures/ScrollingLogic$nestedScrollScope$1;F)F

    .line 179
    .line 180
    .line 181
    iget-object v11, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 182
    .line 183
    check-cast v11, Landroidx/compose/animation/core/AnimationState;

    .line 184
    .line 185
    iget-object v12, v11, Landroidx/compose/animation/core/AnimationState;->value$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 186
    .line 187
    invoke-virtual {v12}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object v12

    .line 191
    check-cast v12, Ljava/lang/Number;

    .line 192
    .line 193
    invoke-virtual {v12}, Ljava/lang/Number;->floatValue()F

    .line 194
    .line 195
    .line 196
    move-result v12

    .line 197
    add-float/2addr v12, v10

    .line 198
    const/4 v10, 0x0

    .line 199
    const/16 v13, 0x1e

    .line 200
    .line 201
    invoke-static {v11, v12, v10, v13}, Landroidx/compose/animation/core/ArcSplineKt;->copy$default(Landroidx/compose/animation/core/AnimationState;FFI)Landroidx/compose/animation/core/AnimationState;

    .line 202
    .line 203
    .line 204
    move-result-object v10

    .line 205
    iput-object v10, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 206
    .line 207
    iget v11, v2, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 208
    .line 209
    iget-object v10, v10, Landroidx/compose/animation/core/AnimationState;->value$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 210
    .line 211
    invoke-virtual {v10}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    move-result-object v10

    .line 215
    check-cast v10, Ljava/lang/Number;

    .line 216
    .line 217
    invoke-virtual {v10}, Ljava/lang/Number;->floatValue()F

    .line 218
    .line 219
    .line 220
    move-result v10

    .line 221
    sub-float/2addr v11, v10

    .line 222
    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    .line 223
    .line 224
    .line 225
    move-result v10

    .line 226
    iget v11, v7, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->$speed:F

    .line 227
    .line 228
    div-float/2addr v10, v11

    .line 229
    invoke-static {v10}, Lkotlin/UnsignedKt;->roundToInt(F)I

    .line 230
    .line 231
    .line 232
    move-result v10

    .line 233
    const/16 v11, 0x64

    .line 234
    .line 235
    if-le v10, v11, :cond_6

    .line 236
    .line 237
    move v10, v11

    .line 238
    :cond_6
    iget-object v11, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 239
    .line 240
    check-cast v11, Landroidx/compose/animation/core/AnimationState;

    .line 241
    .line 242
    iget v12, v2, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 243
    .line 244
    new-instance v15, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda23;

    .line 245
    .line 246
    move-object v13, v9

    .line 247
    move-object v9, v15

    .line 248
    const/4 v15, 0x2

    .line 249
    move/from16 v16, v10

    .line 250
    .line 251
    iget-object v10, v7, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->this$0:Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;

    .line 252
    .line 253
    move-object/from16 v18, v13

    .line 254
    .line 255
    iget-object v13, v7, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->$this_dispatchMouseWheelScroll:Landroidx/compose/foundation/gestures/ScrollingLogic;

    .line 256
    .line 257
    move v3, v12

    .line 258
    move-object/from16 v19, v18

    .line 259
    .line 260
    move-object v12, v2

    .line 261
    move-object v2, v11

    .line 262
    move-object v11, v1

    .line 263
    move/from16 v1, v16

    .line 264
    .line 265
    invoke-direct/range {v9 .. v15}, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda23;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 266
    .line 267
    .line 268
    move-object v15, v9

    .line 269
    move-object v13, v10

    .line 270
    move-object v10, v11

    .line 271
    move-object/from16 v20, v12

    .line 272
    .line 273
    move-object v9, v14

    .line 274
    iput-object v0, v7, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->L$0:Ljava/lang/Object;

    .line 275
    .line 276
    iput-object v9, v7, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->L$1:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 277
    .line 278
    iput-object v6, v7, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->L$2:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 279
    .line 280
    iput v1, v7, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->I$0:I

    .line 281
    .line 282
    iput v4, v7, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->label:I

    .line 283
    .line 284
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 285
    .line 286
    .line 287
    new-instance v12, Lkotlin/jvm/internal/Ref$FloatRef;

    .line 288
    .line 289
    invoke-direct {v12}, Ljava/lang/Object;-><init>()V

    .line 290
    .line 291
    .line 292
    iget-object v11, v2, Landroidx/compose/animation/core/AnimationState;->value$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 293
    .line 294
    invoke-virtual {v11}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 295
    .line 296
    .line 297
    move-result-object v11

    .line 298
    check-cast v11, Ljava/lang/Number;

    .line 299
    .line 300
    invoke-virtual {v11}, Ljava/lang/Number;->floatValue()F

    .line 301
    .line 302
    .line 303
    move-result v11

    .line 304
    iput v11, v12, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 305
    .line 306
    new-instance v11, Ljava/lang/Float;

    .line 307
    .line 308
    invoke-direct {v11, v3}, Ljava/lang/Float;-><init>(F)V

    .line 309
    .line 310
    .line 311
    sget-object v3, Landroidx/compose/animation/core/EasingKt;->LinearEasing:Landroidx/compose/animation/core/EasingKt$$ExternalSyntheticLambda0;

    .line 312
    .line 313
    invoke-static {v1, v4, v3}, Landroidx/compose/animation/core/ArcSplineKt;->tween$default(IILandroidx/compose/animation/core/Easing;)Landroidx/compose/animation/core/TweenSpec;

    .line 314
    .line 315
    .line 316
    move-result-object v3

    .line 317
    move-object v14, v11

    .line 318
    new-instance v11, Lorg/wikipedia/settings/AboutActivityKt$$ExternalSyntheticLambda7;

    .line 319
    .line 320
    const/16 v16, 0x3

    .line 321
    .line 322
    move-object/from16 v21, v14

    .line 323
    .line 324
    move-object v14, v0

    .line 325
    move-object/from16 v0, v21

    .line 326
    .line 327
    invoke-direct/range {v11 .. v16}, Lorg/wikipedia/settings/AboutActivityKt$$ExternalSyntheticLambda7;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 328
    .line 329
    .line 330
    move/from16 v16, v1

    .line 331
    .line 332
    move-object v1, v0

    .line 333
    move-object v0, v2

    .line 334
    move-object v2, v3

    .line 335
    const/4 v3, 0x1

    .line 336
    move v13, v4

    .line 337
    move v15, v5

    .line 338
    move-object v5, v7

    .line 339
    move-object v4, v11

    .line 340
    const/4 v11, 0x3

    .line 341
    invoke-static/range {v0 .. v5}, Landroidx/compose/animation/core/ArcSplineKt;->animateTo(Landroidx/compose/animation/core/AnimationState;Ljava/lang/Float;Landroidx/compose/animation/core/AnimationSpec;ZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 342
    .line 343
    .line 344
    move-result-object v0

    .line 345
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 346
    .line 347
    if-ne v0, v1, :cond_7

    .line 348
    .line 349
    goto :goto_2

    .line 350
    :cond_7
    move-object/from16 v0, v17

    .line 351
    .line 352
    :goto_2
    if-ne v0, v8, :cond_8

    .line 353
    .line 354
    goto/16 :goto_7

    .line 355
    .line 356
    :cond_8
    move/from16 v0, v16

    .line 357
    .line 358
    :goto_3
    iget-boolean v1, v9, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 359
    .line 360
    if-nez v1, :cond_a

    .line 361
    .line 362
    const-wide/16 v1, 0x32

    .line 363
    .line 364
    int-to-long v3, v0

    .line 365
    sub-long/2addr v1, v3

    .line 366
    iput-object v14, v7, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->L$0:Ljava/lang/Object;

    .line 367
    .line 368
    iput-object v9, v7, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->L$1:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 369
    .line 370
    iput-object v9, v7, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->L$2:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 371
    .line 372
    iput v11, v7, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->label:I

    .line 373
    .line 374
    iget-object v0, v7, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->this$0:Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;

    .line 375
    .line 376
    iget-object v3, v7, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->$this_dispatchMouseWheelScroll:Landroidx/compose/foundation/gestures/ScrollingLogic;

    .line 377
    .line 378
    move-object/from16 v16, v6

    .line 379
    .line 380
    move-object/from16 v4, v19

    .line 381
    .line 382
    move-wide v5, v1

    .line 383
    move-object v1, v10

    .line 384
    move-object/from16 v2, v20

    .line 385
    .line 386
    invoke-static/range {v0 .. v7}, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;->dispatchMouseWheelScroll$waitNextScrollDelta(Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$FloatRef;Landroidx/compose/foundation/gestures/ScrollingLogic;Lkotlin/jvm/internal/Ref$ObjectRef;JLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 387
    .line 388
    .line 389
    move-result-object v0

    .line 390
    if-ne v0, v8, :cond_9

    .line 391
    .line 392
    goto :goto_7

    .line 393
    :cond_9
    move-object v10, v9

    .line 394
    :goto_4
    check-cast v0, Ljava/lang/Boolean;

    .line 395
    .line 396
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 397
    .line 398
    .line 399
    move-result v0

    .line 400
    iput-boolean v0, v9, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 401
    .line 402
    :goto_5
    move-object v9, v4

    .line 403
    move v3, v11

    .line 404
    move v4, v13

    .line 405
    move-object v0, v14

    .line 406
    move v5, v15

    .line 407
    move-object/from16 v6, v16

    .line 408
    .line 409
    goto/16 :goto_0

    .line 410
    .line 411
    :cond_a
    move-object v1, v10

    .line 412
    move v3, v11

    .line 413
    move v4, v13

    .line 414
    move-object v0, v14

    .line 415
    move v5, v15

    .line 416
    move-object/from16 v2, v20

    .line 417
    .line 418
    move-object v14, v9

    .line 419
    move-object/from16 v9, v19

    .line 420
    .line 421
    goto/16 :goto_1

    .line 422
    .line 423
    :goto_6
    invoke-virtual {v12, v14, v10}, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;->dispatchMouseWheelScroll(Landroidx/compose/foundation/gestures/ScrollingLogic$nestedScrollScope$1;F)F

    .line 424
    .line 425
    .line 426
    iput-object v14, v7, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->L$0:Ljava/lang/Object;

    .line 427
    .line 428
    iput-object v9, v7, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->L$1:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 429
    .line 430
    iput-object v9, v7, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->L$2:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 431
    .line 432
    iput v15, v7, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->label:I

    .line 433
    .line 434
    iget-object v0, v7, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->this$0:Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;

    .line 435
    .line 436
    iget-object v3, v7, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->$this_dispatchMouseWheelScroll:Landroidx/compose/foundation/gestures/ScrollingLogic;

    .line 437
    .line 438
    const-wide/16 v5, 0x32

    .line 439
    .line 440
    invoke-static/range {v0 .. v7}, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;->dispatchMouseWheelScroll$waitNextScrollDelta(Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$FloatRef;Landroidx/compose/foundation/gestures/ScrollingLogic;Lkotlin/jvm/internal/Ref$ObjectRef;JLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 441
    .line 442
    .line 443
    move-result-object v0

    .line 444
    if-ne v0, v8, :cond_b

    .line 445
    .line 446
    :goto_7
    return-object v8

    .line 447
    :cond_b
    move-object v10, v9

    .line 448
    :goto_8
    check-cast v0, Ljava/lang/Boolean;

    .line 449
    .line 450
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 451
    .line 452
    .line 453
    move-result v0

    .line 454
    iput-boolean v0, v9, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 455
    .line 456
    move-object/from16 v7, p0

    .line 457
    .line 458
    goto :goto_5

    .line 459
    :cond_c
    return-object v17
.end method
