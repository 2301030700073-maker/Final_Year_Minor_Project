.class public final synthetic Lorg/wikipedia/activitytab/ActivityTabCustomizationActivityKt$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Z

.field public final synthetic f$1:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(ZLkotlin/jvm/functions/Function1;I)V
    .locals 0

    .line 1
    iput p3, p0, Lorg/wikipedia/activitytab/ActivityTabCustomizationActivityKt$$ExternalSyntheticLambda5;->$r8$classId:I

    .line 2
    .line 3
    iput-boolean p1, p0, Lorg/wikipedia/activitytab/ActivityTabCustomizationActivityKt$$ExternalSyntheticLambda5;->f$0:Z

    .line 4
    .line 5
    iput-object p2, p0, Lorg/wikipedia/activitytab/ActivityTabCustomizationActivityKt$$ExternalSyntheticLambda5;->f$1:Lkotlin/jvm/functions/Function1;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lorg/wikipedia/activitytab/ActivityTabCustomizationActivityKt$$ExternalSyntheticLambda5;->$r8$classId:I

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 6
    .line 7
    sget-object v3, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 8
    .line 9
    const/4 v4, 0x2

    .line 10
    const/4 v5, 0x0

    .line 11
    const/4 v6, 0x1

    .line 12
    iget-object v7, v0, Lorg/wikipedia/activitytab/ActivityTabCustomizationActivityKt$$ExternalSyntheticLambda5;->f$1:Lkotlin/jvm/functions/Function1;

    .line 13
    .line 14
    packed-switch v1, :pswitch_data_0

    .line 15
    .line 16
    .line 17
    move-object/from16 v13, p1

    .line 18
    .line 19
    check-cast v13, Landroidx/compose/runtime/GapComposer;

    .line 20
    .line 21
    move-object/from16 v1, p2

    .line 22
    .line 23
    check-cast v1, Ljava/lang/Integer;

    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    and-int/lit8 v8, v1, 0x3

    .line 30
    .line 31
    if-eq v8, v4, :cond_0

    .line 32
    .line 33
    move v5, v6

    .line 34
    :cond_0
    and-int/2addr v1, v6

    .line 35
    invoke-virtual {v13, v1, v5}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_3

    .line 40
    .line 41
    invoke-virtual {v13, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    if-nez v1, :cond_1

    .line 50
    .line 51
    if-ne v4, v3, :cond_2

    .line 52
    .line 53
    :cond_1
    new-instance v4, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda8;

    .line 54
    .line 55
    const/16 v1, 0x19

    .line 56
    .line 57
    invoke-direct {v4, v7, v1}, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda8;-><init>(Lkotlin/jvm/functions/Function1;I)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v13, v4}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    :cond_2
    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 64
    .line 65
    sget-object v1, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 66
    .line 67
    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    check-cast v3, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 72
    .line 73
    iget-wide v14, v3, Lorg/wikipedia/compose/theme/WikipediaColor;->paperColor:J

    .line 74
    .line 75
    sget-object v3, Landroidx/compose/material3/ColorSchemeKt;->LocalColorScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 76
    .line 77
    invoke-virtual {v13, v3}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v5

    .line 81
    check-cast v5, Landroidx/compose/material3/ColorScheme;

    .line 82
    .line 83
    iget-wide v5, v5, Landroidx/compose/material3/ColorScheme;->outline:J

    .line 84
    .line 85
    invoke-virtual {v13, v3}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    check-cast v3, Landroidx/compose/material3/ColorScheme;

    .line 90
    .line 91
    iget-wide v7, v3, Landroidx/compose/material3/ColorScheme;->outline:J

    .line 92
    .line 93
    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    check-cast v3, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 98
    .line 99
    iget-wide v10, v3, Lorg/wikipedia/compose/theme/WikipediaColor;->progressiveColor:J

    .line 100
    .line 101
    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    check-cast v1, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 106
    .line 107
    move-object/from16 v19, v2

    .line 108
    .line 109
    iget-wide v1, v1, Lorg/wikipedia/compose/theme/WikipediaColor;->paperColor:J

    .line 110
    .line 111
    move-wide/from16 v16, v7

    .line 112
    .line 113
    move-object/from16 v18, v13

    .line 114
    .line 115
    move-wide v8, v1

    .line 116
    move-wide v12, v5

    .line 117
    invoke-static/range {v8 .. v18}, Landroidx/compose/material3/CardKt;->colors-V1nXRL4(JJJJJLandroidx/compose/runtime/GapComposer;)Landroidx/compose/material3/SwitchColors;

    .line 118
    .line 119
    .line 120
    move-result-object v12

    .line 121
    move-object/from16 v13, v18

    .line 122
    .line 123
    const/4 v14, 0x0

    .line 124
    iget-boolean v8, v0, Lorg/wikipedia/activitytab/ActivityTabCustomizationActivityKt$$ExternalSyntheticLambda5;->f$0:Z

    .line 125
    .line 126
    const/4 v10, 0x0

    .line 127
    const/4 v11, 0x0

    .line 128
    move-object v9, v4

    .line 129
    invoke-static/range {v8 .. v14}, Landroidx/compose/material3/SwitchKt;->Switch(ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/SwitchColors;Landroidx/compose/runtime/GapComposer;I)V

    .line 130
    .line 131
    .line 132
    goto :goto_0

    .line 133
    :cond_3
    move-object/from16 v19, v2

    .line 134
    .line 135
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 136
    .line 137
    .line 138
    :goto_0
    return-object v19

    .line 139
    :pswitch_0
    move-object/from16 v19, v2

    .line 140
    .line 141
    move-object/from16 v11, p1

    .line 142
    .line 143
    check-cast v11, Landroidx/compose/runtime/GapComposer;

    .line 144
    .line 145
    move-object/from16 v1, p2

    .line 146
    .line 147
    check-cast v1, Ljava/lang/Integer;

    .line 148
    .line 149
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 150
    .line 151
    .line 152
    move-result v1

    .line 153
    and-int/lit8 v2, v1, 0x3

    .line 154
    .line 155
    if-eq v2, v4, :cond_4

    .line 156
    .line 157
    move v5, v6

    .line 158
    :cond_4
    and-int/2addr v1, v6

    .line 159
    invoke-virtual {v11, v1, v5}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 160
    .line 161
    .line 162
    move-result v1

    .line 163
    if-eqz v1, :cond_7

    .line 164
    .line 165
    invoke-virtual {v11, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    move-result v1

    .line 169
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v2

    .line 173
    if-nez v1, :cond_5

    .line 174
    .line 175
    if-ne v2, v3, :cond_6

    .line 176
    .line 177
    :cond_5
    new-instance v2, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda8;

    .line 178
    .line 179
    const/16 v1, 0x9

    .line 180
    .line 181
    invoke-direct {v2, v7, v1}, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda8;-><init>(Lkotlin/jvm/functions/Function1;I)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 185
    .line 186
    .line 187
    :cond_6
    move-object v12, v2

    .line 188
    check-cast v12, Lkotlin/jvm/functions/Function1;

    .line 189
    .line 190
    sget-object v1, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 191
    .line 192
    invoke-virtual {v11, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object v2

    .line 196
    check-cast v2, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 197
    .line 198
    iget-wide v7, v2, Lorg/wikipedia/compose/theme/WikipediaColor;->paperColor:J

    .line 199
    .line 200
    sget-object v2, Landroidx/compose/material3/ColorSchemeKt;->LocalColorScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 201
    .line 202
    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    move-result-object v3

    .line 206
    check-cast v3, Landroidx/compose/material3/ColorScheme;

    .line 207
    .line 208
    iget-wide v5, v3, Landroidx/compose/material3/ColorScheme;->outline:J

    .line 209
    .line 210
    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    move-result-object v2

    .line 214
    check-cast v2, Landroidx/compose/material3/ColorScheme;

    .line 215
    .line 216
    iget-wide v9, v2, Landroidx/compose/material3/ColorScheme;->outline:J

    .line 217
    .line 218
    invoke-virtual {v11, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    move-result-object v2

    .line 222
    check-cast v2, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 223
    .line 224
    iget-wide v3, v2, Lorg/wikipedia/compose/theme/WikipediaColor;->progressiveColor:J

    .line 225
    .line 226
    invoke-virtual {v11, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    move-result-object v1

    .line 230
    check-cast v1, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 231
    .line 232
    iget-wide v1, v1, Lorg/wikipedia/compose/theme/WikipediaColor;->paperColor:J

    .line 233
    .line 234
    invoke-static/range {v1 .. v11}, Landroidx/compose/material3/CardKt;->colors-V1nXRL4(JJJJJLandroidx/compose/runtime/GapComposer;)Landroidx/compose/material3/SwitchColors;

    .line 235
    .line 236
    .line 237
    move-result-object v4

    .line 238
    move-object v5, v11

    .line 239
    const/4 v6, 0x0

    .line 240
    iget-boolean v0, v0, Lorg/wikipedia/activitytab/ActivityTabCustomizationActivityKt$$ExternalSyntheticLambda5;->f$0:Z

    .line 241
    .line 242
    const/4 v2, 0x0

    .line 243
    const/4 v3, 0x0

    .line 244
    move-object v1, v12

    .line 245
    invoke-static/range {v0 .. v6}, Landroidx/compose/material3/SwitchKt;->Switch(ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/SwitchColors;Landroidx/compose/runtime/GapComposer;I)V

    .line 246
    .line 247
    .line 248
    goto :goto_1

    .line 249
    :cond_7
    move-object v5, v11

    .line 250
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 251
    .line 252
    .line 253
    :goto_1
    return-object v19

    .line 254
    :pswitch_1
    move-object/from16 v19, v2

    .line 255
    .line 256
    move-object/from16 v11, p1

    .line 257
    .line 258
    check-cast v11, Landroidx/compose/runtime/GapComposer;

    .line 259
    .line 260
    move-object/from16 v1, p2

    .line 261
    .line 262
    check-cast v1, Ljava/lang/Integer;

    .line 263
    .line 264
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 265
    .line 266
    .line 267
    move-result v1

    .line 268
    and-int/lit8 v2, v1, 0x3

    .line 269
    .line 270
    if-eq v2, v4, :cond_8

    .line 271
    .line 272
    move v5, v6

    .line 273
    :cond_8
    and-int/2addr v1, v6

    .line 274
    invoke-virtual {v11, v1, v5}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 275
    .line 276
    .line 277
    move-result v1

    .line 278
    if-eqz v1, :cond_b

    .line 279
    .line 280
    invoke-virtual {v11, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 281
    .line 282
    .line 283
    move-result v1

    .line 284
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 285
    .line 286
    .line 287
    move-result-object v2

    .line 288
    if-nez v1, :cond_9

    .line 289
    .line 290
    if-ne v2, v3, :cond_a

    .line 291
    .line 292
    :cond_9
    new-instance v2, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda8;

    .line 293
    .line 294
    const/4 v1, 0x4

    .line 295
    invoke-direct {v2, v7, v1}, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda8;-><init>(Lkotlin/jvm/functions/Function1;I)V

    .line 296
    .line 297
    .line 298
    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 299
    .line 300
    .line 301
    :cond_a
    check-cast v2, Lkotlin/jvm/functions/Function1;

    .line 302
    .line 303
    sget-object v1, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 304
    .line 305
    invoke-virtual {v11, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 306
    .line 307
    .line 308
    move-result-object v3

    .line 309
    check-cast v3, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 310
    .line 311
    iget-wide v12, v3, Lorg/wikipedia/compose/theme/WikipediaColor;->paperColor:J

    .line 312
    .line 313
    sget-object v3, Landroidx/compose/material3/ColorSchemeKt;->LocalColorScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 314
    .line 315
    invoke-virtual {v11, v3}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 316
    .line 317
    .line 318
    move-result-object v4

    .line 319
    check-cast v4, Landroidx/compose/material3/ColorScheme;

    .line 320
    .line 321
    iget-wide v4, v4, Landroidx/compose/material3/ColorScheme;->outline:J

    .line 322
    .line 323
    invoke-virtual {v11, v3}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 324
    .line 325
    .line 326
    move-result-object v3

    .line 327
    check-cast v3, Landroidx/compose/material3/ColorScheme;

    .line 328
    .line 329
    iget-wide v14, v3, Landroidx/compose/material3/ColorScheme;->outline:J

    .line 330
    .line 331
    invoke-virtual {v11, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 332
    .line 333
    .line 334
    move-result-object v3

    .line 335
    check-cast v3, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 336
    .line 337
    iget-wide v8, v3, Lorg/wikipedia/compose/theme/WikipediaColor;->progressiveColor:J

    .line 338
    .line 339
    invoke-virtual {v11, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 340
    .line 341
    .line 342
    move-result-object v1

    .line 343
    check-cast v1, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 344
    .line 345
    iget-wide v6, v1, Lorg/wikipedia/compose/theme/WikipediaColor;->paperColor:J

    .line 346
    .line 347
    move-object/from16 v16, v11

    .line 348
    .line 349
    move-wide v10, v4

    .line 350
    invoke-static/range {v6 .. v16}, Landroidx/compose/material3/CardKt;->colors-V1nXRL4(JJJJJLandroidx/compose/runtime/GapComposer;)Landroidx/compose/material3/SwitchColors;

    .line 351
    .line 352
    .line 353
    move-result-object v10

    .line 354
    const/4 v12, 0x0

    .line 355
    iget-boolean v6, v0, Lorg/wikipedia/activitytab/ActivityTabCustomizationActivityKt$$ExternalSyntheticLambda5;->f$0:Z

    .line 356
    .line 357
    const/4 v8, 0x0

    .line 358
    const/4 v9, 0x0

    .line 359
    move-object v7, v2

    .line 360
    move-object/from16 v11, v16

    .line 361
    .line 362
    invoke-static/range {v6 .. v12}, Landroidx/compose/material3/SwitchKt;->Switch(ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/SwitchColors;Landroidx/compose/runtime/GapComposer;I)V

    .line 363
    .line 364
    .line 365
    goto :goto_2

    .line 366
    :cond_b
    move-object/from16 v16, v11

    .line 367
    .line 368
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 369
    .line 370
    .line 371
    :goto_2
    return-object v19

    .line 372
    nop

    .line 373
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
