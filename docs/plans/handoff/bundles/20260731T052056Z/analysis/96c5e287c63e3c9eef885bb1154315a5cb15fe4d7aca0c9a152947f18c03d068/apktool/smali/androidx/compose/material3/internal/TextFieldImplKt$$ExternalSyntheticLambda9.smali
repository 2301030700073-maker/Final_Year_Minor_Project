.class public final synthetic Landroidx/compose/material3/internal/TextFieldImplKt$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(ILkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/compose/material3/internal/TextFieldImplKt$$ExternalSyntheticLambda9;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/compose/material3/internal/TextFieldImplKt$$ExternalSyntheticLambda9;->f$0:Lkotlin/jvm/functions/Function0;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Landroidx/compose/material3/internal/TextFieldImplKt$$ExternalSyntheticLambda9;->$r8$classId:I

    .line 4
    .line 5
    const v2, 0x7f1207d8

    .line 6
    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    iget-object v4, v0, Landroidx/compose/material3/internal/TextFieldImplKt$$ExternalSyntheticLambda9;->f$0:Lkotlin/jvm/functions/Function0;

    .line 10
    .line 11
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    .line 13
    const/16 v6, 0x10

    .line 14
    .line 15
    const/4 v7, 0x1

    .line 16
    const/4 v8, 0x0

    .line 17
    packed-switch v1, :pswitch_data_0

    .line 18
    .line 19
    .line 20
    move-object/from16 v1, p1

    .line 21
    .line 22
    check-cast v1, Landroidx/compose/foundation/layout/ColumnScopeInstance;

    .line 23
    .line 24
    move-object/from16 v15, p2

    .line 25
    .line 26
    check-cast v15, Landroidx/compose/runtime/GapComposer;

    .line 27
    .line 28
    move-object/from16 v2, p3

    .line 29
    .line 30
    check-cast v2, Ljava/lang/Integer;

    .line 31
    .line 32
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    and-int/lit8 v1, v2, 0x11

    .line 40
    .line 41
    if-eq v1, v6, :cond_0

    .line 42
    .line 43
    move v8, v7

    .line 44
    :cond_0
    and-int/lit8 v1, v2, 0x1

    .line 45
    .line 46
    invoke-virtual {v15, v1, v8}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-eqz v1, :cond_1

    .line 51
    .line 52
    const v1, 0x7f1202b1

    .line 53
    .line 54
    .line 55
    invoke-static {v1, v15}, Lcoil3/util/UtilsKt;->stringResource(ILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v9

    .line 59
    const v1, 0x7f120296

    .line 60
    .line 61
    .line 62
    invoke-static {v1, v15}, Lcoil3/util/UtilsKt;->stringResource(ILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v11

    .line 66
    const/16 v16, 0x0

    .line 67
    .line 68
    const/16 v17, 0x32

    .line 69
    .line 70
    const/4 v10, 0x0

    .line 71
    iget-object v12, v0, Landroidx/compose/material3/internal/TextFieldImplKt$$ExternalSyntheticLambda9;->f$0:Lkotlin/jvm/functions/Function0;

    .line 72
    .line 73
    const/4 v13, 0x0

    .line 74
    const/4 v14, 0x0

    .line 75
    invoke-static/range {v9 .. v17}, Lorg/wikipedia/compose/components/TabsBoxKt;->SettingsRow(Ljava/lang/String;Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/GapComposer;II)V

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_1
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 80
    .line 81
    .line 82
    :goto_0
    return-object v5

    .line 83
    :pswitch_0
    move-object/from16 v0, p1

    .line 84
    .line 85
    check-cast v0, Landroidx/compose/foundation/layout/ColumnScopeInstance;

    .line 86
    .line 87
    move-object/from16 v1, p2

    .line 88
    .line 89
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 90
    .line 91
    move-object/from16 v2, p3

    .line 92
    .line 93
    check-cast v2, Ljava/lang/Integer;

    .line 94
    .line 95
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 96
    .line 97
    .line 98
    move-result v2

    .line 99
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 100
    .line 101
    .line 102
    and-int/lit8 v0, v2, 0x11

    .line 103
    .line 104
    if-eq v0, v6, :cond_2

    .line 105
    .line 106
    move v0, v7

    .line 107
    goto :goto_1

    .line 108
    :cond_2
    move v0, v8

    .line 109
    :goto_1
    and-int/2addr v2, v7

    .line 110
    invoke-virtual {v1, v2, v0}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    if-eqz v0, :cond_5

    .line 115
    .line 116
    invoke-virtual {v1, v4}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    if-nez v0, :cond_3

    .line 125
    .line 126
    sget-object v0, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 127
    .line 128
    if-ne v2, v0, :cond_4

    .line 129
    .line 130
    :cond_3
    new-instance v2, Lokhttp3/Handshake$$ExternalSyntheticLambda0;

    .line 131
    .line 132
    const/16 v0, 0x1a

    .line 133
    .line 134
    invoke-direct {v2, v0, v4}, Lokhttp3/Handshake$$ExternalSyntheticLambda0;-><init>(ILkotlin/jvm/functions/Function0;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 138
    .line 139
    .line 140
    :cond_4
    check-cast v2, Lkotlin/jvm/functions/Function0;

    .line 141
    .line 142
    const/16 v0, 0xf

    .line 143
    .line 144
    sget-object v4, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 145
    .line 146
    invoke-static {v0, v4, v3, v2, v8}, Landroidx/compose/foundation/ImageKt;->clickable-oSLSa3U$default(ILandroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Z)Landroidx/compose/ui/Modifier;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    const/4 v2, 0x0

    .line 151
    const/high16 v3, 0x41000000    # 8.0f

    .line 152
    .line 153
    invoke-static {v0, v2, v3, v7}, Landroidx/compose/foundation/layout/OffsetKt;->padding-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    invoke-static {v0, v1, v8}, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceScreenKt;->InterestsView(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/GapComposer;I)V

    .line 158
    .line 159
    .line 160
    goto :goto_2

    .line 161
    :cond_5
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 162
    .line 163
    .line 164
    :goto_2
    return-object v5

    .line 165
    :pswitch_1
    move-object/from16 v0, p1

    .line 166
    .line 167
    check-cast v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemScopeImpl;

    .line 168
    .line 169
    move-object/from16 v1, p2

    .line 170
    .line 171
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 172
    .line 173
    move-object/from16 v9, p3

    .line 174
    .line 175
    check-cast v9, Ljava/lang/Integer;

    .line 176
    .line 177
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 178
    .line 179
    .line 180
    move-result v9

    .line 181
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 182
    .line 183
    .line 184
    and-int/lit8 v0, v9, 0x11

    .line 185
    .line 186
    if-eq v0, v6, :cond_6

    .line 187
    .line 188
    move v0, v7

    .line 189
    goto :goto_3

    .line 190
    :cond_6
    move v0, v8

    .line 191
    :goto_3
    and-int/lit8 v6, v9, 0x1

    .line 192
    .line 193
    invoke-virtual {v1, v6, v0}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 194
    .line 195
    .line 196
    move-result v0

    .line 197
    if-eqz v0, :cond_7

    .line 198
    .line 199
    invoke-static {v2, v1}, Lcoil3/util/UtilsKt;->stringResource(ILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    invoke-static {v3, v0, v4, v1, v8}, Lorg/wikipedia/compose/components/TabsBoxKt;->SearchBarCard(Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/GapComposer;I)V

    .line 204
    .line 205
    .line 206
    goto :goto_4

    .line 207
    :cond_7
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 208
    .line 209
    .line 210
    :goto_4
    return-object v5

    .line 211
    :pswitch_2
    move-object/from16 v0, p1

    .line 212
    .line 213
    check-cast v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemScopeImpl;

    .line 214
    .line 215
    move-object/from16 v1, p2

    .line 216
    .line 217
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 218
    .line 219
    move-object/from16 v9, p3

    .line 220
    .line 221
    check-cast v9, Ljava/lang/Integer;

    .line 222
    .line 223
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 224
    .line 225
    .line 226
    move-result v9

    .line 227
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 228
    .line 229
    .line 230
    and-int/lit8 v0, v9, 0x11

    .line 231
    .line 232
    if-eq v0, v6, :cond_8

    .line 233
    .line 234
    move v0, v7

    .line 235
    goto :goto_5

    .line 236
    :cond_8
    move v0, v8

    .line 237
    :goto_5
    and-int/lit8 v6, v9, 0x1

    .line 238
    .line 239
    invoke-virtual {v1, v6, v0}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 240
    .line 241
    .line 242
    move-result v0

    .line 243
    if-eqz v0, :cond_9

    .line 244
    .line 245
    invoke-static {v2, v1}, Lcoil3/util/UtilsKt;->stringResource(ILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v0

    .line 249
    invoke-static {v3, v0, v4, v1, v8}, Lorg/wikipedia/compose/components/TabsBoxKt;->SearchBarCard(Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/GapComposer;I)V

    .line 250
    .line 251
    .line 252
    goto :goto_6

    .line 253
    :cond_9
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 254
    .line 255
    .line 256
    :goto_6
    return-object v5

    .line 257
    :pswitch_3
    move-object/from16 v0, p1

    .line 258
    .line 259
    check-cast v0, Landroidx/compose/ui/layout/MeasureScope;

    .line 260
    .line 261
    move-object/from16 v1, p2

    .line 262
    .line 263
    check-cast v1, Landroidx/compose/ui/layout/Measurable;

    .line 264
    .line 265
    move-object/from16 v2, p3

    .line 266
    .line 267
    check-cast v2, Landroidx/compose/ui/unit/Constraints;

    .line 268
    .line 269
    invoke-interface {v4}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 270
    .line 271
    .line 272
    move-result-object v3

    .line 273
    check-cast v3, Landroidx/compose/ui/unit/Dp;

    .line 274
    .line 275
    iget v3, v3, Landroidx/compose/ui/unit/Dp;->value:F

    .line 276
    .line 277
    iget-wide v4, v2, Landroidx/compose/ui/unit/Constraints;->value:J

    .line 278
    .line 279
    const/high16 v6, 0x7fc00000    # Float.NaN

    .line 280
    .line 281
    invoke-static {v3, v6}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    .line 282
    .line 283
    .line 284
    move-result v6

    .line 285
    if-nez v6, :cond_a

    .line 286
    .line 287
    invoke-interface {v0, v3}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    .line 288
    .line 289
    .line 290
    move-result v8

    .line 291
    :cond_a
    invoke-static {v4, v5, v8}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainHeight-K40F9xA(JI)I

    .line 292
    .line 293
    .line 294
    move-result v13

    .line 295
    iget-wide v9, v2, Landroidx/compose/ui/unit/Constraints;->value:J

    .line 296
    .line 297
    const/4 v14, 0x0

    .line 298
    const/16 v15, 0xb

    .line 299
    .line 300
    const/4 v11, 0x0

    .line 301
    const/4 v12, 0x0

    .line 302
    invoke-static/range {v9 .. v15}, Landroidx/compose/ui/unit/Constraints;->copy-Zbe2FdA$default(JIIIII)J

    .line 303
    .line 304
    .line 305
    move-result-wide v2

    .line 306
    invoke-interface {v1, v2, v3}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    .line 307
    .line 308
    .line 309
    move-result-object v1

    .line 310
    iget v2, v1, Landroidx/compose/ui/layout/Placeable;->width:I

    .line 311
    .line 312
    iget v3, v1, Landroidx/compose/ui/layout/Placeable;->height:I

    .line 313
    .line 314
    new-instance v4, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda12;

    .line 315
    .line 316
    const/16 v5, 0xc

    .line 317
    .line 318
    invoke-direct {v4, v1, v5}, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda12;-><init>(Landroidx/compose/ui/layout/Placeable;I)V

    .line 319
    .line 320
    .line 321
    sget-object v1, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;

    .line 322
    .line 323
    invoke-interface {v0, v2, v3, v1, v4}, Landroidx/compose/ui/layout/MeasureScope;->layout(IILjava/util/Map;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    .line 324
    .line 325
    .line 326
    move-result-object v0

    .line 327
    return-object v0

    .line 328
    nop

    .line 329
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
