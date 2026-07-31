.class public final Landroidx/compose/material3/ThumbNode$measure$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public synthetic $size:F

.field public label:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/material3/ThumbNode;FLkotlin/coroutines/Continuation;I)V
    .locals 0

    .line 1
    iput p4, p0, Landroidx/compose/material3/ThumbNode$measure$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Landroidx/compose/material3/ThumbNode$measure$1;->this$0:Ljava/lang/Object;

    .line 4
    .line 5
    iput p2, p0, Landroidx/compose/material3/ThumbNode$measure$1;->$size:F

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/scrollcapture/ComposeScrollCaptureCallback;Lkotlin/coroutines/Continuation;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Landroidx/compose/material3/ThumbNode$measure$1;->$r8$classId:I

    .line 12
    iput-object p1, p0, Landroidx/compose/material3/ThumbNode$measure$1;->this$0:Ljava/lang/Object;

    invoke-direct {p0, v0, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    .line 1
    iget v0, p0, Landroidx/compose/material3/ThumbNode$measure$1;->$r8$classId:I

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/compose/material3/ThumbNode$measure$1;->this$0:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance p0, Landroidx/compose/material3/ThumbNode$measure$1;

    .line 9
    .line 10
    check-cast v1, Landroidx/compose/ui/scrollcapture/ComposeScrollCaptureCallback;

    .line 11
    .line 12
    invoke-direct {p0, v1, p2}, Landroidx/compose/material3/ThumbNode$measure$1;-><init>(Landroidx/compose/ui/scrollcapture/ComposeScrollCaptureCallback;Lkotlin/coroutines/Continuation;)V

    .line 13
    .line 14
    .line 15
    check-cast p1, Ljava/lang/Number;

    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    iput p1, p0, Landroidx/compose/material3/ThumbNode$measure$1;->$size:F

    .line 22
    .line 23
    return-object p0

    .line 24
    :pswitch_0
    new-instance p1, Landroidx/compose/material3/ThumbNode$measure$1;

    .line 25
    .line 26
    check-cast v1, Landroidx/compose/material3/ThumbNode;

    .line 27
    .line 28
    iget p0, p0, Landroidx/compose/material3/ThumbNode$measure$1;->$size:F

    .line 29
    .line 30
    const/4 v0, 0x1

    .line 31
    invoke-direct {p1, v1, p0, p2, v0}, Landroidx/compose/material3/ThumbNode$measure$1;-><init>(Landroidx/compose/material3/ThumbNode;FLkotlin/coroutines/Continuation;I)V

    .line 32
    .line 33
    .line 34
    return-object p1

    .line 35
    :pswitch_1
    new-instance p1, Landroidx/compose/material3/ThumbNode$measure$1;

    .line 36
    .line 37
    check-cast v1, Landroidx/compose/material3/ThumbNode;

    .line 38
    .line 39
    iget p0, p0, Landroidx/compose/material3/ThumbNode$measure$1;->$size:F

    .line 40
    .line 41
    const/4 v0, 0x0

    .line 42
    invoke-direct {p1, v1, p0, p2, v0}, Landroidx/compose/material3/ThumbNode$measure$1;-><init>(Landroidx/compose/material3/ThumbNode;FLkotlin/coroutines/Continuation;I)V

    .line 43
    .line 44
    .line 45
    return-object p1

    .line 46
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Landroidx/compose/material3/ThumbNode$measure$1;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p1, Ljava/lang/Number;

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 15
    .line 16
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p0, p1, p2}, Landroidx/compose/material3/ThumbNode$measure$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    check-cast p0, Landroidx/compose/material3/ThumbNode$measure$1;

    .line 25
    .line 26
    invoke-virtual {p0, v1}, Landroidx/compose/material3/ThumbNode$measure$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    return-object p0

    .line 31
    :pswitch_0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 32
    .line 33
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 34
    .line 35
    invoke-virtual {p0, p1, p2}, Landroidx/compose/material3/ThumbNode$measure$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    check-cast p0, Landroidx/compose/material3/ThumbNode$measure$1;

    .line 40
    .line 41
    invoke-virtual {p0, v1}, Landroidx/compose/material3/ThumbNode$measure$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    return-object p0

    .line 46
    :pswitch_1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 47
    .line 48
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 49
    .line 50
    invoke-virtual {p0, p1, p2}, Landroidx/compose/material3/ThumbNode$measure$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    check-cast p0, Landroidx/compose/material3/ThumbNode$measure$1;

    .line 55
    .line 56
    invoke-virtual {p0, v1}, Landroidx/compose/material3/ThumbNode$measure$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    return-object p0

    .line 61
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .line 1
    iget v0, p0, Landroidx/compose/material3/ThumbNode$measure$1;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    iget-object v4, p0, Landroidx/compose/material3/ThumbNode$measure$1;->this$0:Ljava/lang/Object;

    .line 9
    .line 10
    const/4 v5, 0x0

    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    check-cast v4, Landroidx/compose/ui/scrollcapture/ComposeScrollCaptureCallback;

    .line 15
    .line 16
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 17
    .line 18
    iget v1, p0, Landroidx/compose/material3/ThumbNode$measure$1;->label:I

    .line 19
    .line 20
    const-wide v6, 0xffffffffL

    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    if-ne v1, v3, :cond_0

    .line 28
    .line 29
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_0
    invoke-static {v2}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    goto :goto_2

    .line 37
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    iget p1, p0, Landroidx/compose/material3/ThumbNode$measure$1;->$size:F

    .line 41
    .line 42
    iget-object v1, v4, Landroidx/compose/ui/scrollcapture/ComposeScrollCaptureCallback;->node:Landroidx/compose/ui/semantics/SemanticsNode;

    .line 43
    .line 44
    iget-object v1, v1, Landroidx/compose/ui/semantics/SemanticsNode;->unmergedConfig:Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 45
    .line 46
    sget-object v2, Landroidx/compose/ui/semantics/SemanticsActions;->ScrollByOffset:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 47
    .line 48
    iget-object v1, v1, Landroidx/compose/ui/semantics/SemanticsConfiguration;->props:Landroidx/collection/MutableScatterMap;

    .line 49
    .line 50
    invoke-virtual {v1, v2}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    if-nez v1, :cond_2

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_2
    move-object v5, v1

    .line 58
    :goto_0
    check-cast v5, Lkotlin/jvm/functions/Function2;

    .line 59
    .line 60
    if-eqz v5, :cond_4

    .line 61
    .line 62
    iget-object v1, v4, Landroidx/compose/ui/scrollcapture/ComposeScrollCaptureCallback;->node:Landroidx/compose/ui/semantics/SemanticsNode;

    .line 63
    .line 64
    iget-object v1, v1, Landroidx/compose/ui/semantics/SemanticsNode;->unmergedConfig:Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 65
    .line 66
    sget-object v2, Landroidx/compose/ui/semantics/SemanticsProperties;->VerticalScrollAxisRange:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 67
    .line 68
    invoke-virtual {v1, v2}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->get(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    check-cast v1, Landroidx/compose/ui/semantics/ScrollAxisRange;

    .line 73
    .line 74
    const/4 v1, 0x0

    .line 75
    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    int-to-long v1, v1

    .line 80
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    int-to-long v8, p1

    .line 85
    const/16 p1, 0x20

    .line 86
    .line 87
    shl-long/2addr v1, p1

    .line 88
    and-long/2addr v8, v6

    .line 89
    or-long/2addr v1, v8

    .line 90
    new-instance p1, Landroidx/compose/ui/geometry/Offset;

    .line 91
    .line 92
    invoke-direct {p1, v1, v2}, Landroidx/compose/ui/geometry/Offset;-><init>(J)V

    .line 93
    .line 94
    .line 95
    iput v3, p0, Landroidx/compose/material3/ThumbNode$measure$1;->label:I

    .line 96
    .line 97
    invoke-interface {v5, p1, p0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    if-ne p1, v0, :cond_3

    .line 102
    .line 103
    move-object v5, v0

    .line 104
    goto :goto_2

    .line 105
    :cond_3
    :goto_1
    check-cast p1, Landroidx/compose/ui/geometry/Offset;

    .line 106
    .line 107
    iget-wide p0, p1, Landroidx/compose/ui/geometry/Offset;->packedValue:J

    .line 108
    .line 109
    and-long/2addr p0, v6

    .line 110
    long-to-int p0, p0

    .line 111
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 112
    .line 113
    .line 114
    move-result p0

    .line 115
    new-instance v5, Ljava/lang/Float;

    .line 116
    .line 117
    invoke-direct {v5, p0}, Ljava/lang/Float;-><init>(F)V

    .line 118
    .line 119
    .line 120
    :goto_2
    return-object v5

    .line 121
    :cond_4
    const-string p0, "Required value was null."

    .line 122
    .line 123
    invoke-static {p0}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/String;)Lcoil3/network/HttpException;

    .line 124
    .line 125
    .line 126
    move-result-object p0

    .line 127
    throw p0

    .line 128
    :pswitch_0
    check-cast v4, Landroidx/compose/material3/ThumbNode;

    .line 129
    .line 130
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 131
    .line 132
    iget v6, p0, Landroidx/compose/material3/ThumbNode$measure$1;->label:I

    .line 133
    .line 134
    if-eqz v6, :cond_6

    .line 135
    .line 136
    if-ne v6, v3, :cond_5

    .line 137
    .line 138
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 139
    .line 140
    .line 141
    goto :goto_5

    .line 142
    :cond_5
    invoke-static {v2}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    move-object v1, v5

    .line 146
    goto :goto_6

    .line 147
    :cond_6
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 148
    .line 149
    .line 150
    iget-object v7, v4, Landroidx/compose/material3/ThumbNode;->offsetAnim:Landroidx/compose/animation/core/Animatable;

    .line 151
    .line 152
    if-eqz v7, :cond_9

    .line 153
    .line 154
    iget p1, p0, Landroidx/compose/material3/ThumbNode$measure$1;->$size:F

    .line 155
    .line 156
    new-instance v8, Ljava/lang/Float;

    .line 157
    .line 158
    invoke-direct {v8, p1}, Ljava/lang/Float;-><init>(F)V

    .line 159
    .line 160
    .line 161
    iget-boolean p1, v4, Landroidx/compose/material3/ThumbNode;->isPressed:Z

    .line 162
    .line 163
    if-eqz p1, :cond_7

    .line 164
    .line 165
    sget-object p1, Landroidx/compose/material3/SwitchKt;->SnapSpec:Landroidx/compose/animation/core/SnapSpec;

    .line 166
    .line 167
    :goto_3
    move-object v9, p1

    .line 168
    goto :goto_4

    .line 169
    :cond_7
    iget-object p1, v4, Landroidx/compose/material3/ThumbNode;->animationSpec:Landroidx/compose/animation/core/SpringSpec;

    .line 170
    .line 171
    goto :goto_3

    .line 172
    :goto_4
    iput v3, p0, Landroidx/compose/material3/ThumbNode$measure$1;->label:I

    .line 173
    .line 174
    const/4 v10, 0x0

    .line 175
    const/16 v12, 0xc

    .line 176
    .line 177
    move-object v11, p0

    .line 178
    invoke-static/range {v7 .. v12}, Landroidx/compose/animation/core/Animatable;->animateTo$default(Landroidx/compose/animation/core/Animatable;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;I)Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    if-ne p1, v0, :cond_8

    .line 183
    .line 184
    move-object v1, v0

    .line 185
    goto :goto_6

    .line 186
    :cond_8
    :goto_5
    check-cast p1, Landroidx/compose/animation/core/AnimationResult;

    .line 187
    .line 188
    :cond_9
    :goto_6
    return-object v1

    .line 189
    :pswitch_1
    move-object v6, p0

    .line 190
    check-cast v4, Landroidx/compose/material3/ThumbNode;

    .line 191
    .line 192
    sget-object p0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 193
    .line 194
    iget v0, v6, Landroidx/compose/material3/ThumbNode$measure$1;->label:I

    .line 195
    .line 196
    if-eqz v0, :cond_b

    .line 197
    .line 198
    if-ne v0, v3, :cond_a

    .line 199
    .line 200
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 201
    .line 202
    .line 203
    goto :goto_9

    .line 204
    :cond_a
    invoke-static {v2}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    move-object v1, v5

    .line 208
    goto :goto_a

    .line 209
    :cond_b
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 210
    .line 211
    .line 212
    iget-object v2, v4, Landroidx/compose/material3/ThumbNode;->sizeAnim:Landroidx/compose/animation/core/Animatable;

    .line 213
    .line 214
    if-eqz v2, :cond_e

    .line 215
    .line 216
    iget p1, v6, Landroidx/compose/material3/ThumbNode$measure$1;->$size:F

    .line 217
    .line 218
    move v0, v3

    .line 219
    new-instance v3, Ljava/lang/Float;

    .line 220
    .line 221
    invoke-direct {v3, p1}, Ljava/lang/Float;-><init>(F)V

    .line 222
    .line 223
    .line 224
    iget-boolean p1, v4, Landroidx/compose/material3/ThumbNode;->isPressed:Z

    .line 225
    .line 226
    if-eqz p1, :cond_c

    .line 227
    .line 228
    sget-object p1, Landroidx/compose/material3/SwitchKt;->SnapSpec:Landroidx/compose/animation/core/SnapSpec;

    .line 229
    .line 230
    :goto_7
    move-object v4, p1

    .line 231
    goto :goto_8

    .line 232
    :cond_c
    iget-object p1, v4, Landroidx/compose/material3/ThumbNode;->animationSpec:Landroidx/compose/animation/core/SpringSpec;

    .line 233
    .line 234
    goto :goto_7

    .line 235
    :goto_8
    iput v0, v6, Landroidx/compose/material3/ThumbNode$measure$1;->label:I

    .line 236
    .line 237
    const/4 v5, 0x0

    .line 238
    const/16 v7, 0xc

    .line 239
    .line 240
    invoke-static/range {v2 .. v7}, Landroidx/compose/animation/core/Animatable;->animateTo$default(Landroidx/compose/animation/core/Animatable;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;I)Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    move-result-object p1

    .line 244
    if-ne p1, p0, :cond_d

    .line 245
    .line 246
    move-object v1, p0

    .line 247
    goto :goto_a

    .line 248
    :cond_d
    :goto_9
    check-cast p1, Landroidx/compose/animation/core/AnimationResult;

    .line 249
    .line 250
    :cond_e
    :goto_a
    return-object v1

    .line 251
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
