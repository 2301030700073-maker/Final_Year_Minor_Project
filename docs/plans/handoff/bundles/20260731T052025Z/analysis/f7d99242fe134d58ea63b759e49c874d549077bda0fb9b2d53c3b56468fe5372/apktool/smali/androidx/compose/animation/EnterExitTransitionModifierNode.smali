.class public final Landroidx/compose/animation/EnterExitTransitionModifierNode;
.super Landroidx/compose/foundation/layout/IntrinsicSizeModifier;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public currentAlignment:Landroidx/compose/ui/Alignment;

.field public enter:Landroidx/compose/animation/EnterTransitionImpl;

.field public exit:Landroidx/compose/animation/ExitTransitionImpl;

.field public graphicsLayerBlock:Landroidx/compose/animation/EnterExitTransitionKt$$ExternalSyntheticLambda0;

.field public isEnabled:Lkotlin/jvm/functions/Function0;

.field public lookaheadSize:J

.field public offsetAnimation:Landroidx/compose/animation/core/Transition$DeferredAnimation;

.field public sizeAnimation:Landroidx/compose/animation/core/Transition$DeferredAnimation;

.field public final sizeTransitionSpec:Landroidx/compose/animation/EnterExitTransitionModifierNode$slideSpec$1;

.field public slideAnimation:Landroidx/compose/animation/core/Transition$DeferredAnimation;

.field public final slideSpec:Landroidx/compose/animation/EnterExitTransitionModifierNode$slideSpec$1;

.field public transition:Landroidx/compose/animation/core/Transition;


