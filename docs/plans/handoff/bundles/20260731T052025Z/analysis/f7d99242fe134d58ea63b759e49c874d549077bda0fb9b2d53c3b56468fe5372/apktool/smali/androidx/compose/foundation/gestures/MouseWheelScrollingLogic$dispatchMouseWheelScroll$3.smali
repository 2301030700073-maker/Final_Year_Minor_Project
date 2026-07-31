.class public final Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

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
    .locals 25

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    iget v0, v7, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->label:I

    .line 4
    .line 5
    iget-object v1, v7, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->$targetScrollDelta:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 6
    .line 7
    const/4 v15, 0x0

    .line 8
    iget-object v2, v7, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->$targetValue:Lkotlin/jvm/internal/Ref$FloatRef;

    .line 9
    .line 10
    const/4 v6, 0x3

    .line 11
    const/4 v3, 0x2

    .line 12
    const/4 v4, 0x1

    .line 13
    iget-object v5, v7, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->$animationState:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 14
    .line 15
    sget-object v8, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 16
    .line 17
    if-eqz v0, :cond_3

    .line 18
    .line 19
    if-eq v0, v4, :cond_2

    .line 20
    .line 21
    if-eq v0, v3, :cond_1

    .line 22
    .line 23
    if-ne v0, v6, :cond_0

    .line 24
    .line 25
    iget-object v0, v7, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->L$2:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 26
    .line 27
    iget-object v9, v7, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->L$1:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 28
    .line 29
    iget-object v10, v7, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->L$0:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v10, Landroidx/compose/foundation/gestures/ScrollingLogic$nestedScrollScope$1;

    .line 32
    .line 33
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    move-object v12, v9

    .line 37
    move v9, v3

    .line 38
    move-object v3, v12

    .line 39
    move-object v13, v0

    .line 40
    move v14, v4

    .line 41
    move-object v4, v5

    .line 42
    move/from16 v23, v6

    .line 43
    .line 44
    move-object v12, v8

    .line 45
    move-object v8, v10

    .line 46
    move-object/from16 v0, p1

    .line 47
    .line 48
    goto/16 :goto_4

    .line 49
    .line 50
    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 51
    .line 52
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    return-object v15

    .line 56
    :cond_1
    iget v0, v7, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->I$0:I

    .line 57
    .line 58
    iget-object v9, v7, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->L$1:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 59
    .line 60
    iget-object v10, v7, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->L$0:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast v10, Landroidx/compose/foundation/gestures/ScrollingLogic$nestedScrollScope$1;

    .line 63
    .line 64
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    move-object v11, v7

    .line 68
    move-object v7, v5

    .line 69
    move-object v5, v11

    .line 70
    move-object v11, v2

    .line 71
    move v14, v4

    .line 72
    move-object v12, v8

    .line 73
    move-object v13, v9

    .line 74
    move-object v8, v10

    .line 75
    move-object v10, v1

    .line 76
    move v9, v3

    .line 77
    goto/16 :goto_3

    .line 78
    .line 79
    :cond_2
    iget-object v0, v7, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->L$2:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 80
    .line 81
    iget-object v9, v7, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->L$1:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 82
    .line 83
    iget-object v10, v7, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->L$0:Ljava/lang/Object;

    .line 84
    .line 85
    check-cast v10, Landroidx/compose/foundation/gestures/ScrollingLogic$nestedScrollScope$1;

    .line 86
    .line 87
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    move-object v11, v9

    .line 91
    move v9, v3

    .line 92
    move-object v3, v11

    .line 93
    move-object v13, v0

    .line 94
    move v14, v4

    .line 95
    move-object v4, v5

    .line 96
    move/from16 v23, v6

    .line 97
    .line 98
    move-object v11, v8

    .line 99
    move-object v8, v10

    .line 100
    move-object/from16 v0, p1

    .line 101
    .line 102
    goto/16 :goto_8

    .line 103
    .line 104
    :cond_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    iget-object v0, v7, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->L$0:Ljava/lang/Object;

    .line 108
    .line 109
    check-cast v0, Landroidx/compose/foundation/gestures/ScrollingLogic$nestedScrollScope$1;

    .line 110
    .line 111
    new-instance v9, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 112
    .line 113
    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    .line 114
    .line 115
    .line 116
    iput-boolean v4, v9, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 117
    .line 118
    move-object v13, v9

    .line 119
    :goto_0
    iget-boolean v9, v13, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 120
    .line 121
    sget-object v22, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 122
    .line 123
    if-eqz v9, :cond_c

    .line 124
    .line 125
    const/4 v9, 0x0

    .line 126
    iput-boolean v9, v13, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 127
    .line 128
    iget v10, v2, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 129
    .line 130
    iget-object v11, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 131
    .line 132
    check-cast v11, Landroidx/compose/animation/core/AnimationState;

    .line 133
    .line 134
    iget-object v11, v11, Landroidx/compose/animation/core/AnimationState;->value$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 135
    .line 136
    invoke-virtual {v11}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v11

    .line 140
    check-cast v11, Ljava/lang/Number;

    .line 141
    .line 142
    invoke-virtual {v11}, Ljava/lang/Number;->floatValue()F

    .line 143
    .line 144
    .line 145
    move-result v11

    .line 146
    sub-float/2addr v10, v11

    .line 147
    iget-object v11, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 148
    .line 149
    check-cast v11, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$MouseWheelScrollDelta;

    .line 150
    .line 151
    iget-boolean v11, v11, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$MouseWheelScrollDelta;->shouldApplyImmediately:Z

    .line 152
    .line 153
    iget-object v12, v7, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->this$0:Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;

    .line 154
    .line 155
    if-nez v11, :cond_4

    .line 156
    .line 157
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    .line 158
    .line 159
    .line 160
    move-result v11

    .line 161
    iget v14, v7, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->$threshold:F

    .line 162
    .line 163
    cmpg-float v11, v11, v14

    .line 164
    .line 165
    if-gez v11, :cond_5

    .line 166
    .line 167
    :cond_4
    move v9, v3

    .line 168
    move v14, v4

    .line 169
    move-object v4, v5

    .line 170
    move/from16 v23, v6

    .line 171
    .line 172
    move-object v11, v8

    .line 173
    move-object v8, v0

    .line 174
    goto/16 :goto_6

    .line 175
    .line 176
    :cond_5
    invoke-static {v10}, Ljava/lang/Math;->signum(F)F

    .line 177
    .line 178
    .line 179
    move-result v10

    .line 180
    mul-float/2addr v10, v14

    .line 181
    invoke-virtual {v12, v0, v10}, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;->dispatchMouseWheelScroll(Landroidx/compose/foundation/gestures/ScrollingLogic$nestedScrollScope$1;F)F

    .line 182
    .line 183
    .line 184
    iget-object v11, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 185
    .line 186
    check-cast v11, Landroidx/compose/animation/core/AnimationState;

    .line 187
    .line 188
    iget-object v12, v11, Landroidx/compose/animation/core/AnimationState;->value$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 189
    .line 190
    invoke-virtual {v12}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object v12

    .line 194
    check-cast v12, Ljava/lang/Number;

    .line 195
    .line 196
    invoke-virtual {v12}, Ljava/lang/Number;->floatValue()F

    .line 197
    .line 198
    .line 199
    move-result v12

    .line 200
    add-float/2addr v12, v10

    .line 201
    invoke-static {v11, v12}, Landroidx/compose/animation/core/ArcSplineKt;->copy$default(Landroidx/compose/animation/core/AnimationState;F)Landroidx/compose/animation/core/AnimationState;

    .line 202
    .line 203
    .line 204
    move-result-object v10

    .line 205
    iput-object v10, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

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
    invoke-static {v10}, Lkotlin/math/MathKt;->roundToInt(F)I

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
    iget-object v11, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 239
    .line 240
    check-cast v11, Landroidx/compose/animation/core/AnimationState;

    .line 241
    .line 242
    iget v12, v2, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 243
    .line 244
    new-instance v20, Lcom/fsck/k9/preferences/XmlSettingsParser$$ExternalSyntheticLambda7;

    .line 245
    .line 246
    const/4 v14, 0x2

    .line 247
    move/from16 v16, v9

    .line 248
    .line 249
    iget-object v9, v7, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->this$0:Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;

    .line 250
    .line 251
    move/from16 v17, v12

    .line 252
    .line 253
    iget-object v12, v7, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->$this_dispatchMouseWheelScroll:Landroidx/compose/foundation/gestures/ScrollingLogic;

    .line 254
    .line 255
    move v4, v10

    .line 256
    move-object v10, v1

    .line 257
    move v1, v4

    .line 258
    move-object v4, v11

    .line 259
    move-object v11, v2

    .line 260
    move-object v2, v4

    .line 261
    move-object/from16 v24, v8

    .line 262
    .line 263
    move/from16 v6, v16

    .line 264
    .line 265
    move/from16 v4, v17

    .line 266
    .line 267
    move-object/from16 v8, v20

    .line 268
    .line 269
    invoke-direct/range {v8 .. v14}, Lcom/fsck/k9/preferences/XmlSettingsParser$$ExternalSyntheticLambda7;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 270
    .line 271
    .line 272
    move-object/from16 v18, v9

    .line 273
    .line 274
    iput-object v0, v7, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->L$0:Ljava/lang/Object;

    .line 275
    .line 276
    iput-object v13, v7, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->L$1:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 277
    .line 278
    iput-object v15, v7, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->L$2:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 279
    .line 280
    iput v1, v7, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->I$0:I

    .line 281
    .line 282
    iput v3, v7, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->label:I

    .line 283
    .line 284
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 285
    .line 286
    .line 287
    new-instance v8, Lkotlin/jvm/internal/Ref$FloatRef;

    .line 288
    .line 289
    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 290
    .line 291
    .line 292
    iget-object v9, v2, Landroidx/compose/animation/core/AnimationState;->value$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 293
    .line 294
    invoke-virtual {v9}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 295
    .line 296
    .line 297
    move-result-object v9

    .line 298
    check-cast v9, Ljava/lang/Number;

    .line 299
    .line 300
    invoke-virtual {v9}, Ljava/lang/Number;->floatValue()F

    .line 301
    .line 302
    .line 303
    move-result v9

    .line 304
    iput v9, v8, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 305
    .line 306
    new-instance v9, Ljava/lang/Float;

    .line 307
    .line 308
    invoke-direct {v9, v4}, Ljava/lang/Float;-><init>(F)V

    .line 309
    .line 310
    .line 311
    sget-object v4, Landroidx/compose/animation/core/EasingKt;->LinearEasing:Landroidx/camera/core/streamsharing/StreamSharing$$ExternalSyntheticLambda0;

    .line 312
    .line 313
    invoke-static {v1, v6, v4, v3}, Landroidx/compose/animation/core/ArcSplineKt;->tween$default(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    .line 314
    .line 315
    .line 316
    move-result-object v4

    .line 317
    new-instance v16, Landroidx/navigation/internal/NavControllerImpl$$ExternalSyntheticLambda0;

    .line 318
    .line 319
    const/16 v21, 0x4

    .line 320
    .line 321
    move-object/from16 v19, v0

    .line 322
    .line 323
    move-object/from16 v17, v8

    .line 324
    .line 325
    invoke-direct/range {v16 .. v21}, Landroidx/navigation/internal/NavControllerImpl$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 326
    .line 327
    .line 328
    move v0, v3

    .line 329
    move-object/from16 v8, v19

    .line 330
    .line 331
    const/4 v3, 0x1

    .line 332
    move-object v6, v7

    .line 333
    move-object v7, v5

    .line 334
    move-object v5, v6

    .line 335
    move v6, v1

    .line 336
    move-object v1, v9

    .line 337
    const/4 v14, 0x1

    .line 338
    move v9, v0

    .line 339
    move-object v0, v2

    .line 340
    move-object v2, v4

    .line 341
    move-object/from16 v4, v16

    .line 342
    .line 343
    invoke-static/range {v0 .. v5}, Landroidx/compose/animation/core/ArcSplineKt;->animateTo(Landroidx/compose/animation/core/AnimationState;Ljava/lang/Float;Landroidx/compose/animation/core/AnimationSpec;ZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 344
    .line 345
    .line 346
    move-result-object v0

    .line 347
    move-object/from16 v12, v24

    .line 348
    .line 349
    if-ne v0, v12, :cond_7

    .line 350
    .line 351
    goto :goto_1

    .line 352
    :cond_7
    move-object/from16 v0, v22

    .line 353
    .line 354
    :goto_1
    if-ne v0, v12, :cond_8

    .line 355
    .line 356
    :goto_2
    move-object v11, v12

    .line 357
    goto/16 :goto_7

    .line 358
    .line 359
    :cond_8
    move v0, v6

    .line 360
    :goto_3
    iget-boolean v1, v13, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 361
    .line 362
    if-nez v1, :cond_a

    .line 363
    .line 364
    const-wide/16 v1, 0x32

    .line 365
    .line 366
    int-to-long v3, v0

    .line 367
    sub-long/2addr v1, v3

    .line 368
    iput-object v8, v5, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->L$0:Ljava/lang/Object;

    .line 369
    .line 370
    iput-object v13, v5, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->L$1:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 371
    .line 372
    iput-object v13, v5, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->L$2:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 373
    .line 374
    const/4 v0, 0x3

    .line 375
    iput v0, v5, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->label:I

    .line 376
    .line 377
    move/from16 v23, v0

    .line 378
    .line 379
    iget-object v0, v5, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->this$0:Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;

    .line 380
    .line 381
    iget-object v3, v5, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->$this_dispatchMouseWheelScroll:Landroidx/compose/foundation/gestures/ScrollingLogic;

    .line 382
    .line 383
    move-object v4, v7

    .line 384
    move-object v7, v5

    .line 385
    move-wide v5, v1

    .line 386
    move-object v1, v10

    .line 387
    move-object v2, v11

    .line 388
    invoke-static/range {v0 .. v7}, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;->access$dispatchMouseWheelScroll$waitNextScrollDelta(Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$FloatRef;Landroidx/compose/foundation/gestures/ScrollingLogic;Lkotlin/jvm/internal/Ref$ObjectRef;JLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 389
    .line 390
    .line 391
    move-result-object v0

    .line 392
    if-ne v0, v12, :cond_9

    .line 393
    .line 394
    goto :goto_2

    .line 395
    :cond_9
    move-object v3, v13

    .line 396
    :goto_4
    check-cast v0, Ljava/lang/Boolean;

    .line 397
    .line 398
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 399
    .line 400
    .line 401
    move-result v0

    .line 402
    iput-boolean v0, v13, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 403
    .line 404
    move-object v13, v3

    .line 405
    move-object v5, v4

    .line 406
    move-object v0, v8

    .line 407
    move v3, v9

    .line 408
    move-object v8, v12

    .line 409
    :goto_5
    move v4, v14

    .line 410
    move/from16 v6, v23

    .line 411
    .line 412
    goto/16 :goto_0

    .line 413
    .line 414
    :cond_a
    move-object v4, v7

    .line 415
    const/16 v23, 0x3

    .line 416
    .line 417
    move-object v7, v5

    .line 418
    move-object v0, v8

    .line 419
    move v3, v9

    .line 420
    move-object v1, v10

    .line 421
    move-object v2, v11

    .line 422
    move-object v8, v12

    .line 423
    move/from16 v6, v23

    .line 424
    .line 425
    move-object v5, v4

    .line 426
    move v4, v14

    .line 427
    goto/16 :goto_0

    .line 428
    .line 429
    :goto_6
    invoke-virtual {v12, v8, v10}, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;->dispatchMouseWheelScroll(Landroidx/compose/foundation/gestures/ScrollingLogic$nestedScrollScope$1;F)F

    .line 430
    .line 431
    .line 432
    iput-object v8, v7, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->L$0:Ljava/lang/Object;

    .line 433
    .line 434
    iput-object v13, v7, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->L$1:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 435
    .line 436
    iput-object v13, v7, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->L$2:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 437
    .line 438
    iput v14, v7, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->label:I

    .line 439
    .line 440
    iget-object v0, v7, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->this$0:Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;

    .line 441
    .line 442
    iget-object v3, v7, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->$this_dispatchMouseWheelScroll:Landroidx/compose/foundation/gestures/ScrollingLogic;

    .line 443
    .line 444
    const-wide/16 v5, 0x32

    .line 445
    .line 446
    invoke-static/range {v0 .. v7}, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;->access$dispatchMouseWheelScroll$waitNextScrollDelta(Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$FloatRef;Landroidx/compose/foundation/gestures/ScrollingLogic;Lkotlin/jvm/internal/Ref$ObjectRef;JLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 447
    .line 448
    .line 449
    move-result-object v0

    .line 450
    if-ne v0, v11, :cond_b

    .line 451
    .line 452
    :goto_7
    return-object v11

    .line 453
    :cond_b
    move-object v3, v13

    .line 454
    :goto_8
    check-cast v0, Ljava/lang/Boolean;

    .line 455
    .line 456
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 457
    .line 458
    .line 459
    move-result v0

    .line 460
    iput-boolean v0, v13, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 461
    .line 462
    move-object/from16 v7, p0

    .line 463
    .line 464
    move-object v13, v3

    .line 465
    move-object v5, v4

    .line 466
    move-object v0, v8

    .line 467
    move v3, v9

    .line 468
    move-object v8, v11

    .line 469
    goto :goto_5

    .line 470
    :cond_c
    return-object v22
.end method
