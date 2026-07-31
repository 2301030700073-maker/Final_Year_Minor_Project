.class public final Lcom/skydoves/landscapist/crossfade/FadeInEffectNode$onAttach$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public label:I

.field public final synthetic this$0:Lcom/skydoves/landscapist/crossfade/FadeInEffectNode;


# direct methods
.method public synthetic constructor <init>(Lcom/skydoves/landscapist/crossfade/FadeInEffectNode;Lkotlin/coroutines/Continuation;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/skydoves/landscapist/crossfade/FadeInEffectNode$onAttach$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/skydoves/landscapist/crossfade/FadeInEffectNode$onAttach$1;->this$0:Lcom/skydoves/landscapist/crossfade/FadeInEffectNode;

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
    iget p1, p0, Lcom/skydoves/landscapist/crossfade/FadeInEffectNode$onAttach$1;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/skydoves/landscapist/crossfade/FadeInEffectNode$onAttach$1;->this$0:Lcom/skydoves/landscapist/crossfade/FadeInEffectNode;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance p1, Lcom/skydoves/landscapist/crossfade/FadeInEffectNode$onAttach$1;

    .line 9
    .line 10
    const/4 v0, 0x4

    .line 11
    invoke-direct {p1, p0, p2, v0}, Lcom/skydoves/landscapist/crossfade/FadeInEffectNode$onAttach$1;-><init>(Lcom/skydoves/landscapist/crossfade/FadeInEffectNode;Lkotlin/coroutines/Continuation;I)V

    .line 12
    .line 13
    .line 14
    return-object p1

    .line 15
    :pswitch_0
    new-instance p1, Lcom/skydoves/landscapist/crossfade/FadeInEffectNode$onAttach$1;

    .line 16
    .line 17
    const/4 v0, 0x3

    .line 18
    invoke-direct {p1, p0, p2, v0}, Lcom/skydoves/landscapist/crossfade/FadeInEffectNode$onAttach$1;-><init>(Lcom/skydoves/landscapist/crossfade/FadeInEffectNode;Lkotlin/coroutines/Continuation;I)V

    .line 19
    .line 20
    .line 21
    return-object p1

    .line 22
    :pswitch_1
    new-instance p1, Lcom/skydoves/landscapist/crossfade/FadeInEffectNode$onAttach$1;

    .line 23
    .line 24
    const/4 v0, 0x2

    .line 25
    invoke-direct {p1, p0, p2, v0}, Lcom/skydoves/landscapist/crossfade/FadeInEffectNode$onAttach$1;-><init>(Lcom/skydoves/landscapist/crossfade/FadeInEffectNode;Lkotlin/coroutines/Continuation;I)V

    .line 26
    .line 27
    .line 28
    return-object p1

    .line 29
    :pswitch_2
    new-instance p1, Lcom/skydoves/landscapist/crossfade/FadeInEffectNode$onAttach$1;

    .line 30
    .line 31
    const/4 v0, 0x1

    .line 32
    invoke-direct {p1, p0, p2, v0}, Lcom/skydoves/landscapist/crossfade/FadeInEffectNode$onAttach$1;-><init>(Lcom/skydoves/landscapist/crossfade/FadeInEffectNode;Lkotlin/coroutines/Continuation;I)V

    .line 33
    .line 34
    .line 35
    return-object p1

    .line 36
    :pswitch_3
    new-instance p1, Lcom/skydoves/landscapist/crossfade/FadeInEffectNode$onAttach$1;

    .line 37
    .line 38
    const/4 v0, 0x0

    .line 39
    invoke-direct {p1, p0, p2, v0}, Lcom/skydoves/landscapist/crossfade/FadeInEffectNode$onAttach$1;-><init>(Lcom/skydoves/landscapist/crossfade/FadeInEffectNode;Lkotlin/coroutines/Continuation;I)V

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
    iget v0, p0, Lcom/skydoves/landscapist/crossfade/FadeInEffectNode$onAttach$1;->$r8$classId:I

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
    invoke-virtual {p0, p1, p2}, Lcom/skydoves/landscapist/crossfade/FadeInEffectNode$onAttach$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Lcom/skydoves/landscapist/crossfade/FadeInEffectNode$onAttach$1;

    .line 15
    .line 16
    invoke-virtual {p0, v1}, Lcom/skydoves/landscapist/crossfade/FadeInEffectNode$onAttach$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/skydoves/landscapist/crossfade/FadeInEffectNode$onAttach$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    check-cast p0, Lcom/skydoves/landscapist/crossfade/FadeInEffectNode$onAttach$1;

    .line 30
    .line 31
    invoke-virtual {p0, v1}, Lcom/skydoves/landscapist/crossfade/FadeInEffectNode$onAttach$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/skydoves/landscapist/crossfade/FadeInEffectNode$onAttach$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    check-cast p0, Lcom/skydoves/landscapist/crossfade/FadeInEffectNode$onAttach$1;

    .line 45
    .line 46
    invoke-virtual {p0, v1}, Lcom/skydoves/landscapist/crossfade/FadeInEffectNode$onAttach$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/skydoves/landscapist/crossfade/FadeInEffectNode$onAttach$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    check-cast p0, Lcom/skydoves/landscapist/crossfade/FadeInEffectNode$onAttach$1;

    .line 60
    .line 61
    invoke-virtual {p0, v1}, Lcom/skydoves/landscapist/crossfade/FadeInEffectNode$onAttach$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/skydoves/landscapist/crossfade/FadeInEffectNode$onAttach$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    check-cast p0, Lcom/skydoves/landscapist/crossfade/FadeInEffectNode$onAttach$1;

    .line 75
    .line 76
    invoke-virtual {p0, v1}, Lcom/skydoves/landscapist/crossfade/FadeInEffectNode$onAttach$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v0, p0, Lcom/skydoves/landscapist/crossfade/FadeInEffectNode$onAttach$1;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x3

    .line 5
    const/4 v3, 0x6

    .line 6
    const/4 v5, 0x0

    .line 7
    const/high16 v6, 0x3f800000    # 1.0f

    .line 8
    .line 9
    const/4 v7, 0x4

    .line 10
    sget-object v8, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 11
    .line 12
    const-string v9, "call to \'resume\' before \'invoke\' with coroutine"

    .line 13
    .line 14
    sget-object v10, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 15
    .line 16
    iget-object v11, p0, Lcom/skydoves/landscapist/crossfade/FadeInEffectNode$onAttach$1;->this$0:Lcom/skydoves/landscapist/crossfade/FadeInEffectNode;

    .line 17
    .line 18
    const/4 v12, 0x1

    .line 19
    const/4 v13, 0x0

    .line 20
    packed-switch v0, :pswitch_data_0

    .line 21
    .line 22
    .line 23
    iget v0, p0, Lcom/skydoves/landscapist/crossfade/FadeInEffectNode$onAttach$1;->label:I

    .line 24
    .line 25
    const/4 v3, 0x0

    .line 26
    if-eqz v0, :cond_4

    .line 27
    .line 28
    if-eq v0, v12, :cond_3

    .line 29
    .line 30
    if-eq v0, v1, :cond_2

    .line 31
    .line 32
    if-eq v0, v2, :cond_1

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
    iget-object v0, v11, Lcom/skydoves/landscapist/crossfade/FadeInEffectNode;->alpha:Landroidx/compose/animation/core/Animatable;

    .line 61
    .line 62
    new-instance v5, Ljava/lang/Float;

    .line 63
    .line 64
    invoke-direct {v5, v3}, Ljava/lang/Float;-><init>(F)V

    .line 65
    .line 66
    .line 67
    iput v12, p0, Lcom/skydoves/landscapist/crossfade/FadeInEffectNode$onAttach$1;->label:I

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
    iget-object v0, v11, Lcom/skydoves/landscapist/crossfade/FadeInEffectNode;->brightness:Landroidx/compose/animation/core/Animatable;

    .line 77
    .line 78
    new-instance v5, Ljava/lang/Float;

    .line 79
    .line 80
    const v6, 0x3f4ccccd    # 0.8f

    .line 81
    .line 82
    .line 83
    invoke-direct {v5, v6}, Ljava/lang/Float;-><init>(F)V

    .line 84
    .line 85
    .line 86
    iput v1, p0, Lcom/skydoves/landscapist/crossfade/FadeInEffectNode$onAttach$1;->label:I

    .line 87
    .line 88
    invoke-virtual {v0, v5, p0}, Landroidx/compose/animation/core/Animatable;->snapTo(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    if-ne v0, v10, :cond_6

    .line 93
    .line 94
    goto :goto_3

    .line 95
    :cond_6
    :goto_1
    iget-object v0, v11, Lcom/skydoves/landscapist/crossfade/FadeInEffectNode;->saturation:Landroidx/compose/animation/core/Animatable;

    .line 96
    .line 97
    new-instance v1, Ljava/lang/Float;

    .line 98
    .line 99
    invoke-direct {v1, v3}, Ljava/lang/Float;-><init>(F)V

    .line 100
    .line 101
    .line 102
    iput v2, p0, Lcom/skydoves/landscapist/crossfade/FadeInEffectNode$onAttach$1;->label:I

    .line 103
    .line 104
    invoke-virtual {v0, v1, p0}, Landroidx/compose/animation/core/Animatable;->snapTo(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    if-ne v0, v10, :cond_7

    .line 109
    .line 110
    goto :goto_3

    .line 111
    :cond_7
    :goto_2
    new-instance v0, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;

    .line 112
    .line 113
    const/16 v1, 0xa

    .line 114
    .line 115
    invoke-direct {v0, v11, v13, v1}, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 116
    .line 117
    .line 118
    iput v7, p0, Lcom/skydoves/landscapist/crossfade/FadeInEffectNode$onAttach$1;->label:I

    .line 119
    .line 120
    invoke-static {v0, p0}, Lkotlinx/coroutines/JobKt;->coroutineScope(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    if-ne v0, v10, :cond_8

    .line 125
    .line 126
    :goto_3
    move-object v8, v10

    .line 127
    :cond_8
    :goto_4
    return-object v8

    .line 128
    :pswitch_0
    iget v0, p0, Lcom/skydoves/landscapist/crossfade/FadeInEffectNode$onAttach$1;->label:I

    .line 129
    .line 130
    if-eqz v0, :cond_a

    .line 131
    .line 132
    if-ne v0, v12, :cond_9

    .line 133
    .line 134
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 135
    .line 136
    .line 137
    goto :goto_5

    .line 138
    :cond_9
    invoke-static {v9}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    move-object v8, v13

    .line 142
    goto :goto_5

    .line 143
    :cond_a
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 144
    .line 145
    .line 146
    iget-object v0, v11, Lcom/skydoves/landscapist/crossfade/FadeInEffectNode;->saturation:Landroidx/compose/animation/core/Animatable;

    .line 147
    .line 148
    new-instance v1, Ljava/lang/Float;

    .line 149
    .line 150
    invoke-direct {v1, v6}, Ljava/lang/Float;-><init>(F)V

    .line 151
    .line 152
    .line 153
    iget v2, v11, Lcom/skydoves/landscapist/crossfade/FadeInEffectNode;->durationMs:I

    .line 154
    .line 155
    invoke-static {v2, v5, v13, v3}, Landroidx/compose/animation/core/ArcSplineKt;->tween$default(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    .line 156
    .line 157
    .line 158
    move-result-object v2

    .line 159
    iput v12, p0, Lcom/skydoves/landscapist/crossfade/FadeInEffectNode$onAttach$1;->label:I

    .line 160
    .line 161
    const/4 v3, 0x0

    .line 162
    const/16 v5, 0xc

    .line 163
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
    iget v0, p0, Lcom/skydoves/landscapist/crossfade/FadeInEffectNode$onAttach$1;->label:I

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
    iget-object v0, v11, Lcom/skydoves/landscapist/crossfade/FadeInEffectNode;->brightness:Landroidx/compose/animation/core/Animatable;

    .line 192
    .line 193
    new-instance v1, Ljava/lang/Float;

    .line 194
    .line 195
    invoke-direct {v1, v6}, Ljava/lang/Float;-><init>(F)V

    .line 196
    .line 197
    .line 198
    iget v6, v11, Lcom/skydoves/landscapist/crossfade/FadeInEffectNode;->durationMs:I

    .line 199
    .line 200
    mul-int/2addr v6, v2

    .line 201
    div-int/2addr v6, v7

    .line 202
    invoke-static {v6, v5, v13, v3}, Landroidx/compose/animation/core/ArcSplineKt;->tween$default(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    .line 203
    .line 204
    .line 205
    move-result-object v2

    .line 206
    iput v12, p0, Lcom/skydoves/landscapist/crossfade/FadeInEffectNode$onAttach$1;->label:I

    .line 207
    .line 208
    const/4 v3, 0x0

    .line 209
    const/16 v5, 0xc

    .line 210
    .line 211
    move-object v4, p0

    .line 212
    invoke-static/range {v0 .. v5}, Landroidx/compose/animation/core/Animatable;->animateTo$default(Landroidx/compose/animation/core/Animatable;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;I)Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    move-result-object v0

    .line 216
    if-ne v0, v10, :cond_e

    .line 217
    .line 218
    move-object v8, v10

    .line 219
    :cond_e
    :goto_6
    return-object v8

    .line 220
    :pswitch_2
    iget v0, p0, Lcom/skydoves/landscapist/crossfade/FadeInEffectNode$onAttach$1;->label:I

    .line 221
    .line 222
    if-eqz v0, :cond_10

    .line 223
    .line 224
    if-ne v0, v12, :cond_f

    .line 225
    .line 226
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 227
    .line 228
    .line 229
    goto :goto_7

    .line 230
    :cond_f
    invoke-static {v9}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    move-object v8, v13

    .line 234
    goto :goto_7

    .line 235
    :cond_10
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 236
    .line 237
    .line 238
    iget-object v0, v11, Lcom/skydoves/landscapist/crossfade/FadeInEffectNode;->alpha:Landroidx/compose/animation/core/Animatable;

    .line 239
    .line 240
    move v2, v1

    .line 241
    new-instance v1, Ljava/lang/Float;

    .line 242
    .line 243
    invoke-direct {v1, v6}, Ljava/lang/Float;-><init>(F)V

    .line 244
    .line 245
    .line 246
    iget v6, v11, Lcom/skydoves/landscapist/crossfade/FadeInEffectNode;->durationMs:I

    .line 247
    .line 248
    div-int/2addr v6, v2

    .line 249
    invoke-static {v6, v5, v13, v3}, Landroidx/compose/animation/core/ArcSplineKt;->tween$default(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    .line 250
    .line 251
    .line 252
    move-result-object v2

    .line 253
    iput v12, p0, Lcom/skydoves/landscapist/crossfade/FadeInEffectNode$onAttach$1;->label:I

    .line 254
    .line 255
    const/4 v3, 0x0

    .line 256
    const/16 v5, 0xc

    .line 257
    .line 258
    move-object v4, p0

    .line 259
    invoke-static/range {v0 .. v5}, Landroidx/compose/animation/core/Animatable;->animateTo$default(Landroidx/compose/animation/core/Animatable;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;I)Ljava/lang/Object;

    .line 260
    .line 261
    .line 262
    move-result-object v0

    .line 263
    if-ne v0, v10, :cond_11

    .line 264
    .line 265
    move-object v8, v10

    .line 266
    :cond_11
    :goto_7
    return-object v8

    .line 267
    :pswitch_3
    iget v0, p0, Lcom/skydoves/landscapist/crossfade/FadeInEffectNode$onAttach$1;->label:I

    .line 268
    .line 269
    if-eqz v0, :cond_13

    .line 270
    .line 271
    if-ne v0, v12, :cond_12

    .line 272
    .line 273
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 274
    .line 275
    .line 276
    goto :goto_8

    .line 277
    :cond_12
    invoke-static {v9}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 278
    .line 279
    .line 280
    move-object v8, v13

    .line 281
    goto :goto_8

    .line 282
    :cond_13
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 283
    .line 284
    .line 285
    new-instance v0, Lcom/fsck/k9/K9$$ExternalSyntheticLambda0;

    .line 286
    .line 287
    const/16 v1, 0x17

    .line 288
    .line 289
    invoke-direct {v0, v1, v11}, Lcom/fsck/k9/K9$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 290
    .line 291
    .line 292
    invoke-static {v0}, Landroidx/compose/runtime/Updater;->snapshotFlow(Lkotlin/jvm/functions/Function0;)Lkotlinx/coroutines/flow/SafeFlow;

    .line 293
    .line 294
    .line 295
    move-result-object v0

    .line 296
    new-instance v1, Lcom/skydoves/landscapist/crossfade/FadeInEffectNode$onAttach$1;

    .line 297
    .line 298
    invoke-direct {v1, v11, v13, v7}, Lcom/skydoves/landscapist/crossfade/FadeInEffectNode$onAttach$1;-><init>(Lcom/skydoves/landscapist/crossfade/FadeInEffectNode;Lkotlin/coroutines/Continuation;I)V

    .line 299
    .line 300
    .line 301
    iput v12, p0, Lcom/skydoves/landscapist/crossfade/FadeInEffectNode$onAttach$1;->label:I

    .line 302
    .line 303
    invoke-static {v0, v1, p0}, Lkotlinx/coroutines/flow/FlowKt;->collectLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 304
    .line 305
    .line 306
    move-result-object v0

    .line 307
    if-ne v0, v10, :cond_14

    .line 308
    .line 309
    move-object v8, v10

    .line 310
    :cond_14
    :goto_8
    return-object v8

    .line 311
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
