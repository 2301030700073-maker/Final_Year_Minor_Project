.class public final synthetic Landroidx/compose/runtime/DerivedSnapshotState$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Ljava/lang/Object;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V
    .locals 0

    .line 16
    iput p5, p0, Landroidx/compose/runtime/DerivedSnapshotState$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Landroidx/compose/runtime/DerivedSnapshotState$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/compose/runtime/DerivedSnapshotState$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/compose/runtime/DerivedSnapshotState$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    iput p4, p0, Landroidx/compose/runtime/DerivedSnapshotState$$ExternalSyntheticLambda0;->f$3:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/ArrayList;Landroidx/compose/ui/layout/MeasureScope;ILjava/util/ArrayList;)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    iput v0, p0, Landroidx/compose/runtime/DerivedSnapshotState$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Landroidx/compose/runtime/DerivedSnapshotState$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p2, p0, Landroidx/compose/runtime/DerivedSnapshotState$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 10
    .line 11
    iput p3, p0, Landroidx/compose/runtime/DerivedSnapshotState$$ExternalSyntheticLambda0;->f$3:I

    .line 12
    .line 13
    iput-object p4, p0, Landroidx/compose/runtime/DerivedSnapshotState$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget v2, v0, Landroidx/compose/runtime/DerivedSnapshotState$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x0

    .line 9
    const/4 v5, 0x1

    .line 10
    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 11
    .line 12
    iget-object v7, v0, Landroidx/compose/runtime/DerivedSnapshotState$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    .line 13
    .line 14
    iget v8, v0, Landroidx/compose/runtime/DerivedSnapshotState$$ExternalSyntheticLambda0;->f$3:I

    .line 15
    .line 16
    iget-object v9, v0, Landroidx/compose/runtime/DerivedSnapshotState$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 17
    .line 18
    iget-object v0, v0, Landroidx/compose/runtime/DerivedSnapshotState$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 19
    .line 20
    packed-switch v2, :pswitch_data_0

    .line 21
    .line 22
    .line 23
    check-cast v0, Ljava/util/ArrayList;

    .line 24
    .line 25
    check-cast v9, Landroidx/compose/ui/layout/MeasureScope;

    .line 26
    .line 27
    check-cast v7, Ljava/util/ArrayList;

    .line 28
    .line 29
    check-cast v1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    move v3, v4

    .line 36
    :goto_0
    if-ge v3, v2, :cond_6

    .line 37
    .line 38
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v10

    .line 42
    check-cast v10, Ljava/util/List;

    .line 43
    .line 44
    invoke-interface {v10}, Ljava/util/List;->size()I

    .line 45
    .line 46
    .line 47
    move-result v11

    .line 48
    new-array v12, v11, [I

    .line 49
    .line 50
    move v13, v4

    .line 51
    :goto_1
    if-ge v13, v11, :cond_1

    .line 52
    .line 53
    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v14

    .line 57
    check-cast v14, Landroidx/compose/ui/layout/Placeable;

    .line 58
    .line 59
    iget v14, v14, Landroidx/compose/ui/layout/Placeable;->width:I

    .line 60
    .line 61
    invoke-interface {v10}, Ljava/util/List;->size()I

    .line 62
    .line 63
    .line 64
    move-result v15

    .line 65
    sub-int/2addr v15, v5

    .line 66
    if-ge v13, v15, :cond_0

    .line 67
    .line 68
    const/high16 v15, 0x41000000    # 8.0f

    .line 69
    .line 70
    invoke-interface {v9, v15}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    .line 71
    .line 72
    .line 73
    move-result v15

    .line 74
    goto :goto_2

    .line 75
    :cond_0
    move v15, v4

    .line 76
    :goto_2
    add-int/2addr v14, v15

    .line 77
    aput v14, v12, v13

    .line 78
    .line 79
    add-int/lit8 v13, v13, 0x1

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_1
    new-array v13, v11, [I

    .line 83
    .line 84
    invoke-interface {v9}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 85
    .line 86
    .line 87
    move-result-object v14

    .line 88
    sget-object v15, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    .line 89
    .line 90
    if-ne v14, v15, :cond_3

    .line 91
    .line 92
    move v14, v4

    .line 93
    move v15, v14

    .line 94
    :goto_3
    if-ge v14, v11, :cond_2

    .line 95
    .line 96
    aget v16, v12, v14

    .line 97
    .line 98
    add-int v15, v15, v16

    .line 99
    .line 100
    add-int/lit8 v14, v14, 0x1

    .line 101
    .line 102
    goto :goto_3

    .line 103
    :cond_2
    sub-int v14, v8, v15

    .line 104
    .line 105
    move v15, v4

    .line 106
    move/from16 v16, v15

    .line 107
    .line 108
    :goto_4
    if-ge v15, v11, :cond_4

    .line 109
    .line 110
    aget v17, v12, v15

    .line 111
    .line 112
    add-int/lit8 v18, v16, 0x1

    .line 113
    .line 114
    aput v14, v13, v16

    .line 115
    .line 116
    add-int v14, v14, v17

    .line 117
    .line 118
    add-int/lit8 v15, v15, 0x1

    .line 119
    .line 120
    move/from16 v16, v18

    .line 121
    .line 122
    goto :goto_4

    .line 123
    :cond_3
    add-int/lit8 v11, v11, -0x1

    .line 124
    .line 125
    move v14, v4

    .line 126
    :goto_5
    const/4 v15, -0x1

    .line 127
    if-ge v15, v11, :cond_4

    .line 128
    .line 129
    aget v15, v12, v11

    .line 130
    .line 131
    aput v14, v13, v11

    .line 132
    .line 133
    add-int/2addr v14, v15

    .line 134
    add-int/lit8 v11, v11, -0x1

    .line 135
    .line 136
    goto :goto_5

    .line 137
    :cond_4
    invoke-interface {v10}, Ljava/util/Collection;->size()I

    .line 138
    .line 139
    .line 140
    move-result v11

    .line 141
    move v12, v4

    .line 142
    :goto_6
    if-ge v12, v11, :cond_5

    .line 143
    .line 144
    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v14

    .line 148
    check-cast v14, Landroidx/compose/ui/layout/Placeable;

    .line 149
    .line 150
    aget v15, v13, v12

    .line 151
    .line 152
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v16

    .line 156
    check-cast v16, Ljava/lang/Number;

    .line 157
    .line 158
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Number;->intValue()I

    .line 159
    .line 160
    .line 161
    move-result v5

    .line 162
    invoke-static {v1, v14, v15, v5}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->place$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;II)V

    .line 163
    .line 164
    .line 165
    add-int/lit8 v12, v12, 0x1

    .line 166
    .line 167
    const/4 v5, 0x1

    .line 168
    goto :goto_6

    .line 169
    :cond_5
    add-int/lit8 v3, v3, 0x1

    .line 170
    .line 171
    const/4 v5, 0x1

    .line 172
    goto/16 :goto_0

    .line 173
    .line 174
    :cond_6
    return-object v6

    .line 175
    :pswitch_0
    check-cast v0, Landroidx/compose/foundation/text/HorizontalScrollLayoutModifier;

    .line 176
    .line 177
    check-cast v9, Landroidx/compose/ui/layout/MeasureScope;

    .line 178
    .line 179
    check-cast v7, Landroidx/compose/ui/layout/Placeable;

    .line 180
    .line 181
    move-object v10, v1

    .line 182
    check-cast v10, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    .line 183
    .line 184
    iget v11, v0, Landroidx/compose/foundation/text/HorizontalScrollLayoutModifier;->cursorOffset:I

    .line 185
    .line 186
    iget-object v1, v0, Landroidx/compose/foundation/text/HorizontalScrollLayoutModifier;->scrollerPosition:Landroidx/compose/foundation/text/TextFieldScrollerPosition;

    .line 187
    .line 188
    iget-object v12, v0, Landroidx/compose/foundation/text/HorizontalScrollLayoutModifier;->transformedText:Landroidx/compose/ui/text/input/TransformedText;

    .line 189
    .line 190
    iget-object v0, v0, Landroidx/compose/foundation/text/HorizontalScrollLayoutModifier;->textLayoutResultProvider:Lkotlin/jvm/functions/Function0;

    .line 191
    .line 192
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    check-cast v0, Landroidx/compose/foundation/text/TextLayoutResultProxy;

    .line 197
    .line 198
    if-eqz v0, :cond_7

    .line 199
    .line 200
    iget-object v3, v0, Landroidx/compose/foundation/text/TextLayoutResultProxy;->value:Landroidx/compose/ui/text/TextLayoutResult;

    .line 201
    .line 202
    :cond_7
    move-object v13, v3

    .line 203
    invoke-interface {v9}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    sget-object v2, Landroidx/compose/ui/unit/LayoutDirection;->Rtl:Landroidx/compose/ui/unit/LayoutDirection;

    .line 208
    .line 209
    if-ne v0, v2, :cond_8

    .line 210
    .line 211
    const/4 v14, 0x1

    .line 212
    goto :goto_7

    .line 213
    :cond_8
    move v14, v4

    .line 214
    :goto_7
    iget v15, v7, Landroidx/compose/ui/layout/Placeable;->width:I

    .line 215
    .line 216
    invoke-static/range {v10 .. v15}, Landroidx/compose/foundation/text/BasicTextKt;->access$getCursorRectInScroller(Landroidx/compose/ui/layout/Placeable$PlacementScope;ILandroidx/compose/ui/text/input/TransformedText;Landroidx/compose/ui/text/TextLayoutResult;ZI)Landroidx/compose/ui/geometry/Rect;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    sget-object v2, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    .line 221
    .line 222
    iget v3, v7, Landroidx/compose/ui/layout/Placeable;->width:I

    .line 223
    .line 224
    invoke-virtual {v1, v2, v0, v8, v3}, Landroidx/compose/foundation/text/TextFieldScrollerPosition;->update(Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/ui/geometry/Rect;II)V

    .line 225
    .line 226
    .line 227
    iget-object v0, v1, Landroidx/compose/foundation/text/TextFieldScrollerPosition;->offset$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    .line 228
    .line 229
    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;->getFloatValue()F

    .line 230
    .line 231
    .line 232
    move-result v0

    .line 233
    neg-float v0, v0

    .line 234
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 235
    .line 236
    .line 237
    move-result v0

    .line 238
    invoke-static {v10, v7, v0, v4}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelative$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;II)V

    .line 239
    .line 240
    .line 241
    return-object v6

    .line 242
    :pswitch_1
    check-cast v0, Landroidx/compose/runtime/DerivedSnapshotState;

    .line 243
    .line 244
    check-cast v9, Landroidx/compose/runtime/internal/IntRef;

    .line 245
    .line 246
    check-cast v7, Landroidx/collection/MutableObjectIntMap;

    .line 247
    .line 248
    if-eq v1, v0, :cond_b

    .line 249
    .line 250
    instance-of v0, v1, Landroidx/compose/runtime/snapshots/StateObject;

    .line 251
    .line 252
    if-eqz v0, :cond_a

    .line 253
    .line 254
    iget v0, v9, Landroidx/compose/runtime/internal/IntRef;->element:I

    .line 255
    .line 256
    sub-int/2addr v0, v8

    .line 257
    invoke-virtual {v7, v1}, Landroidx/collection/MutableObjectIntMap;->findKeyIndex(Ljava/lang/Object;)I

    .line 258
    .line 259
    .line 260
    move-result v2

    .line 261
    if-ltz v2, :cond_9

    .line 262
    .line 263
    iget-object v3, v7, Landroidx/collection/MutableObjectIntMap;->values:[I

    .line 264
    .line 265
    aget v2, v3, v2

    .line 266
    .line 267
    goto :goto_8

    .line 268
    :cond_9
    const v2, 0x7fffffff

    .line 269
    .line 270
    .line 271
    :goto_8
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    .line 272
    .line 273
    .line 274
    move-result v0

    .line 275
    invoke-virtual {v7, v0, v1}, Landroidx/collection/MutableObjectIntMap;->set(ILjava/lang/Object;)V

    .line 276
    .line 277
    .line 278
    :cond_a
    move-object v3, v6

    .line 279
    goto :goto_9

    .line 280
    :cond_b
    const-string v0, "A derived state calculation cannot read itself"

    .line 281
    .line 282
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 283
    .line 284
    .line 285
    :goto_9
    return-object v3

    .line 286
    nop

    .line 287
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
