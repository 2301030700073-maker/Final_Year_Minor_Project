.class public final synthetic Landroidx/compose/foundation/ScrollNode$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(IILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 14
    iput p2, p0, Landroidx/compose/foundation/ScrollNode$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p3, p0, Landroidx/compose/foundation/ScrollNode$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput p1, p0, Landroidx/compose/foundation/ScrollNode$$ExternalSyntheticLambda0;->f$1:I

    iput-object p4, p0, Landroidx/compose/foundation/ScrollNode$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/foundation/text/VerticalScrollLayoutModifier;Landroidx/compose/ui/layout/Placeable;I)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Landroidx/compose/foundation/ScrollNode$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Landroidx/compose/foundation/ScrollNode$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p2, p0, Landroidx/compose/foundation/ScrollNode$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    .line 10
    .line 11
    iput p3, p0, Landroidx/compose/foundation/ScrollNode$$ExternalSyntheticLambda0;->f$1:I

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Landroidx/compose/foundation/ScrollNode$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 4
    .line 5
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 6
    .line 7
    iget-object v5, v0, Landroidx/compose/foundation/ScrollNode$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    .line 8
    .line 9
    iget v6, v0, Landroidx/compose/foundation/ScrollNode$$ExternalSyntheticLambda0;->f$1:I

    .line 10
    .line 11
    iget-object v0, v0, Landroidx/compose/foundation/ScrollNode$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 12
    .line 13
    packed-switch v1, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    check-cast v0, Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 17
    .line 18
    check-cast v5, Landroidx/collection/MutableObjectIntMap;

    .line 19
    .line 20
    move-object/from16 v1, p1

    .line 21
    .line 22
    check-cast v1, Landroidx/compose/runtime/Composition;

    .line 23
    .line 24
    iget v7, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->currentToken:I

    .line 25
    .line 26
    if-ne v7, v6, :cond_8

    .line 27
    .line 28
    iget-object v7, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->trackedInstances:Landroidx/collection/MutableObjectIntMap;

    .line 29
    .line 30
    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v7

    .line 34
    if-eqz v7, :cond_8

    .line 35
    .line 36
    instance-of v7, v1, Landroidx/compose/runtime/CompositionImpl;

    .line 37
    .line 38
    if-eqz v7, :cond_8

    .line 39
    .line 40
    iget-object v7, v5, Landroidx/collection/MutableObjectIntMap;->metadata:[J

    .line 41
    .line 42
    array-length v8, v7

    .line 43
    add-int/lit8 v8, v8, -0x2

    .line 44
    .line 45
    if-ltz v8, :cond_8

    .line 46
    .line 47
    const/4 v9, 0x0

    .line 48
    :goto_0
    aget-wide v10, v7, v9

    .line 49
    .line 50
    not-long v12, v10

    .line 51
    const/4 v14, 0x7

    .line 52
    shl-long/2addr v12, v14

    .line 53
    and-long/2addr v12, v10

    .line 54
    const-wide v14, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    and-long/2addr v12, v14

    .line 60
    cmp-long v12, v12, v14

    .line 61
    .line 62
    if-eqz v12, :cond_7

    .line 63
    .line 64
    sub-int v12, v9, v8

    .line 65
    .line 66
    not-int v12, v12

    .line 67
    ushr-int/lit8 v12, v12, 0x1f

    .line 68
    .line 69
    const/16 v13, 0x8

    .line 70
    .line 71
    rsub-int/lit8 v12, v12, 0x8

    .line 72
    .line 73
    const/4 v14, 0x0

    .line 74
    :goto_1
    if-ge v14, v12, :cond_6

    .line 75
    .line 76
    const-wide/16 v15, 0xff

    .line 77
    .line 78
    and-long/2addr v15, v10

    .line 79
    const-wide/16 v17, 0x80

    .line 80
    .line 81
    cmp-long v15, v15, v17

    .line 82
    .line 83
    if-gez v15, :cond_4

    .line 84
    .line 85
    shl-int/lit8 v15, v9, 0x3

    .line 86
    .line 87
    add-int/2addr v15, v14

    .line 88
    iget-object v2, v5, Landroidx/collection/MutableObjectIntMap;->keys:[Ljava/lang/Object;

    .line 89
    .line 90
    aget-object v2, v2, v15

    .line 91
    .line 92
    iget-object v4, v5, Landroidx/collection/MutableObjectIntMap;->values:[I

    .line 93
    .line 94
    aget v4, v4, v15

    .line 95
    .line 96
    if-eq v4, v6, :cond_0

    .line 97
    .line 98
    const/4 v4, 0x1

    .line 99
    goto :goto_2

    .line 100
    :cond_0
    const/4 v4, 0x0

    .line 101
    :goto_2
    if-eqz v4, :cond_2

    .line 102
    .line 103
    move/from16 p0, v13

    .line 104
    .line 105
    move-object v13, v1

    .line 106
    check-cast v13, Landroidx/compose/runtime/CompositionImpl;

    .line 107
    .line 108
    move-object/from16 p1, v1

    .line 109
    .line 110
    iget-object v1, v13, Landroidx/compose/runtime/CompositionImpl;->observations:Landroidx/collection/MutableScatterMap;

    .line 111
    .line 112
    invoke-static {v1, v2, v0}, Landroidx/work/OperationKt;->remove-impl(Landroidx/collection/MutableScatterMap;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-object/from16 v18, v3

    .line 116
    .line 117
    instance-of v3, v2, Landroidx/compose/runtime/DerivedSnapshotState;

    .line 118
    .line 119
    if-eqz v3, :cond_3

    .line 120
    .line 121
    move-object v3, v2

    .line 122
    check-cast v3, Landroidx/compose/runtime/DerivedSnapshotState;

    .line 123
    .line 124
    invoke-virtual {v1, v3}, Landroidx/collection/MutableScatterMap;->containsKey(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result v1

    .line 128
    if-nez v1, :cond_1

    .line 129
    .line 130
    iget-object v1, v13, Landroidx/compose/runtime/CompositionImpl;->derivedStates:Landroidx/collection/MutableScatterMap;

    .line 131
    .line 132
    invoke-static {v1, v3}, Landroidx/work/OperationKt;->removeScope-impl(Landroidx/collection/MutableScatterMap;Ljava/lang/Object;)V

    .line 133
    .line 134
    .line 135
    :cond_1
    iget-object v1, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->trackedDependencies:Landroidx/collection/MutableScatterMap;

    .line 136
    .line 137
    if-eqz v1, :cond_3

    .line 138
    .line 139
    invoke-virtual {v1, v2}, Landroidx/collection/MutableScatterMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    goto :goto_3

    .line 143
    :cond_2
    move-object/from16 p1, v1

    .line 144
    .line 145
    move-object/from16 v18, v3

    .line 146
    .line 147
    move/from16 p0, v13

    .line 148
    .line 149
    :cond_3
    :goto_3
    if-eqz v4, :cond_5

    .line 150
    .line 151
    invoke-virtual {v5, v15}, Landroidx/collection/MutableObjectIntMap;->removeValueAt(I)V

    .line 152
    .line 153
    .line 154
    goto :goto_4

    .line 155
    :cond_4
    move-object/from16 p1, v1

    .line 156
    .line 157
    move-object/from16 v18, v3

    .line 158
    .line 159
    move/from16 p0, v13

    .line 160
    .line 161
    :cond_5
    :goto_4
    shr-long v10, v10, p0

    .line 162
    .line 163
    add-int/lit8 v14, v14, 0x1

    .line 164
    .line 165
    move/from16 v13, p0

    .line 166
    .line 167
    move-object/from16 v1, p1

    .line 168
    .line 169
    move-object/from16 v3, v18

    .line 170
    .line 171
    goto :goto_1

    .line 172
    :cond_6
    move-object/from16 p1, v1

    .line 173
    .line 174
    move-object/from16 v18, v3

    .line 175
    .line 176
    move v1, v13

    .line 177
    if-ne v12, v1, :cond_9

    .line 178
    .line 179
    goto :goto_5

    .line 180
    :cond_7
    move-object/from16 p1, v1

    .line 181
    .line 182
    move-object/from16 v18, v3

    .line 183
    .line 184
    :goto_5
    if-eq v9, v8, :cond_9

    .line 185
    .line 186
    add-int/lit8 v9, v9, 0x1

    .line 187
    .line 188
    move-object/from16 v1, p1

    .line 189
    .line 190
    move-object/from16 v3, v18

    .line 191
    .line 192
    goto/16 :goto_0

    .line 193
    .line 194
    :cond_8
    move-object/from16 v18, v3

    .line 195
    .line 196
    :cond_9
    return-object v18

    .line 197
    :pswitch_0
    move-object/from16 v18, v3

    .line 198
    .line 199
    check-cast v0, Landroidx/compose/foundation/text/VerticalScrollLayoutModifier;

    .line 200
    .line 201
    check-cast v5, Landroidx/compose/ui/layout/Placeable;

    .line 202
    .line 203
    move-object/from16 v7, p1

    .line 204
    .line 205
    check-cast v7, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    .line 206
    .line 207
    iget v8, v0, Landroidx/compose/foundation/text/VerticalScrollLayoutModifier;->cursorOffset:I

    .line 208
    .line 209
    iget-object v1, v0, Landroidx/compose/foundation/text/VerticalScrollLayoutModifier;->scrollerPosition:Landroidx/compose/foundation/text/TextFieldScrollerPosition;

    .line 210
    .line 211
    iget-object v9, v0, Landroidx/compose/foundation/text/VerticalScrollLayoutModifier;->transformedText:Landroidx/compose/ui/text/input/TransformedText;

    .line 212
    .line 213
    iget-object v0, v0, Landroidx/compose/foundation/text/VerticalScrollLayoutModifier;->textLayoutResultProvider:Lkotlin/jvm/functions/Function0;

    .line 214
    .line 215
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    check-cast v0, Landroidx/compose/foundation/text/TextLayoutResultProxy;

    .line 220
    .line 221
    if-eqz v0, :cond_a

    .line 222
    .line 223
    iget-object v0, v0, Landroidx/compose/foundation/text/TextLayoutResultProxy;->value:Landroidx/compose/ui/text/TextLayoutResult;

    .line 224
    .line 225
    :goto_6
    move-object v10, v0

    .line 226
    goto :goto_7

    .line 227
    :cond_a
    const/4 v0, 0x0

    .line 228
    goto :goto_6

    .line 229
    :goto_7
    const/4 v11, 0x0

    .line 230
    iget v12, v5, Landroidx/compose/ui/layout/Placeable;->width:I

    .line 231
    .line 232
    invoke-static/range {v7 .. v12}, Landroidx/compose/foundation/text/BasicTextKt;->access$getCursorRectInScroller(Landroidx/compose/ui/layout/Placeable$PlacementScope;ILandroidx/compose/ui/text/input/TransformedText;Landroidx/compose/ui/text/TextLayoutResult;ZI)Landroidx/compose/ui/geometry/Rect;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    sget-object v2, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    .line 237
    .line 238
    iget v3, v5, Landroidx/compose/ui/layout/Placeable;->height:I

    .line 239
    .line 240
    invoke-virtual {v1, v2, v0, v6, v3}, Landroidx/compose/foundation/text/TextFieldScrollerPosition;->update(Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/ui/geometry/Rect;II)V

    .line 241
    .line 242
    .line 243
    iget-object v0, v1, Landroidx/compose/foundation/text/TextFieldScrollerPosition;->offset$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    .line 244
    .line 245
    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;->getFloatValue()F

    .line 246
    .line 247
    .line 248
    move-result v0

    .line 249
    neg-float v0, v0

    .line 250
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 251
    .line 252
    .line 253
    move-result v0

    .line 254
    const/4 v1, 0x0

    .line 255
    invoke-static {v7, v5, v1, v0}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelative$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;II)V

    .line 256
    .line 257
    .line 258
    return-object v18

    .line 259
    :pswitch_1
    move-object/from16 v18, v3

    .line 260
    .line 261
    check-cast v0, Landroidx/compose/foundation/ScrollNode;

    .line 262
    .line 263
    check-cast v5, Landroidx/compose/ui/layout/Placeable;

    .line 264
    .line 265
    move-object/from16 v1, p1

    .line 266
    .line 267
    check-cast v1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    .line 268
    .line 269
    iget-object v2, v0, Landroidx/compose/foundation/ScrollNode;->state:Landroidx/compose/foundation/ScrollState;

    .line 270
    .line 271
    iget-object v2, v2, Landroidx/compose/foundation/ScrollState;->value$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    .line 272
    .line 273
    invoke-virtual {v2}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->getIntValue()I

    .line 274
    .line 275
    .line 276
    move-result v2

    .line 277
    if-gez v2, :cond_b

    .line 278
    .line 279
    const/4 v2, 0x0

    .line 280
    :cond_b
    if-le v2, v6, :cond_c

    .line 281
    .line 282
    goto :goto_8

    .line 283
    :cond_c
    move v6, v2

    .line 284
    :goto_8
    neg-int v2, v6

    .line 285
    iget-boolean v0, v0, Landroidx/compose/foundation/ScrollNode;->isVertical:Z

    .line 286
    .line 287
    if-eqz v0, :cond_d

    .line 288
    .line 289
    const/4 v3, 0x0

    .line 290
    goto :goto_9

    .line 291
    :cond_d
    move v3, v2

    .line 292
    :goto_9
    if-eqz v0, :cond_e

    .line 293
    .line 294
    :goto_a
    const/4 v0, 0x1

    .line 295
    goto :goto_b

    .line 296
    :cond_e
    const/4 v2, 0x0

    .line 297
    goto :goto_a

    .line 298
    :goto_b
    iput-boolean v0, v1, Landroidx/compose/ui/layout/Placeable$PlacementScope;->motionFrameOfReferencePlacement:Z

    .line 299
    .line 300
    invoke-static {v1, v5, v3, v2}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelativeWithLayer$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;II)V

    .line 301
    .line 302
    .line 303
    const/4 v0, 0x0

    .line 304
    iput-boolean v0, v1, Landroidx/compose/ui/layout/Placeable$PlacementScope;->motionFrameOfReferencePlacement:Z

    .line 305
    .line 306
    return-object v18

    .line 307
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