# direct methods
.method public constructor <init>(Landroidx/compose/animation/core/Transition;Landroidx/compose/animation/core/Transition$DeferredAnimation;Landroidx/compose/animation/core/Transition$DeferredAnimation;Landroidx/compose/animation/core/Transition$DeferredAnimation;Landroidx/compose/animation/EnterTransitionImpl;Landroidx/compose/animation/ExitTransitionImpl;Lkotlin/jvm/functions/Function0;Landroidx/compose/animation/EnterExitTransitionKt$$ExternalSyntheticLambda0;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Landroidx/compose/foundation/layout/IntrinsicSizeModifier;-><init>(I)V

    .line 3
    .line 4
    .line 5
    iput-object p1, p0, Landroidx/compose/animation/EnterExitTransitionModifierNode;->transition:Landroidx/compose/animation/core/Transition;

    .line 6
    .line 7
    iput-object p2, p0, Landroidx/compose/animation/EnterExitTransitionModifierNode;->sizeAnimation:Landroidx/compose/animation/core/Transition$DeferredAnimation;

    .line 8
    .line 9
    iput-object p3, p0, Landroidx/compose/animation/EnterExitTransitionModifierNode;->offsetAnimation:Landroidx/compose/animation/core/Transition$DeferredAnimation;

    .line 10
    .line 11
    iput-object p4, p0, Landroidx/compose/animation/EnterExitTransitionModifierNode;->slideAnimation:Landroidx/compose/animation/core/Transition$DeferredAnimation;

    .line 12
    .line 13
    iput-object p5, p0, Landroidx/compose/animation/EnterExitTransitionModifierNode;->enter:Landroidx/compose/animation/EnterTransitionImpl;

    .line 14
    .line 15
    iput-object p6, p0, Landroidx/compose/animation/EnterExitTransitionModifierNode;->exit:Landroidx/compose/animation/ExitTransitionImpl;

    .line 16
    .line 17
    iput-object p7, p0, Landroidx/compose/animation/EnterExitTransitionModifierNode;->isEnabled:Lkotlin/jvm/functions/Function0;

    .line 18
    .line 19
    iput-object p8, p0, Landroidx/compose/animation/EnterExitTransitionModifierNode;->graphicsLayerBlock:Landroidx/compose/animation/EnterExitTransitionKt$$ExternalSyntheticLambda0;

    .line 20
    .line 21
    const-wide p1, -0x7fffffff80000000L    # -1.0609978955E-314

    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    iput-wide p1, p0, Landroidx/compose/animation/EnterExitTransitionModifierNode;->lookaheadSize:J

    .line 27
    .line 28
    const/16 p1, 0xf

    .line 29
    .line 30
    const/4 p2, 0x0

    .line 31
    invoke-static {p2, p2, p2, p2, p1}, Landroidx/compose/ui/unit/ConstraintsKt;->Constraints$default(IIIII)J

    .line 32
    .line 33
    .line 34
    new-instance p1, Landroidx/compose/animation/EnterExitTransitionModifierNode$slideSpec$1;

    .line 35
    .line 36
    invoke-direct {p1, p0, v0}, Landroidx/compose/animation/EnterExitTransitionModifierNode$slideSpec$1;-><init>(Landroidx/compose/animation/EnterExitTransitionModifierNode;I)V

    .line 37
    .line 38
    .line 39
    iput-object p1, p0, Landroidx/compose/animation/EnterExitTransitionModifierNode;->sizeTransitionSpec:Landroidx/compose/animation/EnterExitTransitionModifierNode$slideSpec$1;

    .line 40
    .line 41
    new-instance p1, Landroidx/compose/animation/EnterExitTransitionModifierNode$slideSpec$1;

    .line 42
    .line 43
    invoke-direct {p1, p0, p2}, Landroidx/compose/animation/EnterExitTransitionModifierNode$slideSpec$1;-><init>(Landroidx/compose/animation/EnterExitTransitionModifierNode;I)V

    .line 44
    .line 45
    .line 46
    iput-object p1, p0, Landroidx/compose/animation/EnterExitTransitionModifierNode;->slideSpec:Landroidx/compose/animation/EnterExitTransitionModifierNode$slideSpec$1;

    .line 47
    .line 48
    return-void
.end method


# virtual methods
.method public final getAlignment()Landroidx/compose/ui/Alignment;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/compose/animation/EnterExitTransitionModifierNode;->transition:Landroidx/compose/animation/core/Transition;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/animation/core/Transition;->getSegment()Landroidx/compose/animation/core/Transition$Segment;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Landroidx/compose/animation/EnterExitState;->PreEnter:Landroidx/compose/animation/EnterExitState;

    .line 8
    .line 9
    sget-object v2, Landroidx/compose/animation/EnterExitState;->Visible:Landroidx/compose/animation/EnterExitState;

    .line 10
    .line 11
    invoke-interface {v0, v1, v2}, Landroidx/compose/animation/core/Transition$Segment;->isTransitioningTo(Ljava/lang/Enum;Ljava/lang/Enum;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    iget-object v0, p0, Landroidx/compose/animation/EnterExitTransitionModifierNode;->enter:Landroidx/compose/animation/EnterTransitionImpl;

    .line 18
    .line 19
    iget-object v0, v0, Landroidx/compose/animation/EnterTransitionImpl;->data:Landroidx/compose/animation/TransitionData;

    .line 20
    .line 21
    iget-object v0, v0, Landroidx/compose/animation/TransitionData;->changeSize:Landroidx/compose/animation/ChangeSize;

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    iget-object v0, v0, Landroidx/compose/animation/ChangeSize;->alignment:Landroidx/compose/ui/Alignment;

    .line 26
    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    return-object v0

    .line 31
    :cond_1
    :goto_0
    iget-object p0, p0, Landroidx/compose/animation/EnterExitTransitionModifierNode;->exit:Landroidx/compose/animation/ExitTransitionImpl;

    .line 32
    .line 33
    iget-object p0, p0, Landroidx/compose/animation/ExitTransitionImpl;->data:Landroidx/compose/animation/TransitionData;

    .line 34
    .line 35
    iget-object p0, p0, Landroidx/compose/animation/TransitionData;->changeSize:Landroidx/compose/animation/ChangeSize;

    .line 36
    .line 37
    if-eqz p0, :cond_5

    .line 38
    .line 39
    iget-object p0, p0, Landroidx/compose/animation/ChangeSize;->alignment:Landroidx/compose/ui/Alignment;

    .line 40
    .line 41
    return-object p0

    .line 42
    :cond_2
    iget-object v0, p0, Landroidx/compose/animation/EnterExitTransitionModifierNode;->exit:Landroidx/compose/animation/ExitTransitionImpl;

    .line 43
    .line 44
    iget-object v0, v0, Landroidx/compose/animation/ExitTransitionImpl;->data:Landroidx/compose/animation/TransitionData;

    .line 45
    .line 46
    iget-object v0, v0, Landroidx/compose/animation/TransitionData;->changeSize:Landroidx/compose/animation/ChangeSize;

    .line 47
    .line 48
    if-eqz v0, :cond_4

    .line 49
    .line 50
    iget-object v0, v0, Landroidx/compose/animation/ChangeSize;->alignment:Landroidx/compose/ui/Alignment;

    .line 51
    .line 52
    if-nez v0, :cond_3

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_3
    return-object v0

    .line 56
    :cond_4
    :goto_1
    iget-object p0, p0, Landroidx/compose/animation/EnterExitTransitionModifierNode;->enter:Landroidx/compose/animation/EnterTransitionImpl;

    .line 57
    .line 58
    iget-object p0, p0, Landroidx/compose/animation/EnterTransitionImpl;->data:Landroidx/compose/animation/TransitionData;

    .line 59
    .line 60
    iget-object p0, p0, Landroidx/compose/animation/TransitionData;->changeSize:Landroidx/compose/animation/ChangeSize;

    .line 61
    .line 62
    if-eqz p0, :cond_5

    .line 63
    .line 64
    iget-object p0, p0, Landroidx/compose/animation/ChangeSize;->alignment:Landroidx/compose/ui/Alignment;

    .line 65
    .line 66
    return-object p0

    .line 67
    :cond_5
    const/4 p0, 0x0

    .line 68
    return-object p0
.end method

.method public final measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Landroidx/compose/animation/EnterExitTransitionModifierNode;->transition:Landroidx/compose/animation/core/Transition;

    .line 6
    .line 7
    iget-object v2, v2, Landroidx/compose/animation/core/Transition;->transitionState:Lorg/minidns/dnsqueryresult/DnsQueryResult;

    .line 8
    .line 9
    invoke-virtual {v2}, Lorg/minidns/dnsqueryresult/DnsQueryResult;->getCurrentState()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    iget-object v3, v0, Landroidx/compose/animation/EnterExitTransitionModifierNode;->transition:Landroidx/compose/animation/core/Transition;

    .line 14
    .line 15
    iget-object v3, v3, Landroidx/compose/animation/core/Transition;->targetState$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 16
    .line 17
    invoke-virtual {v3}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    const/4 v4, 0x0

    .line 22
    if-ne v2, v3, :cond_0

    .line 23
    .line 24
    iput-object v4, v0, Landroidx/compose/animation/EnterExitTransitionModifierNode;->currentAlignment:Landroidx/compose/ui/Alignment;

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iget-object v2, v0, Landroidx/compose/animation/EnterExitTransitionModifierNode;->currentAlignment:Landroidx/compose/ui/Alignment;

    .line 28
    .line 29
    if-nez v2, :cond_2

    .line 30
    .line 31
    invoke-virtual {v0}, Landroidx/compose/animation/EnterExitTransitionModifierNode;->getAlignment()Landroidx/compose/ui/Alignment;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    if-nez v2, :cond_1

    .line 36
    .line 37
    sget-object v2, Landroidx/compose/ui/Alignment$Companion;->TopStart:Landroidx/compose/ui/BiasAlignment;

    .line 38
    .line 39
    :cond_1
    iput-object v2, v0, Landroidx/compose/animation/EnterExitTransitionModifierNode;->currentAlignment:Landroidx/compose/ui/Alignment;

    .line 40
    .line 41
    :cond_2
    :goto_0
    invoke-interface {v1}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->isLookingAhead()Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    const/4 v3, 0x2

    .line 46
    sget-object v5, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;

    .line 47
    .line 48
    const-wide v6, 0xffffffffL

    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    const/16 v8, 0x20

    .line 54
    .line 55
    if-eqz v2, :cond_3

    .line 56
    .line 57
    invoke-interface/range {p2 .. p4}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    iget v4, v2, Landroidx/compose/ui/layout/Placeable;->width:I

    .line 62
    .line 63
    iget v9, v2, Landroidx/compose/ui/layout/Placeable;->height:I

    .line 64
    .line 65
    int-to-long v10, v4

    .line 66
    shl-long/2addr v10, v8

    .line 67
    int-to-long v12, v9

    .line 68
    and-long/2addr v12, v6

    .line 69
    or-long/2addr v10, v12

    .line 70
    iput-wide v10, v0, Landroidx/compose/animation/EnterExitTransitionModifierNode;->lookaheadSize:J

    .line 71
    .line 72
    shr-long v8, v10, v8

    .line 73
    .line 74
    long-to-int v0, v8

    .line 75
    and-long/2addr v6, v10

    .line 76
    long-to-int v4, v6

    .line 77
    new-instance v6, Landroidx/compose/ui/draw/PainterNode$measure$1;

    .line 78
    .line 79
    invoke-direct {v6, v2, v3}, Landroidx/compose/ui/draw/PainterNode$measure$1;-><init>(Landroidx/compose/ui/layout/Placeable;I)V

    .line 80
    .line 81
    .line 82
    invoke-interface {v1, v0, v4, v5, v6}, Landroidx/compose/ui/layout/MeasureScope;->layout(IILjava/util/Map;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    return-object v0

    .line 87
    :cond_3
    iget-object v2, v0, Landroidx/compose/animation/EnterExitTransitionModifierNode;->isEnabled:Lkotlin/jvm/functions/Function0;

    .line 88
    .line 89
    invoke-interface {v2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    check-cast v2, Ljava/lang/Boolean;

    .line 94
    .line 95
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 96
    .line 97
    .line 98
    move-result v2

    .line 99
    const/4 v9, 0x3

    .line 100
    if-eqz v2, :cond_11

    .line 101
    .line 102
    iget-object v2, v0, Landroidx/compose/animation/EnterExitTransitionModifierNode;->graphicsLayerBlock:Landroidx/compose/animation/EnterExitTransitionKt$$ExternalSyntheticLambda0;

    .line 103
    .line 104
    iget-object v10, v2, Landroidx/compose/animation/EnterExitTransitionKt$$ExternalSyntheticLambda0;->f$0:Landroidx/compose/animation/core/Transition$DeferredAnimation;

    .line 105
    .line 106
    iget-object v11, v2, Landroidx/compose/animation/EnterExitTransitionKt$$ExternalSyntheticLambda0;->f$1:Landroidx/compose/animation/core/Transition$DeferredAnimation;

    .line 107
    .line 108
    iget-object v12, v2, Landroidx/compose/animation/EnterExitTransitionKt$$ExternalSyntheticLambda0;->f$2:Landroidx/compose/animation/core/Transition;

    .line 109
    .line 110
    iget-object v13, v2, Landroidx/compose/animation/EnterExitTransitionKt$$ExternalSyntheticLambda0;->f$3:Landroidx/compose/animation/EnterTransitionImpl;

    .line 111
    .line 112
    iget-object v14, v13, Landroidx/compose/animation/EnterTransitionImpl;->data:Landroidx/compose/animation/TransitionData;

    .line 113
    .line 114
    iget-object v15, v2, Landroidx/compose/animation/EnterExitTransitionKt$$ExternalSyntheticLambda0;->f$4:Landroidx/compose/animation/ExitTransitionImpl;

    .line 115
    .line 116
    iget-object v2, v2, Landroidx/compose/animation/EnterExitTransitionKt$$ExternalSyntheticLambda0;->f$5:Landroidx/compose/animation/core/Transition$DeferredAnimation;

    .line 117
    .line 118
    const/4 v4, 0x1

    .line 119
    move-wide/from16 v17, v6

    .line 120
    .line 121
    const/4 v6, 0x0

    .line 122
    if-eqz v10, :cond_4

    .line 123
    .line 124
    new-instance v7, Landroidx/compose/animation/EnterExitTransitionKt$createGraphicsLayerBlock$1$1$alpha$1;

    .line 125
    .line 126
    invoke-direct {v7, v13, v15, v6}, Landroidx/compose/animation/EnterExitTransitionKt$createGraphicsLayerBlock$1$1$alpha$1;-><init>(Landroidx/compose/animation/EnterTransitionImpl;Landroidx/compose/animation/ExitTransitionImpl;I)V

    .line 127
    .line 128
    .line 129
    move/from16 v19, v8

    .line 130
    .line 131
    new-instance v8, Landroidx/compose/animation/EnterExitTransitionKt$createGraphicsLayerBlock$1$1$alpha$1;

    .line 132
    .line 133
    invoke-direct {v8, v13, v15, v4}, Landroidx/compose/animation/EnterExitTransitionKt$createGraphicsLayerBlock$1$1$alpha$1;-><init>(Landroidx/compose/animation/EnterTransitionImpl;Landroidx/compose/animation/ExitTransitionImpl;I)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v10, v7, v8}, Landroidx/compose/animation/core/Transition$DeferredAnimation;->animate(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Landroidx/compose/animation/core/Transition$DeferredAnimation$DeferredAnimationData;

    .line 137
    .line 138
    .line 139
    move-result-object v7

    .line 140
    goto :goto_1

    .line 141
    :cond_4
    move/from16 v19, v8

    .line 142
    .line 143
    const/4 v7, 0x0

    .line 144
    :goto_1
    if-eqz v11, :cond_5

    .line 145
    .line 146
    new-instance v8, Landroidx/compose/animation/EnterExitTransitionKt$createGraphicsLayerBlock$1$1$alpha$1;

    .line 147
    .line 148
    invoke-direct {v8, v13, v15, v3}, Landroidx/compose/animation/EnterExitTransitionKt$createGraphicsLayerBlock$1$1$alpha$1;-><init>(Landroidx/compose/animation/EnterTransitionImpl;Landroidx/compose/animation/ExitTransitionImpl;I)V

    .line 149
    .line 150
    .line 151
    new-instance v10, Landroidx/compose/animation/EnterExitTransitionKt$createGraphicsLayerBlock$1$1$alpha$1;

    .line 152
    .line 153
    invoke-direct {v10, v13, v15, v9}, Landroidx/compose/animation/EnterExitTransitionKt$createGraphicsLayerBlock$1$1$alpha$1;-><init>(Landroidx/compose/animation/EnterTransitionImpl;Landroidx/compose/animation/ExitTransitionImpl;I)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v11, v8, v10}, Landroidx/compose/animation/core/Transition$DeferredAnimation;->animate(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Landroidx/compose/animation/core/Transition$DeferredAnimation$DeferredAnimationData;

    .line 157
    .line 158
    .line 159
    move-result-object v8

    .line 160
    goto :goto_2

    .line 161
    :cond_5
    const/4 v8, 0x0

    .line 162
    :goto_2
    iget-object v10, v12, Landroidx/compose/animation/core/Transition;->transitionState:Lorg/minidns/dnsqueryresult/DnsQueryResult;

    .line 163
    .line 164
    invoke-virtual {v10}, Lorg/minidns/dnsqueryresult/DnsQueryResult;->getCurrentState()Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v10

    .line 168
    sget-object v11, Landroidx/compose/animation/EnterExitState;->PreEnter:Landroidx/compose/animation/EnterExitState;

    .line 169
    .line 170
    if-ne v10, v11, :cond_8

    .line 171
    .line 172
    iget-object v10, v14, Landroidx/compose/animation/TransitionData;->scale:Landroidx/compose/animation/Scale;

    .line 173
    .line 174
    if-eqz v10, :cond_6

    .line 175
    .line 176
    iget-wide v10, v10, Landroidx/compose/animation/Scale;->transformOrigin:J

    .line 177
    .line 178
    new-instance v12, Landroidx/compose/ui/graphics/TransformOrigin;

    .line 179
    .line 180
    invoke-direct {v12, v10, v11}, Landroidx/compose/ui/graphics/TransformOrigin;-><init>(J)V

    .line 181
    .line 182
    .line 183
    goto :goto_3

    .line 184
    :cond_6
    iget-object v10, v15, Landroidx/compose/animation/ExitTransitionImpl;->data:Landroidx/compose/animation/TransitionData;

    .line 185
    .line 186
    iget-object v10, v10, Landroidx/compose/animation/TransitionData;->scale:Landroidx/compose/animation/Scale;

    .line 187
    .line 188
    if-eqz v10, :cond_7

    .line 189
    .line 190
    iget-wide v10, v10, Landroidx/compose/animation/Scale;->transformOrigin:J

    .line 191
    .line 192
    new-instance v12, Landroidx/compose/ui/graphics/TransformOrigin;

    .line 193
    .line 194
    invoke-direct {v12, v10, v11}, Landroidx/compose/ui/graphics/TransformOrigin;-><init>(J)V

    .line 195
    .line 196
    .line 197
    goto :goto_3

    .line 198
    :cond_7
    const/4 v12, 0x0

    .line 199
    goto :goto_3

    .line 200
    :cond_8
    iget-object v10, v15, Landroidx/compose/animation/ExitTransitionImpl;->data:Landroidx/compose/animation/TransitionData;

    .line 201
    .line 202
    iget-object v10, v10, Landroidx/compose/animation/TransitionData;->scale:Landroidx/compose/animation/Scale;

    .line 203
    .line 204
    if-eqz v10, :cond_9

    .line 205
    .line 206
    iget-wide v10, v10, Landroidx/compose/animation/Scale;->transformOrigin:J

    .line 207
    .line 208
    new-instance v12, Landroidx/compose/ui/graphics/TransformOrigin;

    .line 209
    .line 210
    invoke-direct {v12, v10, v11}, Landroidx/compose/ui/graphics/TransformOrigin;-><init>(J)V

    .line 211
    .line 212
    .line 213
    goto :goto_3

    .line 214
    :cond_9
    iget-object v10, v14, Landroidx/compose/animation/TransitionData;->scale:Landroidx/compose/animation/Scale;

    .line 215
    .line 216
    if-eqz v10, :cond_7

    .line 217
    .line 218
    iget-wide v10, v10, Landroidx/compose/animation/Scale;->transformOrigin:J

    .line 219
    .line 220
    new-instance v12, Landroidx/compose/ui/graphics/TransformOrigin;

    .line 221
    .line 222
    invoke-direct {v12, v10, v11}, Landroidx/compose/ui/graphics/TransformOrigin;-><init>(J)V

    .line 223
    .line 224
    .line 225
    :goto_3
    if-eqz v2, :cond_a

    .line 226
    .line 227
    sget-object v10, Landroidx/compose/animation/CrossfadeKt$Crossfade$3$1;->INSTANCE$8:Landroidx/compose/animation/CrossfadeKt$Crossfade$3$1;

    .line 228
    .line 229
    new-instance v11, Landroidx/compose/ui/focus/FocusOwnerImpl$focusSearch$1;

    .line 230
    .line 231
    invoke-direct {v11, v12, v13, v15, v9}, Landroidx/compose/ui/focus/FocusOwnerImpl$focusSearch$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {v2, v10, v11}, Landroidx/compose/animation/core/Transition$DeferredAnimation;->animate(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Landroidx/compose/animation/core/Transition$DeferredAnimation$DeferredAnimationData;

    .line 235
    .line 236
    .line 237
    move-result-object v2

    .line 238
    goto :goto_4

    .line 239
    :cond_a
    const/4 v2, 0x0

    .line 240
    :goto_4
    new-instance v15, Landroidx/compose/ui/focus/FocusOwnerImpl$focusSearch$1;

    .line 241
    .line 242
    invoke-direct {v15, v7, v8, v2, v3}, Landroidx/compose/ui/focus/FocusOwnerImpl$focusSearch$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 243
    .line 244
    .line 245
    invoke-interface/range {p2 .. p4}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    .line 246
    .line 247
    .line 248
    move-result-object v10

    .line 249
    iget v2, v10, Landroidx/compose/ui/layout/Placeable;->width:I

    .line 250
    .line 251
    iget v7, v10, Landroidx/compose/ui/layout/Placeable;->height:I

    .line 252
    .line 253
    int-to-long v8, v2

    .line 254
    shl-long v8, v8, v19

    .line 255
    .line 256
    int-to-long v11, v7

    .line 257
    and-long v11, v11, v17

    .line 258
    .line 259
    or-long/2addr v8, v11

    .line 260
    iget-wide v11, v0, Landroidx/compose/animation/EnterExitTransitionModifierNode;->lookaheadSize:J

    .line 261
    .line 262
    const-wide v13, -0x7fffffff80000000L    # -1.0609978955E-314

    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    invoke-static {v11, v12, v13, v14}, Landroidx/compose/ui/unit/IntSize;->equals-impl0(JJ)Z

    .line 268
    .line 269
    .line 270
    move-result v2

    .line 271
    if-nez v2, :cond_b

    .line 272
    .line 273
    iget-wide v11, v0, Landroidx/compose/animation/EnterExitTransitionModifierNode;->lookaheadSize:J

    .line 274
    .line 275
    goto :goto_5

    .line 276
    :cond_b
    move-wide v11, v8

    .line 277
    :goto_5
    iget-object v2, v0, Landroidx/compose/animation/EnterExitTransitionModifierNode;->sizeAnimation:Landroidx/compose/animation/core/Transition$DeferredAnimation;

    .line 278
    .line 279
    if-eqz v2, :cond_c

    .line 280
    .line 281
    new-instance v7, Landroidx/compose/animation/EnterExitTransitionModifierNode$measure$animSize$1;

    .line 282
    .line 283
    invoke-direct {v7, v0, v11, v12, v6}, Landroidx/compose/animation/EnterExitTransitionModifierNode$measure$animSize$1;-><init>(Landroidx/compose/animation/EnterExitTransitionModifierNode;JI)V

    .line 284
    .line 285
    .line 286
    iget-object v6, v0, Landroidx/compose/animation/EnterExitTransitionModifierNode;->sizeTransitionSpec:Landroidx/compose/animation/EnterExitTransitionModifierNode$slideSpec$1;

    .line 287
    .line 288
    invoke-virtual {v2, v6, v7}, Landroidx/compose/animation/core/Transition$DeferredAnimation;->animate(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Landroidx/compose/animation/core/Transition$DeferredAnimation$DeferredAnimationData;

    .line 289
    .line 290
    .line 291
    move-result-object v2

    .line 292
    move-object/from16 v16, v2

    .line 293
    .line 294
    goto :goto_6

    .line 295
    :cond_c
    const/16 v16, 0x0

    .line 296
    .line 297
    :goto_6
    if-eqz v16, :cond_d

    .line 298
    .line 299
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/animation/core/Transition$DeferredAnimation$DeferredAnimationData;->getValue()Ljava/lang/Object;

    .line 300
    .line 301
    .line 302
    move-result-object v2

    .line 303
    check-cast v2, Landroidx/compose/ui/unit/IntSize;

    .line 304
    .line 305
    iget-wide v8, v2, Landroidx/compose/ui/unit/IntSize;->packedValue:J

    .line 306
    .line 307
    :cond_d
    move-wide/from16 v6, p3

    .line 308
    .line 309
    invoke-static {v6, v7, v8, v9}, Landroidx/compose/ui/unit/ConstraintsKt;->constrain-4WqzIAM(JJ)J

    .line 310
    .line 311
    .line 312
    move-result-wide v23

    .line 313
    iget-object v2, v0, Landroidx/compose/animation/EnterExitTransitionModifierNode;->offsetAnimation:Landroidx/compose/animation/core/Transition$DeferredAnimation;

    .line 314
    .line 315
    const-wide/16 v6, 0x0

    .line 316
    .line 317
    if-eqz v2, :cond_e

    .line 318
    .line 319
    sget-object v8, Landroidx/compose/animation/CrossfadeKt$Crossfade$3$1;->INSTANCE$9:Landroidx/compose/animation/CrossfadeKt$Crossfade$3$1;

    .line 320
    .line 321
    new-instance v9, Landroidx/compose/animation/EnterExitTransitionModifierNode$measure$animSize$1;

    .line 322
    .line 323
    invoke-direct {v9, v0, v11, v12, v4}, Landroidx/compose/animation/EnterExitTransitionModifierNode$measure$animSize$1;-><init>(Landroidx/compose/animation/EnterExitTransitionModifierNode;JI)V

    .line 324
    .line 325
    .line 326
    invoke-virtual {v2, v8, v9}, Landroidx/compose/animation/core/Transition$DeferredAnimation;->animate(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Landroidx/compose/animation/core/Transition$DeferredAnimation$DeferredAnimationData;

    .line 327
    .line 328
    .line 329
    move-result-object v2

    .line 330
    invoke-virtual {v2}, Landroidx/compose/animation/core/Transition$DeferredAnimation$DeferredAnimationData;->getValue()Ljava/lang/Object;

    .line 331
    .line 332
    .line 333
    move-result-object v2

    .line 334
    check-cast v2, Landroidx/compose/ui/unit/IntOffset;

    .line 335
    .line 336
    iget-wide v8, v2, Landroidx/compose/ui/unit/IntOffset;->packedValue:J

    .line 337
    .line 338
    move-wide v13, v8

    .line 339
    goto :goto_7

    .line 340
    :cond_e
    move-wide v13, v6

    .line 341
    :goto_7
    iget-object v2, v0, Landroidx/compose/animation/EnterExitTransitionModifierNode;->slideAnimation:Landroidx/compose/animation/core/Transition$DeferredAnimation;

    .line 342
    .line 343
    if-eqz v2, :cond_f

    .line 344
    .line 345
    new-instance v4, Landroidx/compose/animation/EnterExitTransitionModifierNode$measure$animSize$1;

    .line 346
    .line 347
    invoke-direct {v4, v0, v11, v12, v3}, Landroidx/compose/animation/EnterExitTransitionModifierNode$measure$animSize$1;-><init>(Landroidx/compose/animation/EnterExitTransitionModifierNode;JI)V

    .line 348
    .line 349
    .line 350
    iget-object v3, v0, Landroidx/compose/animation/EnterExitTransitionModifierNode;->slideSpec:Landroidx/compose/animation/EnterExitTransitionModifierNode$slideSpec$1;

    .line 351
    .line 352
    invoke-virtual {v2, v3, v4}, Landroidx/compose/animation/core/Transition$DeferredAnimation;->animate(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Landroidx/compose/animation/core/Transition$DeferredAnimation$DeferredAnimationData;

    .line 353
    .line 354
    .line 355
    move-result-object v2

    .line 356
    invoke-virtual {v2}, Landroidx/compose/animation/core/Transition$DeferredAnimation$DeferredAnimationData;->getValue()Ljava/lang/Object;

    .line 357
    .line 358
    .line 359
    move-result-object v2

    .line 360
    check-cast v2, Landroidx/compose/ui/unit/IntOffset;

    .line 361
    .line 362
    iget-wide v2, v2, Landroidx/compose/ui/unit/IntOffset;->packedValue:J

    .line 363
    .line 364
    goto :goto_8

    .line 365
    :cond_f
    move-wide v2, v6

    .line 366
    :goto_8
    iget-object v0, v0, Landroidx/compose/animation/EnterExitTransitionModifierNode;->currentAlignment:Landroidx/compose/ui/Alignment;

    .line 367
    .line 368
    if-eqz v0, :cond_10

    .line 369
    .line 370
    sget-object v25, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    .line 371
    .line 372
    move-object/from16 v20, v0

    .line 373
    .line 374
    move-wide/from16 v21, v11

    .line 375
    .line 376
    invoke-interface/range {v20 .. v25}, Landroidx/compose/ui/Alignment;->align-KFBX0sM(JJLandroidx/compose/ui/unit/LayoutDirection;)J

    .line 377
    .line 378
    .line 379
    move-result-wide v6

    .line 380
    :cond_10
    invoke-static {v6, v7, v2, v3}, Landroidx/compose/ui/unit/IntOffset;->plus-qkQi6aY(JJ)J

    .line 381
    .line 382
    .line 383
    move-result-wide v11

    .line 384
    shr-long v2, v23, v19

    .line 385
    .line 386
    long-to-int v0, v2

    .line 387
    and-long v2, v23, v17

    .line 388
    .line 389
    long-to-int v2, v2

    .line 390
    new-instance v9, Landroidx/compose/animation/EnterExitTransitionModifierNode$measure$2;

    .line 391
    .line 392
    invoke-direct/range {v9 .. v15}, Landroidx/compose/animation/EnterExitTransitionModifierNode$measure$2;-><init>(Landroidx/compose/ui/layout/Placeable;JJLandroidx/compose/ui/focus/FocusOwnerImpl$focusSearch$1;)V

    .line 393
    .line 394
    .line 395
    invoke-interface {v1, v0, v2, v5, v9}, Landroidx/compose/ui/layout/MeasureScope;->layout(IILjava/util/Map;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    .line 396
    .line 397
    .line 398
    move-result-object v0

    .line 399
    return-object v0

    .line 400
    :cond_11
    move-wide/from16 v6, p3

    .line 401
    .line 402
    invoke-interface/range {p2 .. p4}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    .line 403
    .line 404
    .line 405
    move-result-object v0

    .line 406
    iget v2, v0, Landroidx/compose/ui/layout/Placeable;->width:I

    .line 407
    .line 408
    iget v3, v0, Landroidx/compose/ui/layout/Placeable;->height:I

    .line 409
    .line 410
    new-instance v4, Landroidx/compose/ui/draw/PainterNode$measure$1;

    .line 411
    .line 412
    invoke-direct {v4, v0, v9}, Landroidx/compose/ui/draw/PainterNode$measure$1;-><init>(Landroidx/compose/ui/layout/Placeable;I)V

    .line 413
    .line 414
    .line 415
    invoke-interface {v1, v2, v3, v5, v4}, Landroidx/compose/ui/layout/MeasureScope;->layout(IILjava/util/Map;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    .line 416
    .line 417
    .line 418
    move-result-object v0

    .line 419
    return-object v0
.end method

.method public final onAttach()V
    .locals 2

    .line 1
    const-wide v0, -0x7fffffff80000000L    # -1.0609978955E-314

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    iput-wide v0, p0, Landroidx/compose/animation/EnterExitTransitionModifierNode;->lookaheadSize:J

    .line 7
    .line 8
    return-void
.end method
