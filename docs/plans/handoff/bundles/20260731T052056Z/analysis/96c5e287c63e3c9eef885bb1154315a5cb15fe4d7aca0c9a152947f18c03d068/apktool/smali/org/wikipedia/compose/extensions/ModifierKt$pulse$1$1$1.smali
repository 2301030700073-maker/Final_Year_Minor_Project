.class public final Lorg/wikipedia/compose/extensions/ModifierKt$pulse$1$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $easing:Landroidx/compose/animation/core/Easing;

.field public final synthetic $onCompleted:Lkotlin/jvm/functions/Function0;

.field public final synthetic $scale:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

.field public final synthetic $targetScale:Landroidx/compose/runtime/MutableState;

.field public F$0:F

.field public I$0:I

.field public I$1:I

.field public I$2:I

.field public I$3:I

.field public I$4:I

.field public L$0:Landroidx/compose/runtime/State;

.field public L$1:Landroidx/compose/animation/core/Easing;

.field public L$2:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

.field public label:I


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/MutableState;Landroidx/compose/animation/core/Easing;Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/wikipedia/compose/extensions/ModifierKt$pulse$1$1$1;->$onCompleted:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    iput-object p2, p0, Lorg/wikipedia/compose/extensions/ModifierKt$pulse$1$1$1;->$targetScale:Landroidx/compose/runtime/MutableState;

    .line 4
    .line 5
    iput-object p3, p0, Lorg/wikipedia/compose/extensions/ModifierKt$pulse$1$1$1;->$easing:Landroidx/compose/animation/core/Easing;

    .line 6
    .line 7
    iput-object p4, p0, Lorg/wikipedia/compose/extensions/ModifierKt$pulse$1$1$1;->$scale:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    .line 8
    .line 9
    const/4 p1, 0x2

    .line 10
    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6

    .line 1
    new-instance v0, Lorg/wikipedia/compose/extensions/ModifierKt$pulse$1$1$1;

    .line 2
    .line 3
    iget-object v3, p0, Lorg/wikipedia/compose/extensions/ModifierKt$pulse$1$1$1;->$easing:Landroidx/compose/animation/core/Easing;

    .line 4
    .line 5
    iget-object v4, p0, Lorg/wikipedia/compose/extensions/ModifierKt$pulse$1$1$1;->$scale:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    .line 6
    .line 7
    iget-object v1, p0, Lorg/wikipedia/compose/extensions/ModifierKt$pulse$1$1$1;->$onCompleted:Lkotlin/jvm/functions/Function0;

    .line 8
    .line 9
    iget-object v2, p0, Lorg/wikipedia/compose/extensions/ModifierKt$pulse$1$1$1;->$targetScale:Landroidx/compose/runtime/MutableState;

    .line 10
    .line 11
    move-object v5, p2

    .line 12
    invoke-direct/range {v0 .. v5}, Lorg/wikipedia/compose/extensions/ModifierKt$pulse$1$1$1;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/MutableState;Landroidx/compose/animation/core/Easing;Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;Lkotlin/coroutines/Continuation;)V

    .line 13
    .line 14
    .line 15
    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 2
    .line 3
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/compose/extensions/ModifierKt$pulse$1$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lorg/wikipedia/compose/extensions/ModifierKt$pulse$1$1$1;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lorg/wikipedia/compose/extensions/ModifierKt$pulse$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v4, p0

    .line 2
    .line 3
    sget-object v6, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 4
    .line 5
    iget v0, v4, Lorg/wikipedia/compose/extensions/ModifierKt$pulse$1$1$1;->label:I

    .line 6
    .line 7
    const/4 v7, 0x1

    .line 8
    const/4 v8, 0x0

    .line 9
    const/4 v9, 0x2

    .line 10
    if-eqz v0, :cond_2

    .line 11
    .line 12
    if-eq v0, v7, :cond_1

    .line 13
    .line 14
    if-ne v0, v9, :cond_0

    .line 15
    .line 16
    iget v0, v4, Lorg/wikipedia/compose/extensions/ModifierKt$pulse$1$1$1;->I$2:I

    .line 17
    .line 18
    iget v1, v4, Lorg/wikipedia/compose/extensions/ModifierKt$pulse$1$1$1;->I$1:I

    .line 19
    .line 20
    iget v2, v4, Lorg/wikipedia/compose/extensions/ModifierKt$pulse$1$1$1;->F$0:F

    .line 21
    .line 22
    iget v3, v4, Lorg/wikipedia/compose/extensions/ModifierKt$pulse$1$1$1;->I$0:I

    .line 23
    .line 24
    iget-object v5, v4, Lorg/wikipedia/compose/extensions/ModifierKt$pulse$1$1$1;->L$2:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    .line 25
    .line 26
    iget-object v10, v4, Lorg/wikipedia/compose/extensions/ModifierKt$pulse$1$1$1;->L$1:Landroidx/compose/animation/core/Easing;

    .line 27
    .line 28
    iget-object v11, v4, Lorg/wikipedia/compose/extensions/ModifierKt$pulse$1$1$1;->L$0:Landroidx/compose/runtime/State;

    .line 29
    .line 30
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    move v12, v1

    .line 34
    move v1, v2

    .line 35
    move v15, v3

    .line 36
    move-object v14, v5

    .line 37
    move-object v13, v10

    .line 38
    goto/16 :goto_3

    .line 39
    .line 40
    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 41
    .line 42
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    const/4 v0, 0x0

    .line 46
    return-object v0

    .line 47
    :cond_1
    iget v0, v4, Lorg/wikipedia/compose/extensions/ModifierKt$pulse$1$1$1;->I$4:I

    .line 48
    .line 49
    iget v1, v4, Lorg/wikipedia/compose/extensions/ModifierKt$pulse$1$1$1;->I$3:I

    .line 50
    .line 51
    iget v2, v4, Lorg/wikipedia/compose/extensions/ModifierKt$pulse$1$1$1;->I$2:I

    .line 52
    .line 53
    iget v3, v4, Lorg/wikipedia/compose/extensions/ModifierKt$pulse$1$1$1;->I$1:I

    .line 54
    .line 55
    iget v5, v4, Lorg/wikipedia/compose/extensions/ModifierKt$pulse$1$1$1;->F$0:F

    .line 56
    .line 57
    iget v10, v4, Lorg/wikipedia/compose/extensions/ModifierKt$pulse$1$1$1;->I$0:I

    .line 58
    .line 59
    iget-object v11, v4, Lorg/wikipedia/compose/extensions/ModifierKt$pulse$1$1$1;->L$2:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    .line 60
    .line 61
    iget-object v12, v4, Lorg/wikipedia/compose/extensions/ModifierKt$pulse$1$1$1;->L$1:Landroidx/compose/animation/core/Easing;

    .line 62
    .line 63
    iget-object v13, v4, Lorg/wikipedia/compose/extensions/ModifierKt$pulse$1$1$1;->L$0:Landroidx/compose/runtime/State;

    .line 64
    .line 65
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    move v15, v10

    .line 69
    move-object v14, v11

    .line 70
    move-object v11, v13

    .line 71
    move v10, v2

    .line 72
    move-object v13, v12

    .line 73
    move v12, v3

    .line 74
    goto :goto_1

    .line 75
    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    const/high16 v0, 0x3f800000    # 1.0f

    .line 79
    .line 80
    iget-object v1, v4, Lorg/wikipedia/compose/extensions/ModifierKt$pulse$1$1$1;->$targetScale:Landroidx/compose/runtime/MutableState;

    .line 81
    .line 82
    const/16 v2, 0x12c

    .line 83
    .line 84
    iget-object v3, v4, Lorg/wikipedia/compose/extensions/ModifierKt$pulse$1$1$1;->$easing:Landroidx/compose/animation/core/Easing;

    .line 85
    .line 86
    iget-object v5, v4, Lorg/wikipedia/compose/extensions/ModifierKt$pulse$1$1$1;->$scale:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    .line 87
    .line 88
    move-object v11, v1

    .line 89
    move v12, v2

    .line 90
    move-object v13, v3

    .line 91
    move-object v14, v5

    .line 92
    move v15, v7

    .line 93
    move v10, v8

    .line 94
    :goto_0
    if-ge v10, v15, :cond_5

    .line 95
    .line 96
    invoke-interface {v11}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    check-cast v1, Ljava/lang/Number;

    .line 101
    .line 102
    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    invoke-static {v12, v9, v13}, Landroidx/compose/animation/core/ArcSplineKt;->tween$default(IILandroidx/compose/animation/core/Easing;)Landroidx/compose/animation/core/TweenSpec;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    new-instance v3, Lorg/wikipedia/compose/extensions/ModifierKt$pulse$1$1$1$$ExternalSyntheticLambda0;

    .line 111
    .line 112
    invoke-direct {v3, v14, v8}, Lorg/wikipedia/compose/extensions/ModifierKt$pulse$1$1$1$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;I)V

    .line 113
    .line 114
    .line 115
    iput-object v11, v4, Lorg/wikipedia/compose/extensions/ModifierKt$pulse$1$1$1;->L$0:Landroidx/compose/runtime/State;

    .line 116
    .line 117
    iput-object v13, v4, Lorg/wikipedia/compose/extensions/ModifierKt$pulse$1$1$1;->L$1:Landroidx/compose/animation/core/Easing;

    .line 118
    .line 119
    iput-object v14, v4, Lorg/wikipedia/compose/extensions/ModifierKt$pulse$1$1$1;->L$2:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    .line 120
    .line 121
    iput v15, v4, Lorg/wikipedia/compose/extensions/ModifierKt$pulse$1$1$1;->I$0:I

    .line 122
    .line 123
    iput v0, v4, Lorg/wikipedia/compose/extensions/ModifierKt$pulse$1$1$1;->F$0:F

    .line 124
    .line 125
    iput v12, v4, Lorg/wikipedia/compose/extensions/ModifierKt$pulse$1$1$1;->I$1:I

    .line 126
    .line 127
    iput v10, v4, Lorg/wikipedia/compose/extensions/ModifierKt$pulse$1$1$1;->I$2:I

    .line 128
    .line 129
    iput v10, v4, Lorg/wikipedia/compose/extensions/ModifierKt$pulse$1$1$1;->I$3:I

    .line 130
    .line 131
    iput v8, v4, Lorg/wikipedia/compose/extensions/ModifierKt$pulse$1$1$1;->I$4:I

    .line 132
    .line 133
    iput v7, v4, Lorg/wikipedia/compose/extensions/ModifierKt$pulse$1$1$1;->label:I

    .line 134
    .line 135
    const/4 v5, 0x4

    .line 136
    invoke-static/range {v0 .. v5}, Landroidx/compose/animation/core/ArcSplineKt;->animate$default(FFLandroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/jvm/internal/SuspendLambda;I)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    if-ne v1, v6, :cond_3

    .line 141
    .line 142
    goto :goto_2

    .line 143
    :cond_3
    move v5, v0

    .line 144
    move v0, v8

    .line 145
    move v1, v10

    .line 146
    :goto_1
    invoke-interface {v11}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v2

    .line 150
    check-cast v2, Ljava/lang/Number;

    .line 151
    .line 152
    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    .line 153
    .line 154
    .line 155
    move-result v2

    .line 156
    move v3, v2

    .line 157
    invoke-static {v12, v9, v13}, Landroidx/compose/animation/core/ArcSplineKt;->tween$default(IILandroidx/compose/animation/core/Easing;)Landroidx/compose/animation/core/TweenSpec;

    .line 158
    .line 159
    .line 160
    move-result-object v2

    .line 161
    move/from16 v16, v3

    .line 162
    .line 163
    new-instance v3, Lorg/wikipedia/compose/extensions/ModifierKt$pulse$1$1$1$$ExternalSyntheticLambda0;

    .line 164
    .line 165
    invoke-direct {v3, v14, v9}, Lorg/wikipedia/compose/extensions/ModifierKt$pulse$1$1$1$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;I)V

    .line 166
    .line 167
    .line 168
    iput-object v11, v4, Lorg/wikipedia/compose/extensions/ModifierKt$pulse$1$1$1;->L$0:Landroidx/compose/runtime/State;

    .line 169
    .line 170
    iput-object v13, v4, Lorg/wikipedia/compose/extensions/ModifierKt$pulse$1$1$1;->L$1:Landroidx/compose/animation/core/Easing;

    .line 171
    .line 172
    iput-object v14, v4, Lorg/wikipedia/compose/extensions/ModifierKt$pulse$1$1$1;->L$2:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    .line 173
    .line 174
    iput v15, v4, Lorg/wikipedia/compose/extensions/ModifierKt$pulse$1$1$1;->I$0:I

    .line 175
    .line 176
    iput v5, v4, Lorg/wikipedia/compose/extensions/ModifierKt$pulse$1$1$1;->F$0:F

    .line 177
    .line 178
    iput v12, v4, Lorg/wikipedia/compose/extensions/ModifierKt$pulse$1$1$1;->I$1:I

    .line 179
    .line 180
    iput v10, v4, Lorg/wikipedia/compose/extensions/ModifierKt$pulse$1$1$1;->I$2:I

    .line 181
    .line 182
    iput v1, v4, Lorg/wikipedia/compose/extensions/ModifierKt$pulse$1$1$1;->I$3:I

    .line 183
    .line 184
    iput v0, v4, Lorg/wikipedia/compose/extensions/ModifierKt$pulse$1$1$1;->I$4:I

    .line 185
    .line 186
    iput v9, v4, Lorg/wikipedia/compose/extensions/ModifierKt$pulse$1$1$1;->label:I

    .line 187
    .line 188
    move v1, v5

    .line 189
    const/4 v5, 0x4

    .line 190
    move/from16 v0, v16

    .line 191
    .line 192
    invoke-static/range {v0 .. v5}, Landroidx/compose/animation/core/ArcSplineKt;->animate$default(FFLandroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/jvm/internal/SuspendLambda;I)Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    if-ne v0, v6, :cond_4

    .line 197
    .line 198
    :goto_2
    return-object v6

    .line 199
    :cond_4
    move v0, v10

    .line 200
    :goto_3
    add-int/lit8 v10, v0, 0x1

    .line 201
    .line 202
    move v0, v1

    .line 203
    goto :goto_0

    .line 204
    :cond_5
    iget-object v0, v4, Lorg/wikipedia/compose/extensions/ModifierKt$pulse$1$1$1;->$onCompleted:Lkotlin/jvm/functions/Function0;

    .line 205
    .line 206
    if-eqz v0, :cond_6

    .line 207
    .line 208
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    :cond_6
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 212
    .line 213
    return-object v0
.end method
