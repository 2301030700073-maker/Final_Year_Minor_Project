.class public final Landroidx/compose/material/ripple/RippleNode$onAttach$1$1;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $$this$launch:Ljava/lang/Object;

.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p3, p0, Landroidx/compose/material/ripple/RippleNode$onAttach$1$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Landroidx/compose/material/ripple/RippleNode$onAttach$1$1;->this$0:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, Landroidx/compose/material/ripple/RippleNode$onAttach$1$1;->$$this$launch:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8

    .line 1
    iget p2, p0, Landroidx/compose/material/ripple/RippleNode$onAttach$1$1;->$r8$classId:I

    .line 2
    .line 3
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/compose/material/ripple/RippleNode$onAttach$1$1;->$$this$launch:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object p0, p0, Landroidx/compose/material/ripple/RippleNode$onAttach$1$1;->this$0:Ljava/lang/Object;

    .line 8
    .line 9
    packed-switch p2, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    check-cast p1, Landroidx/work/impl/constraints/ConstraintsState;

    .line 13
    .line 14
    check-cast p0, Landroidx/work/impl/constraints/OnConstraintsStateChangedListener;

    .line 15
    .line 16
    check-cast v1, Landroidx/work/impl/model/WorkSpec;

    .line 17
    .line 18
    invoke-interface {p0, v1, p1}, Landroidx/work/impl/constraints/OnConstraintsStateChangedListener;->onConstraintsStateChanged(Landroidx/work/impl/model/WorkSpec;Landroidx/work/impl/constraints/ConstraintsState;)V

    .line 19
    .line 20
    .line 21
    return-object v0

    .line 22
    :pswitch_0
    check-cast p1, Landroidx/compose/foundation/interaction/Interaction;

    .line 23
    .line 24
    instance-of p2, p1, Landroidx/compose/foundation/interaction/PressInteraction;

    .line 25
    .line 26
    check-cast p0, Landroidx/compose/material/ripple/RippleNode;

    .line 27
    .line 28
    if-eqz p2, :cond_1

    .line 29
    .line 30
    iget-boolean p2, p0, Landroidx/compose/material/ripple/RippleNode;->hasValidSize:Z

    .line 31
    .line 32
    if-eqz p2, :cond_0

    .line 33
    .line 34
    check-cast p1, Landroidx/compose/foundation/interaction/PressInteraction;

    .line 35
    .line 36
    invoke-virtual {p0, p1}, Landroidx/compose/material/ripple/RippleNode;->handlePressInteraction(Landroidx/compose/foundation/interaction/PressInteraction;)V

    .line 37
    .line 38
    .line 39
    goto/16 :goto_5

    .line 40
    .line 41
    :cond_0
    iget-object p0, p0, Landroidx/compose/material/ripple/RippleNode;->pendingInteractions:Landroidx/collection/MutableObjectList;

    .line 42
    .line 43
    invoke-virtual {p0, p1}, Landroidx/collection/MutableObjectList;->add(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    goto/16 :goto_5

    .line 47
    .line 48
    :cond_1
    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    .line 49
    .line 50
    iget-object p2, p0, Landroidx/compose/material/ripple/RippleNode;->stateLayer:Landroidx/compose/material/ripple/StateLayer;

    .line 51
    .line 52
    if-nez p2, :cond_2

    .line 53
    .line 54
    new-instance p2, Landroidx/compose/material/ripple/StateLayer;

    .line 55
    .line 56
    iget-boolean v2, p0, Landroidx/compose/material/ripple/RippleNode;->bounded:Z

    .line 57
    .line 58
    iget-object v3, p0, Landroidx/compose/material/ripple/RippleNode;->rippleAlpha:Landroidx/compose/material3/DelegatingThemeAwareRippleNode$$ExternalSyntheticLambda0;

    .line 59
    .line 60
    invoke-direct {p2, v2, v3}, Landroidx/compose/material/ripple/StateLayer;-><init>(ZLandroidx/compose/material3/DelegatingThemeAwareRippleNode$$ExternalSyntheticLambda0;)V

    .line 61
    .line 62
    .line 63
    invoke-static {p0}, Landroidx/compose/ui/node/HitTestResultKt;->invalidateDraw(Landroidx/compose/ui/node/DrawModifierNode;)V

    .line 64
    .line 65
    .line 66
    iput-object p2, p0, Landroidx/compose/material/ripple/RippleNode;->stateLayer:Landroidx/compose/material/ripple/StateLayer;

    .line 67
    .line 68
    :cond_2
    iget-object p0, p2, Landroidx/compose/material/ripple/StateLayer;->interactions:Ljava/util/ArrayList;

    .line 69
    .line 70
    instance-of v2, p1, Landroidx/compose/foundation/interaction/HoverInteraction$Enter;

    .line 71
    .line 72
    if-eqz v2, :cond_3

    .line 73
    .line 74
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_3
    instance-of v2, p1, Landroidx/compose/foundation/interaction/HoverInteraction$Exit;

    .line 79
    .line 80
    if-eqz v2, :cond_4

    .line 81
    .line 82
    check-cast p1, Landroidx/compose/foundation/interaction/HoverInteraction$Exit;

    .line 83
    .line 84
    iget-object p1, p1, Landroidx/compose/foundation/interaction/HoverInteraction$Exit;->enter:Landroidx/compose/foundation/interaction/HoverInteraction$Enter;

    .line 85
    .line 86
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_4
    instance-of v2, p1, Landroidx/compose/foundation/interaction/FocusInteraction$Focus;

    .line 91
    .line 92
    if-eqz v2, :cond_5

    .line 93
    .line 94
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_5
    instance-of v2, p1, Landroidx/compose/foundation/interaction/FocusInteraction$Unfocus;

    .line 99
    .line 100
    if-eqz v2, :cond_6

    .line 101
    .line 102
    check-cast p1, Landroidx/compose/foundation/interaction/FocusInteraction$Unfocus;

    .line 103
    .line 104
    iget-object p1, p1, Landroidx/compose/foundation/interaction/FocusInteraction$Unfocus;->focus:Landroidx/compose/foundation/interaction/FocusInteraction$Focus;

    .line 105
    .line 106
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_6
    instance-of v2, p1, Landroidx/compose/foundation/interaction/DragInteraction$Start;

    .line 111
    .line 112
    if-eqz v2, :cond_7

    .line 113
    .line 114
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_7
    instance-of v2, p1, Landroidx/compose/foundation/interaction/DragInteraction$Stop;

    .line 119
    .line 120
    if-eqz v2, :cond_8

    .line 121
    .line 122
    check-cast p1, Landroidx/compose/foundation/interaction/DragInteraction$Stop;

    .line 123
    .line 124
    iget-object p1, p1, Landroidx/compose/foundation/interaction/DragInteraction$Stop;->start:Landroidx/compose/foundation/interaction/DragInteraction$Start;

    .line 125
    .line 126
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    goto :goto_0

    .line 130
    :cond_8
    instance-of v2, p1, Landroidx/compose/foundation/interaction/DragInteraction$Cancel;

    .line 131
    .line 132
    if-eqz v2, :cond_13

    .line 133
    .line 134
    check-cast p1, Landroidx/compose/foundation/interaction/DragInteraction$Cancel;

    .line 135
    .line 136
    iget-object p1, p1, Landroidx/compose/foundation/interaction/DragInteraction$Cancel;->start:Landroidx/compose/foundation/interaction/DragInteraction$Start;

    .line 137
    .line 138
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    :goto_0
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object p0

    .line 145
    check-cast p0, Landroidx/compose/foundation/interaction/Interaction;

    .line 146
    .line 147
    iget-object p1, p2, Landroidx/compose/material/ripple/StateLayer;->currentInteraction:Landroidx/compose/foundation/interaction/Interaction;

    .line 148
    .line 149
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    move-result p1

    .line 153
    if-nez p1, :cond_13

    .line 154
    .line 155
    const/4 p1, 0x3

    .line 156
    const/4 v2, 0x0

    .line 157
    const/4 v3, 0x0

    .line 158
    if-eqz p0, :cond_f

    .line 159
    .line 160
    iget-object v4, p2, Landroidx/compose/material/ripple/StateLayer;->rippleAlpha:Landroidx/compose/material3/DelegatingThemeAwareRippleNode$$ExternalSyntheticLambda0;

    .line 161
    .line 162
    invoke-virtual {v4}, Landroidx/compose/material3/DelegatingThemeAwareRippleNode$$ExternalSyntheticLambda0;->invoke()Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    instance-of v4, p0, Landroidx/compose/foundation/interaction/HoverInteraction$Enter;

    .line 166
    .line 167
    if-eqz v4, :cond_9

    .line 168
    .line 169
    const v5, 0x3da3d70a    # 0.08f

    .line 170
    .line 171
    .line 172
    goto :goto_1

    .line 173
    :cond_9
    instance-of v5, p0, Landroidx/compose/foundation/interaction/FocusInteraction$Focus;

    .line 174
    .line 175
    if-eqz v5, :cond_a

    .line 176
    .line 177
    const v5, 0x3dcccccd    # 0.1f

    .line 178
    .line 179
    .line 180
    goto :goto_1

    .line 181
    :cond_a
    instance-of v5, p0, Landroidx/compose/foundation/interaction/DragInteraction$Start;

    .line 182
    .line 183
    if-eqz v5, :cond_b

    .line 184
    .line 185
    const v5, 0x3e23d70a    # 0.16f

    .line 186
    .line 187
    .line 188
    goto :goto_1

    .line 189
    :cond_b
    const/4 v5, 0x0

    .line 190
    :goto_1
    sget-object v6, Landroidx/compose/material/ripple/RippleKt;->DefaultTweenSpec:Landroidx/compose/animation/core/TweenSpec;

    .line 191
    .line 192
    if-eqz v4, :cond_c

    .line 193
    .line 194
    goto :goto_2

    .line 195
    :cond_c
    instance-of v4, p0, Landroidx/compose/foundation/interaction/FocusInteraction$Focus;

    .line 196
    .line 197
    const/16 v7, 0x2d

    .line 198
    .line 199
    if-eqz v4, :cond_d

    .line 200
    .line 201
    new-instance v6, Landroidx/compose/animation/core/TweenSpec;

    .line 202
    .line 203
    sget-object v4, Landroidx/compose/animation/core/EasingKt;->LinearEasing:Landroidx/compose/foundation/layout/Arrangement$$ExternalSyntheticLambda0;

    .line 204
    .line 205
    invoke-direct {v6, v7, v2, v4}, Landroidx/compose/animation/core/TweenSpec;-><init>(IILandroidx/compose/animation/core/Easing;)V

    .line 206
    .line 207
    .line 208
    goto :goto_2

    .line 209
    :cond_d
    instance-of v4, p0, Landroidx/compose/foundation/interaction/DragInteraction$Start;

    .line 210
    .line 211
    if-eqz v4, :cond_e

    .line 212
    .line 213
    new-instance v6, Landroidx/compose/animation/core/TweenSpec;

    .line 214
    .line 215
    sget-object v4, Landroidx/compose/animation/core/EasingKt;->LinearEasing:Landroidx/compose/foundation/layout/Arrangement$$ExternalSyntheticLambda0;

    .line 216
    .line 217
    invoke-direct {v6, v7, v2, v4}, Landroidx/compose/animation/core/TweenSpec;-><init>(IILandroidx/compose/animation/core/Easing;)V

    .line 218
    .line 219
    .line 220
    :cond_e
    :goto_2
    new-instance v2, Landroidx/compose/material/ripple/StateLayer$handleInteraction$1;

    .line 221
    .line 222
    invoke-direct {v2, p2, v5, v6, v3}, Landroidx/compose/material/ripple/StateLayer$handleInteraction$1;-><init>(Landroidx/compose/material/ripple/StateLayer;FLandroidx/compose/animation/core/AnimationSpec;Lkotlin/coroutines/Continuation;)V

    .line 223
    .line 224
    .line 225
    invoke-static {v1, v3, v3, v2, p1}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 226
    .line 227
    .line 228
    goto :goto_4

    .line 229
    :cond_f
    iget-object v4, p2, Landroidx/compose/material/ripple/StateLayer;->currentInteraction:Landroidx/compose/foundation/interaction/Interaction;

    .line 230
    .line 231
    sget-object v5, Landroidx/compose/material/ripple/RippleKt;->DefaultTweenSpec:Landroidx/compose/animation/core/TweenSpec;

    .line 232
    .line 233
    instance-of v6, v4, Landroidx/compose/foundation/interaction/HoverInteraction$Enter;

    .line 234
    .line 235
    if-eqz v6, :cond_10

    .line 236
    .line 237
    goto :goto_3

    .line 238
    :cond_10
    instance-of v6, v4, Landroidx/compose/foundation/interaction/FocusInteraction$Focus;

    .line 239
    .line 240
    if-eqz v6, :cond_11

    .line 241
    .line 242
    goto :goto_3

    .line 243
    :cond_11
    instance-of v4, v4, Landroidx/compose/foundation/interaction/DragInteraction$Start;

    .line 244
    .line 245
    if-eqz v4, :cond_12

    .line 246
    .line 247
    new-instance v5, Landroidx/compose/animation/core/TweenSpec;

    .line 248
    .line 249
    const/16 v4, 0x96

    .line 250
    .line 251
    sget-object v6, Landroidx/compose/animation/core/EasingKt;->LinearEasing:Landroidx/compose/foundation/layout/Arrangement$$ExternalSyntheticLambda0;

    .line 252
    .line 253
    invoke-direct {v5, v4, v2, v6}, Landroidx/compose/animation/core/TweenSpec;-><init>(IILandroidx/compose/animation/core/Easing;)V

    .line 254
    .line 255
    .line 256
    :cond_12
    :goto_3
    new-instance v2, Landroidx/compose/material/ripple/StateLayer$handleInteraction$2;

    .line 257
    .line 258
    invoke-direct {v2, p2, v5, v3}, Landroidx/compose/material/ripple/StateLayer$handleInteraction$2;-><init>(Landroidx/compose/material/ripple/StateLayer;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/coroutines/Continuation;)V

    .line 259
    .line 260
    .line 261
    invoke-static {v1, v3, v3, v2, p1}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 262
    .line 263
    .line 264
    :goto_4
    iput-object p0, p2, Landroidx/compose/material/ripple/StateLayer;->currentInteraction:Landroidx/compose/foundation/interaction/Interaction;

    .line 265
    .line 266
    :cond_13
    :goto_5
    return-object v0

    .line 267
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
