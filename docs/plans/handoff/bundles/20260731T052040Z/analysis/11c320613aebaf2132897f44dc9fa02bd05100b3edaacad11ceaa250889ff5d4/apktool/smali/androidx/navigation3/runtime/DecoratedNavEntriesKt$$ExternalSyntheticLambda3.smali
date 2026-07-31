.class public final synthetic Landroidx/navigation3/runtime/DecoratedNavEntriesKt$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Ljava/lang/Object;

.field public final synthetic f$3:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 16
    iput p5, p0, Landroidx/navigation3/runtime/DecoratedNavEntriesKt$$ExternalSyntheticLambda3;->$r8$classId:I

    iput-object p1, p0, Landroidx/navigation3/runtime/DecoratedNavEntriesKt$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/navigation3/runtime/DecoratedNavEntriesKt$$ExternalSyntheticLambda3;->f$2:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/navigation3/runtime/DecoratedNavEntriesKt$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    iput-object p4, p0, Landroidx/navigation3/runtime/DecoratedNavEntriesKt$$ExternalSyntheticLambda3;->f$3:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/Set;Ljava/lang/Object;Ljava/util/Set;Landroidx/compose/runtime/MutableState;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroidx/navigation3/runtime/DecoratedNavEntriesKt$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Landroidx/navigation3/runtime/DecoratedNavEntriesKt$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p2, p0, Landroidx/navigation3/runtime/DecoratedNavEntriesKt$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p3, p0, Landroidx/navigation3/runtime/DecoratedNavEntriesKt$$ExternalSyntheticLambda3;->f$2:Ljava/lang/Object;

    .line 12
    .line 13
    iput-object p4, p0, Landroidx/navigation3/runtime/DecoratedNavEntriesKt$$ExternalSyntheticLambda3;->f$3:Ljava/lang/Object;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    iget v0, p0, Landroidx/navigation3/runtime/DecoratedNavEntriesKt$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/navigation3/runtime/DecoratedNavEntriesKt$$ExternalSyntheticLambda3;->f$3:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v3, p0, Landroidx/navigation3/runtime/DecoratedNavEntriesKt$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    .line 8
    .line 9
    iget-object v4, p0, Landroidx/navigation3/runtime/DecoratedNavEntriesKt$$ExternalSyntheticLambda3;->f$2:Ljava/lang/Object;

    .line 10
    .line 11
    iget-object p0, p0, Landroidx/navigation3/runtime/DecoratedNavEntriesKt$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    .line 12
    .line 13
    packed-switch v0, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    check-cast p0, Lkotlin/jvm/internal/Ref$FloatRef;

    .line 17
    .line 18
    check-cast v4, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;

    .line 19
    .line 20
    check-cast v3, Landroidx/compose/foundation/gestures/ScrollingLogic$nestedScrollScope$1;

    .line 21
    .line 22
    check-cast v2, Landroidx/navigation3/runtime/DecoratedNavEntriesKt$$ExternalSyntheticLambda1;

    .line 23
    .line 24
    check-cast p1, Landroidx/compose/animation/core/AnimationScope;

    .line 25
    .line 26
    iget-object v0, p1, Landroidx/compose/animation/core/AnimationScope;->value$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 27
    .line 28
    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Ljava/lang/Number;

    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    iget v5, p0, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 39
    .line 40
    sub-float/2addr v0, v5

    .line 41
    invoke-static {v0}, Landroidx/compose/foundation/gestures/ScrollableKt;->access$isLowScrollingDelta(F)Z

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    if-nez v5, :cond_1

    .line 46
    .line 47
    invoke-virtual {v4, v3, v0}, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;->dispatchMouseWheelScroll(Landroidx/compose/foundation/gestures/ScrollingLogic$nestedScrollScope$1;F)F

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    sub-float v3, v0, v3

    .line 52
    .line 53
    invoke-static {v3}, Landroidx/compose/foundation/gestures/ScrollableKt;->access$isLowScrollingDelta(F)Z

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    if-nez v3, :cond_0

    .line 58
    .line 59
    invoke-virtual {p1}, Landroidx/compose/animation/core/AnimationScope;->cancelAnimation()V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_0
    iget v3, p0, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 64
    .line 65
    add-float/2addr v3, v0

    .line 66
    iput v3, p0, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 67
    .line 68
    :cond_1
    iget p0, p0, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 69
    .line 70
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    invoke-virtual {v2, p0}, Landroidx/navigation3/runtime/DecoratedNavEntriesKt$$ExternalSyntheticLambda1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    check-cast p0, Ljava/lang/Boolean;

    .line 79
    .line 80
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 81
    .line 82
    .line 83
    move-result p0

    .line 84
    if-eqz p0, :cond_2

    .line 85
    .line 86
    invoke-virtual {p1}, Landroidx/compose/animation/core/AnimationScope;->cancelAnimation()V

    .line 87
    .line 88
    .line 89
    :cond_2
    :goto_0
    return-object v1

    .line 90
    :pswitch_0
    check-cast p0, Lkotlin/jvm/internal/Ref$FloatRef;

    .line 91
    .line 92
    check-cast v4, Landroidx/compose/foundation/gestures/ScrollScope;

    .line 93
    .line 94
    check-cast v3, Lkotlin/jvm/internal/Ref$FloatRef;

    .line 95
    .line 96
    check-cast v2, Landroidx/compose/foundation/gestures/DefaultFlingBehavior;

    .line 97
    .line 98
    check-cast p1, Landroidx/compose/animation/core/AnimationScope;

    .line 99
    .line 100
    iget-object v0, p1, Landroidx/compose/animation/core/AnimationScope;->value$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 101
    .line 102
    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    check-cast v0, Ljava/lang/Number;

    .line 107
    .line 108
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    iget v5, p0, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 113
    .line 114
    sub-float/2addr v0, v5

    .line 115
    invoke-interface {v4, v0}, Landroidx/compose/foundation/gestures/ScrollScope;->scrollBy(F)F

    .line 116
    .line 117
    .line 118
    move-result v4

    .line 119
    iget-object v5, p1, Landroidx/compose/animation/core/AnimationScope;->value$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 120
    .line 121
    invoke-virtual {v5}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v5

    .line 125
    check-cast v5, Ljava/lang/Number;

    .line 126
    .line 127
    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    .line 128
    .line 129
    .line 130
    move-result v5

    .line 131
    iput v5, p0, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 132
    .line 133
    iget-object p0, p1, Landroidx/compose/animation/core/AnimationScope;->typeConverter:Landroidx/compose/animation/core/TwoWayConverterImpl;

    .line 134
    .line 135
    iget-object p0, p0, Landroidx/compose/animation/core/TwoWayConverterImpl;->convertFromVector:Lkotlin/jvm/functions/Function1;

    .line 136
    .line 137
    iget-object v5, p1, Landroidx/compose/animation/core/AnimationScope;->velocityVector:Landroidx/compose/animation/core/AnimationVector;

    .line 138
    .line 139
    invoke-interface {p0, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object p0

    .line 143
    check-cast p0, Ljava/lang/Number;

    .line 144
    .line 145
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    .line 146
    .line 147
    .line 148
    move-result p0

    .line 149
    iput p0, v3, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 150
    .line 151
    sub-float/2addr v0, v4

    .line 152
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 153
    .line 154
    .line 155
    move-result p0

    .line 156
    const/high16 v0, 0x3f000000    # 0.5f

    .line 157
    .line 158
    cmpl-float p0, p0, v0

    .line 159
    .line 160
    if-lez p0, :cond_3

    .line 161
    .line 162
    invoke-virtual {p1}, Landroidx/compose/animation/core/AnimationScope;->cancelAnimation()V

    .line 163
    .line 164
    .line 165
    :cond_3
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 166
    .line 167
    .line 168
    return-object v1

    .line 169
    :pswitch_1
    check-cast p0, Landroidx/compose/animation/core/Animatable;

    .line 170
    .line 171
    check-cast v4, Landroidx/compose/animation/core/AnimationState;

    .line 172
    .line 173
    check-cast v3, Lkotlin/jvm/functions/Function1;

    .line 174
    .line 175
    check-cast v2, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 176
    .line 177
    check-cast p1, Landroidx/compose/animation/core/AnimationScope;

    .line 178
    .line 179
    iget-object v0, p0, Landroidx/compose/animation/core/Animatable;->internalState:Landroidx/compose/animation/core/AnimationState;

    .line 180
    .line 181
    invoke-static {p1, v0}, Landroidx/compose/animation/core/ArcSplineKt;->updateState(Landroidx/compose/animation/core/AnimationScope;Landroidx/compose/animation/core/AnimationState;)V

    .line 182
    .line 183
    .line 184
    iget-object v0, p1, Landroidx/compose/animation/core/AnimationScope;->value$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 185
    .line 186
    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v5

    .line 190
    invoke-static {p0, v5}, Landroidx/compose/animation/core/Animatable;->access$clampToBounds(Landroidx/compose/animation/core/Animatable;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object v5

    .line 194
    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 199
    .line 200
    .line 201
    move-result v0

    .line 202
    if-nez v0, :cond_5

    .line 203
    .line 204
    iget-object v0, p0, Landroidx/compose/animation/core/Animatable;->internalState:Landroidx/compose/animation/core/AnimationState;

    .line 205
    .line 206
    iget-object v0, v0, Landroidx/compose/animation/core/AnimationState;->value$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 207
    .line 208
    invoke-virtual {v0, v5}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    .line 209
    .line 210
    .line 211
    iget-object v0, v4, Landroidx/compose/animation/core/AnimationState;->value$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 212
    .line 213
    invoke-virtual {v0, v5}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    .line 214
    .line 215
    .line 216
    if-eqz v3, :cond_4

    .line 217
    .line 218
    invoke-interface {v3, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    :cond_4
    invoke-virtual {p1}, Landroidx/compose/animation/core/AnimationScope;->cancelAnimation()V

    .line 222
    .line 223
    .line 224
    const/4 p0, 0x1

    .line 225
    iput-boolean p0, v2, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 226
    .line 227
    goto :goto_1

    .line 228
    :cond_5
    if-eqz v3, :cond_6

    .line 229
    .line 230
    invoke-interface {v3, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    :cond_6
    :goto_1
    return-object v1

    .line 234
    :pswitch_2
    check-cast p0, Ljava/util/Set;

    .line 235
    .line 236
    check-cast v4, Ljava/util/Set;

    .line 237
    .line 238
    check-cast v2, Landroidx/compose/runtime/MutableState;

    .line 239
    .line 240
    check-cast p1, Landroidx/compose/runtime/DisposableEffectScope;

    .line 241
    .line 242
    invoke-interface {p0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 243
    .line 244
    .line 245
    new-instance p1, Landroidx/navigation3/runtime/DecoratedNavEntriesKt$decorateEntry$lambda$1$0$0$$inlined$onDispose$1;

    .line 246
    .line 247
    invoke-direct {p1, p0, v3, v4, v2}, Landroidx/navigation3/runtime/DecoratedNavEntriesKt$decorateEntry$lambda$1$0$0$$inlined$onDispose$1;-><init>(Ljava/util/Set;Ljava/lang/Object;Ljava/util/Set;Landroidx/compose/runtime/MutableState;)V

    .line 248
    .line 249
    .line 250
    return-object p1

    .line 251
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
