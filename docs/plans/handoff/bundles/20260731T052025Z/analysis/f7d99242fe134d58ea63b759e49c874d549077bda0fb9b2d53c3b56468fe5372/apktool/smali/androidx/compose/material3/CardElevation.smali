.class public final Landroidx/compose/material3/CardElevation;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final defaultElevation:F

.field public final disabledElevation:F

.field public final draggedElevation:F

.field public final focusedElevation:F

.field public final hoveredElevation:F

.field public final pressedElevation:F


# direct methods
.method public constructor <init>(FFFFFF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Landroidx/compose/material3/CardElevation;->defaultElevation:F

    .line 5
    .line 6
    iput p2, p0, Landroidx/compose/material3/CardElevation;->pressedElevation:F

    .line 7
    .line 8
    iput p3, p0, Landroidx/compose/material3/CardElevation;->focusedElevation:F

    .line 9
    .line 10
    iput p4, p0, Landroidx/compose/material3/CardElevation;->hoveredElevation:F

    .line 11
    .line 12
    iput p5, p0, Landroidx/compose/material3/CardElevation;->draggedElevation:F

    .line 13
    .line 14
    iput p6, p0, Landroidx/compose/material3/CardElevation;->disabledElevation:F

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    if-eqz p1, :cond_7

    .line 5
    .line 6
    instance-of v0, p1, Landroidx/compose/material3/CardElevation;

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    goto :goto_1

    .line 11
    :cond_1
    check-cast p1, Landroidx/compose/material3/CardElevation;

    .line 12
    .line 13
    iget v0, p1, Landroidx/compose/material3/CardElevation;->defaultElevation:F

    .line 14
    .line 15
    iget v1, p0, Landroidx/compose/material3/CardElevation;->defaultElevation:F

    .line 16
    .line 17
    invoke-static {v1, v0}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_2

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_2
    iget v0, p0, Landroidx/compose/material3/CardElevation;->pressedElevation:F

    .line 25
    .line 26
    iget v1, p1, Landroidx/compose/material3/CardElevation;->pressedElevation:F

    .line 27
    .line 28
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-nez v0, :cond_3

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_3
    iget v0, p0, Landroidx/compose/material3/CardElevation;->focusedElevation:F

    .line 36
    .line 37
    iget v1, p1, Landroidx/compose/material3/CardElevation;->focusedElevation:F

    .line 38
    .line 39
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-nez v0, :cond_4

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_4
    iget v0, p0, Landroidx/compose/material3/CardElevation;->hoveredElevation:F

    .line 47
    .line 48
    iget v1, p1, Landroidx/compose/material3/CardElevation;->hoveredElevation:F

    .line 49
    .line 50
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-nez v0, :cond_5

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_5
    iget p0, p0, Landroidx/compose/material3/CardElevation;->disabledElevation:F

    .line 58
    .line 59
    iget p1, p1, Landroidx/compose/material3/CardElevation;->disabledElevation:F

    .line 60
    .line 61
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    .line 62
    .line 63
    .line 64
    move-result p0

    .line 65
    if-nez p0, :cond_6

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_6
    :goto_0
    const/4 p0, 0x1

    .line 69
    return p0

    .line 70
    :cond_7
    :goto_1
    const/4 p0, 0x0

    .line 71
    return p0
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget v0, p0, Landroidx/compose/material3/CardElevation;->defaultElevation:F

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x1f

    .line 8
    .line 9
    mul-int/2addr v0, v1

    .line 10
    iget v2, p0, Landroidx/compose/material3/CardElevation;->pressedElevation:F

    .line 11
    .line 12
    invoke-static {v0, v2, v1}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(IFI)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iget v2, p0, Landroidx/compose/material3/CardElevation;->focusedElevation:F

    .line 17
    .line 18
    invoke-static {v0, v2, v1}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(IFI)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iget v2, p0, Landroidx/compose/material3/CardElevation;->hoveredElevation:F

    .line 23
    .line 24
    invoke-static {v0, v2, v1}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(IFI)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    iget p0, p0, Landroidx/compose/material3/CardElevation;->disabledElevation:F

    .line 29
    .line 30
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    add-int/2addr p0, v0

    .line 35
    return p0
.end method

.method public final shadowElevation$material3(ZLandroidx/compose/foundation/interaction/MutableInteractionSourceImpl;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;
    .locals 14

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    move/from16 v1, p4

    .line 4
    .line 5
    move-object/from16 v8, p3

    .line 6
    .line 7
    check-cast v8, Landroidx/compose/runtime/GapComposer;

    .line 8
    .line 9
    const v2, -0x691c96f5

    .line 10
    .line 11
    .line 12
    invoke-virtual {v8, v2}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 13
    .line 14
    .line 15
    iget v2, p0, Landroidx/compose/material3/CardElevation;->defaultElevation:F

    .line 16
    .line 17
    sget-object v5, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 18
    .line 19
    const/4 v9, 0x0

    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    const v0, 0x9ffae2b

    .line 23
    .line 24
    .line 25
    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    if-ne v0, v5, :cond_0

    .line 33
    .line 34
    new-instance v0, Landroidx/compose/ui/unit/Dp;

    .line 35
    .line 36
    invoke-direct {v0, v2}, Landroidx/compose/ui/unit/Dp;-><init>(F)V

    .line 37
    .line 38
    .line 39
    invoke-static {v0}, Landroidx/compose/runtime/Updater;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    :cond_0
    check-cast v0, Landroidx/compose/runtime/MutableState;

    .line 47
    .line 48
    invoke-virtual {v8, v9}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v8, v9}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 52
    .line 53
    .line 54
    return-object v0

    .line 55
    :cond_1
    const v6, 0xa00cb77

    .line 56
    .line 57
    .line 58
    invoke-virtual {v8, v6}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v8, v9}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v6

    .line 68
    if-ne v6, v5, :cond_2

    .line 69
    .line 70
    new-instance v6, Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 71
    .line 72
    invoke-direct {v6}, Landroidx/compose/runtime/snapshots/SnapshotStateList;-><init>()V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v8, v6}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    :cond_2
    check-cast v6, Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 79
    .line 80
    and-int/lit8 v7, v1, 0x70

    .line 81
    .line 82
    xor-int/lit8 v7, v7, 0x30

    .line 83
    .line 84
    const/16 v10, 0x20

    .line 85
    .line 86
    const/4 v11, 0x1

    .line 87
    if-le v7, v10, :cond_3

    .line 88
    .line 89
    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v7

    .line 93
    if-nez v7, :cond_4

    .line 94
    .line 95
    :cond_3
    and-int/lit8 v7, v1, 0x30

    .line 96
    .line 97
    if-ne v7, v10, :cond_5

    .line 98
    .line 99
    :cond_4
    move v7, v11

    .line 100
    goto :goto_0

    .line 101
    :cond_5
    move v7, v9

    .line 102
    :goto_0
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v10

    .line 106
    const/4 v12, 0x0

    .line 107
    if-nez v7, :cond_6

    .line 108
    .line 109
    if-ne v10, v5, :cond_7

    .line 110
    .line 111
    :cond_6
    new-instance v10, Landroidx/compose/material3/CardElevation$animateElevation$1$1;

    .line 112
    .line 113
    invoke-direct {v10, v0, v6, v12, v9}, Landroidx/compose/material3/CardElevation$animateElevation$1$1;-><init>(Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;Landroidx/compose/runtime/snapshots/SnapshotStateList;Lkotlin/coroutines/Continuation;I)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v8, v10}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    :cond_7
    check-cast v10, Lkotlin/jvm/functions/Function2;

    .line 120
    .line 121
    invoke-static {v8, v0, v10}, Landroidx/compose/runtime/Updater;->LaunchedEffect(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 122
    .line 123
    .line 124
    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    check-cast v0, Landroidx/compose/foundation/interaction/Interaction;

    .line 129
    .line 130
    if-nez p1, :cond_8

    .line 131
    .line 132
    iget v2, p0, Landroidx/compose/material3/CardElevation;->disabledElevation:F

    .line 133
    .line 134
    goto :goto_1

    .line 135
    :cond_8
    instance-of v6, v0, Landroidx/compose/foundation/interaction/PressInteraction$Press;

    .line 136
    .line 137
    if-eqz v6, :cond_9

    .line 138
    .line 139
    iget v2, p0, Landroidx/compose/material3/CardElevation;->pressedElevation:F

    .line 140
    .line 141
    goto :goto_1

    .line 142
    :cond_9
    instance-of v6, v0, Landroidx/compose/foundation/interaction/HoverInteraction$Enter;

    .line 143
    .line 144
    if-eqz v6, :cond_a

    .line 145
    .line 146
    iget v2, p0, Landroidx/compose/material3/CardElevation;->hoveredElevation:F

    .line 147
    .line 148
    goto :goto_1

    .line 149
    :cond_a
    instance-of v6, v0, Landroidx/compose/foundation/interaction/FocusInteraction$Focus;

    .line 150
    .line 151
    if-eqz v6, :cond_b

    .line 152
    .line 153
    iget v2, p0, Landroidx/compose/material3/CardElevation;->focusedElevation:F

    .line 154
    .line 155
    goto :goto_1

    .line 156
    :cond_b
    instance-of v6, v0, Landroidx/compose/foundation/interaction/DragInteraction$Start;

    .line 157
    .line 158
    if-eqz v6, :cond_c

    .line 159
    .line 160
    iget v2, p0, Landroidx/compose/material3/CardElevation;->draggedElevation:F

    .line 161
    .line 162
    :cond_c
    :goto_1
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v6

    .line 166
    if-ne v6, v5, :cond_d

    .line 167
    .line 168
    new-instance v6, Landroidx/compose/animation/core/Animatable;

    .line 169
    .line 170
    new-instance v7, Landroidx/compose/ui/unit/Dp;

    .line 171
    .line 172
    invoke-direct {v7, v2}, Landroidx/compose/ui/unit/Dp;-><init>(F)V

    .line 173
    .line 174
    .line 175
    sget-object v10, Landroidx/compose/animation/core/ArcSplineKt;->DpToVector:Landroidx/compose/animation/core/TwoWayConverterImpl;

    .line 176
    .line 177
    const/16 v13, 0xc

    .line 178
    .line 179
    invoke-direct {v6, v7, v10, v12, v13}, Landroidx/compose/animation/core/Animatable;-><init>(Ljava/lang/Object;Landroidx/compose/animation/core/TwoWayConverterImpl;Ljava/lang/Object;I)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v8, v6}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 183
    .line 184
    .line 185
    :cond_d
    check-cast v6, Landroidx/compose/animation/core/Animatable;

    .line 186
    .line 187
    new-instance v10, Landroidx/compose/ui/unit/Dp;

    .line 188
    .line 189
    invoke-direct {v10, v2}, Landroidx/compose/ui/unit/Dp;-><init>(F)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v8, v6}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 193
    .line 194
    .line 195
    move-result v7

    .line 196
    invoke-virtual {v8, v2}, Landroidx/compose/runtime/GapComposer;->changed(F)Z

    .line 197
    .line 198
    .line 199
    move-result v12

    .line 200
    or-int/2addr v7, v12

    .line 201
    and-int/lit8 v12, v1, 0xe

    .line 202
    .line 203
    xor-int/lit8 v12, v12, 0x6

    .line 204
    .line 205
    const/4 v13, 0x4

    .line 206
    if-le v12, v13, :cond_e

    .line 207
    .line 208
    invoke-virtual {v8, p1}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 209
    .line 210
    .line 211
    move-result v12

    .line 212
    if-nez v12, :cond_f

    .line 213
    .line 214
    :cond_e
    and-int/lit8 v12, v1, 0x6

    .line 215
    .line 216
    if-ne v12, v13, :cond_10

    .line 217
    .line 218
    :cond_f
    move v12, v11

    .line 219
    goto :goto_2

    .line 220
    :cond_10
    move v12, v9

    .line 221
    :goto_2
    or-int/2addr v7, v12

    .line 222
    and-int/lit16 v12, v1, 0x380

    .line 223
    .line 224
    xor-int/lit16 v12, v12, 0x180

    .line 225
    .line 226
    const/16 v13, 0x100

    .line 227
    .line 228
    if-le v12, v13, :cond_11

    .line 229
    .line 230
    invoke-virtual {v8, p0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 231
    .line 232
    .line 233
    move-result v12

    .line 234
    if-nez v12, :cond_13

    .line 235
    .line 236
    :cond_11
    and-int/lit16 v1, v1, 0x180

    .line 237
    .line 238
    if-ne v1, v13, :cond_12

    .line 239
    .line 240
    goto :goto_3

    .line 241
    :cond_12
    move v11, v9

    .line 242
    :cond_13
    :goto_3
    or-int v1, v7, v11

    .line 243
    .line 244
    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 245
    .line 246
    .line 247
    move-result v7

    .line 248
    or-int/2addr v1, v7

    .line 249
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    move-result-object v7

    .line 253
    if-nez v1, :cond_14

    .line 254
    .line 255
    if-ne v7, v5, :cond_15

    .line 256
    .line 257
    :cond_14
    move-object v5, v0

    .line 258
    goto :goto_4

    .line 259
    :cond_15
    move-object v1, v6

    .line 260
    goto :goto_5

    .line 261
    :goto_4
    new-instance v0, Landroidx/compose/material3/CardElevation$animateElevation$2$1;

    .line 262
    .line 263
    move-object v1, v6

    .line 264
    const/4 v6, 0x0

    .line 265
    const/4 v7, 0x0

    .line 266
    move-object v4, p0

    .line 267
    move v3, p1

    .line 268
    invoke-direct/range {v0 .. v7}, Landroidx/compose/material3/CardElevation$animateElevation$2$1;-><init>(Landroidx/compose/animation/core/Animatable;FZLjava/lang/Object;Landroidx/compose/foundation/interaction/Interaction;Lkotlin/coroutines/Continuation;I)V

    .line 269
    .line 270
    .line 271
    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 272
    .line 273
    .line 274
    move-object v7, v0

    .line 275
    :goto_5
    check-cast v7, Lkotlin/jvm/functions/Function2;

    .line 276
    .line 277
    invoke-static {v8, v10, v7}, Landroidx/compose/runtime/Updater;->LaunchedEffect(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 278
    .line 279
    .line 280
    iget-object v0, v1, Landroidx/compose/animation/core/Animatable;->internalState:Landroidx/compose/animation/core/AnimationState;

    .line 281
    .line 282
    invoke-virtual {v8, v9}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 283
    .line 284
    .line 285
    return-object v0
.end method
