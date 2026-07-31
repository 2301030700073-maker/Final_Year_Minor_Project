.class public abstract Landroidx/compose/material/ripple/RippleNode;
.super Landroidx/compose/ui/Modifier$Node;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;
.implements Landroidx/compose/ui/node/DrawModifierNode;
.implements Landroidx/compose/ui/node/LayoutAwareModifierNode;


# instance fields
.field public final bounded:Z

.field public final color:Landroidx/appcompat/widget/PopupMenu$1;

.field public hasValidSize:Z

.field public final interactionSource:Landroidx/compose/foundation/interaction/InteractionSource;

.field public final pendingInteractions:Landroidx/collection/MutableObjectList;

.field public final radius:F

.field public final rippleAlpha:Landroidx/compose/material3/DelegatingThemeAwareRippleNode$$ExternalSyntheticLambda0;

.field public rippleSize:J

.field public stateLayer:Landroidx/compose/material/ripple/StateLayer;

.field public targetRadius:F


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/interaction/InteractionSource;ZFLandroidx/appcompat/widget/PopupMenu$1;Landroidx/compose/material3/DelegatingThemeAwareRippleNode$$ExternalSyntheticLambda0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/compose/ui/Modifier$Node;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/material/ripple/RippleNode;->interactionSource:Landroidx/compose/foundation/interaction/InteractionSource;

    .line 5
    .line 6
    iput-boolean p2, p0, Landroidx/compose/material/ripple/RippleNode;->bounded:Z

    .line 7
    .line 8
    iput p3, p0, Landroidx/compose/material/ripple/RippleNode;->radius:F

    .line 9
    .line 10
    iput-object p4, p0, Landroidx/compose/material/ripple/RippleNode;->color:Landroidx/appcompat/widget/PopupMenu$1;

    .line 11
    .line 12
    iput-object p5, p0, Landroidx/compose/material/ripple/RippleNode;->rippleAlpha:Landroidx/compose/material3/DelegatingThemeAwareRippleNode$$ExternalSyntheticLambda0;

    .line 13
    .line 14
    const-wide/16 p1, 0x0

    .line 15
    .line 16
    iput-wide p1, p0, Landroidx/compose/material/ripple/RippleNode;->rippleSize:J

    .line 17
    .line 18
    new-instance p1, Landroidx/collection/MutableObjectList;

    .line 19
    .line 20
    invoke-direct {p1}, Landroidx/collection/MutableObjectList;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Landroidx/compose/material/ripple/RippleNode;->pendingInteractions:Landroidx/collection/MutableObjectList;

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public final draw(Landroidx/compose/ui/node/LayoutNodeDrawScope;)V
    .locals 13

    .line 1
    iget-object v0, p1, Landroidx/compose/ui/node/LayoutNodeDrawScope;->canvasDrawScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->drawContent()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Landroidx/compose/material/ripple/RippleNode;->stateLayer:Landroidx/compose/material/ripple/StateLayer;

    .line 7
    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    iget v2, p0, Landroidx/compose/material/ripple/RippleNode;->targetRadius:F

    .line 11
    .line 12
    iget-object v3, p0, Landroidx/compose/material/ripple/RippleNode;->color:Landroidx/appcompat/widget/PopupMenu$1;

    .line 13
    .line 14
    invoke-virtual {v3}, Landroidx/appcompat/widget/PopupMenu$1;->invoke-0d7_KjU()J

    .line 15
    .line 16
    .line 17
    move-result-wide v3

    .line 18
    iget-object v5, v1, Landroidx/compose/material/ripple/StateLayer;->animatedAlpha:Landroidx/compose/animation/core/Animatable;

    .line 19
    .line 20
    invoke-virtual {v5}, Landroidx/compose/animation/core/Animatable;->getValue()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v5

    .line 24
    check-cast v5, Ljava/lang/Number;

    .line 25
    .line 26
    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    .line 27
    .line 28
    .line 29
    move-result v5

    .line 30
    const/4 v6, 0x0

    .line 31
    cmpl-float v6, v5, v6

    .line 32
    .line 33
    if-lez v6, :cond_1

    .line 34
    .line 35
    invoke-static {v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JF)J

    .line 36
    .line 37
    .line 38
    move-result-wide v3

    .line 39
    iget-boolean v1, v1, Landroidx/compose/material/ripple/StateLayer;->bounded:Z

    .line 40
    .line 41
    if-eqz v1, :cond_0

    .line 42
    .line 43
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->getSize-NH-jbRc()J

    .line 44
    .line 45
    .line 46
    move-result-wide v5

    .line 47
    const/16 v1, 0x20

    .line 48
    .line 49
    shr-long/2addr v5, v1

    .line 50
    long-to-int v1, v5

    .line 51
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 52
    .line 53
    .line 54
    move-result v8

    .line 55
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->getSize-NH-jbRc()J

    .line 56
    .line 57
    .line 58
    move-result-wide v5

    .line 59
    const-wide v9, 0xffffffffL

    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    and-long/2addr v5, v9

    .line 65
    long-to-int v1, v5

    .line 66
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 67
    .line 68
    .line 69
    move-result v9

    .line 70
    iget-object v1, v0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawContext:Lorg/acra/util/ProcessFinisher;

    .line 71
    .line 72
    invoke-virtual {v1}, Lorg/acra/util/ProcessFinisher;->getSize-NH-jbRc()J

    .line 73
    .line 74
    .line 75
    move-result-wide v11

    .line 76
    invoke-virtual {v1}, Lorg/acra/util/ProcessFinisher;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    invoke-interface {v5}, Landroidx/compose/ui/graphics/Canvas;->save()V

    .line 81
    .line 82
    .line 83
    :try_start_0
    iget-object v5, v1, Lorg/acra/util/ProcessFinisher;->context:Ljava/lang/Object;

    .line 84
    .line 85
    check-cast v5, Landroidx/appcompat/widget/PopupMenu$1;

    .line 86
    .line 87
    iget-object v5, v5, Landroidx/appcompat/widget/PopupMenu$1;->this$0:Ljava/lang/Object;

    .line 88
    .line 89
    check-cast v5, Lorg/acra/util/ProcessFinisher;

    .line 90
    .line 91
    invoke-virtual {v5}, Lorg/acra/util/ProcessFinisher;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    .line 92
    .line 93
    .line 94
    move-result-object v5

    .line 95
    const/4 v6, 0x0

    .line 96
    const/4 v7, 0x0

    .line 97
    const/4 v10, 0x1

    .line 98
    invoke-interface/range {v5 .. v10}, Landroidx/compose/ui/graphics/Canvas;->clipRect-N_I0leg(FFFFI)V

    .line 99
    .line 100
    .line 101
    invoke-static {p1, v3, v4, v2}, Landroidx/compose/ui/node/Owner$-CC;->drawCircle-VaOC9Bg$default(Landroidx/compose/ui/node/LayoutNodeDrawScope;JF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    .line 103
    .line 104
    invoke-virtual {v1}, Lorg/acra/util/ProcessFinisher;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-interface {p1}, Landroidx/compose/ui/graphics/Canvas;->restore()V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v1, v11, v12}, Lorg/acra/util/ProcessFinisher;->setSize-uvyYCjk(J)V

    .line 112
    .line 113
    .line 114
    goto :goto_0

    .line 115
    :catchall_0
    move-exception v0

    .line 116
    move-object p0, v0

    .line 117
    invoke-virtual {v1}, Lorg/acra/util/ProcessFinisher;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    invoke-interface {p1}, Landroidx/compose/ui/graphics/Canvas;->restore()V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v1, v11, v12}, Lorg/acra/util/ProcessFinisher;->setSize-uvyYCjk(J)V

    .line 125
    .line 126
    .line 127
    throw p0

    .line 128
    :cond_0
    invoke-static {p1, v3, v4, v2}, Landroidx/compose/ui/node/Owner$-CC;->drawCircle-VaOC9Bg$default(Landroidx/compose/ui/node/LayoutNodeDrawScope;JF)V

    .line 129
    .line 130
    .line 131
    :cond_1
    :goto_0
    check-cast p0, Landroidx/compose/material/ripple/AndroidRippleNode;

    .line 132
    .line 133
    iget-object p1, v0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawContext:Lorg/acra/util/ProcessFinisher;

    .line 134
    .line 135
    invoke-virtual {p1}, Lorg/acra/util/ProcessFinisher;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    iget-object v0, p0, Landroidx/compose/material/ripple/AndroidRippleNode;->rippleHostView:Landroidx/compose/material/ripple/RippleHostView;

    .line 140
    .line 141
    if-eqz v0, :cond_2

    .line 142
    .line 143
    iget-wide v2, p0, Landroidx/compose/material/ripple/RippleNode;->rippleSize:J

    .line 144
    .line 145
    iget v1, p0, Landroidx/compose/material/ripple/RippleNode;->targetRadius:F

    .line 146
    .line 147
    invoke-static {v1}, Lkotlin/math/MathKt;->roundToInt(F)I

    .line 148
    .line 149
    .line 150
    move-result v1

    .line 151
    iget-object v4, p0, Landroidx/compose/material/ripple/RippleNode;->color:Landroidx/appcompat/widget/PopupMenu$1;

    .line 152
    .line 153
    invoke-virtual {v4}, Landroidx/appcompat/widget/PopupMenu$1;->invoke-0d7_KjU()J

    .line 154
    .line 155
    .line 156
    move-result-wide v4

    .line 157
    iget-object p0, p0, Landroidx/compose/material/ripple/RippleNode;->rippleAlpha:Landroidx/compose/material3/DelegatingThemeAwareRippleNode$$ExternalSyntheticLambda0;

    .line 158
    .line 159
    invoke-virtual {p0}, Landroidx/compose/material3/DelegatingThemeAwareRippleNode$$ExternalSyntheticLambda0;->invoke()Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    invoke-virtual/range {v0 .. v5}, Landroidx/compose/material/ripple/RippleHostView;->setRippleProperties-biQXAtU(IJJ)V

    .line 163
    .line 164
    .line 165
    invoke-static {p1}, Landroidx/compose/ui/graphics/AndroidCanvas_androidKt;->getNativeCanvas(Landroidx/compose/ui/graphics/Canvas;)Landroid/graphics/Canvas;

    .line 166
    .line 167
    .line 168
    move-result-object p0

    .line 169
    invoke-virtual {v0, p0}, Landroidx/compose/material/ripple/RippleHostView;->draw(Landroid/graphics/Canvas;)V

    .line 170
    .line 171
    .line 172
    :cond_2
    return-void
