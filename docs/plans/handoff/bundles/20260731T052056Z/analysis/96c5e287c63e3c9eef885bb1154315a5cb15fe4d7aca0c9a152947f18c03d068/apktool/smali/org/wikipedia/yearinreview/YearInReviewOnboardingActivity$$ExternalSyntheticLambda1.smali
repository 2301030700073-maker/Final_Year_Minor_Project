.class public final synthetic Lorg/wikipedia/yearinreview/YearInReviewOnboardingActivity$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/wikipedia/yearinreview/YearInReviewOnboardingActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/yearinreview/YearInReviewOnboardingActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/yearinreview/YearInReviewOnboardingActivity$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/yearinreview/YearInReviewOnboardingActivity$$ExternalSyntheticLambda1;->f$0:Lorg/wikipedia/yearinreview/YearInReviewOnboardingActivity;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 29

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lorg/wikipedia/yearinreview/YearInReviewOnboardingActivity$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 6
    .line 7
    iget-object v0, v0, Lorg/wikipedia/yearinreview/YearInReviewOnboardingActivity$$ExternalSyntheticLambda1;->f$0:Lorg/wikipedia/yearinreview/YearInReviewOnboardingActivity;

    .line 8
    .line 9
    const/4 v3, 0x2

    .line 10
    const/4 v4, 0x0

    .line 11
    const/4 v5, 0x1

    .line 12
    packed-switch v1, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    move-object/from16 v10, p1

    .line 16
    .line 17
    check-cast v10, Landroidx/compose/runtime/GapComposer;

    .line 18
    .line 19
    move-object/from16 v1, p2

    .line 20
    .line 21
    check-cast v1, Ljava/lang/Integer;

    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    sget v6, Lorg/wikipedia/yearinreview/YearInReviewOnboardingActivity;->$r8$clinit:I

    .line 28
    .line 29
    and-int/lit8 v6, v1, 0x3

    .line 30
    .line 31
    if-eq v6, v3, :cond_0

    .line 32
    .line 33
    move v6, v5

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    move v6, v4

    .line 36
    :goto_0
    and-int/2addr v1, v5

    .line 37
    invoke-virtual {v10, v1, v6}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_c

    .line 42
    .line 43
    iget-object v1, v0, Lorg/wikipedia/yearinreview/YearInReviewOnboardingActivity;->viewModel$delegate:Lokhttp3/Request$Builder;

    .line 44
    .line 45
    invoke-virtual {v1}, Lokhttp3/Request$Builder;->getValue()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    check-cast v1, Lorg/wikipedia/yearinreview/YearInReviewOnboardingViewModel;

    .line 50
    .line 51
    iget-object v1, v1, Lorg/wikipedia/yearinreview/YearInReviewOnboardingViewModel;->uiState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 52
    .line 53
    invoke-static {v1, v10}, Landroidx/compose/runtime/Updater;->collectAsState(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/MutableState;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    check-cast v1, Lorg/wikipedia/util/UiState;

    .line 62
    .line 63
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v6

    .line 67
    sget-object v7, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 68
    .line 69
    if-ne v6, v7, :cond_1

    .line 70
    .line 71
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 72
    .line 73
    invoke-static {v6}, Landroidx/compose/runtime/Updater;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 74
    .line 75
    .line 76
    move-result-object v6

    .line 77
    invoke-virtual {v10, v6}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    :cond_1
    check-cast v6, Landroidx/compose/runtime/MutableState;

    .line 81
    .line 82
    invoke-interface {v6}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v8

    .line 86
    check-cast v8, Ljava/lang/Boolean;

    .line 87
    .line 88
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    .line 89
    .line 90
    .line 91
    move-result v8

    .line 92
    const/16 v9, 0xc

    .line 93
    .line 94
    if-eqz v8, :cond_7

    .line 95
    .line 96
    const v8, 0x2fb3d0ee

    .line 97
    .line 98
    .line 99
    invoke-virtual {v10, v8}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 100
    .line 101
    .line 102
    const v8, 0x7f120abc

    .line 103
    .line 104
    .line 105
    invoke-static {v8, v10}, Lcoil3/util/UtilsKt;->stringResource(ILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v8

    .line 109
    const v11, 0x7f120ab9

    .line 110
    .line 111
    .line 112
    invoke-static {v11, v10}, Lcoil3/util/UtilsKt;->stringResource(ILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v11

    .line 116
    const v12, 0x7f120abb

    .line 117
    .line 118
    .line 119
    invoke-static {v12, v10}, Lcoil3/util/UtilsKt;->stringResource(ILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v14

    .line 123
    const v12, 0x7f120aba

    .line 124
    .line 125
    .line 126
    invoke-static {v12, v10}, Lcoil3/util/UtilsKt;->stringResource(ILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v17

    .line 130
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v12

    .line 134
    if-ne v12, v7, :cond_2

    .line 135
    .line 136
    new-instance v12, Lorg/wikipedia/search/HybridSearchResultsScreenKt$$ExternalSyntheticLambda32;

    .line 137
    .line 138
    invoke-direct {v12, v6, v9}, Lorg/wikipedia/search/HybridSearchResultsScreenKt$$ExternalSyntheticLambda32;-><init>(Landroidx/compose/runtime/MutableState;I)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v10, v12}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 142
    .line 143
    .line 144
    :cond_2
    move-object/from16 v20, v12

    .line 145
    .line 146
    check-cast v20, Lkotlin/jvm/functions/Function0;

    .line 147
    .line 148
    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    move-result v12

    .line 152
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v13

    .line 156
    if-nez v12, :cond_3

    .line 157
    .line 158
    if-ne v13, v7, :cond_4

    .line 159
    .line 160
    :cond_3
    new-instance v13, Lorg/wikipedia/yearinreview/YearInReviewOnboardingActivity$$ExternalSyntheticLambda4;

    .line 161
    .line 162
    invoke-direct {v13, v0, v4}, Lorg/wikipedia/yearinreview/YearInReviewOnboardingActivity$$ExternalSyntheticLambda4;-><init>(Lorg/wikipedia/yearinreview/YearInReviewOnboardingActivity;I)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v10, v13}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 166
    .line 167
    .line 168
    :cond_4
    move-object/from16 v21, v13

    .line 169
    .line 170
    check-cast v21, Lkotlin/jvm/functions/Function0;

    .line 171
    .line 172
    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    move-result v12

    .line 176
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object v13

    .line 180
    if-nez v12, :cond_5

    .line 181
    .line 182
    if-ne v13, v7, :cond_6

    .line 183
    .line 184
    :cond_5
    new-instance v13, Lorg/wikipedia/yearinreview/YearInReviewOnboardingActivity$$ExternalSyntheticLambda4;

    .line 185
    .line 186
    invoke-direct {v13, v0, v5}, Lorg/wikipedia/yearinreview/YearInReviewOnboardingActivity$$ExternalSyntheticLambda4;-><init>(Lorg/wikipedia/yearinreview/YearInReviewOnboardingActivity;I)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v10, v13}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 190
    .line 191
    .line 192
    :cond_6
    move-object/from16 v22, v13

    .line 193
    .line 194
    check-cast v22, Lkotlin/jvm/functions/Function0;

    .line 195
    .line 196
    const/16 v25, 0x180

    .line 197
    .line 198
    const/16 v26, 0xaed

    .line 199
    .line 200
    move-object v5, v6

    .line 201
    const/4 v6, 0x0

    .line 202
    move-object v12, v7

    .line 203
    move-object v7, v8

    .line 204
    const/4 v8, 0x0

    .line 205
    move v13, v9

    .line 206
    const/4 v9, 0x0

    .line 207
    move-object/from16 v23, v10

    .line 208
    .line 209
    move-object v10, v11

    .line 210
    const/4 v11, 0x0

    .line 211
    move-object v15, v12

    .line 212
    const/4 v12, 0x0

    .line 213
    move/from16 v16, v13

    .line 214
    .line 215
    const/4 v13, 0x0

    .line 216
    move-object/from16 v19, v15

    .line 217
    .line 218
    move/from16 v18, v16

    .line 219
    .line 220
    const-wide/16 v15, 0x0

    .line 221
    .line 222
    move/from16 v24, v18

    .line 223
    .line 224
    move-object/from16 v27, v19

    .line 225
    .line 226
    const-wide/16 v18, 0x0

    .line 227
    .line 228
    move/from16 v28, v24

    .line 229
    .line 230
    const/16 v24, 0x0

    .line 231
    .line 232
    move-object/from16 v3, v27

    .line 233
    .line 234
    invoke-static/range {v6 .. v26}, Lorg/wikipedia/compose/components/TabsBoxKt;->WikipediaAlertDialog-sK9R1Co(Landroidx/compose/ui/Modifier;Ljava/lang/String;Landroidx/compose/ui/Modifier;ILjava/lang/String;Landroidx/compose/ui/Modifier;ILkotlin/jvm/functions/Function2;Ljava/lang/String;JLjava/lang/String;JLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/GapComposer;III)V

    .line 235
    .line 236
    .line 237
    move-object/from16 v10, v23

    .line 238
    .line 239
    invoke-virtual {v10, v4}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 240
    .line 241
    .line 242
    goto :goto_1

    .line 243
    :cond_7
    move-object v5, v6

    .line 244
    move-object v3, v7

    .line 245
    const v6, 0x2fc4410f

    .line 246
    .line 247
    .line 248
    invoke-virtual {v10, v6}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {v10, v4}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 252
    .line 253
    .line 254
    :goto_1
    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 255
    .line 256
    .line 257
    move-result v4

    .line 258
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 259
    .line 260
    .line 261
    move-result-object v6

    .line 262
    if-nez v4, :cond_8

    .line 263
    .line 264
    if-ne v6, v3, :cond_9

    .line 265
    .line 266
    :cond_8
    new-instance v6, Lorg/wikipedia/yearinreview/YearInReviewOnboardingActivity$$ExternalSyntheticLambda4;

    .line 267
    .line 268
    const/4 v4, 0x2

    .line 269
    invoke-direct {v6, v0, v4}, Lorg/wikipedia/yearinreview/YearInReviewOnboardingActivity$$ExternalSyntheticLambda4;-><init>(Lorg/wikipedia/yearinreview/YearInReviewOnboardingActivity;I)V

    .line 270
    .line 271
    .line 272
    invoke-virtual {v10, v6}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 273
    .line 274
    .line 275
    :cond_9
    move-object v8, v6

    .line 276
    check-cast v8, Lkotlin/jvm/functions/Function0;

    .line 277
    .line 278
    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 279
    .line 280
    .line 281
    move-result v4

    .line 282
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 283
    .line 284
    .line 285
    move-result-object v6

    .line 286
    if-nez v4, :cond_a

    .line 287
    .line 288
    if-ne v6, v3, :cond_b

    .line 289
    .line 290
    :cond_a
    new-instance v6, Lorg/wikipedia/settings/AboutActivityKt$$ExternalSyntheticLambda11;

    .line 291
    .line 292
    const/16 v13, 0xc

    .line 293
    .line 294
    invoke-direct {v6, v13, v0, v5}, Lorg/wikipedia/settings/AboutActivityKt$$ExternalSyntheticLambda11;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 295
    .line 296
    .line 297
    invoke-virtual {v10, v6}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 298
    .line 299
    .line 300
    :cond_b
    move-object v9, v6

    .line 301
    check-cast v9, Lkotlin/jvm/functions/Function0;

    .line 302
    .line 303
    const/4 v11, 0x0

    .line 304
    const/4 v12, 0x1

    .line 305
    const/4 v6, 0x0

    .line 306
    move-object v7, v1

    .line 307
    invoke-static/range {v6 .. v12}, Lorg/wikipedia/yearinreview/YearInReviewDialog;->YearInReviewOnboardingScreen(Landroidx/compose/ui/Modifier;Lorg/wikipedia/util/UiState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/GapComposer;II)V

    .line 308
    .line 309
    .line 310
    goto :goto_2

    .line 311
    :cond_c
    move-object/from16 v23, v10

    .line 312
    .line 313
    invoke-virtual/range {v23 .. v23}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 314
    .line 315
    .line 316
    :goto_2
    return-object v2

    .line 317
    :pswitch_0
    move-object/from16 v1, p1

    .line 318
    .line 319
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 320
    .line 321
    move-object/from16 v3, p2

    .line 322
    .line 323
    check-cast v3, Ljava/lang/Integer;

    .line 324
    .line 325
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 326
    .line 327
    .line 328
    move-result v3

    .line 329
    sget v6, Lorg/wikipedia/yearinreview/YearInReviewOnboardingActivity;->$r8$clinit:I

    .line 330
    .line 331
    and-int/lit8 v6, v3, 0x3

    .line 332
    .line 333
    const/4 v7, 0x2

    .line 334
    if-eq v6, v7, :cond_d

    .line 335
    .line 336
    move v4, v5

    .line 337
    :cond_d
    and-int/2addr v3, v5

    .line 338
    invoke-virtual {v1, v3, v4}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 339
    .line 340
    .line 341
    move-result v3

    .line 342
    if-eqz v3, :cond_e

    .line 343
    .line 344
    new-instance v3, Lorg/wikipedia/yearinreview/YearInReviewOnboardingActivity$$ExternalSyntheticLambda1;

    .line 345
    .line 346
    invoke-direct {v3, v0, v5}, Lorg/wikipedia/yearinreview/YearInReviewOnboardingActivity$$ExternalSyntheticLambda1;-><init>(Lorg/wikipedia/yearinreview/YearInReviewOnboardingActivity;I)V

    .line 347
    .line 348
    .line 349
    const v0, -0x3537512d    # -6575977.5f

    .line 350
    .line 351
    .line 352
    invoke-static {v0, v3, v1}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 353
    .line 354
    .line 355
    move-result-object v0

    .line 356
    const/16 v3, 0x30

    .line 357
    .line 358
    const/4 v4, 0x0

    .line 359
    invoke-static {v4, v0, v1, v3, v5}, Lokhttp3/Cache$Companion;->BaseTheme(Lorg/wikipedia/theme/Theme;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;II)V

    .line 360
    .line 361
    .line 362
    goto :goto_3

    .line 363
    :cond_e
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 364
    .line 365
    .line 366
    :goto_3
    return-object v2

    .line 367
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
