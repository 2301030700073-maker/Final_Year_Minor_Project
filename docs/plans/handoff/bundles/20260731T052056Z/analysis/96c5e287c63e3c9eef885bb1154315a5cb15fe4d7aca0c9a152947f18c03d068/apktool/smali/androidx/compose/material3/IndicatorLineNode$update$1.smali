.class public final Landroidx/compose/material3/IndicatorLineNode$update$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public label:I

.field public final synthetic this$0:Landroidx/compose/material3/IndicatorLineNode;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/material3/IndicatorLineNode;Lkotlin/coroutines/Continuation;I)V
    .locals 0

    .line 1
    iput p3, p0, Landroidx/compose/material3/IndicatorLineNode$update$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Landroidx/compose/material3/IndicatorLineNode$update$1;->this$0:Landroidx/compose/material3/IndicatorLineNode;

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
    iget p1, p0, Landroidx/compose/material3/IndicatorLineNode$update$1;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/compose/material3/IndicatorLineNode$update$1;->this$0:Landroidx/compose/material3/IndicatorLineNode;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance p1, Landroidx/compose/material3/IndicatorLineNode$update$1;

    .line 9
    .line 10
    const/4 v0, 0x3

    .line 11
    invoke-direct {p1, p0, p2, v0}, Landroidx/compose/material3/IndicatorLineNode$update$1;-><init>(Landroidx/compose/material3/IndicatorLineNode;Lkotlin/coroutines/Continuation;I)V

    .line 12
    .line 13
    .line 14
    return-object p1

    .line 15
    :pswitch_0
    new-instance p1, Landroidx/compose/material3/IndicatorLineNode$update$1;

    .line 16
    .line 17
    const/4 v0, 0x2

    .line 18
    invoke-direct {p1, p0, p2, v0}, Landroidx/compose/material3/IndicatorLineNode$update$1;-><init>(Landroidx/compose/material3/IndicatorLineNode;Lkotlin/coroutines/Continuation;I)V

    .line 19
    .line 20
    .line 21
    return-object p1

    .line 22
    :pswitch_1
    new-instance p1, Landroidx/compose/material3/IndicatorLineNode$update$1;

    .line 23
    .line 24
    const/4 v0, 0x1

    .line 25
    invoke-direct {p1, p0, p2, v0}, Landroidx/compose/material3/IndicatorLineNode$update$1;-><init>(Landroidx/compose/material3/IndicatorLineNode;Lkotlin/coroutines/Continuation;I)V

    .line 26
    .line 27
    .line 28
    return-object p1

    .line 29
    :pswitch_2
    new-instance p1, Landroidx/compose/material3/IndicatorLineNode$update$1;

    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    invoke-direct {p1, p0, p2, v0}, Landroidx/compose/material3/IndicatorLineNode$update$1;-><init>(Landroidx/compose/material3/IndicatorLineNode;Lkotlin/coroutines/Continuation;I)V

    .line 33
    .line 34
    .line 35
    return-object p1

    .line 36
    nop

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Landroidx/compose/material3/IndicatorLineNode$update$1;->$r8$classId:I

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
    invoke-virtual {p0, p1, p2}, Landroidx/compose/material3/IndicatorLineNode$update$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Landroidx/compose/material3/IndicatorLineNode$update$1;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Landroidx/compose/material3/IndicatorLineNode$update$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Landroidx/compose/material3/IndicatorLineNode$update$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Landroidx/compose/material3/IndicatorLineNode$update$1;

    .line 28
    .line 29
    invoke-virtual {p0, v1}, Landroidx/compose/material3/IndicatorLineNode$update$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0

    .line 34
    :pswitch_1
    invoke-virtual {p0, p1, p2}, Landroidx/compose/material3/IndicatorLineNode$update$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    check-cast p0, Landroidx/compose/material3/IndicatorLineNode$update$1;

    .line 39
    .line 40
    invoke-virtual {p0, v1}, Landroidx/compose/material3/IndicatorLineNode$update$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    return-object p0

    .line 45
    :pswitch_2
    invoke-virtual {p0, p1, p2}, Landroidx/compose/material3/IndicatorLineNode$update$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    check-cast p0, Landroidx/compose/material3/IndicatorLineNode$update$1;

    .line 50
    .line 51
    invoke-virtual {p0, v1}, Landroidx/compose/material3/IndicatorLineNode$update$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    return-object p0

    .line 56
    nop

    .line 57
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .line 1
    iget v0, p0, Landroidx/compose/material3/IndicatorLineNode$update$1;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/compose/material3/IndicatorLineNode$update$1;->this$0:Landroidx/compose/material3/IndicatorLineNode;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const-string v4, "call to \'resume\' before \'invoke\' with coroutine"

    .line 9
    .line 10
    const/4 v5, 0x1

    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 15
    .line 16
    iget v6, p0, Landroidx/compose/material3/IndicatorLineNode$update$1;->label:I

    .line 17
    .line 18
    if-eqz v6, :cond_1

    .line 19
    .line 20
    if-ne v6, v5, :cond_0

    .line 21
    .line 22
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-static {v4}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    move-object v1, v3

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    iput v5, p0, Landroidx/compose/material3/IndicatorLineNode$update$1;->label:I

    .line 35
    .line 36
    invoke-virtual {v2, p0}, Landroidx/compose/material3/IndicatorLineNode;->trackFocusState(Lkotlin/coroutines/jvm/internal/SuspendLambda;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    if-ne p0, v0, :cond_2

    .line 41
    .line 42
    move-object v1, v0

    .line 43
    :cond_2
    :goto_0
    return-object v1

    .line 44
    :pswitch_0
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 45
    .line 46
    iget v6, p0, Landroidx/compose/material3/IndicatorLineNode$update$1;->label:I

    .line 47
    .line 48
    if-eqz v6, :cond_4

    .line 49
    .line 50
    if-ne v6, v5, :cond_3

    .line 51
    .line 52
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    goto :goto_4

    .line 56
    :cond_3
    invoke-static {v4}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    move-object v1, v3

    .line 60
    goto :goto_4

    .line 61
    :cond_4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    iget-object v7, v2, Landroidx/compose/material3/IndicatorLineNode;->widthAnimatable:Landroidx/compose/animation/core/Animatable;

    .line 65
    .line 66
    iget-boolean p1, v2, Landroidx/compose/material3/IndicatorLineNode;->focused:Z

    .line 67
    .line 68
    if-eqz p1, :cond_5

    .line 69
    .line 70
    iget-boolean p1, v2, Landroidx/compose/material3/IndicatorLineNode;->enabled:Z

    .line 71
    .line 72
    if-eqz p1, :cond_5

    .line 73
    .line 74
    iget p1, v2, Landroidx/compose/material3/IndicatorLineNode;->focusedIndicatorWidth:F

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_5
    iget p1, v2, Landroidx/compose/material3/IndicatorLineNode;->unfocusedIndicatorWidth:F

    .line 78
    .line 79
    :goto_1
    new-instance v8, Landroidx/compose/ui/unit/Dp;

    .line 80
    .line 81
    invoke-direct {v8, p1}, Landroidx/compose/ui/unit/Dp;-><init>(F)V

    .line 82
    .line 83
    .line 84
    iget-boolean p1, v2, Landroidx/compose/material3/IndicatorLineNode;->enabled:Z

    .line 85
    .line 86
    if-eqz p1, :cond_6

    .line 87
    .line 88
    sget-object p1, Landroidx/compose/material3/MaterialThemeKt;->_localMotionScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 89
    .line 90
    invoke-static {v2, p1}, Landroidx/compose/ui/node/HitTestResultKt;->currentValueOf(Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    check-cast p1, Landroidx/compose/material3/MotionScheme$StandardMotionSchemeImpl;

    .line 95
    .line 96
    sget-object v2, Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;->FastSpatial:Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;

    .line 97
    .line 98
    invoke-static {p1, v2}, Landroidx/compose/material3/CardKt;->fromToken(Landroidx/compose/material3/MotionScheme$StandardMotionSchemeImpl;Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;)Landroidx/compose/animation/core/SpringSpec;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    :goto_2
    move-object v9, p1

    .line 103
    goto :goto_3

    .line 104
    :cond_6
    new-instance p1, Landroidx/compose/animation/core/SnapSpec;

    .line 105
    .line 106
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 107
    .line 108
    .line 109
    goto :goto_2

    .line 110
    :goto_3
    iput v5, p0, Landroidx/compose/material3/IndicatorLineNode$update$1;->label:I

    .line 111
    .line 112
    const/4 v10, 0x0

    .line 113
    const/16 v12, 0xc

    .line 114
    .line 115
    move-object v11, p0

    .line 116
    invoke-static/range {v7 .. v12}, Landroidx/compose/animation/core/Animatable;->animateTo$default(Landroidx/compose/animation/core/Animatable;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;I)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object p0

    .line 120
    if-ne p0, v0, :cond_7

    .line 121
    .line 122
    move-object v1, v0

    .line 123
    :cond_7
    :goto_4
    return-object v1

    .line 124
    :pswitch_1
    move-object v6, p0

    .line 125
    sget-object p0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 126
    .line 127
    iget v0, v6, Landroidx/compose/material3/IndicatorLineNode$update$1;->label:I

    .line 128
    .line 129
    if-eqz v0, :cond_9

    .line 130
    .line 131
    if-ne v0, v5, :cond_8

    .line 132
    .line 133
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 134
    .line 135
    .line 136
    goto :goto_7

    .line 137
    :cond_8
    invoke-static {v4}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    move-object v1, v3

    .line 141
    goto :goto_8

    .line 142
    :cond_9
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 143
    .line 144
    .line 145
    move-object v0, v2

    .line 146
    iget-object v2, v0, Landroidx/compose/material3/IndicatorLineNode;->colorAnimatable:Landroidx/compose/animation/core/Animatable;

    .line 147
    .line 148
    if-eqz v2, :cond_d

    .line 149
    .line 150
    iget-object p1, v0, Landroidx/compose/material3/IndicatorLineNode;->_colors:Landroidx/compose/material3/TextFieldColors;

    .line 151
    .line 152
    if-nez p1, :cond_a

    .line 153
    .line 154
    sget-object p1, Landroidx/compose/material3/ColorSchemeKt;->LocalColorScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 155
    .line 156
    invoke-static {v0, p1}, Landroidx/compose/ui/node/HitTestResultKt;->currentValueOf(Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    check-cast p1, Landroidx/compose/material3/ColorScheme;

    .line 161
    .line 162
    sget-object v3, Landroidx/compose/foundation/text/selection/TextSelectionColorsKt;->LocalTextSelectionColors:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 163
    .line 164
    invoke-static {v0, v3}, Landroidx/compose/ui/node/HitTestResultKt;->currentValueOf(Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v3

    .line 168
    check-cast v3, Landroidx/compose/foundation/text/selection/TextSelectionColors;

    .line 169
    .line 170
    invoke-static {p1, v3}, Landroidx/compose/material3/TextFieldDefaults;->defaultTextFieldColors$material3(Landroidx/compose/material3/ColorScheme;Landroidx/compose/foundation/text/selection/TextSelectionColors;)Landroidx/compose/material3/TextFieldColors;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    :cond_a
    iget-boolean v3, v0, Landroidx/compose/material3/IndicatorLineNode;->enabled:Z

    .line 175
    .line 176
    const/4 v4, 0x0

    .line 177
    iget-boolean v7, v0, Landroidx/compose/material3/IndicatorLineNode;->focused:Z

    .line 178
    .line 179
    invoke-virtual {p1, v3, v4, v7}, Landroidx/compose/material3/TextFieldColors;->indicatorColor-XeAY9LY$material3(ZZZ)J

    .line 180
    .line 181
    .line 182
    move-result-wide v3

    .line 183
    move-wide v7, v3

    .line 184
    new-instance v3, Landroidx/compose/ui/graphics/Color;

    .line 185
    .line 186
    invoke-direct {v3, v7, v8}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 187
    .line 188
    .line 189
    iget-boolean p1, v0, Landroidx/compose/material3/IndicatorLineNode;->enabled:Z

    .line 190
    .line 191
    if-eqz p1, :cond_b

    .line 192
    .line 193
    sget-object p1, Landroidx/compose/material3/MaterialThemeKt;->_localMotionScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 194
    .line 195
    invoke-static {v0, p1}, Landroidx/compose/ui/node/HitTestResultKt;->currentValueOf(Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object p1

    .line 199
    check-cast p1, Landroidx/compose/material3/MotionScheme$StandardMotionSchemeImpl;

    .line 200
    .line 201
    sget-object v0, Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;->FastEffects:Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;

    .line 202
    .line 203
    invoke-static {p1, v0}, Landroidx/compose/material3/CardKt;->fromToken(Landroidx/compose/material3/MotionScheme$StandardMotionSchemeImpl;Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;)Landroidx/compose/animation/core/SpringSpec;

    .line 204
    .line 205
    .line 206
    move-result-object p1

    .line 207
    :goto_5
    move-object v4, p1

    .line 208
    goto :goto_6

    .line 209
    :cond_b
    new-instance p1, Landroidx/compose/animation/core/SnapSpec;

    .line 210
    .line 211
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 212
    .line 213
    .line 214
    goto :goto_5

    .line 215
    :goto_6
    iput v5, v6, Landroidx/compose/material3/IndicatorLineNode$update$1;->label:I

    .line 216
    .line 217
    const/4 v5, 0x0

    .line 218
    const/16 v7, 0xc

    .line 219
    .line 220
    invoke-static/range {v2 .. v7}, Landroidx/compose/animation/core/Animatable;->animateTo$default(Landroidx/compose/animation/core/Animatable;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;I)Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object p1

    .line 224
    if-ne p1, p0, :cond_c

    .line 225
    .line 226
    move-object v1, p0

    .line 227
    goto :goto_8

    .line 228
    :cond_c
    :goto_7
    check-cast p1, Landroidx/compose/animation/core/AnimationResult;

    .line 229
    .line 230
    :cond_d
    :goto_8
    return-object v1

    .line 231
    :pswitch_2
    move-object v6, p0

    .line 232
    move-object v0, v2

    .line 233
    sget-object p0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 234
    .line 235
    iget v2, v6, Landroidx/compose/material3/IndicatorLineNode$update$1;->label:I

    .line 236
    .line 237
    if-eqz v2, :cond_f

    .line 238
    .line 239
    if-ne v2, v5, :cond_e

    .line 240
    .line 241
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 242
    .line 243
    .line 244
    goto :goto_9

    .line 245
    :cond_e
    invoke-static {v4}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    move-object v1, v3

    .line 249
    goto :goto_9

    .line 250
    :cond_f
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 251
    .line 252
    .line 253
    iput v5, v6, Landroidx/compose/material3/IndicatorLineNode$update$1;->label:I

    .line 254
    .line 255
    invoke-virtual {v0, v6}, Landroidx/compose/material3/IndicatorLineNode;->trackFocusState(Lkotlin/coroutines/jvm/internal/SuspendLambda;)Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    move-result-object p1

    .line 259
    if-ne p1, p0, :cond_10

    .line 260
    .line 261
    move-object v1, p0

    .line 262
    :cond_10
    :goto_9
    return-object v1

    .line 263
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
