.class public abstract Lnet/newpipe/app/navigation/NavDisplayKt;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field public static final lambda$-1159499601:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

.field public static final lambda$-1962361402:Landroidx/compose/runtime/internal/ComposableLambdaImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lnet/newpipe/app/navigation/ComposableSingletons$NavModuleKt$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lnet/newpipe/app/navigation/ComposableSingletons$NavModuleKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 5
    .line 6
    .line 7
    new-instance v1, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 8
    .line 9
    const v2, -0x451c8f51

    .line 10
    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    invoke-direct {v1, v2, v3, v0}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLkotlin/Function;)V

    .line 14
    .line 15
    .line 16
    sput-object v1, Lnet/newpipe/app/navigation/NavDisplayKt;->lambda$-1159499601:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 17
    .line 18
    new-instance v0, Lnet/newpipe/app/navigation/ComposableSingletons$NavModuleKt$$ExternalSyntheticLambda0;

    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    invoke-direct {v0, v1}, Lnet/newpipe/app/navigation/ComposableSingletons$NavModuleKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 22
    .line 23
    .line 24
    new-instance v1, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 25
    .line 26
    const v2, -0x74f7423a

    .line 27
    .line 28
    .line 29
    invoke-direct {v1, v2, v3, v0}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLkotlin/Function;)V

    .line 30
    .line 31
    .line 32
    sput-object v1, Lnet/newpipe/app/navigation/NavDisplayKt;->lambda$-1962361402:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 33
    .line 34
    return-void
.end method

