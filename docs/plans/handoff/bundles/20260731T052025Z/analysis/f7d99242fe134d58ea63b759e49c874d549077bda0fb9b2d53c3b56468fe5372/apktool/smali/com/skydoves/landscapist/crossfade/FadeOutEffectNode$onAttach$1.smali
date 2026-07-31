.class public final Lcom/skydoves/landscapist/crossfade/FadeOutEffectNode$onAttach$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public label:I

.field public final synthetic this$0:Lcom/skydoves/landscapist/crossfade/FadeOutEffectNode;


# direct methods
.method public synthetic constructor <init>(Lcom/skydoves/landscapist/crossfade/FadeOutEffectNode;Lkotlin/coroutines/Continuation;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/skydoves/landscapist/crossfade/FadeOutEffectNode$onAttach$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/skydoves/landscapist/crossfade/FadeOutEffectNode$onAttach$1;->this$0:Lcom/skydoves/landscapist/crossfade/FadeOutEffectNode;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    .line 1
    iget p1, p0, Lcom/skydoves/landscapist/crossfade/FadeOutEffectNode$onAttach$1;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/skydoves/landscapist/crossfade/FadeOutEffectNode$onAttach$1;->this$0:Lcom/skydoves/landscapist/crossfade/FadeOutEffectNode;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance p1, Lcom/skydoves/landscapist/crossfade/FadeOutEffectNode$onAttach$1;

    .line 9
    .line 10
    const/4 v0, 0x4

    .line 11
    invoke-direct {p1, p0, p2, v0}, Lcom/skydoves/landscapist/crossfade/FadeOutEffectNode$onAttach$1;-><init>(Lcom/skydoves/landscapist/crossfade/FadeOutEffectNode;Lkotlin/coroutines/Continuation;I)V

    .line 12
    .line 13
    .line 14
    return-object p1

    .line 15
    :pswitch_0
    new-instance p1, Lcom/skydoves/landscapist/crossfade/FadeOutEffectNode$onAttach$1;

    .line 16
    .line 17
    const/4 v0, 0x3

    .line 18
    invoke-direct {p1, p0, p2, v0}, Lcom/skydoves/landscapist/crossfade/FadeOutEffectNode$onAttach$1;-><init>(Lcom/skydoves/landscapist/crossfade/FadeOutEffectNode;Lkotlin/coroutines/Continuation;I)V

    .line 19
    .line 20
    .line 21
    return-object p1

    .line 22
    :pswitch_1
    new-instance p1, Lcom/skydoves/landscapist/crossfade/FadeOutEffectNode$onAttach$1;

    .line 23
    .line 24
    const/4 v0, 0x2

    .line 25
    invoke-direct {p1, p0, p2, v0}, Lcom/skydoves/landscapist/crossfade/FadeOutEffectNode$onAttach$1;-><init>(Lcom/skydoves/landscapist/crossfade/FadeOutEffectNode;Lkotlin/coroutines/Continuation;I)V

    .line 26
    .line 27
    .line 28
    return-object p1

    .line 29
    :pswitch_2
    new-instance p1, Lcom/skydoves/landscapist/crossfade/FadeOutEffectNode$onAttach$1;

    .line 30
    .line 31
    const/4 v0, 0x1

    .line 32
    invoke-direct {p1, p0, p2, v0}, Lcom/skydoves/landscapist/crossfade/FadeOutEffectNode$onAttach$1;-><init>(Lcom/skydoves/landscapist/crossfade/FadeOutEffectNode;Lkotlin/coroutines/Continuation;I)V

    .line 33
    .line 34
    .line 35
    return-object p1

    .line 36
    :pswitch_3
    new-instance p1, Lcom/skydoves/landscapist/crossfade/FadeOutEffectNode$onAttach$1;

    .line 37
    .line 38
    const/4 v0, 0x0

    .line 39
    invoke-direct {p1, p0, p2, v0}, Lcom/skydoves/landscapist/crossfade/FadeOutEffectNode$onAttach$1;-><init>(Lcom/skydoves/landscapist/crossfade/FadeOutEffectNode;Lkotlin/coroutines/Continuation;I)V

    .line 40
    .line 41
    .line 42
    return-object p1

    .line 43
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lcom/skydoves/landscapist/crossfade/FadeOutEffectNode$onAttach$1;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 9
    .line 10
    invoke-virtual {p0, p1, p2}, Lcom/skydoves/landscapist/crossfade/FadeOutEffectNode$onAttach$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Lcom/skydoves/landscapist/crossfade/FadeOutEffectNode$onAttach$1;

    .line 15
    .line 16
    invoke-virtual {p0, v1}, Lcom/skydoves/landscapist/crossfade/FadeOutEffectNode$onAttach$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0

    .line 21
    :pswitch_0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 22
    .line 23
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 24
    .line 25
    invoke-virtual {p0, p1, p2}, Lcom/skydoves/landscapist/crossfade/FadeOutEffectNode$onAttach$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    check-cast p0, Lcom/skydoves/landscapist/crossfade/FadeOutEffectNode$onAttach$1;

    .line 30
    .line 31
    invoke-virtual {p0, v1}, Lcom/skydoves/landscapist/crossfade/FadeOutEffectNode$onAttach$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    return-object p0

    .line 36
    :pswitch_1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 37
    .line 38
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 39
    .line 40
    invoke-virtual {p0, p1, p2}, Lcom/skydoves/landscapist/crossfade/FadeOutEffectNode$onAttach$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    check-cast p0, Lcom/skydoves/landscapist/crossfade/FadeOutEffectNode$onAttach$1;

    .line 45
    .line 46
    invoke-virtual {p0, v1}, Lcom/skydoves/landscapist/crossfade/FadeOutEffectNode$onAttach$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    return-object p0

    .line 51
    :pswitch_2
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 52
    .line 53
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 54
    .line 55
    invoke-virtual {p0, p1, p2}, Lcom/skydoves/landscapist/crossfade/FadeOutEffectNode$onAttach$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    check-cast p0, Lcom/skydoves/landscapist/crossfade/FadeOutEffectNode$onAttach$1;

    .line 60
    .line 61
    invoke-virtual {p0, v1}, Lcom/skydoves/landscapist/crossfade/FadeOutEffectNode$onAttach$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    return-object p0

    .line 66
    :pswitch_3
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 67
    .line 68
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 69
    .line 70
    invoke-virtual {p0, p1, p2}, Lcom/skydoves/landscapist/crossfade/FadeOutEffectNode$onAttach$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    check-cast p0, Lcom/skydoves/landscapist/crossfade/FadeOutEffectNode$onAttach$1;

    .line 75
    .line 76
    invoke-virtual {p0, v1}, Lcom/skydoves/landscapist/crossfade/FadeOutEffectNode$onAttach$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    return-object p0

    .line 81
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    .line 1
    iget v0, p0, Lcom/skydoves/landscapist/crossfade/FadeOutEffectNode$onAttach$1;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x2

    .line 5
    const/4 v3, 0x3

    .line 6
    const/4 v5, 0x6

    .line 7
    const/4 v6, 0x0

    .line 8
    const/4 v7, 0x4

    .line 9
    sget-object v8, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 10
    .line 11
    const-string v9, "call to \'resume\' before \'invoke\' with coroutine"

    .line 12
    .line 13
    sget-object v10, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 14
    .line 15
    iget-object v11, p0, Lcom/skydoves/landscapist/crossfade/FadeOutEffectNode$onAttach$1;->this$0:Lcom/skydoves/landscapist/crossfade/FadeOutEffectNode;

    .line 16
    .line 17
    const/4 v12, 0x1

    .line 18
    const/4 v13, 0x0

    .line 19
    packed-switch v0, :pswitch_data_0

    .line 20
    .line 21
    .line 22
    iget v0, p0, Lcom/skydoves/landscapist/crossfade/FadeOutEffectNode$onAttach$1;->label:I

    .line 23
    .line 24
    const/high16 v1, 0x3f800000    # 1.0f

    .line 25
    .line 26
    if-eqz v0, :cond_4

    .line 27
    .line 28
    if-eq v0, v12, :cond_3

    .line 29
    .line 30
    if-eq v0, v2, :cond_2

    .line 31
    .line 32
    if-eq v0, v3, :cond_1

    .line 33
    .line 34
    if-ne v0, v7, :cond_0

    .line 35
    .line 36
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    goto :goto_4

    .line 40
    :cond_0
    invoke-static {v9}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    move-object v8, v13

    .line 44
    goto :goto_4

    .line 45
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    iget-object v0, v11, Lcom/skydoves/landscapist/crossfade/FadeOutEffectNode;->alpha:Landroidx/compose/animation/core/Animatable;

    .line 61
    .line 62
    new-instance v5, Ljava/lang/Float;

    .line 63
    .line 64
    invoke-direct {v5, v1}, Ljava/lang/Float;-><init>(F)V

    .line 65
    .line 66
    .line 67
    iput v12, p0, Lcom/skydoves/landscapist/crossfade/FadeOutEffectNode$onAttach$1;->label:I

    .line 68
    .line 69
    invoke-virtual {v0, v5, p0}, Landroidx/compose/animation/core/Animatable;->snapTo(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    if-ne v0, v10, :cond_5

    .line 74
    .line 75
    goto :goto_3

    .line 76
    :cond_5
    :goto_0
    iget-object v0, v11, Lcom/skydoves/landscapist/crossfade/FadeOutEffectNode;->brightness:Landroidx/compose/animation/core/Animatable;

    .line 77
    .line 78
    new-instance v5, Ljava/lang/Float;

    .line 79
    .line 80
    invoke-direct {v5, v1}, Ljava/lang/Float;-><init>(F)V

    .line 81
    .line 82
    .line 83
    iput v2, p0, Lcom/skydoves/landscapist/crossfade/FadeOutEffectNode$onAttach$1;->label:I

    .line 84
    .line 85
    invoke-virtual {v0, v5, p0}, Landroidx/compose/animation/core/Animatable;->snapTo(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    if-ne v0, v10, :cond_6

    .line 90
    .line 91
    goto :goto_3

    .line 92
    :cond_6
    :goto_1
    iget-object v0, v11, Lcom/skydoves/landscapist/crossfade/FadeOutEffectNode;->saturation:Landroidx/compose/animation/core/Animatable;

    .line 93
    .line 94
    new-instance v2, Ljava/lang/Float;

    .line 95
    .line 96
    invoke-direct {v2, v1}, Ljava/lang/Float;-><init>(F)V

    .line 97
    .line 98
    .line 99
    iput v3, p0, Lcom/skydoves/landscapist/crossfade/FadeOutEffectNode$onAttach$1;->label:I

    .line 100
    .line 101
    invoke-virtual {v0, v2, p0}, Landroidx/compose/animation/core/Animatable;->snapTo(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    if-ne v0, v10, :cond_7

    .line 106
    .line 107
    goto :goto_3

    .line 108
    :cond_7
    :goto_2
    new-instance v0, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;

    .line 109
    .line 110
    const/16 v1, 0xb

    .line 111
    .line 112
    invoke-direct {v0, v11, v13, v1}, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 113
    .line 114
    .line 115
    iput v7, p0, Lcom/skydoves/landscapist/crossfade/FadeOutEffectNode$onAttach$1;->label:I

    .line 116
    .line 117
    invoke-static {v0, p0}, Lkotlinx/coroutines/JobKt;->coroutineScope(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    if-ne v0, v10, :cond_8

    .line 122
    .line 123
    :goto_3
    move-object v8, v10

    .line 124
    :cond_8
    :goto_4
    return-object v8

    .line 125
    :pswitch_0
    iget v0, p0, Lcom/skydoves/landscapist/crossfade/FadeOutEffectNode$onAttach$1;->label:I

    .line 126
    .line 127
    if-eqz v0, :cond_a

    .line 128
    .line 129
    if-ne v0, v12, :cond_9

    .line 130
    .line 131
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 132
    .line 133
    .line 134
    goto :goto_5

    .line 135
    :cond_9
    invoke-static {v9}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    move-object v8, v13

    .line 139
    goto :goto_5

    .line 140
    :cond_a
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 141
    .line 142
    .line 143
    iget-object v0, v11, Lcom/skydoves/landscapist/crossfade/FadeOutEffectNode;->saturation:Landroidx/compose/animation/core/Animatable;

    .line 144
    .line 145
    new-instance v2, Ljava/lang/Float;

    .line 146
    .line 147
    invoke-direct {v2, v1}, Ljava/lang/Float;-><init>(F)V

    .line 148
    .line 149
    .line 150
    iget v1, v11, Lcom/skydoves/landscapist/crossfade/FadeOutEffectNode;->durationMs:I

    .line 151
    .line 152
    invoke-static {v1, v6, v13, v5}, Landroidx/compose/animation/core/ArcSplineKt;->tween$default(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    iput v12, p0, Lcom/skydoves/landscapist/crossfade/FadeOutEffectNode$onAttach$1;->label:I

    .line 157
    .line 158
    const/4 v3, 0x0

    .line 159
    const/16 v5, 0xc

    .line 160
    .line 161
    move-object v4, v2

    .line 162
    move-object v2, v1

    .line 163
    move-object v1, v4

    .line 164
    move-object v4, p0

    .line 165
    invoke-static/range {v0 .. v5}, Landroidx/compose/animation/core/Animatable;->animateTo$default(Landroidx/compose/animation/core/Animatable;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;I)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    if-ne v0, v10, :cond_b

    .line 170
    .line 171
    move-object v8, v10

    .line 172
    :cond_b
    :goto_5
    return-object v8

    .line 173
    :pswitch_1
    iget v0, p0, Lcom/skydoves/landscapist/crossfade/FadeOutEffectNode$onAttach$1;->label:I

    .line 174
    .line 175
    if-eqz v0, :cond_d

    .line 176
    .line 177
    if-ne v0, v12, :cond_c

    .line 178
    .line 179
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 180
    .line 181
    .line 182
    goto :goto_6

    .line 183
    :cond_c
    invoke-static {v9}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    move-object v8, v13

    .line 187
    goto :goto_6

    .line 188
    :cond_d
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 189
    .line 190
    .line 191
    iget-object v0, v11, Lcom/skydoves/landscapist/crossfade/FadeOutEffectNode;->brightness:Landroidx/compose/animation/core/Animatable;

    .line 192
    .line 193
    new-instance v1, Ljava/lang/Float;

    .line 194
    .line 195
    const v2, 0x3f4ccccd    # 0.8f

    .line 196
    .line 197
    .line 198
    invoke-direct {v1, v2}, Ljava/lang/Float;-><init>(F)V

    .line 199
    .line 200
    .line 201
    iget v2, v11, Lcom/skydoves/landscapist/crossfade/FadeOutEffectNode;->durationMs:I

    .line 202
    .line 203
    mul-int/2addr v2, v3

    .line 204
    div-int/2addr v2, v7

    .line 205
    invoke-static {v2, v6, v13, v5}, Landroidx/compose/animation/core/ArcSplineKt;->tween$default(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    .line 206
    .line 207
    .line 208
    move-result-object v2

    .line 209
    iput v12, p0, Lcom/skydoves/landscapist/crossfade/FadeOutEffectNode$onAttach$1;->label:I

    .line 210
    .line 211
    const/4 v3, 0x0

    .line 212
    const/16 v5, 0xc

    .line 213
    .line 214
    move-object v4, p0

    .line 215
    invoke-static/range {v0 .. v5}, Landroidx/compose/animation/core/Animatable;->animateTo$default(Landroidx/compose/animation/core/Animatable;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;I)Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    if-ne v0, v10, :cond_e

    .line 220
    .line 221
    move-object v8, v10

    .line 222
    :cond_e
    :goto_6
    return-object v8

    .line 223
    :pswitch_2
    iget v0, p0, Lcom/skydoves/landscapist/crossfade/FadeOutEffectNode$onAttach$1;->label:I

    .line 224
    .line 225
    if-eqz v0, :cond_10

    .line 226
    .line 227
    if-ne v0, v12, :cond_f

    .line 228
    .line 229
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 230
    .line 231
    .line 232
    goto :goto_7

    .line 233
    :cond_f
    invoke-static {v9}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    move-object v8, v13

    .line 237
    goto :goto_7

    .line 238
    :cond_10
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 239
    .line 240
    .line 241
    iget-object v0, v11, Lcom/skydoves/landscapist/crossfade/FadeOutEffectNode;->alpha:Landroidx/compose/animation/core/Animatable;

    .line 242
    .line 243
    new-instance v3, Ljava/lang/Float;

    .line 244
    .line 245
    invoke-direct {v3, v1}, Ljava/lang/Float;-><init>(F)V

    .line 246
    .line 247
    .line 248
    iget v1, v11, Lcom/skydoves/landscapist/crossfade/FadeOutEffectNode;->durationMs:I

    .line 249
    .line 250
    div-int/2addr v1, v2

    .line 251
    invoke-static {v1, v6, v13, v5}, Landroidx/compose/animation/core/ArcSplineKt;->tween$default(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    .line 252
    .line 253
    .line 254
    move-result-object v2

    .line 255
    iput v12, p0, Lcom/skydoves/landscapist/crossfade/FadeOutEffectNode$onAttach$1;->label:I

    .line 256
    .line 257
    move-object v1, v3

    .line 258
    const/4 v3, 0x0

    .line 259
    const/16 v5, 0xc

    .line 260
    .line 261
    move-object v4, p0

    .line 262
    invoke-static/range {v0 .. v5}, Landroidx/compose/animation/core/Animatable;->animateTo$default(Landroidx/compose/animation/core/Animatable;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;I)Ljava/lang/Object;

    .line 263
    .line 264
    .line 265
    move-result-object v0

    .line 266
    if-ne v0, v10, :cond_11

    .line 267
    .line 268
    move-object v8, v10

    .line 269
    :cond_11
    :goto_7
    return-object v8

    .line 270
    :pswitch_3
    iget v0, p0, Lcom/skydoves/landscapist/crossfade/FadeOutEffectNode$onAttach$1;->label:I

    .line 271
    .line 272
    if-eqz v0, :cond_13

    .line 273
    .line 274
    if-ne v0, v12, :cond_12

    .line 275
    .line 276
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 277
    .line 278
    .line 279
    goto :goto_8

    .line 280
    :cond_12
    invoke-static {v9}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 281
    .line 282
    .line 283
    move-object v8, v13

    .line 284
    goto :goto_8

    .line 285
    :cond_13
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 286
    .line 287
    .line 288
    new-instance v0, Lcom/fsck/k9/K9$$ExternalSyntheticLambda0;

    .line 289
    .line 290
    const/16 v1, 0x18

    .line 291
    .line 292
    invoke-direct {v0, v1, v11}, Lcom/fsck/k9/K9$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 293
    .line 294
    .line 295
    invoke-static {v0}, Landroidx/compose/runtime/Updater;->snapshotFlow(Lkotlin/jvm/functions/Function0;)Lkotlinx/coroutines/flow/SafeFlow;

    .line 296
    .line 297
    .line 298
    move-result-object v0

    .line 299
    new-instance v1, Lcom/skydoves/landscapist/crossfade/FadeOutEffectNode$onAttach$1;

    .line 300
    .line 301
    invoke-direct {v1, v11, v13, v7}, Lcom/skydoves/landscapist/crossfade/FadeOutEffectNode$onAttach$1;-><init>(Lcom/skydoves/landscapist/crossfade/FadeOutEffectNode;Lkotlin/coroutines/Continuation;I)V

    .line 302
    .line 303
    .line 304
    iput v12, p0, Lcom/skydoves/landscapist/crossfade/FadeOutEffectNode$onAttach$1;->label:I

    .line 305
    .line 306
    invoke-static {v0, v1, p0}, Lkotlinx/coroutines/flow/FlowKt;->collectLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 307
    .line 308
    .line 309
    move-result-object v0

    .line 310
    if-ne v0, v10, :cond_14

    .line 311
    .line 312
    move-object v8, v10

    .line 313
    :cond_14
    :goto_8
    return-object v8

    .line 314
    nop

    .line 315
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
