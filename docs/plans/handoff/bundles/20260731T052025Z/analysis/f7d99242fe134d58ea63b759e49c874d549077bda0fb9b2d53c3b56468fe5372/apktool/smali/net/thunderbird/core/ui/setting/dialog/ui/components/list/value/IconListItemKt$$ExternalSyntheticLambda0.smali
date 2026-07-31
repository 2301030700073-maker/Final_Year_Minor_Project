.class public final synthetic Lnet/thunderbird/core/ui/setting/dialog/ui/components/list/value/IconListItemKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lnet/thunderbird/core/ui/setting/SettingValue$IconList;

.field public final synthetic f$1:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Lnet/thunderbird/core/ui/setting/SettingValue$IconList;Lkotlin/jvm/functions/Function1;I)V
    .locals 0

    .line 1
    iput p3, p0, Lnet/thunderbird/core/ui/setting/dialog/ui/components/list/value/IconListItemKt$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lnet/thunderbird/core/ui/setting/dialog/ui/components/list/value/IconListItemKt$$ExternalSyntheticLambda0;->f$0:Lnet/thunderbird/core/ui/setting/SettingValue$IconList;

    .line 4
    .line 5
    iput-object p2, p0, Lnet/thunderbird/core/ui/setting/dialog/ui/components/list/value/IconListItemKt$$ExternalSyntheticLambda0;->f$1:Lkotlin/jvm/functions/Function1;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lnet/thunderbird/core/ui/setting/dialog/ui/components/list/value/IconListItemKt$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 6
    .line 7
    sget-object v3, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    iget-object v5, v0, Lnet/thunderbird/core/ui/setting/dialog/ui/components/list/value/IconListItemKt$$ExternalSyntheticLambda0;->f$1:Lkotlin/jvm/functions/Function1;

    .line 11
    .line 12
    iget-object v0, v0, Lnet/thunderbird/core/ui/setting/dialog/ui/components/list/value/IconListItemKt$$ExternalSyntheticLambda0;->f$0:Lnet/thunderbird/core/ui/setting/SettingValue$IconList;

    .line 13
    .line 14
    const/4 v6, 0x1

    .line 15
    packed-switch v1, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    move-object/from16 v7, p1

    .line 19
    .line 20
    check-cast v7, Lnet/thunderbird/core/ui/setting/SettingValue$IconList$IconOption;

    .line 21
    .line 22
    move-object/from16 v1, p2

    .line 23
    .line 24
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 25
    .line 26
    move-object/from16 v8, p3

    .line 27
    .line 28
    check-cast v8, Ljava/lang/Integer;

    .line 29
    .line 30
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 31
    .line 32
    .line 33
    move-result v8

    .line 34
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    and-int/lit8 v9, v8, 0x6

    .line 38
    .line 39
    const/4 v10, 0x4

    .line 40
    if-nez v9, :cond_2

    .line 41
    .line 42
    and-int/lit8 v9, v8, 0x8

    .line 43
    .line 44
    if-nez v9, :cond_0

    .line 45
    .line 46
    move-object v9, v1

    .line 47
    check-cast v9, Landroidx/compose/runtime/GapComposer;

    .line 48
    .line 49
    invoke-virtual {v9, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v9

    .line 53
    goto :goto_0

    .line 54
    :cond_0
    move-object v9, v1

    .line 55
    check-cast v9, Landroidx/compose/runtime/GapComposer;

    .line 56
    .line 57
    invoke-virtual {v9, v7}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v9

    .line 61
    :goto_0
    if-eqz v9, :cond_1

    .line 62
    .line 63
    move v9, v10

    .line 64
    goto :goto_1

    .line 65
    :cond_1
    const/4 v9, 0x2

    .line 66
    :goto_1
    or-int/2addr v8, v9

    .line 67
    :cond_2
    and-int/lit8 v9, v8, 0x13

    .line 68
    .line 69
    const/16 v11, 0x12

    .line 70
    .line 71
    if-eq v9, v11, :cond_3

    .line 72
    .line 73
    move v9, v6

    .line 74
    goto :goto_2

    .line 75
    :cond_3
    move v9, v4

    .line 76
    :goto_2
    and-int/lit8 v11, v8, 0x1

    .line 77
    .line 78
    move-object v14, v1

    .line 79
    check-cast v14, Landroidx/compose/runtime/GapComposer;

    .line 80
    .line 81
    invoke-virtual {v14, v11, v9}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    if-eqz v1, :cond_8

    .line 86
    .line 87
    move v1, v8

    .line 88
    iget-wide v8, v0, Lnet/thunderbird/core/ui/setting/SettingValue$IconList;->color:J

    .line 89
    .line 90
    iget-object v11, v0, Lnet/thunderbird/core/ui/setting/SettingValue$IconList;->value:Lnet/thunderbird/core/ui/setting/SettingValue$IconList$IconOption;

    .line 91
    .line 92
    invoke-virtual {v7, v11}, Lnet/thunderbird/core/ui/setting/SettingValue$IconList$IconOption;->equals(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v12

    .line 96
    sget-object v11, Lnet/thunderbird/core/ui/compose/theme2/ThemeSizesKt;->LocalThemeSizes:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 97
    .line 98
    invoke-virtual {v14, v11}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v11

    .line 102
    check-cast v11, Lnet/thunderbird/core/ui/compose/theme2/ThemeSizes;

    .line 103
    .line 104
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 105
    .line 106
    .line 107
    const/high16 v11, 0x42400000    # 48.0f

    .line 108
    .line 109
    invoke-static {v3, v11}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 110
    .line 111
    .line 112
    move-result-object v11

    .line 113
    invoke-virtual {v14, v5}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    move-result v3

    .line 117
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result v13

    .line 121
    or-int/2addr v3, v13

    .line 122
    and-int/lit8 v15, v1, 0xe

    .line 123
    .line 124
    if-eq v15, v10, :cond_4

    .line 125
    .line 126
    and-int/lit8 v1, v1, 0x8

    .line 127
    .line 128
    if-eqz v1, :cond_5

    .line 129
    .line 130
    invoke-virtual {v14, v7}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    move-result v1

    .line 134
    if-eqz v1, :cond_5

    .line 135
    .line 136
    :cond_4
    move v4, v6

    .line 137
    :cond_5
    or-int v1, v3, v4

    .line 138
    .line 139
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v3

    .line 143
    if-nez v1, :cond_6

    .line 144
    .line 145
    sget-object v1, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 146
    .line 147
    if-ne v3, v1, :cond_7

    .line 148
    .line 149
    :cond_6
    new-instance v3, Lnet/thunderbird/core/ui/setting/dialog/ui/components/list/SettingListKt$$ExternalSyntheticLambda0;

    .line 150
    .line 151
    invoke-direct {v3, v5, v0, v7}, Lnet/thunderbird/core/ui/setting/dialog/ui/components/list/SettingListKt$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function1;Lnet/thunderbird/core/ui/setting/SettingValue$IconList;Lnet/thunderbird/core/ui/setting/SettingValue$IconList$IconOption;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v14, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 155
    .line 156
    .line 157
    :cond_7
    move-object v10, v3

    .line 158
    check-cast v10, Lkotlin/jvm/functions/Function1;

    .line 159
    .line 160
    const/4 v13, 0x0

    .line 161
    invoke-static/range {v7 .. v15}, Lorg/minidns/util/Hex;->IconView-l6Txn0U(Lnet/thunderbird/core/ui/setting/SettingValue$IconList$IconOption;JLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZFLandroidx/compose/runtime/Composer;I)V

    .line 162
    .line 163
    .line 164
    goto :goto_3

    .line 165
    :cond_8
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 166
    .line 167
    .line 168
    :goto_3
    return-object v2

    .line 169
    :pswitch_0
    move-object/from16 v1, p1

    .line 170
    .line 171
    check-cast v1, Landroidx/compose/foundation/layout/ColumnScopeInstance;

    .line 172
    .line 173
    move-object/from16 v7, p2

    .line 174
    .line 175
    check-cast v7, Landroidx/compose/runtime/Composer;

    .line 176
    .line 177
    move-object/from16 v8, p3

    .line 178
    .line 179
    check-cast v8, Ljava/lang/Integer;

    .line 180
    .line 181
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 182
    .line 183
    .line 184
    move-result v8

    .line 185
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 186
    .line 187
    .line 188
    and-int/lit8 v1, v8, 0x11

    .line 189
    .line 190
    const/16 v9, 0x10

    .line 191
    .line 192
    if-eq v1, v9, :cond_9

    .line 193
    .line 194
    move v1, v6

    .line 195
    goto :goto_4

    .line 196
    :cond_9
    move v1, v4

    .line 197
    :goto_4
    and-int/2addr v8, v6

    .line 198
    move-object v14, v7

    .line 199
    check-cast v14, Landroidx/compose/runtime/GapComposer;

    .line 200
    .line 201
    invoke-virtual {v14, v8, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 202
    .line 203
    .line 204
    move-result v1

    .line 205
    if-eqz v1, :cond_b

    .line 206
    .line 207
    iget-object v1, v0, Lnet/thunderbird/core/ui/setting/SettingValue$IconList;->title:Lkotlin/jvm/functions/Function0;

    .line 208
    .line 209
    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object v1

    .line 213
    move-object v9, v1

    .line 214
    check-cast v9, Ljava/lang/String;

    .line 215
    .line 216
    const/16 v17, 0x0

    .line 217
    .line 218
    const/16 v18, 0x3e

    .line 219
    .line 220
    const/4 v10, 0x0

    .line 221
    const-wide/16 v11, 0x0

    .line 222
    .line 223
    const/4 v13, 0x0

    .line 224
    move-object/from16 v16, v14

    .line 225
    .line 226
    const/4 v14, 0x0

    .line 227
    const/4 v15, 0x0

    .line 228
    invoke-static/range {v9 .. v18}, Landroidx/core/util/DebugUtils;->TextTitleMedium-Xl4FiYE(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/text/style/TextAlign;IILandroidx/compose/runtime/Composer;II)V

    .line 229
    .line 230
    .line 231
    move-object/from16 v14, v16

    .line 232
    .line 233
    iget-object v1, v0, Lnet/thunderbird/core/ui/setting/SettingValue$IconList;->description:Lkotlin/jvm/functions/Function0;

    .line 234
    .line 235
    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    move-result-object v1

    .line 239
    move-object v9, v1

    .line 240
    check-cast v9, Ljava/lang/String;

    .line 241
    .line 242
    if-nez v9, :cond_a

    .line 243
    .line 244
    const v1, 0x717b6b57

    .line 245
    .line 246
    .line 247
    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {v14, v4}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 251
    .line 252
    .line 253
    goto :goto_5

    .line 254
    :cond_a
    const v1, 0x717b6b58

    .line 255
    .line 256
    .line 257
    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 258
    .line 259
    .line 260
    const/16 v17, 0x0

    .line 261
    .line 262
    const/16 v18, 0x7e

    .line 263
    .line 264
    const/4 v10, 0x0

    .line 265
    const-wide/16 v11, 0x0

    .line 266
    .line 267
    const/4 v13, 0x0

    .line 268
    move-object/from16 v16, v14

    .line 269
    .line 270
    const/4 v14, 0x0

    .line 271
    const/4 v15, 0x0

    .line 272
    invoke-static/range {v9 .. v18}, Landroidx/work/Data$Companion;->TextBodyMedium-ZHfKjFs(Ljava/lang/String;Landroidx/compose/ui/Modifier;JIILkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    .line 273
    .line 274
    .line 275
    move-object/from16 v14, v16

    .line 276
    .line 277
    invoke-virtual {v14, v4}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 278
    .line 279
    .line 280
    :goto_5
    sget-object v1, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacingsKt;->LocalThemeSpacings:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 281
    .line 282
    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 283
    .line 284
    .line 285
    move-result-object v1

    .line 286
    check-cast v1, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 287
    .line 288
    const/high16 v4, 0x40800000    # 4.0f

    .line 289
    .line 290
    invoke-static {v1, v3, v4, v14}, Lcoil3/size/ViewSizeResolver$-CC;->m(Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;Landroidx/compose/ui/Modifier$Companion;FLandroidx/compose/runtime/GapComposer;)V

    .line 291
    .line 292
    .line 293
    iget-object v9, v0, Lnet/thunderbird/core/ui/setting/SettingValue$IconList;->icons:Lkotlinx/collections/immutable/ImmutableList;

    .line 294
    .line 295
    sget-object v1, Lnet/thunderbird/core/ui/compose/theme2/ThemeSizesKt;->LocalThemeSizes:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 296
    .line 297
    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 298
    .line 299
    .line 300
    move-result-object v1

    .line 301
    check-cast v1, Lnet/thunderbird/core/ui/compose/theme2/ThemeSizes;

    .line 302
    .line 303
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 304
    .line 305
    .line 306
    new-instance v1, Lnet/thunderbird/core/ui/setting/dialog/ui/components/list/value/IconListItemKt$$ExternalSyntheticLambda0;

    .line 307
    .line 308
    invoke-direct {v1, v0, v5, v6}, Lnet/thunderbird/core/ui/setting/dialog/ui/components/list/value/IconListItemKt$$ExternalSyntheticLambda0;-><init>(Lnet/thunderbird/core/ui/setting/SettingValue$IconList;Lkotlin/jvm/functions/Function1;I)V

    .line 309
    .line 310
    .line 311
    const v0, 0x313ad4bf

    .line 312
    .line 313
    .line 314
    invoke-static {v0, v1, v14}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 315
    .line 316
    .line 317
    move-result-object v13

    .line 318
    const/high16 v15, 0x30000

    .line 319
    .line 320
    const/4 v10, 0x0

    .line 321
    const/4 v11, 0x0

    .line 322
    const/4 v12, 0x0

    .line 323
    invoke-static/range {v9 .. v15}, Lorg/minidns/util/Base64;->AutoHeightLazyVerticalGrid-Q2ewo60(Lkotlinx/collections/immutable/ImmutableList;Landroidx/compose/ui/Modifier;FFLandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 324
    .line 325
    .line 326
    goto :goto_6

    .line 327
    :cond_b
    move-object/from16 v16, v14

    .line 328
    .line 329
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 330
    .line 331
    .line 332
    :goto_6
    return-object v2

    .line 333
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
