.class public final Landroidx/compose/material3/NavigationDrawerKt$NavigationDrawerItem$2;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $badge:Lkotlin/jvm/functions/Function2;

.field public final synthetic $colors:Landroidx/compose/material3/DefaultDrawerItemsColor;

.field public final synthetic $icon:Lkotlin/jvm/functions/Function2;

.field public final synthetic $label:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

.field public final synthetic $selected:Z


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function2;Landroidx/compose/material3/DefaultDrawerItemsColor;ZLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/material3/NavigationDrawerKt$NavigationDrawerItem$2;->$icon:Lkotlin/jvm/functions/Function2;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/material3/NavigationDrawerKt$NavigationDrawerItem$2;->$colors:Landroidx/compose/material3/DefaultDrawerItemsColor;

    .line 7
    .line 8
    iput-boolean p3, p0, Landroidx/compose/material3/NavigationDrawerKt$NavigationDrawerItem$2;->$selected:Z

    .line 9
    .line 10
    iput-object p4, p0, Landroidx/compose/material3/NavigationDrawerKt$NavigationDrawerItem$2;->$badge:Lkotlin/jvm/functions/Function2;

    .line 11
    .line 12
    iput-object p5, p0, Landroidx/compose/material3/NavigationDrawerKt$NavigationDrawerItem$2;->$label:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 6
    .line 7
    move-object/from16 v2, p2

    .line 8
    .line 9
    check-cast v2, Ljava/lang/Number;

    .line 10
    .line 11
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    and-int/lit8 v3, v2, 0x3

    .line 16
    .line 17
    const/4 v4, 0x2

    .line 18
    const/4 v5, 0x1

    .line 19
    const/4 v6, 0x0

    .line 20
    if-eq v3, v4, :cond_0

    .line 21
    .line 22
    move v3, v5

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move v3, v6

    .line 25
    :goto_0
    and-int/2addr v2, v5

    .line 26
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 27
    .line 28
    invoke-virtual {v1, v2, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_c

    .line 33
    .line 34
    const/4 v11, 0x0

    .line 35
    const/16 v12, 0xa

    .line 36
    .line 37
    sget-object v7, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 38
    .line 39
    const/high16 v8, 0x41800000    # 16.0f

    .line 40
    .line 41
    const/4 v9, 0x0

    .line 42
    const/high16 v10, 0x41c00000    # 24.0f

    .line 43
    .line 44
    invoke-static/range {v7 .. v12}, Landroidx/compose/foundation/layout/OffsetKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    sget-object v3, Landroidx/compose/ui/Alignment$Companion;->CenterVertically:Landroidx/compose/ui/BiasAlignment$Vertical;

    .line 49
    .line 50
    sget-object v4, Landroidx/compose/foundation/layout/OffsetKt;->Start:Landroidx/compose/foundation/layout/Arrangement$End$1;

    .line 51
    .line 52
    const/16 v8, 0x30

    .line 53
    .line 54
    invoke-static {v4, v3, v1, v8}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    invoke-static {v1}, Landroidx/compose/runtime/Updater;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;)I

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 63
    .line 64
    .line 65
    move-result-object v8

    .line 66
    invoke-static {v1, v2}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 71
    .line 72
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    .line 74
    .line 75
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 76
    .line 77
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 78
    .line 79
    .line 80
    iget-boolean v10, v1, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 81
    .line 82
    if-eqz v10, :cond_1

    .line 83
    .line 84
    invoke-virtual {v1, v9}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 85
    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_1
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 89
    .line 90
    .line 91
    :goto_1
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 92
    .line 93
    invoke-static {v1, v3, v10}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 94
    .line 95
    .line 96
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 97
    .line 98
    invoke-static {v1, v8, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 99
    .line 100
    .line 101
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 102
    .line 103
    iget-boolean v11, v1, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 104
    .line 105
    if-nez v11, :cond_2

    .line 106
    .line 107
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v11

    .line 111
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 112
    .line 113
    .line 114
    move-result-object v12

    .line 115
    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result v11

    .line 119
    if-nez v11, :cond_3

    .line 120
    .line 121
    :cond_2
    invoke-static {v4, v1, v4, v8}, Landroidx/compose/ui/Modifier$-CC;->m(ILandroidx/compose/runtime/GapComposer;ILandroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;)V

    .line 122
    .line 123
    .line 124
    :cond_3
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 125
    .line 126
    invoke-static {v1, v2, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 127
    .line 128
    .line 129
    const/16 v11, 0x8

    .line 130
    .line 131
    iget-object v12, v0, Landroidx/compose/material3/NavigationDrawerKt$NavigationDrawerItem$2;->$icon:Lkotlin/jvm/functions/Function2;

    .line 132
    .line 133
    iget-object v13, v0, Landroidx/compose/material3/NavigationDrawerKt$NavigationDrawerItem$2;->$colors:Landroidx/compose/material3/DefaultDrawerItemsColor;

    .line 134
    .line 135
    iget-boolean v14, v0, Landroidx/compose/material3/NavigationDrawerKt$NavigationDrawerItem$2;->$selected:Z

    .line 136
    .line 137
    if-eqz v12, :cond_5

    .line 138
    .line 139
    const v15, -0x7809fb0b

    .line 140
    .line 141
    .line 142
    invoke-virtual {v1, v15}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 143
    .line 144
    .line 145
    const v15, 0x4407aeea

    .line 146
    .line 147
    .line 148
    invoke-virtual {v1, v15}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 149
    .line 150
    .line 151
    move-object/from16 p1, v3

    .line 152
    .line 153
    if-eqz v14, :cond_4

    .line 154
    .line 155
    iget-wide v2, v13, Landroidx/compose/material3/DefaultDrawerItemsColor;->selectedIconColor:J

    .line 156
    .line 157
    goto :goto_2

    .line 158
    :cond_4
    iget-wide v2, v13, Landroidx/compose/material3/DefaultDrawerItemsColor;->unselectedIconColor:J

    .line 159
    .line 160
    :goto_2
    new-instance v15, Landroidx/compose/ui/graphics/Color;

    .line 161
    .line 162
    invoke-direct {v15, v2, v3}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 163
    .line 164
    .line 165
    invoke-static {v15, v1}, Landroidx/compose/runtime/Updater;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    .line 166
    .line 167
    .line 168
    move-result-object v2

    .line 169
    invoke-virtual {v1, v6}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 170
    .line 171
    .line 172
    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v2

    .line 176
    check-cast v2, Landroidx/compose/ui/graphics/Color;

    .line 177
    .line 178
    iget-wide v2, v2, Landroidx/compose/ui/graphics/Color;->value:J

    .line 179
    .line 180
    sget-object v15, Landroidx/compose/material3/ContentColorKt;->LocalContentColor:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 181
    .line 182
    new-instance v5, Landroidx/compose/ui/graphics/Color;

    .line 183
    .line 184
    invoke-direct {v5, v2, v3}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v15, v5}, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;->defaultProvidedValue$runtime(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    .line 188
    .line 189
    .line 190
    move-result-object v2

    .line 191
    invoke-static {v2, v12, v1, v11}, Landroidx/compose/runtime/Updater;->CompositionLocalProvider(Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 192
    .line 193
    .line 194
    const/high16 v2, 0x41400000    # 12.0f

    .line 195
    .line 196
    invoke-static {v7, v2}, Landroidx/compose/foundation/layout/SizeKt;->width-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 197
    .line 198
    .line 199
    move-result-object v3

    .line 200
    invoke-static {v1, v3}, Landroidx/compose/foundation/layout/OffsetKt;->Spacer(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v1, v6}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 204
    .line 205
    .line 206
    goto :goto_3

    .line 207
    :cond_5
    move-object/from16 p1, v3

    .line 208
    .line 209
    const v2, -0x7806bd6e

    .line 210
    .line 211
    .line 212
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v1, v6}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 216
    .line 217
    .line 218
    :goto_3
    new-instance v2, Landroidx/compose/foundation/layout/LayoutWeightElement;

    .line 219
    .line 220
    const/high16 v3, 0x3f800000    # 1.0f

    .line 221
    .line 222
    const/4 v5, 0x1

    .line 223
    invoke-direct {v2, v3, v5}, Landroidx/compose/foundation/layout/LayoutWeightElement;-><init>(FZ)V

    .line 224
    .line 225
    .line 226
    sget-object v3, Landroidx/compose/ui/Alignment$Companion;->TopStart:Landroidx/compose/ui/BiasAlignment;

    .line 227
    .line 228
    invoke-static {v3, v6}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/BiasAlignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 229
    .line 230
    .line 231
    move-result-object v3

    .line 232
    invoke-static {v1}, Landroidx/compose/runtime/Updater;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;)I

    .line 233
    .line 234
    .line 235
    move-result v5

    .line 236
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 237
    .line 238
    .line 239
    move-result-object v12

    .line 240
    invoke-static {v1, v2}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 241
    .line 242
    .line 243
    move-result-object v2

    .line 244
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 245
    .line 246
    .line 247
    iget-boolean v15, v1, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 248
    .line 249
    if-eqz v15, :cond_6

    .line 250
    .line 251
    invoke-virtual {v1, v9}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 252
    .line 253
    .line 254
    goto :goto_4

    .line 255
    :cond_6
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 256
    .line 257
    .line 258
    :goto_4
    invoke-static {v1, v3, v10}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 259
    .line 260
    .line 261
    move-object/from16 v3, p1

    .line 262
    .line 263
    invoke-static {v1, v12, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 264
    .line 265
    .line 266
    iget-boolean v3, v1, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 267
    .line 268
    if-nez v3, :cond_7

    .line 269
    .line 270
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 271
    .line 272
    .line 273
    move-result-object v3

    .line 274
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 275
    .line 276
    .line 277
    move-result-object v9

    .line 278
    invoke-static {v3, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 279
    .line 280
    .line 281
    move-result v3

    .line 282
    if-nez v3, :cond_8

    .line 283
    .line 284
    :cond_7
    invoke-static {v5, v1, v5, v8}, Landroidx/compose/ui/Modifier$-CC;->m(ILandroidx/compose/runtime/GapComposer;ILandroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;)V

    .line 285
    .line 286
    .line 287
    :cond_8
    invoke-static {v1, v2, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 288
    .line 289
    .line 290
    const v2, 0x4c00a0b6    # 3.3719E7f

    .line 291
    .line 292
    .line 293
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 294
    .line 295
    .line 296
    if-eqz v14, :cond_9

    .line 297
    .line 298
    iget-wide v2, v13, Landroidx/compose/material3/DefaultDrawerItemsColor;->selectedTextColor:J

    .line 299
    .line 300
    goto :goto_5

    .line 301
    :cond_9
    iget-wide v2, v13, Landroidx/compose/material3/DefaultDrawerItemsColor;->unselectedTextColor:J

    .line 302
    .line 303
    :goto_5
    new-instance v4, Landroidx/compose/ui/graphics/Color;

    .line 304
    .line 305
    invoke-direct {v4, v2, v3}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 306
    .line 307
    .line 308
    invoke-static {v4, v1}, Landroidx/compose/runtime/Updater;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    .line 309
    .line 310
    .line 311
    move-result-object v2

    .line 312
    invoke-virtual {v1, v6}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 313
    .line 314
    .line 315
    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 316
    .line 317
    .line 318
    move-result-object v2

    .line 319
    check-cast v2, Landroidx/compose/ui/graphics/Color;

    .line 320
    .line 321
    iget-wide v2, v2, Landroidx/compose/ui/graphics/Color;->value:J

    .line 322
    .line 323
    sget-object v4, Landroidx/compose/material3/ContentColorKt;->LocalContentColor:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 324
    .line 325
    new-instance v5, Landroidx/compose/ui/graphics/Color;

    .line 326
    .line 327
    invoke-direct {v5, v2, v3}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 328
    .line 329
    .line 330
    invoke-virtual {v4, v5}, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;->defaultProvidedValue$runtime(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    .line 331
    .line 332
    .line 333
    move-result-object v2

    .line 334
    iget-object v3, v0, Landroidx/compose/material3/NavigationDrawerKt$NavigationDrawerItem$2;->$label:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 335
    .line 336
    invoke-static {v2, v3, v1, v11}, Landroidx/compose/runtime/Updater;->CompositionLocalProvider(Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 337
    .line 338
    .line 339
    const/4 v5, 0x1

    .line 340
    invoke-virtual {v1, v5}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 341
    .line 342
    .line 343
    iget-object v0, v0, Landroidx/compose/material3/NavigationDrawerKt$NavigationDrawerItem$2;->$badge:Lkotlin/jvm/functions/Function2;

    .line 344
    .line 345
    if-eqz v0, :cond_b

    .line 346
    .line 347
    const v2, -0x7802e12f

    .line 348
    .line 349
    .line 350
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 351
    .line 352
    .line 353
    const/high16 v2, 0x41400000    # 12.0f

    .line 354
    .line 355
    invoke-static {v7, v2}, Landroidx/compose/foundation/layout/SizeKt;->width-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 356
    .line 357
    .line 358
    move-result-object v2

    .line 359
    invoke-static {v1, v2}, Landroidx/compose/foundation/layout/OffsetKt;->Spacer(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    .line 360
    .line 361
    .line 362
    const v2, -0x217a7b24

    .line 363
    .line 364
    .line 365
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 366
    .line 367
    .line 368
    if-eqz v14, :cond_a

    .line 369
    .line 370
    iget-wide v2, v13, Landroidx/compose/material3/DefaultDrawerItemsColor;->selectedBadgeColor:J

    .line 371
    .line 372
    goto :goto_6

    .line 373
    :cond_a
    iget-wide v2, v13, Landroidx/compose/material3/DefaultDrawerItemsColor;->unselectedBadgeColor:J

    .line 374
    .line 375
    :goto_6
    new-instance v5, Landroidx/compose/ui/graphics/Color;

    .line 376
    .line 377
    invoke-direct {v5, v2, v3}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 378
    .line 379
    .line 380
    invoke-static {v5, v1}, Landroidx/compose/runtime/Updater;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    .line 381
    .line 382
    .line 383
    move-result-object v2

    .line 384
    invoke-virtual {v1, v6}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 385
    .line 386
    .line 387
    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 388
    .line 389
    .line 390
    move-result-object v2

    .line 391
    check-cast v2, Landroidx/compose/ui/graphics/Color;

    .line 392
    .line 393
    iget-wide v2, v2, Landroidx/compose/ui/graphics/Color;->value:J

    .line 394
    .line 395
    new-instance v5, Landroidx/compose/ui/graphics/Color;

    .line 396
    .line 397
    invoke-direct {v5, v2, v3}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 398
    .line 399
    .line 400
    invoke-virtual {v4, v5}, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;->defaultProvidedValue$runtime(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    .line 401
    .line 402
    .line 403
    move-result-object v2

    .line 404
    invoke-static {v2, v0, v1, v11}, Landroidx/compose/runtime/Updater;->CompositionLocalProvider(Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 405
    .line 406
    .line 407
    invoke-virtual {v1, v6}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 408
    .line 409
    .line 410
    :goto_7
    const/4 v5, 0x1

    .line 411
    goto :goto_8

    .line 412
    :cond_b
    const v0, -0x77ff948e

    .line 413
    .line 414
    .line 415
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 416
    .line 417
    .line 418
    invoke-virtual {v1, v6}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 419
    .line 420
    .line 421
    goto :goto_7

    .line 422
    :goto_8
    invoke-virtual {v1, v5}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 423
    .line 424
    .line 425
    goto :goto_9

    .line 426
    :cond_c
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 427
    .line 428
    .line 429
    :goto_9
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 430
    .line 431
    return-object v0
.end method