.method public static final NavDisplay(Lnet/newpipe/app/navigation/Destination;Lkotlin/jvm/functions/Function0;Lnet/newpipe/app/navigation/Navigator;Landroidx/compose/runtime/Composer;I)V
    .locals 21

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-object/from16 v14, p3

    .line 12
    .line 13
    check-cast v14, Landroidx/compose/runtime/GapComposer;

    .line 14
    .line 15
    const v0, -0x6b7941e9

    .line 16
    .line 17
    .line 18
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    const/4 v3, 0x2

    .line 26
    const/4 v4, 0x4

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    move v0, v4

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    move v0, v3

    .line 32
    :goto_0
    or-int v0, p4, v0

    .line 33
    .line 34
    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v5

    .line 38
    const/16 v6, 0x20

    .line 39
    .line 40
    if-eqz v5, :cond_1

    .line 41
    .line 42
    move v5, v6

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    const/16 v5, 0x10

    .line 45
    .line 46
    :goto_1
    or-int/2addr v0, v5

    .line 47
    or-int/lit16 v0, v0, 0x80

    .line 48
    .line 49
    and-int/lit16 v5, v0, 0x93

    .line 50
    .line 51
    const/16 v7, 0x92

    .line 52
    .line 53
    const/4 v8, 0x0

    .line 54
    const/4 v9, 0x1

    .line 55
    if-eq v5, v7, :cond_2

    .line 56
    .line 57
    move v5, v9

    .line 58
    goto :goto_2

    .line 59
    :cond_2
    move v5, v8

    .line 60
    :goto_2
    and-int/lit8 v7, v0, 0x1

    .line 61
    .line 62
    invoke-virtual {v14, v7, v5}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 63
    .line 64
    .line 65
    move-result v5

    .line 66
    if-eqz v5, :cond_1c

    .line 67
    .line 68
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->startDefaults()V

    .line 69
    .line 70
    .line 71
    and-int/lit8 v5, p4, 0x1

    .line 72
    .line 73
    const/4 v7, 0x0

    .line 74
    sget-object v10, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 75
    .line 76
    if-eqz v5, :cond_4

    .line 77
    .line 78
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->getDefaultsInvalid()Z

    .line 79
    .line 80
    .line 81
    move-result v5

    .line 82
    if-eqz v5, :cond_3

    .line 83
    .line 84
    goto :goto_3

    .line 85
    :cond_3
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 86
    .line 87
    .line 88
    move-object/from16 v0, p2

    .line 89
    .line 90
    goto :goto_6

    .line 91
    :cond_4
    :goto_3
    and-int/lit8 v5, v0, 0xe

    .line 92
    .line 93
    if-eq v5, v4, :cond_5

    .line 94
    .line 95
    move v5, v8

    .line 96
    goto :goto_4

    .line 97
    :cond_5
    move v5, v9

    .line 98
    :goto_4
    and-int/lit8 v0, v0, 0x70

    .line 99
    .line 100
    if-ne v0, v6, :cond_6

    .line 101
    .line 102
    move v0, v9

    .line 103
    goto :goto_5

    .line 104
    :cond_6
    move v0, v8

    .line 105
    :goto_5
    or-int/2addr v0, v5

    .line 106
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v5

    .line 110
    if-nez v0, :cond_7

    .line 111
    .line 112
    if-ne v5, v10, :cond_8

    .line 113
    .line 114
    :cond_7
    new-instance v5, Lcoil3/ComponentRegistry$Builder$$ExternalSyntheticLambda0;

    .line 115
    .line 116
    const/16 v0, 0x12

    .line 117
    .line 118
    invoke-direct {v5, v1, v2, v0}, Lcoil3/ComponentRegistry$Builder$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v14, v5}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    :cond_8
    check-cast v5, Lkotlin/jvm/functions/Function0;

    .line 125
    .line 126
    invoke-static {v14}, Lorg/koin/compose/KoinApplicationKt;->currentKoinScope(Landroidx/compose/runtime/Composer;)Lorg/koin/core/scope/Scope;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    invoke-interface {v5}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v5

    .line 134
    check-cast v5, Lorg/koin/core/parameter/ParametersHolder;

    .line 135
    .line 136
    invoke-virtual {v14, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    move-result v6

    .line 140
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    move-result v11

    .line 144
    or-int/2addr v6, v11

    .line 145
    invoke-virtual {v14, v5}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    move-result v11

    .line 149
    or-int/2addr v6, v11

    .line 150
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v11

    .line 154
    if-nez v6, :cond_9

    .line 155
    .line 156
    if-ne v11, v10, :cond_a

    .line 157
    .line 158
    :cond_9
    const-class v6, Lnet/newpipe/app/navigation/Navigator;

    .line 159
    .line 160
    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 161
    .line 162
    .line 163
    move-result-object v6

    .line 164
    invoke-virtual {v0, v6, v5}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;)Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v11

    .line 168
    invoke-virtual {v14, v11}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 169
    .line 170
    .line 171
    :cond_a
    move-object v0, v11

    .line 172
    check-cast v0, Lnet/newpipe/app/navigation/Navigator;

    .line 173
    .line 174
    :goto_6
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->endDefaults()V

    .line 175
    .line 176
    .line 177
    new-array v5, v8, [Ljava/lang/Object;

    .line 178
    .line 179
    new-instance v6, Lkotlinx/serialization/internal/ObjectSerializer;

    .line 180
    .line 181
    sget-object v11, Lnet/newpipe/app/navigation/Destination;->Companion:Lnet/newpipe/app/navigation/Destination$Companion;

    .line 182
    .line 183
    invoke-virtual {v11}, Lnet/newpipe/app/navigation/Destination$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    .line 184
    .line 185
    .line 186
    move-result-object v11

    .line 187
    invoke-direct {v6, v11}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 191
    .line 192
    .line 193
    move-result v11

    .line 194
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object v12

    .line 198
    if-nez v11, :cond_b

    .line 199
    .line 200
    if-ne v12, v10, :cond_c

    .line 201
    .line 202
    :cond_b
    new-instance v12, Lnet/newpipe/app/navigation/NavDisplayKt$$ExternalSyntheticLambda1;

    .line 203
    .line 204
    invoke-direct {v12, v0, v8}, Lnet/newpipe/app/navigation/NavDisplayKt$$ExternalSyntheticLambda1;-><init>(Lnet/newpipe/app/navigation/Navigator;I)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v14, v12}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 208
    .line 209
    .line 210
    :cond_c
    check-cast v12, Lkotlin/jvm/functions/Function0;

    .line 211
    .line 212
    sget-object v11, Landroidx/savedstate/serialization/SavedStateConfiguration;->DEFAULT:Landroidx/savedstate/serialization/SavedStateConfiguration;

    .line 213
    .line 214
    new-instance v13, Landroidx/compose/material3/TextKt$$ExternalSyntheticLambda2;

    .line 215
    .line 216
    const/16 v15, 0xe

    .line 217
    .line 218
    invoke-direct {v13, v6, v11, v15}, Landroidx/compose/material3/TextKt$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 219
    .line 220
    .line 221
    new-instance v15, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda4;

    .line 222
    .line 223
    const/16 v7, 0x1a

    .line 224
    .line 225
    invoke-direct {v15, v6, v11, v7}, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda4;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 226
    .line 227
    .line 228
    new-instance v6, Landroidx/cardview/widget/CardView$1;

    .line 229
    .line 230
    const/16 v7, 0xd

    .line 231
    .line 232
    invoke-direct {v6, v7, v13, v15, v8}, Landroidx/cardview/widget/CardView$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    .line 233
    .line 234
    .line 235
    invoke-static {v5, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    move-result-object v5

    .line 239
    const/16 v7, 0x180

    .line 240
    .line 241
    invoke-static {v5, v6, v12, v14, v7}, Landroidx/compose/runtime/saveable/SaverKt;->rememberSaveable([Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object v5

    .line 245
    check-cast v5, Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 246
    .line 247
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 248
    .line 249
    .line 250
    move-result v6

    .line 251
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 252
    .line 253
    .line 254
    move-result-object v7

    .line 255
    if-nez v6, :cond_d

    .line 256
    .line 257
    if-ne v7, v10, :cond_e

    .line 258
    .line 259
    :cond_d
    new-instance v7, Lnet/newpipe/app/navigation/NavDisplayKt$$ExternalSyntheticLambda1;

    .line 260
    .line 261
    invoke-direct {v7, v0, v9}, Lnet/newpipe/app/navigation/NavDisplayKt$$ExternalSyntheticLambda1;-><init>(Lnet/newpipe/app/navigation/Navigator;I)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {v14, v7}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 265
    .line 266
    .line 267
    :cond_e
    move-object v6, v7

    .line 268
    check-cast v6, Lkotlin/jvm/functions/Function0;

    .line 269
    .line 270
    invoke-static {v14}, Landroidx/compose/runtime/saveable/SaverKt;->rememberSaveableStateHolder(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/saveable/SaveableStateHolderImpl;

    .line 271
    .line 272
    .line 273
    move-result-object v7

    .line 274
    invoke-virtual {v14, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 275
    .line 276
    .line 277
    move-result v11

    .line 278
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 279
    .line 280
    .line 281
    move-result-object v12

    .line 282
    if-nez v11, :cond_f

    .line 283
    .line 284
    if-ne v12, v10, :cond_10

    .line 285
    .line 286
    :cond_f
    new-instance v12, Landroidx/navigation3/runtime/SaveableStateHolderNavEntryDecorator;

    .line 287
    .line 288
    new-instance v11, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;

    .line 289
    .line 290
    const/16 v13, 0x16

    .line 291
    .line 292
    invoke-direct {v11, v7, v13}, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    .line 293
    .line 294
    .line 295
    new-instance v13, Landroidx/compose/material3/TabKt$$ExternalSyntheticLambda1;

    .line 296
    .line 297
    invoke-direct {v13, v7, v4}, Landroidx/compose/material3/TabKt$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;I)V

    .line 298
    .line 299
    .line 300
    new-instance v4, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 301
    .line 302
    const v7, -0x4eba27d9

    .line 303
    .line 304
    .line 305
    invoke-direct {v4, v7, v9, v13}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLkotlin/Function;)V

    .line 306
    .line 307
    .line 308
    invoke-direct {v12, v11, v4}, Landroidx/navigation3/runtime/NavEntryDecorator;-><init>(Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    .line 309
    .line 310
    .line 311
    invoke-virtual {v14, v12}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 312
    .line 313
    .line 314
    :cond_10
    check-cast v12, Landroidx/navigation3/runtime/SaveableStateHolderNavEntryDecorator;

    .line 315
    .line 316
    sget-object v4, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->LocalViewModelStoreOwner:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 317
    .line 318
    invoke-virtual {v14, v4}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 319
    .line 320
    .line 321
    move-result-object v4

    .line 322
    check-cast v4, Landroidx/lifecycle/ViewModelStoreOwner;

    .line 323
    .line 324
    if-eqz v4, :cond_1b

    .line 325
    .line 326
    new-array v7, v8, [Lkotlin/Pair;

    .line 327
    .line 328
    invoke-static {v7, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 329
    .line 330
    .line 331
    move-result-object v7

    .line 332
    check-cast v7, [Lkotlin/Pair;

    .line 333
    .line 334
    invoke-static {v7}, Landroidx/core/os/BundleKt;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    .line 335
    .line 336
    .line 337
    move-result-object v18

    .line 338
    invoke-static {v4}, Landroidx/lifecycle/ViewModelKt;->getViewModelCreationExtras(Landroidx/lifecycle/ViewModelStoreOwner;)Landroidx/lifecycle/viewmodel/CreationExtras;

    .line 339
    .line 340
    .line 341
    move-result-object v19

    .line 342
    invoke-static {v4}, Landroidx/lifecycle/ViewModelKt;->getViewModelProviderFactory(Landroidx/lifecycle/ViewModelStoreOwner;)Landroidx/lifecycle/ViewModelProvider$Factory;

    .line 343
    .line 344
    .line 345
    move-result-object v20

    .line 346
    move v7, v8

    .line 347
    iget-wide v8, v14, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 348
    .line 349
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 350
    .line 351
    .line 352
    move-result-object v8

    .line 353
    invoke-virtual {v14, v4}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 354
    .line 355
    .line 356
    move-result v9

    .line 357
    invoke-virtual {v14, v8}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 358
    .line 359
    .line 360
    move-result v13

    .line 361
    or-int/2addr v9, v13

    .line 362
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 363
    .line 364
    .line 365
    move-result-object v13

    .line 366
    if-nez v9, :cond_11

    .line 367
    .line 368
    if-ne v13, v10, :cond_12

    .line 369
    .line 370
    :cond_11
    new-instance v15, Landroidx/lifecycle/viewmodel/ViewModelStoreProvider;

    .line 371
    .line 372
    move-object/from16 v16, v4

    .line 373
    .line 374
    move-object/from16 v17, v8

    .line 375
    .line 376
    invoke-direct/range {v15 .. v20}, Landroidx/lifecycle/viewmodel/ViewModelStoreProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Ljava/lang/Long;Landroid/os/Bundle;Landroidx/lifecycle/viewmodel/CreationExtras;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    .line 377
    .line 378
    .line 379
    invoke-virtual {v14, v15}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 380
    .line 381
    .line 382
    move-object v13, v15

    .line 383
    :cond_12
    check-cast v13, Landroidx/lifecycle/viewmodel/ViewModelStoreProvider;

    .line 384
    .line 385
    sget-object v4, Landroidx/lifecycle/compose/LocalLifecycleOwnerKt;->LocalLifecycleOwner:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 386
    .line 387
    invoke-virtual {v14, v4}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 388
    .line 389
    .line 390
    move-result-object v4

    .line 391
    check-cast v4, Landroidx/lifecycle/LifecycleOwner;

    .line 392
    .line 393
    invoke-interface {v4}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 394
    .line 395
    .line 396
    move-result-object v4

    .line 397
    invoke-virtual {v14, v13}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 398
    .line 399
    .line 400
    move-result v8

    .line 401
    invoke-virtual {v14, v4}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 402
    .line 403
    .line 404
    move-result v9

    .line 405
    or-int/2addr v8, v9

    .line 406
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 407
    .line 408
    .line 409
    move-result-object v9

    .line 410
    if-nez v8, :cond_13

    .line 411
    .line 412
    if-ne v9, v10, :cond_14

    .line 413
    .line 414
    :cond_13
    new-instance v9, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda4;

    .line 415
    .line 416
    const/16 v8, 0x1d

    .line 417
    .line 418
    invoke-direct {v9, v13, v4, v8}, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda4;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 419
    .line 420
    .line 421
    invoke-virtual {v14, v9}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 422
    .line 423
    .line 424
    :cond_14
    check-cast v9, Lkotlin/jvm/functions/Function1;

    .line 425
    .line 426
    invoke-static {v13, v4, v9, v14}, Landroidx/compose/runtime/Updater;->DisposableEffect(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;)V

    .line 427
    .line 428
    .line 429
    invoke-virtual {v14, v13}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 430
    .line 431
    .line 432
    move-result v4

    .line 433
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 434
    .line 435
    .line 436
    move-result-object v8

    .line 437
    if-nez v4, :cond_16

    .line 438
    .line 439
    if-ne v8, v10, :cond_15

    .line 440
    .line 441
    goto :goto_7

    .line 442
    :cond_15
    const/4 v11, 0x1

    .line 443
    goto :goto_8

    .line 444
    :cond_16
    :goto_7
    new-instance v8, Landroidx/lifecycle/viewmodel/navigation3/ViewModelStoreNavEntryDecorator;

    .line 445
    .line 446
    new-instance v4, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;

    .line 447
    .line 448
    const/16 v9, 0x14

    .line 449
    .line 450
    invoke-direct {v4, v13, v9}, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    .line 451
    .line 452
    .line 453
    new-instance v9, Landroidx/compose/material3/TabKt$$ExternalSyntheticLambda1;

    .line 454
    .line 455
    const/4 v10, 0x3

    .line 456
    invoke-direct {v9, v13, v10}, Landroidx/compose/material3/TabKt$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;I)V

    .line 457
    .line 458
    .line 459
    new-instance v10, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 460
    .line 461
    const v13, -0x584a2e43

    .line 462
    .line 463
    .line 464
    const/4 v11, 0x1

    .line 465
    invoke-direct {v10, v13, v11, v9}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLkotlin/Function;)V

    .line 466
    .line 467
    .line 468
    invoke-direct {v8, v4, v10}, Landroidx/navigation3/runtime/NavEntryDecorator;-><init>(Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    .line 469
    .line 470
    .line 471
    invoke-virtual {v14, v8}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 472
    .line 473
    .line 474
    :goto_8
    check-cast v8, Landroidx/lifecycle/viewmodel/navigation3/ViewModelStoreNavEntryDecorator;

    .line 475
    .line 476
    new-array v3, v3, [Landroidx/navigation3/runtime/NavEntryDecorator;

    .line 477
    .line 478
    aput-object v12, v3, v7

    .line 479
    .line 480
    aput-object v8, v3, v11

    .line 481
    .line 482
    invoke-static {v3}, Lorg/jsoup/Jsoup;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 483
    .line 484
    .line 485
    move-result-object v7

    .line 486
    sget-object v3, Lorg/koin/compose/KoinApplicationKt;->LocalKoinScopeContext:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 487
    .line 488
    invoke-virtual {v14, v3}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 489
    .line 490
    .line 491
    move-result-object v3

    .line 492
    check-cast v3, Lorg/koin/compose/ComposeContextWrapper;

    .line 493
    .line 494
    iget-object v4, v3, Lorg/koin/compose/ComposeContextWrapper;->_value:Ljava/lang/Object;

    .line 495
    .line 496
    if-nez v4, :cond_18

    .line 497
    .line 498
    iget-object v4, v3, Lorg/koin/compose/ComposeContextWrapper;->setValue:Lkotlin/jvm/functions/Function0;

    .line 499
    .line 500
    if-eqz v4, :cond_17

    .line 501
    .line 502
    invoke-interface {v4}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 503
    .line 504
    .line 505
    move-result-object v4

    .line 506
    goto :goto_9

    .line 507
    :cond_17
    const/4 v4, 0x0

    .line 508
    :goto_9
    iput-object v4, v3, Lorg/koin/compose/ComposeContextWrapper;->_value:Ljava/lang/Object;

    .line 509
    .line 510
    :cond_18
    iget-object v3, v3, Lorg/koin/compose/ComposeContextWrapper;->_value:Ljava/lang/Object;

    .line 511
    .line 512
    if-eqz v3, :cond_1a

    .line 513
    .line 514
    check-cast v3, Lorg/koin/core/scope/Scope;

    .line 515
    .line 516
    const-class v4, Lkotlin/jvm/functions/Function1;

    .line 517
    .line 518
    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 519
    .line 520
    .line 521
    move-result-object v4

    .line 522
    invoke-virtual {v3, v4}, Lorg/koin/core/scope/Scope;->getAll(Lkotlin/jvm/internal/ClassReference;)Ljava/util/ArrayList;

    .line 523
    .line 524
    .line 525
    move-result-object v3

    .line 526
    new-instance v4, Landroidx/navigation3/runtime/EntryProviderScope;

    .line 527
    .line 528
    invoke-direct {v4}, Landroidx/navigation3/runtime/EntryProviderScope;-><init>()V

    .line 529
    .line 530
    .line 531
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 532
    .line 533
    .line 534
    move-result-object v3

    .line 535
    :goto_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 536
    .line 537
    .line 538
    move-result v8

    .line 539
    if-eqz v8, :cond_19

    .line 540
    .line 541
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 542
    .line 543
    .line 544
    move-result-object v8

    .line 545
    check-cast v8, Lkotlin/jvm/functions/Function1;

    .line 546
    .line 547
    invoke-interface {v8, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 548
    .line 549
    .line 550
    goto :goto_a

    .line 551
    :cond_19
    new-instance v13, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;

    .line 552
    .line 553
    const/16 v3, 0x15

    .line 554
    .line 555
    invoke-direct {v13, v4, v3}, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    .line 556
    .line 557
    .line 558
    const/4 v15, 0x0

    .line 559
    const/4 v4, 0x0

    .line 560
    move-object v3, v5

    .line 561
    const/4 v5, 0x0

    .line 562
    const/4 v8, 0x0

    .line 563
    const/4 v9, 0x0

    .line 564
    const/4 v10, 0x0

    .line 565
    const/4 v11, 0x0

    .line 566
    const/4 v12, 0x0

    .line 567
    invoke-static/range {v3 .. v15}, Lorg/jsoup/Jsoup;->NavDisplay(Ljava/util/List;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Lkotlin/jvm/functions/Function0;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;Landroidx/compose/runtime/Composer;I)V

    .line 568
    .line 569
    .line 570
    move-object v3, v0

    .line 571
    goto :goto_b

    .line 572
    :cond_1a
    const-string v0, "Can\'t retrieve Koin context value. Ensure Koin is properly initialized with startKoin() or KoinApplication."

    .line 573
    .line 574
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$2(Ljava/lang/String;)V

    .line 575
    .line 576
    .line 577
    return-void

    .line 578
    :cond_1b
    const-string v0, "No ViewModelStoreOwner was provided via LocalViewModelStoreOwner"

    .line 579
    .line 580
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$2(Ljava/lang/String;)V

    .line 581
    .line 582
    .line 583
    return-void

    .line 584
    :cond_1c
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 585
    .line 586
    .line 587
    move-object/from16 v3, p2

    .line 588
    .line 589
    :goto_b
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 590
    .line 591
    .line 592
    move-result-object v6

    .line 593
    if-eqz v6, :cond_1d

    .line 594
    .line 595
    new-instance v0, Lorg/koin/compose/KoinApplicationKt$$ExternalSyntheticLambda2;

    .line 596
    .line 597
    const/4 v5, 0x6

    .line 598
    move/from16 v4, p4

    .line 599
    .line 600
    invoke-direct/range {v0 .. v5}, Lorg/koin/compose/KoinApplicationKt$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 601
    .line 602
    .line 603
    iput-object v0, v6, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 604
    .line 605
    :cond_1d
    return-void
.end method
