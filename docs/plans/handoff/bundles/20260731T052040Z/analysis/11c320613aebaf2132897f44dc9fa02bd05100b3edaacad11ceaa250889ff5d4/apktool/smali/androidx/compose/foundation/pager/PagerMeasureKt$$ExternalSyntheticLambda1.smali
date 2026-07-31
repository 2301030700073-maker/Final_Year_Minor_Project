.class public final synthetic Landroidx/compose/foundation/pager/PagerMeasureKt$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(ILjava/util/ArrayList;)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/compose/foundation/pager/PagerMeasureKt$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/compose/foundation/pager/PagerMeasureKt$$ExternalSyntheticLambda1;->f$0:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Landroidx/compose/foundation/pager/PagerMeasureKt$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 6
    .line 7
    iget-object v0, v0, Landroidx/compose/foundation/pager/PagerMeasureKt$$ExternalSyntheticLambda1;->f$0:Ljava/util/ArrayList;

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    packed-switch v1, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    move-object/from16 v1, p1

    .line 14
    .line 15
    check-cast v1, Landroidx/compose/foundation/lazy/LazyListIntervalContent;

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    new-instance v5, Lcoil3/network/okhttp/internal/CallsKt$await$2$1;

    .line 25
    .line 26
    const/4 v6, 0x4

    .line 27
    invoke-direct {v5, v0, v6}, Lcoil3/network/okhttp/internal/CallsKt$await$2$1;-><init>(Ljava/lang/Object;I)V

    .line 28
    .line 29
    .line 30
    new-instance v6, Lnet/newpipe/app/screen/about/LicenseDialogKt$LicenseDialog$lambda$9$0$0$$inlined$items$default$4;

    .line 31
    .line 32
    invoke-direct {v6, v3, v0}, Lnet/newpipe/app/screen/about/LicenseDialogKt$LicenseDialog$lambda$9$0$0$$inlined$items$default$4;-><init>(ILjava/util/List;)V

    .line 33
    .line 34
    .line 35
    new-instance v0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 36
    .line 37
    const v7, 0x2fd4df92

    .line 38
    .line 39
    .line 40
    invoke-direct {v0, v7, v3, v6}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLkotlin/Function;)V

    .line 41
    .line 42
    .line 43
    iget-object v1, v1, Landroidx/compose/foundation/lazy/LazyListIntervalContent;->intervals:Lcom/grack/nanojson/JsonParser;

    .line 44
    .line 45
    new-instance v3, Landroidx/compose/foundation/lazy/LazyListInterval;

    .line 46
    .line 47
    const/4 v6, 0x0

    .line 48
    invoke-direct {v3, v6, v5, v0}, Landroidx/compose/foundation/lazy/LazyListInterval;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, v4, v3}, Lcom/grack/nanojson/JsonParser;->addInterval(ILandroidx/compose/foundation/lazy/layout/LazyLayoutIntervalContent$Interval;)V

    .line 52
    .line 53
    .line 54
    return-object v2

    .line 55
    :pswitch_0
    move-object/from16 v1, p1

    .line 56
    .line 57
    check-cast v1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    const/4 v6, 0x0

    .line 64
    :goto_0
    if-ge v6, v4, :cond_5

    .line 65
    .line 66
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v7

    .line 70
    check-cast v7, Landroidx/compose/foundation/pager/MeasuredPage;

    .line 71
    .line 72
    iget-object v8, v7, Landroidx/compose/foundation/pager/MeasuredPage;->placeables:Ljava/util/List;

    .line 73
    .line 74
    iget-boolean v9, v7, Landroidx/compose/foundation/pager/MeasuredPage;->isVertical:Z

    .line 75
    .line 76
    iget v10, v7, Landroidx/compose/foundation/pager/MeasuredPage;->mainAxisLayoutSize:I

    .line 77
    .line 78
    const/high16 v11, -0x80000000

    .line 79
    .line 80
    if-eq v10, v11, :cond_0

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_0
    const-string v10, "position() should be called first"

    .line 84
    .line 85
    invoke-static {v10}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    :goto_1
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 89
    .line 90
    .line 91
    move-result v10

    .line 92
    const/4 v11, 0x0

    .line 93
    :goto_2
    if-ge v11, v10, :cond_4

    .line 94
    .line 95
    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v12

    .line 99
    check-cast v12, Landroidx/compose/ui/layout/Placeable;

    .line 100
    .line 101
    iget-object v13, v7, Landroidx/compose/foundation/pager/MeasuredPage;->placeableOffsets:[I

    .line 102
    .line 103
    mul-int/lit8 v14, v11, 0x2

    .line 104
    .line 105
    aget v15, v13, v14

    .line 106
    .line 107
    add-int/2addr v14, v3

    .line 108
    aget v13, v13, v14

    .line 109
    .line 110
    int-to-long v14, v15

    .line 111
    const/16 v16, 0x20

    .line 112
    .line 113
    shl-long v14, v14, v16

    .line 114
    .line 115
    move/from16 p1, v4

    .line 116
    .line 117
    int-to-long v3, v13

    .line 118
    const-wide v17, 0xffffffffL

    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    and-long v3, v3, v17

    .line 124
    .line 125
    or-long/2addr v3, v14

    .line 126
    iget-wide v13, v7, Landroidx/compose/foundation/pager/MeasuredPage;->visualOffset:J

    .line 127
    .line 128
    invoke-static {v3, v4, v13, v14}, Landroidx/compose/ui/unit/IntOffset;->plus-qkQi6aY(JJ)J

    .line 129
    .line 130
    .line 131
    move-result-wide v3

    .line 132
    if-eqz v9, :cond_1

    .line 133
    .line 134
    invoke-static {v1, v12, v3, v4}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeWithLayer-aW-9-wM$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;J)V

    .line 135
    .line 136
    .line 137
    move-object v14, v1

    .line 138
    move v15, v6

    .line 139
    move-object v6, v2

    .line 140
    move-object v2, v0

    .line 141
    goto :goto_4

    .line 142
    :cond_1
    sget v13, Landroidx/compose/ui/layout/PlaceableKt;->$r8$clinit:I

    .line 143
    .line 144
    sget-object v13, Landroidx/compose/ui/layout/RootMeasurePolicy$measure$1;->INSTANCE$1:Landroidx/compose/ui/layout/RootMeasurePolicy$measure$1;

    .line 145
    .line 146
    invoke-virtual {v1}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->getParentLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 147
    .line 148
    .line 149
    move-result-object v14

    .line 150
    sget-object v15, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    .line 151
    .line 152
    if-eq v14, v15, :cond_2

    .line 153
    .line 154
    invoke-virtual {v1}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->getParentWidth()I

    .line 155
    .line 156
    .line 157
    move-result v14

    .line 158
    if-nez v14, :cond_3

    .line 159
    .line 160
    :cond_2
    move v15, v6

    .line 161
    const/4 v5, 0x0

    .line 162
    move-object v6, v2

    .line 163
    goto :goto_3

    .line 164
    :cond_3
    invoke-virtual {v1}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->getParentWidth()I

    .line 165
    .line 166
    .line 167
    move-result v14

    .line 168
    iget v15, v12, Landroidx/compose/ui/layout/Placeable;->width:I

    .line 169
    .line 170
    sub-int/2addr v14, v15

    .line 171
    move v15, v6

    .line 172
    shr-long v5, v3, v16

    .line 173
    .line 174
    long-to-int v5, v5

    .line 175
    sub-int/2addr v14, v5

    .line 176
    and-long v3, v3, v17

    .line 177
    .line 178
    long-to-int v3, v3

    .line 179
    int-to-long v4, v14

    .line 180
    shl-long v4, v4, v16

    .line 181
    .line 182
    move-object v6, v2

    .line 183
    int-to-long v2, v3

    .line 184
    and-long v2, v2, v17

    .line 185
    .line 186
    or-long/2addr v2, v4

    .line 187
    invoke-static {v1, v12}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->access$handleMotionFrameOfReferencePlacement(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;)V

    .line 188
    .line 189
    .line 190
    iget-wide v4, v12, Landroidx/compose/ui/layout/Placeable;->apparentToRealOffset:J

    .line 191
    .line 192
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/unit/IntOffset;->plus-qkQi6aY(JJ)J

    .line 193
    .line 194
    .line 195
    move-result-wide v2

    .line 196
    const/4 v5, 0x0

    .line 197
    invoke-virtual {v12, v2, v3, v5, v13}, Landroidx/compose/ui/layout/Placeable;->placeAt-f8xVGno(JFLkotlin/jvm/functions/Function1;)V

    .line 198
    .line 199
    .line 200
    move-object v2, v0

    .line 201
    move-object v14, v1

    .line 202
    goto :goto_4

    .line 203
    :goto_3
    invoke-static {v1, v12}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->access$handleMotionFrameOfReferencePlacement(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;)V

    .line 204
    .line 205
    .line 206
    move-object v2, v0

    .line 207
    move-object v14, v1

    .line 208
    iget-wide v0, v12, Landroidx/compose/ui/layout/Placeable;->apparentToRealOffset:J

    .line 209
    .line 210
    invoke-static {v3, v4, v0, v1}, Landroidx/compose/ui/unit/IntOffset;->plus-qkQi6aY(JJ)J

    .line 211
    .line 212
    .line 213
    move-result-wide v0

    .line 214
    invoke-virtual {v12, v0, v1, v5, v13}, Landroidx/compose/ui/layout/Placeable;->placeAt-f8xVGno(JFLkotlin/jvm/functions/Function1;)V

    .line 215
    .line 216
    .line 217
    :goto_4
    add-int/lit8 v11, v11, 0x1

    .line 218
    .line 219
    move/from16 v4, p1

    .line 220
    .line 221
    move-object v0, v2

    .line 222
    move-object v2, v6

    .line 223
    move-object v1, v14

    .line 224
    move v6, v15

    .line 225
    const/4 v3, 0x1

    .line 226
    goto/16 :goto_2

    .line 227
    .line 228
    :cond_4
    move-object v14, v1

    .line 229
    move/from16 p1, v4

    .line 230
    .line 231
    move v15, v6

    .line 232
    move-object v6, v2

    .line 233
    move-object v2, v0

    .line 234
    add-int/lit8 v0, v15, 0x1

    .line 235
    .line 236
    move-object v1, v6

    .line 237
    move v6, v0

    .line 238
    move-object v0, v2

    .line 239
    move-object v2, v1

    .line 240
    move-object v1, v14

    .line 241
    const/4 v3, 0x1

    .line 242
    goto/16 :goto_0

    .line 243
    .line 244
    :cond_5
    move-object v6, v2

    .line 245
    return-object v6

    .line 246
    nop

    .line 247
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