.end method

.method public final getShouldAutoInvalidate()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final handlePressInteraction(Landroidx/compose/foundation/interaction/PressInteraction;)V
    .locals 11

    .line 1
    instance-of v0, p1, Landroidx/compose/foundation/interaction/PressInteraction$Press;

    .line 2
    .line 3
    if-eqz v0, :cond_c

    .line 4
    .line 5
    move-object v2, p1

    .line 6
    check-cast v2, Landroidx/compose/foundation/interaction/PressInteraction$Press;

    .line 7
    .line 8
    iget-wide v4, p0, Landroidx/compose/material/ripple/RippleNode;->rippleSize:J

    .line 9
    .line 10
    iget p1, p0, Landroidx/compose/material/ripple/RippleNode;->targetRadius:F

    .line 11
    .line 12
    check-cast p0, Landroidx/compose/material/ripple/AndroidRippleNode;

    .line 13
    .line 14
    iget-object v0, p0, Landroidx/compose/material/ripple/AndroidRippleNode;->rippleContainer:Landroidx/compose/material/ripple/RippleContainer;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    goto :goto_3

    .line 20
    :cond_0
    sget-object v0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalView:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 21
    .line 22
    invoke-static {p0, v0}, Landroidx/compose/ui/node/HitTestResultKt;->currentValueOf(Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Landroid/view/View;

    .line 27
    .line 28
    :goto_0
    instance-of v3, v0, Landroid/view/ViewGroup;

    .line 29
    .line 30
    if-nez v3, :cond_2

    .line 31
    .line 32
    move-object v3, v0

    .line 33
    check-cast v3, Landroid/view/View;

    .line 34
    .line 35
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    instance-of v6, v3, Landroid/view/View;

    .line 40
    .line 41
    if-eqz v6, :cond_1

    .line 42
    .line 43
    move-object v0, v3

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    const-string p0, "Couldn\'t find a valid parent for "

    .line 46
    .line 47
    const-string p1, ". Are you overriding LocalView and providing a View that is not attached to the view hierarchy?"

    .line 48
    .line 49
    invoke-static {v0, p1, p0}, Lcoil3/decode/DecodeUtils$$ExternalSyntheticBUOutline0;->m$1(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :cond_2
    check-cast v0, Landroid/view/ViewGroup;

    .line 54
    .line 55
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    move v6, v1

    .line 60
    :goto_1
    if-ge v6, v3, :cond_4

    .line 61
    .line 62
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 63
    .line 64
    .line 65
    move-result-object v7

    .line 66
    instance-of v8, v7, Landroidx/compose/material/ripple/RippleContainer;

    .line 67
    .line 68
    if-eqz v8, :cond_3

    .line 69
    .line 70
    check-cast v7, Landroidx/compose/material/ripple/RippleContainer;

    .line 71
    .line 72
    move-object v0, v7

    .line 73
    goto :goto_2

    .line 74
    :cond_3
    add-int/lit8 v6, v6, 0x1

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_4
    new-instance v3, Landroidx/compose/material/ripple/RippleContainer;

    .line 78
    .line 79
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 80
    .line 81
    .line 82
    move-result-object v6

    .line 83
    invoke-direct {v3, v6}, Landroidx/compose/material/ripple/RippleContainer;-><init>(Landroid/content/Context;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 87
    .line 88
    .line 89
    move-object v0, v3

    .line 90
    :goto_2
    iput-object v0, p0, Landroidx/compose/material/ripple/AndroidRippleNode;->rippleContainer:Landroidx/compose/material/ripple/RippleContainer;

    .line 91
    .line 92
    :goto_3
    iget-object v3, v0, Landroidx/compose/material/ripple/RippleContainer;->rippleHosts:Ljava/util/ArrayList;

    .line 93
    .line 94
    iget-object v6, v0, Landroidx/compose/material/ripple/RippleContainer;->rippleHostMap:Landroidx/cardview/widget/CardView$1;

    .line 95
    .line 96
    iget-object v7, v6, Landroidx/cardview/widget/CardView$1;->mCardBackground:Ljava/lang/Object;

    .line 97
    .line 98
    check-cast v7, Ljava/util/LinkedHashMap;

    .line 99
    .line 100
    iget-object v8, v6, Landroidx/cardview/widget/CardView$1;->mCardBackground:Ljava/lang/Object;

    .line 101
    .line 102
    check-cast v8, Ljava/util/LinkedHashMap;

    .line 103
    .line 104
    iget-object v6, v6, Landroidx/cardview/widget/CardView$1;->this$0:Ljava/lang/Object;

    .line 105
    .line 106
    check-cast v6, Ljava/util/LinkedHashMap;

    .line 107
    .line 108
    invoke-virtual {v7, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v7

    .line 112
    check-cast v7, Landroidx/compose/material/ripple/RippleHostView;

    .line 113
    .line 114
    if-eqz v7, :cond_5

    .line 115
    .line 116
    :goto_4
    move-object v1, v7

    .line 117
    goto/16 :goto_8

    .line 118
    .line 119
    :cond_5
    iget-object v7, v0, Landroidx/compose/material/ripple/RippleContainer;->unusedRippleHosts:Ljava/util/ArrayList;

    .line 120
    .line 121
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    .line 125
    .line 126
    .line 127
    move-result v9

    .line 128
    const/4 v10, 0x0

    .line 129
    if-eqz v9, :cond_6

    .line 130
    .line 131
    move-object v7, v10

    .line 132
    goto :goto_5

    .line 133
    :cond_6
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v7

    .line 137
    :goto_5
    check-cast v7, Landroidx/compose/material/ripple/RippleHostView;

    .line 138
    .line 139
    if-nez v7, :cond_b

    .line 140
    .line 141
    iget v7, v0, Landroidx/compose/material/ripple/RippleContainer;->nextHostIndex:I

    .line 142
    .line 143
    invoke-static {v3}, Lorg/jsoup/Jsoup;->getLastIndex(Ljava/util/List;)I

    .line 144
    .line 145
    .line 146
    move-result v9

    .line 147
    if-le v7, v9, :cond_7

    .line 148
    .line 149
    new-instance v7, Landroidx/compose/material/ripple/RippleHostView;

    .line 150
    .line 151
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 152
    .line 153
    .line 154
    move-result-object v9

    .line 155
    invoke-direct {v7, v9}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    goto :goto_6

    .line 165
    :cond_7
    iget v7, v0, Landroidx/compose/material/ripple/RippleContainer;->nextHostIndex:I

    .line 166
    .line 167
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v3

    .line 171
    move-object v7, v3

    .line 172
    check-cast v7, Landroidx/compose/material/ripple/RippleHostView;

    .line 173
    .line 174
    invoke-virtual {v6, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object v3

    .line 178
    check-cast v3, Landroidx/compose/material/ripple/AndroidRippleNode;

    .line 179
    .line 180
    if-eqz v3, :cond_9

    .line 181
    .line 182
    iput-object v10, v3, Landroidx/compose/material/ripple/AndroidRippleNode;->rippleHostView:Landroidx/compose/material/ripple/RippleHostView;

    .line 183
    .line 184
    invoke-static {v3}, Landroidx/compose/ui/node/HitTestResultKt;->invalidateDraw(Landroidx/compose/ui/node/DrawModifierNode;)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v8, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object v9

    .line 191
    check-cast v9, Landroidx/compose/material/ripple/RippleHostView;

    .line 192
    .line 193
    if-eqz v9, :cond_8

    .line 194
    .line 195
    invoke-interface {v6, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object v9

    .line 199
    check-cast v9, Landroidx/compose/material/ripple/AndroidRippleNode;

    .line 200
    .line 201
    :cond_8
    invoke-interface {v8, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    invoke-virtual {v7}, Landroidx/compose/material/ripple/RippleHostView;->disposeRipple()V

    .line 205
    .line 206
    .line 207
    :cond_9
    :goto_6
    iget v3, v0, Landroidx/compose/material/ripple/RippleContainer;->nextHostIndex:I

    .line 208
    .line 209
    iget v9, v0, Landroidx/compose/material/ripple/RippleContainer;->MaxRippleHosts:I

    .line 210
    .line 211
    add-int/lit8 v9, v9, -0x1

    .line 212
    .line 213
    if-ge v3, v9, :cond_a

    .line 214
    .line 215
    add-int/lit8 v3, v3, 0x1

    .line 216
    .line 217
    iput v3, v0, Landroidx/compose/material/ripple/RippleContainer;->nextHostIndex:I

    .line 218
    .line 219
    goto :goto_7

    .line 220
    :cond_a
    iput v1, v0, Landroidx/compose/material/ripple/RippleContainer;->nextHostIndex:I

    .line 221
    .line 222
    :cond_b
    :goto_7
    invoke-interface {v8, p0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    invoke-interface {v6, v7, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    goto :goto_4

    .line 229
    :goto_8
    invoke-static {p1}, Lkotlin/math/MathKt;->roundToInt(F)I

    .line 230
    .line 231
    .line 232
    move-result v6

    .line 233
    iget-object p1, p0, Landroidx/compose/material/ripple/RippleNode;->color:Landroidx/appcompat/widget/PopupMenu$1;

    .line 234
    .line 235
    invoke-virtual {p1}, Landroidx/appcompat/widget/PopupMenu$1;->invoke-0d7_KjU()J

    .line 236
    .line 237
    .line 238
    move-result-wide v7

    .line 239
    iget-object p1, p0, Landroidx/compose/material/ripple/RippleNode;->rippleAlpha:Landroidx/compose/material3/DelegatingThemeAwareRippleNode$$ExternalSyntheticLambda0;

    .line 240
    .line 241
    invoke-virtual {p1}, Landroidx/compose/material3/DelegatingThemeAwareRippleNode$$ExternalSyntheticLambda0;->invoke()Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    new-instance v9, Landroidx/work/Worker$$ExternalSyntheticLambda0;

    .line 245
    .line 246
    const/4 p1, 0x5

    .line 247
    invoke-direct {v9, p0, p1}, Landroidx/work/Worker$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    .line 248
    .line 249
    .line 250
    iget-boolean v3, p0, Landroidx/compose/material/ripple/RippleNode;->bounded:Z

    .line 251
    .line 252
    invoke-virtual/range {v1 .. v9}, Landroidx/compose/material/ripple/RippleHostView;->addRipple-KOepWvA(Landroidx/compose/foundation/interaction/PressInteraction$Press;ZJIJLandroidx/work/Worker$$ExternalSyntheticLambda0;)V

    .line 253
    .line 254
    .line 255
    iput-object v1, p0, Landroidx/compose/material/ripple/AndroidRippleNode;->rippleHostView:Landroidx/compose/material/ripple/RippleHostView;

    .line 256
    .line 257
    invoke-static {p0}, Landroidx/compose/ui/node/HitTestResultKt;->invalidateDraw(Landroidx/compose/ui/node/DrawModifierNode;)V

    .line 258
    .line 259
    .line 260
    return-void

    .line 261
    :cond_c
    instance-of v0, p1, Landroidx/compose/foundation/interaction/PressInteraction$Release;

    .line 262
    .line 263
    if-eqz v0, :cond_d

    .line 264
    .line 265
    check-cast p0, Landroidx/compose/material/ripple/AndroidRippleNode;

    .line 266
    .line 267
    iget-object p0, p0, Landroidx/compose/material/ripple/AndroidRippleNode;->rippleHostView:Landroidx/compose/material/ripple/RippleHostView;

    .line 268
    .line 269
    if-eqz p0, :cond_e

    .line 270
    .line 271
    invoke-virtual {p0}, Landroidx/compose/material/ripple/RippleHostView;->removeRipple()V

    .line 272
    .line 273
    .line 274
    return-void

    .line 275
    :cond_d
    instance-of p1, p1, Landroidx/compose/foundation/interaction/PressInteraction$Cancel;

    .line 276
    .line 277
    if-eqz p1, :cond_e

    .line 278
    .line 279
    check-cast p0, Landroidx/compose/material/ripple/AndroidRippleNode;

    .line 280
    .line 281
    iget-object p0, p0, Landroidx/compose/material/ripple/AndroidRippleNode;->rippleHostView:Landroidx/compose/material/ripple/RippleHostView;

    .line 282
    .line 283
    if-eqz p0, :cond_e

    .line 284
    .line 285
    invoke-virtual {p0}, Landroidx/compose/material/ripple/RippleHostView;->removeRipple()V

    .line 286
    .line 287
    .line 288
    :cond_e
    return-void
.end method

.method public final onAttach()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Landroidx/compose/material/ripple/RippleNode$onAttach$1;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-direct {v1, p0, v2}, Landroidx/compose/material/ripple/RippleNode$onAttach$1;-><init>(Landroidx/compose/material/ripple/RippleNode;Lkotlin/coroutines/Continuation;)V

    .line 9
    .line 10
    .line 11
    const/4 p0, 0x3

    .line 12
    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final synthetic onMeasureResultChanged()V
    .locals 0

    .line 1
    return-void
.end method

.method public final synthetic onPlaced(Landroidx/compose/ui/layout/LayoutCoordinates;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onRemeasured-ozmzZPI(J)V
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/compose/material/ripple/RippleNode;->hasValidSize:Z

    .line 3
    .line 4
    invoke-static {p0}, Landroidx/compose/ui/node/HitTestResultKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v0, v0, Landroidx/compose/ui/node/LayoutNode;->density:Landroidx/compose/ui/unit/Density;

    .line 9
    .line 10
    invoke-static {p1, p2}, Lokhttp3/Cookie$Companion;->toSize-ozmzZPI(J)J

    .line 11
    .line 12
    .line 13
    move-result-wide p1

    .line 14
    iput-wide p1, p0, Landroidx/compose/material/ripple/RippleNode;->rippleSize:J

    .line 15
    .line 16
    iget p1, p0, Landroidx/compose/material/ripple/RippleNode;->radius:F

    .line 17
    .line 18
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    .line 19
    .line 20
    .line 21
    move-result p2

    .line 22
    if-eqz p2, :cond_0

    .line 23
    .line 24
    iget-wide p1, p0, Landroidx/compose/material/ripple/RippleNode;->rippleSize:J

    .line 25
    .line 26
    const/16 v1, 0x20

    .line 27
    .line 28
    shr-long v2, p1, v1

    .line 29
    .line 30
    long-to-int v2, v2

    .line 31
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    const-wide v3, 0xffffffffL

    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    and-long/2addr p1, v3

    .line 41
    long-to-int p1, p1

    .line 42
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 47
    .line 48
    .line 49
    move-result p2

    .line 50
    int-to-long v5, p2

    .line 51
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    int-to-long p1, p1

    .line 56
    shl-long v1, v5, v1

    .line 57
    .line 58
    and-long/2addr p1, v3

    .line 59
    or-long/2addr p1, v1

    .line 60
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->getDistance-impl(J)F

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    const/high16 p2, 0x40000000    # 2.0f

    .line 65
    .line 66
    div-float/2addr p1, p2

    .line 67
    iget-boolean p2, p0, Landroidx/compose/material/ripple/RippleNode;->bounded:Z

    .line 68
    .line 69
    if-eqz p2, :cond_1

    .line 70
    .line 71
    const/high16 p2, 0x41200000    # 10.0f

    .line 72
    .line 73
    invoke-interface {v0, p2}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    .line 74
    .line 75
    .line 76
    move-result p2

    .line 77
    add-float/2addr p1, p2

    .line 78
    goto :goto_0

    .line 79
    :cond_0
    invoke-interface {v0, p1}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    :cond_1
    :goto_0
    iput p1, p0, Landroidx/compose/material/ripple/RippleNode;->targetRadius:F

    .line 84
    .line 85
    iget-object p1, p0, Landroidx/compose/material/ripple/RippleNode;->pendingInteractions:Landroidx/collection/MutableObjectList;

    .line 86
    .line 87
    iget-object p2, p1, Landroidx/collection/ObjectList;->content:[Ljava/lang/Object;

    .line 88
    .line 89
    iget v0, p1, Landroidx/collection/ObjectList;->_size:I

    .line 90
    .line 91
    const/4 v1, 0x0

    .line 92
    :goto_1
    if-ge v1, v0, :cond_2

    .line 93
    .line 94
    aget-object v2, p2, v1

    .line 95
    .line 96
    check-cast v2, Landroidx/compose/foundation/interaction/PressInteraction;

    .line 97
    .line 98
    invoke-virtual {p0, v2}, Landroidx/compose/material/ripple/RippleNode;->handlePressInteraction(Landroidx/compose/foundation/interaction/PressInteraction;)V

    .line 99
    .line 100
    .line 101
    add-int/lit8 v1, v1, 0x1

    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_2
    invoke-virtual {p1}, Landroidx/collection/MutableObjectList;->clear()V

    .line 105
    .line 106
    .line 107
    return-void
.end method
