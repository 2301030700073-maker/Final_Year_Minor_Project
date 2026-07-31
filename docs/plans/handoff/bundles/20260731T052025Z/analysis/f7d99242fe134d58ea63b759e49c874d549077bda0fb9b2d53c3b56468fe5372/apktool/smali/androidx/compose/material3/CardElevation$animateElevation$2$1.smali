.class public final Landroidx/compose/material3/CardElevation$animateElevation$2$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $animatable:Landroidx/compose/animation/core/Animatable;

.field public final synthetic $enabled:Z

.field public final synthetic $interaction:Landroidx/compose/foundation/interaction/Interaction;

.field public final synthetic $r8$classId:I

.field public final synthetic $target:F

.field public label:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/animation/core/Animatable;FZLjava/lang/Object;Landroidx/compose/foundation/interaction/Interaction;Lkotlin/coroutines/Continuation;I)V
    .locals 0

    .line 1
    iput p7, p0, Landroidx/compose/material3/CardElevation$animateElevation$2$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Landroidx/compose/material3/CardElevation$animateElevation$2$1;->$animatable:Landroidx/compose/animation/core/Animatable;

    .line 4
    .line 5
    iput p2, p0, Landroidx/compose/material3/CardElevation$animateElevation$2$1;->$target:F

    .line 6
    .line 7
    iput-boolean p3, p0, Landroidx/compose/material3/CardElevation$animateElevation$2$1;->$enabled:Z

    .line 8
    .line 9
    iput-object p4, p0, Landroidx/compose/material3/CardElevation$animateElevation$2$1;->this$0:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p5, p0, Landroidx/compose/material3/CardElevation$animateElevation$2$1;->$interaction:Landroidx/compose/foundation/interaction/Interaction;

    .line 12
    .line 13
    const/4 p1, 0x2

    .line 14
    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 10

    .line 1
    iget p1, p0, Landroidx/compose/material3/CardElevation$animateElevation$2$1;->$r8$classId:I

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/compose/material3/CardElevation$animateElevation$2$1;->this$0:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance v1, Landroidx/compose/material3/CardElevation$animateElevation$2$1;

    .line 9
    .line 10
    move-object v5, v0

    .line 11
    check-cast v5, Landroidx/compose/material3/ButtonElevation;

    .line 12
    .line 13
    iget-object v6, p0, Landroidx/compose/material3/CardElevation$animateElevation$2$1;->$interaction:Landroidx/compose/foundation/interaction/Interaction;

    .line 14
    .line 15
    const/4 v8, 0x1

    .line 16
    iget-object v2, p0, Landroidx/compose/material3/CardElevation$animateElevation$2$1;->$animatable:Landroidx/compose/animation/core/Animatable;

    .line 17
    .line 18
    iget v3, p0, Landroidx/compose/material3/CardElevation$animateElevation$2$1;->$target:F

    .line 19
    .line 20
    iget-boolean v4, p0, Landroidx/compose/material3/CardElevation$animateElevation$2$1;->$enabled:Z

    .line 21
    .line 22
    move-object v7, p2

    .line 23
    invoke-direct/range {v1 .. v8}, Landroidx/compose/material3/CardElevation$animateElevation$2$1;-><init>(Landroidx/compose/animation/core/Animatable;FZLjava/lang/Object;Landroidx/compose/foundation/interaction/Interaction;Lkotlin/coroutines/Continuation;I)V

    .line 24
    .line 25
    .line 26
    return-object v1

    .line 27
    :pswitch_0
    move-object v7, p2

    .line 28
    new-instance v2, Landroidx/compose/material3/CardElevation$animateElevation$2$1;

    .line 29
    .line 30
    move-object v6, v0

    .line 31
    check-cast v6, Landroidx/compose/material3/CardElevation;

    .line 32
    .line 33
    move-object v8, v7

    .line 34
    iget-object v7, p0, Landroidx/compose/material3/CardElevation$animateElevation$2$1;->$interaction:Landroidx/compose/foundation/interaction/Interaction;

    .line 35
    .line 36
    const/4 v9, 0x0

    .line 37
    iget-object v3, p0, Landroidx/compose/material3/CardElevation$animateElevation$2$1;->$animatable:Landroidx/compose/animation/core/Animatable;

    .line 38
    .line 39
    iget v4, p0, Landroidx/compose/material3/CardElevation$animateElevation$2$1;->$target:F

    .line 40
    .line 41
    iget-boolean v5, p0, Landroidx/compose/material3/CardElevation$animateElevation$2$1;->$enabled:Z

    .line 42
    .line 43
    invoke-direct/range {v2 .. v9}, Landroidx/compose/material3/CardElevation$animateElevation$2$1;-><init>(Landroidx/compose/animation/core/Animatable;FZLjava/lang/Object;Landroidx/compose/foundation/interaction/Interaction;Lkotlin/coroutines/Continuation;I)V

    .line 44
    .line 45
    .line 46
    return-object v2

    .line 47
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Landroidx/compose/material3/CardElevation$animateElevation$2$1;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 6
    .line 7
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1, p2}, Landroidx/compose/material3/CardElevation$animateElevation$2$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Landroidx/compose/material3/CardElevation$animateElevation$2$1;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Landroidx/compose/material3/CardElevation$animateElevation$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Landroidx/compose/material3/CardElevation$animateElevation$2$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Landroidx/compose/material3/CardElevation$animateElevation$2$1;

    .line 28
    .line 29
    invoke-virtual {p0, v1}, Landroidx/compose/material3/CardElevation$animateElevation$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0

    .line 34
    nop

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    .line 1
    iget v0, p0, Landroidx/compose/material3/CardElevation$animateElevation$2$1;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/compose/material3/CardElevation$animateElevation$2$1;->$interaction:Landroidx/compose/foundation/interaction/Interaction;

    .line 6
    .line 7
    const-wide/16 v3, 0x0

    .line 8
    .line 9
    iget-boolean v5, p0, Landroidx/compose/material3/CardElevation$animateElevation$2$1;->$enabled:Z

    .line 10
    .line 11
    const-string v6, "call to \'resume\' before \'invoke\' with coroutine"

    .line 12
    .line 13
    sget-object v7, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 14
    .line 15
    iget-object v8, p0, Landroidx/compose/material3/CardElevation$animateElevation$2$1;->$animatable:Landroidx/compose/animation/core/Animatable;

    .line 16
    .line 17
    iget v9, p0, Landroidx/compose/material3/CardElevation$animateElevation$2$1;->$target:F

    .line 18
    .line 19
    iget-object v10, p0, Landroidx/compose/material3/CardElevation$animateElevation$2$1;->this$0:Ljava/lang/Object;

    .line 20
    .line 21
    const/4 v11, 0x1

    .line 22
    const/4 v12, 0x2

    .line 23
    const/4 v13, 0x0

    .line 24
    packed-switch v0, :pswitch_data_0

    .line 25
    .line 26
    .line 27
    check-cast v10, Landroidx/compose/material3/ButtonElevation;

    .line 28
    .line 29
    iget v0, p0, Landroidx/compose/material3/CardElevation$animateElevation$2$1;->label:I

    .line 30
    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    if-eq v0, v11, :cond_1

    .line 34
    .line 35
    if-ne v0, v12, :cond_0

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    invoke-static {v6}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    move-object v1, v13

    .line 42
    goto :goto_3

    .line 43
    :cond_1
    :goto_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    goto :goto_3

    .line 47
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    iget-object p1, v8, Landroidx/compose/animation/core/Animatable;->targetValue$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 51
    .line 52
    invoke-virtual {p1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    check-cast p1, Landroidx/compose/ui/unit/Dp;

    .line 57
    .line 58
    iget p1, p1, Landroidx/compose/ui/unit/Dp;->value:F

    .line 59
    .line 60
    invoke-static {p1, v9}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    if-nez p1, :cond_7

    .line 65
    .line 66
    if-nez v5, :cond_3

    .line 67
    .line 68
    new-instance p1, Landroidx/compose/ui/unit/Dp;

    .line 69
    .line 70
    invoke-direct {p1, v9}, Landroidx/compose/ui/unit/Dp;-><init>(F)V

    .line 71
    .line 72
    .line 73
    iput v11, p0, Landroidx/compose/material3/CardElevation$animateElevation$2$1;->label:I

    .line 74
    .line 75
    invoke-virtual {v8, p1, p0}, Landroidx/compose/animation/core/Animatable;->snapTo(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    if-ne p0, v7, :cond_7

    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_3
    iget-object p1, v8, Landroidx/compose/animation/core/Animatable;->targetValue$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 83
    .line 84
    invoke-virtual {p1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    check-cast p1, Landroidx/compose/ui/unit/Dp;

    .line 89
    .line 90
    iget p1, p1, Landroidx/compose/ui/unit/Dp;->value:F

    .line 91
    .line 92
    const/4 v0, 0x0

    .line 93
    invoke-static {p1, v0}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    .line 94
    .line 95
    .line 96
    move-result v5

    .line 97
    if-eqz v5, :cond_4

    .line 98
    .line 99
    new-instance v13, Landroidx/compose/foundation/interaction/PressInteraction$Press;

    .line 100
    .line 101
    invoke-direct {v13, v3, v4}, Landroidx/compose/foundation/interaction/PressInteraction$Press;-><init>(J)V

    .line 102
    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_4
    iget v3, v10, Landroidx/compose/material3/ButtonElevation;->hoveredElevation:F

    .line 106
    .line 107
    invoke-static {p1, v3}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    .line 108
    .line 109
    .line 110
    move-result v3

    .line 111
    if-eqz v3, :cond_5

    .line 112
    .line 113
    new-instance v13, Landroidx/compose/foundation/interaction/HoverInteraction$Enter;

    .line 114
    .line 115
    invoke-direct {v13}, Ljava/lang/Object;-><init>()V

    .line 116
    .line 117
    .line 118
    goto :goto_1

    .line 119
    :cond_5
    invoke-static {p1, v0}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    .line 120
    .line 121
    .line 122
    move-result p1

    .line 123
    if-eqz p1, :cond_6

    .line 124
    .line 125
    new-instance v13, Landroidx/compose/foundation/interaction/FocusInteraction$Focus;

    .line 126
    .line 127
    invoke-direct {v13}, Ljava/lang/Object;-><init>()V

    .line 128
    .line 129
    .line 130
    :cond_6
    :goto_1
    iput v12, p0, Landroidx/compose/material3/CardElevation$animateElevation$2$1;->label:I

    .line 131
    .line 132
    invoke-static {v8, v9, v13, v2, p0}, Landroidx/compose/material3/internal/ElevationKt;->animateElevation-rAjV9yQ(Landroidx/compose/animation/core/Animatable;FLandroidx/compose/foundation/interaction/Interaction;Landroidx/compose/foundation/interaction/Interaction;Lkotlin/coroutines/jvm/internal/SuspendLambda;)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object p0

    .line 136
    if-ne p0, v7, :cond_7

    .line 137
    .line 138
    :goto_2
    move-object v1, v7

    .line 139
    :cond_7
    :goto_3
    return-object v1

    .line 140
    :pswitch_0
    check-cast v10, Landroidx/compose/material3/CardElevation;

    .line 141
    .line 142
    iget v0, p0, Landroidx/compose/material3/CardElevation$animateElevation$2$1;->label:I

    .line 143
    .line 144
    if-eqz v0, :cond_a

    .line 145
    .line 146
    if-eq v0, v11, :cond_9

    .line 147
    .line 148
    if-ne v0, v12, :cond_8

    .line 149
    .line 150
    goto :goto_4

    .line 151
    :cond_8
    invoke-static {v6}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    move-object v1, v13

    .line 155
    goto/16 :goto_7

    .line 156
    .line 157
    :cond_9
    :goto_4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 158
    .line 159
    .line 160
    goto/16 :goto_7

    .line 161
    .line 162
    :cond_a
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 163
    .line 164
    .line 165
    iget-object p1, v8, Landroidx/compose/animation/core/Animatable;->targetValue$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 166
    .line 167
    invoke-virtual {p1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    check-cast p1, Landroidx/compose/ui/unit/Dp;

    .line 172
    .line 173
    iget p1, p1, Landroidx/compose/ui/unit/Dp;->value:F

    .line 174
    .line 175
    invoke-static {p1, v9}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    .line 176
    .line 177
    .line 178
    move-result p1

    .line 179
    if-nez p1, :cond_10

    .line 180
    .line 181
    if-nez v5, :cond_b

    .line 182
    .line 183
    new-instance p1, Landroidx/compose/ui/unit/Dp;

    .line 184
    .line 185
    invoke-direct {p1, v9}, Landroidx/compose/ui/unit/Dp;-><init>(F)V

    .line 186
    .line 187
    .line 188
    iput v11, p0, Landroidx/compose/material3/CardElevation$animateElevation$2$1;->label:I

    .line 189
    .line 190
    invoke-virtual {v8, p1, p0}, Landroidx/compose/animation/core/Animatable;->snapTo(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object p0

    .line 194
    if-ne p0, v7, :cond_10

    .line 195
    .line 196
    goto :goto_6

    .line 197
    :cond_b
    iget-object p1, v8, Landroidx/compose/animation/core/Animatable;->targetValue$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 198
    .line 199
    invoke-virtual {p1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object p1

    .line 203
    check-cast p1, Landroidx/compose/ui/unit/Dp;

    .line 204
    .line 205
    iget p1, p1, Landroidx/compose/ui/unit/Dp;->value:F

    .line 206
    .line 207
    iget v0, v10, Landroidx/compose/material3/CardElevation;->pressedElevation:F

    .line 208
    .line 209
    invoke-static {p1, v0}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    .line 210
    .line 211
    .line 212
    move-result v0

    .line 213
    if-eqz v0, :cond_c

    .line 214
    .line 215
    new-instance v13, Landroidx/compose/foundation/interaction/PressInteraction$Press;

    .line 216
    .line 217
    invoke-direct {v13, v3, v4}, Landroidx/compose/foundation/interaction/PressInteraction$Press;-><init>(J)V

    .line 218
    .line 219
    .line 220
    goto :goto_5

    .line 221
    :cond_c
    iget v0, v10, Landroidx/compose/material3/CardElevation;->hoveredElevation:F

    .line 222
    .line 223
    invoke-static {p1, v0}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    .line 224
    .line 225
    .line 226
    move-result v0

    .line 227
    if-eqz v0, :cond_d

    .line 228
    .line 229
    new-instance v13, Landroidx/compose/foundation/interaction/HoverInteraction$Enter;

    .line 230
    .line 231
    invoke-direct {v13}, Ljava/lang/Object;-><init>()V

    .line 232
    .line 233
    .line 234
    goto :goto_5

    .line 235
    :cond_d
    iget v0, v10, Landroidx/compose/material3/CardElevation;->focusedElevation:F

    .line 236
    .line 237
    invoke-static {p1, v0}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    .line 238
    .line 239
    .line 240
    move-result v0

    .line 241
    if-eqz v0, :cond_e

    .line 242
    .line 243
    new-instance v13, Landroidx/compose/foundation/interaction/FocusInteraction$Focus;

    .line 244
    .line 245
    invoke-direct {v13}, Ljava/lang/Object;-><init>()V

    .line 246
    .line 247
    .line 248
    goto :goto_5

    .line 249
    :cond_e
    iget v0, v10, Landroidx/compose/material3/CardElevation;->draggedElevation:F

    .line 250
    .line 251
    invoke-static {p1, v0}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    .line 252
    .line 253
    .line 254
    move-result p1

    .line 255
    if-eqz p1, :cond_f

    .line 256
    .line 257
    new-instance v13, Landroidx/compose/foundation/interaction/DragInteraction$Start;

    .line 258
    .line 259
    invoke-direct {v13}, Ljava/lang/Object;-><init>()V

    .line 260
    .line 261
    .line 262
    :cond_f
    :goto_5
    iput v12, p0, Landroidx/compose/material3/CardElevation$animateElevation$2$1;->label:I

    .line 263
    .line 264
    invoke-static {v8, v9, v13, v2, p0}, Landroidx/compose/material3/internal/ElevationKt;->animateElevation-rAjV9yQ(Landroidx/compose/animation/core/Animatable;FLandroidx/compose/foundation/interaction/Interaction;Landroidx/compose/foundation/interaction/Interaction;Lkotlin/coroutines/jvm/internal/SuspendLambda;)Ljava/lang/Object;

    .line 265
    .line 266
    .line 267
    move-result-object p0

    .line 268
    if-ne p0, v7, :cond_10

    .line 269
    .line 270
    :goto_6
    move-object v1, v7

    .line 271
    :cond_10
    :goto_7
    return-object v1

    .line 272
    nop

    .line 273
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
