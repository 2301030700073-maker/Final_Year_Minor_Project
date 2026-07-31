.class public final Landroidx/compose/material3/ButtonKt$Button$2$1;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $content:Ljava/lang/Object;

.field public final synthetic $contentPadding:Ljava/lang/Object;

.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 12
    iput p1, p0, Landroidx/compose/material3/ButtonKt$Button$2$1;->$r8$classId:I

    iput-object p2, p0, Landroidx/compose/material3/ButtonKt$Button$2$1;->$contentPadding:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/compose/material3/ButtonKt$Button$2$1;->$content:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/material3/ScaffoldKt$ScaffoldLayout$contentPadding$1$1;)V
    .locals 1

    .line 1
    const/4 v0, 0x3

    .line 2
    iput v0, p0, Landroidx/compose/material3/ButtonKt$Button$2$1;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Landroidx/compose/material3/ButtonKt$Button$2$1;->$content:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p2, p0, Landroidx/compose/material3/ButtonKt$Button$2$1;->$contentPadding:Ljava/lang/Object;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    iget v0, p0, Landroidx/compose/material3/ButtonKt$Button$2$1;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 4
    .line 5
    const/4 v2, 0x6

    .line 6
    sget-object v3, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 7
    .line 8
    const/4 v4, 0x1

    .line 9
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 10
    .line 11
    const/4 v6, 0x0

    .line 12
    iget-object v7, p0, Landroidx/compose/material3/ButtonKt$Button$2$1;->$content:Ljava/lang/Object;

    .line 13
    .line 14
    const/4 v8, 0x2

    .line 15
    iget-object p0, p0, Landroidx/compose/material3/ButtonKt$Button$2$1;->$contentPadding:Ljava/lang/Object;

    .line 16
    .line 17
    packed-switch v0, :pswitch_data_0

    .line 18
    .line 19
    .line 20
    check-cast p1, Landroidx/compose/runtime/Composer;

    .line 21
    .line 22
    check-cast p2, Ljava/lang/Number;

    .line 23
    .line 24
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 25
    .line 26
    .line 27
    move-result p2

    .line 28
    check-cast p0, Landroidx/navigation/NavBackStackEntry;

    .line 29
    .line 30
    and-int/lit8 p2, p2, 0x3

    .line 31
    .line 32
    if-ne p2, v8, :cond_1

    .line 33
    .line 34
    move-object p2, p1

    .line 35
    check-cast p2, Landroidx/compose/runtime/GapComposer;

    .line 36
    .line 37
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->getSkipping()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-nez v0, :cond_0

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_1
    :goto_0
    iget-object p2, p0, Landroidx/navigation/NavBackStackEntry;->destination:Landroidx/navigation/NavDestination;

    .line 49
    .line 50
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    check-cast p2, Landroidx/navigation/compose/ComposeNavigator$Destination;

    .line 54
    .line 55
    iget-object p2, p2, Landroidx/navigation/compose/ComposeNavigator$Destination;->content:Lkotlin/jvm/functions/Function4;

    .line 56
    .line 57
    check-cast v7, Landroidx/compose/animation/AnimatedContentScopeImpl;

    .line 58
    .line 59
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-interface {p2, v7, p0, p1, v0}, Lkotlin/jvm/functions/Function4;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    :goto_1
    return-object v5

    .line 67
    :pswitch_0
    check-cast p1, Landroidx/compose/runtime/Composer;

    .line 68
    .line 69
    check-cast p2, Ljava/lang/Number;

    .line 70
    .line 71
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 72
    .line 73
    .line 74
    move-result p2

    .line 75
    and-int/lit8 p2, p2, 0x3

    .line 76
    .line 77
    if-ne p2, v8, :cond_3

    .line 78
    .line 79
    move-object p2, p1

    .line 80
    check-cast p2, Landroidx/compose/runtime/GapComposer;

    .line 81
    .line 82
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->getSkipping()Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-nez v0, :cond_2

    .line 87
    .line 88
    goto :goto_2

    .line 89
    :cond_2
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 90
    .line 91
    .line 92
    goto :goto_3

    .line 93
    :cond_3
    :goto_2
    check-cast p0, Landroidx/compose/runtime/saveable/SaveableStateHolder;

    .line 94
    .line 95
    check-cast v7, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 96
    .line 97
    invoke-static {p0, v7, p1, v6}, Landroidx/room/util/RelationUtil;->SaveableStateProvider(Landroidx/compose/runtime/saveable/SaveableStateHolder;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 98
    .line 99
    .line 100
    :goto_3
    return-object v5

    .line 101
    :pswitch_1
    check-cast p1, Landroidx/compose/runtime/Composer;

    .line 102
    .line 103
    check-cast p2, Ljava/lang/Number;

    .line 104
    .line 105
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 106
    .line 107
    .line 108
    move-result p2

    .line 109
    and-int/lit8 p2, p2, 0x3

    .line 110
    .line 111
    if-ne p2, v8, :cond_5

    .line 112
    .line 113
    move-object p2, p1

    .line 114
    check-cast p2, Landroidx/compose/runtime/GapComposer;

    .line 115
    .line 116
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->getSkipping()Z

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    if-nez v0, :cond_4

    .line 121
    .line 122
    goto :goto_4

    .line 123
    :cond_4
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 124
    .line 125
    .line 126
    goto :goto_5

    .line 127
    :cond_5
    :goto_4
    check-cast p0, Landroidx/navigation/compose/DialogNavigator$Destination;

    .line 128
    .line 129
    iget-object p0, p0, Landroidx/navigation/compose/DialogNavigator$Destination;->content:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 130
    .line 131
    check-cast v7, Landroidx/navigation/NavBackStackEntry;

    .line 132
    .line 133
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 134
    .line 135
    .line 136
    move-result-object p2

    .line 137
    invoke-virtual {p0, v7, p1, p2}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    :goto_5
    return-object v5

    .line 141
    :pswitch_2
    check-cast p1, Landroidx/compose/runtime/Composer;

    .line 142
    .line 143
    check-cast p2, Ljava/lang/Number;

    .line 144
    .line 145
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 146
    .line 147
    .line 148
    move-result p2

    .line 149
    and-int/lit8 v0, p2, 0x3

    .line 150
    .line 151
    if-eq v0, v8, :cond_6

    .line 152
    .line 153
    move v6, v4

    .line 154
    :cond_6
    and-int/2addr p2, v4

    .line 155
    check-cast p1, Landroidx/compose/runtime/GapComposer;

    .line 156
    .line 157
    invoke-virtual {p1, p2, v6}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 158
    .line 159
    .line 160
    move-result p2

    .line 161
    if-eqz p2, :cond_7

    .line 162
    .line 163
    check-cast p0, Lkotlin/jvm/functions/Function3;

    .line 164
    .line 165
    check-cast v7, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$3$labelScope$1$1;

    .line 166
    .line 167
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 168
    .line 169
    .line 170
    move-result-object p2

    .line 171
    invoke-interface {p0, v7, p1, p2}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    goto :goto_6

    .line 175
    :cond_7
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 176
    .line 177
    .line 178
    :goto_6
    return-object v5

    .line 179
    :pswitch_3
    check-cast p1, Landroidx/compose/runtime/Composer;

    .line 180
    .line 181
    check-cast p2, Ljava/lang/Number;

    .line 182
    .line 183
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 184
    .line 185
    .line 186
    move-result p2

    .line 187
    check-cast p0, Ljava/lang/String;

    .line 188
    .line 189
    and-int/lit8 v0, p2, 0x3

    .line 190
    .line 191
    if-eq v0, v8, :cond_8

    .line 192
    .line 193
    move v0, v4

    .line 194
    goto :goto_7

    .line 195
    :cond_8
    move v0, v6

    .line 196
    :goto_7
    and-int/2addr p2, v4

    .line 197
    check-cast p1, Landroidx/compose/runtime/GapComposer;

    .line 198
    .line 199
    invoke-virtual {p1, p2, v0}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 200
    .line 201
    .line 202
    move-result p2

    .line 203
    if-eqz p2, :cond_e

    .line 204
    .line 205
    invoke-virtual {p1, p0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 206
    .line 207
    .line 208
    move-result p2

    .line 209
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    if-nez p2, :cond_9

    .line 214
    .line 215
    if-ne v0, v1, :cond_a

    .line 216
    .line 217
    :cond_9
    new-instance v0, Landroidx/compose/material3/IconKt$$ExternalSyntheticLambda1;

    .line 218
    .line 219
    const/4 p2, 0x4

    .line 220
    invoke-direct {v0, p0, p2}, Landroidx/compose/material3/IconKt$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;I)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {p1, v0}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 224
    .line 225
    .line 226
    :cond_a
    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 227
    .line 228
    new-instance p0, Landroidx/compose/ui/semantics/AppendedSemanticsElement;

    .line 229
    .line 230
    invoke-direct {p0, v0, v6}, Landroidx/compose/ui/semantics/AppendedSemanticsElement;-><init>(Lkotlin/jvm/functions/Function1;Z)V

    .line 231
    .line 232
    .line 233
    check-cast v7, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 234
    .line 235
    sget-object p2, Landroidx/compose/ui/Alignment$Companion;->TopStart:Landroidx/compose/ui/BiasAlignment;

    .line 236
    .line 237
    invoke-static {p2, v6}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/BiasAlignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 238
    .line 239
    .line 240
    move-result-object p2

    .line 241
    invoke-static {p1}, Landroidx/compose/runtime/Updater;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;)I

    .line 242
    .line 243
    .line 244
    move-result v0

    .line 245
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 246
    .line 247
    .line 248
    move-result-object v1

    .line 249
    invoke-static {p1, p0}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 250
    .line 251
    .line 252
    move-result-object p0

    .line 253
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 254
    .line 255
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 256
    .line 257
    .line 258
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 259
    .line 260
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 261
    .line 262
    .line 263
    iget-boolean v3, p1, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 264
    .line 265
    if-eqz v3, :cond_b

    .line 266
    .line 267
    invoke-virtual {p1, v2}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 268
    .line 269
    .line 270
    goto :goto_8

    .line 271
    :cond_b
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 272
    .line 273
    .line 274
    :goto_8
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 275
    .line 276
    invoke-static {p1, p2, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 277
    .line 278
    .line 279
    sget-object p2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 280
    .line 281
    invoke-static {p1, v1, p2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 282
    .line 283
    .line 284
    sget-object p2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 285
    .line 286
    iget-boolean v1, p1, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 287
    .line 288
    if-nez v1, :cond_c

    .line 289
    .line 290
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 291
    .line 292
    .line 293
    move-result-object v1

    .line 294
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 295
    .line 296
    .line 297
    move-result-object v2

    .line 298
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 299
    .line 300
    .line 301
    move-result v1

    .line 302
    if-nez v1, :cond_d

    .line 303
    .line 304
    :cond_c
    invoke-static {v0, p1, v0, p2}, Landroidx/compose/ui/Modifier$-CC;->m(ILandroidx/compose/runtime/GapComposer;ILandroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;)V

    .line 305
    .line 306
    .line 307
    :cond_d
    sget-object p2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 308
    .line 309
    invoke-static {p1, p0, p2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 310
    .line 311
    .line 312
    invoke-static {v6, v7, p1, v4}, Landroidx/camera/core/impl/Config$-CC;->m(ILandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;Z)V

    .line 313
    .line 314
    .line 315
    goto :goto_9

    .line 316
    :cond_e
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 317
    .line 318
    .line 319
    :goto_9
    return-object v5

    .line 320
    :pswitch_4
    check-cast p1, Landroidx/compose/runtime/Composer;

    .line 321
    .line 322
    check-cast p2, Ljava/lang/Number;

    .line 323
    .line 324
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 325
    .line 326
    .line 327
    move-result p2

    .line 328
    and-int/lit8 v0, p2, 0x3

    .line 329
    .line 330
    if-eq v0, v8, :cond_f

    .line 331
    .line 332
    move v0, v4

    .line 333
    goto :goto_a

    .line 334
    :cond_f
    move v0, v6

    .line 335
    :goto_a
    and-int/2addr p2, v4

    .line 336
    check-cast p1, Landroidx/compose/runtime/GapComposer;

    .line 337
    .line 338
    invoke-virtual {p1, p2, v0}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 339
    .line 340
    .line 341
    move-result p2

    .line 342
    if-eqz p2, :cond_14

    .line 343
    .line 344
    check-cast p0, Landroidx/compose/runtime/MutableState;

    .line 345
    .line 346
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 347
    .line 348
    .line 349
    move-result-object p2

    .line 350
    if-ne p2, v1, :cond_10

    .line 351
    .line 352
    new-instance p2, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda0;

    .line 353
    .line 354
    const/4 v0, 0x7

    .line 355
    invoke-direct {p2, p0, v0}, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/runtime/MutableState;I)V

    .line 356
    .line 357
    .line 358
    invoke-virtual {p1, p2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 359
    .line 360
    .line 361
    :cond_10
    check-cast p2, Lkotlin/jvm/functions/Function1;

    .line 362
    .line 363
    invoke-static {v3, p2}, Landroidx/compose/ui/layout/RulerKt;->onGloballyPositioned(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    .line 364
    .line 365
    .line 366
    move-result-object p0

    .line 367
    check-cast v7, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 368
    .line 369
    sget-object p2, Landroidx/compose/ui/Alignment$Companion;->TopStart:Landroidx/compose/ui/BiasAlignment;

    .line 370
    .line 371
    invoke-static {p2, v6}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/BiasAlignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 372
    .line 373
    .line 374
    move-result-object p2

    .line 375
    invoke-static {p1}, Landroidx/compose/runtime/Updater;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;)I

    .line 376
    .line 377
    .line 378
    move-result v0

    .line 379
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 380
    .line 381
    .line 382
    move-result-object v1

    .line 383
    invoke-static {p1, p0}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 384
    .line 385
    .line 386
    move-result-object p0

    .line 387
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 388
    .line 389
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 390
    .line 391
    .line 392
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 393
    .line 394
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 395
    .line 396
    .line 397
    iget-boolean v3, p1, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 398
    .line 399
    if-eqz v3, :cond_11

    .line 400
    .line 401
    invoke-virtual {p1, v2}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 402
    .line 403
    .line 404
    goto :goto_b

    .line 405
    :cond_11
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 406
    .line 407
    .line 408
    :goto_b
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 409
    .line 410
    invoke-static {p1, p2, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 411
    .line 412
    .line 413
    sget-object p2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 414
    .line 415
    invoke-static {p1, v1, p2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 416
    .line 417
    .line 418
    sget-object p2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 419
    .line 420
    iget-boolean v1, p1, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 421
    .line 422
    if-nez v1, :cond_12

    .line 423
    .line 424
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 425
    .line 426
    .line 427
    move-result-object v1

    .line 428
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 429
    .line 430
    .line 431
    move-result-object v2

    .line 432
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 433
    .line 434
    .line 435
    move-result v1

    .line 436
    if-nez v1, :cond_13

    .line 437
    .line 438
    :cond_12
    invoke-static {v0, p1, v0, p2}, Landroidx/compose/ui/Modifier$-CC;->m(ILandroidx/compose/runtime/GapComposer;ILandroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;)V

    .line 439
    .line 440
    .line 441
    :cond_13
    sget-object p2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 442
    .line 443
    invoke-static {p1, p0, p2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 444
    .line 445
    .line 446
    invoke-static {v6, v7, p1, v4}, Landroidx/camera/core/impl/Config$-CC;->m(ILandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;Z)V

    .line 447
    .line 448
    .line 449
    goto :goto_c

    .line 450
    :cond_14
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 451
    .line 452
    .line 453
    :goto_c
    return-object v5

    .line 454
    :pswitch_5
    check-cast p1, Landroidx/compose/runtime/Composer;

    .line 455
    .line 456
    check-cast p2, Ljava/lang/Number;

    .line 457
    .line 458
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 459
    .line 460
    .line 461
    move-result p2

    .line 462
    and-int/lit8 v0, p2, 0x3

    .line 463
    .line 464
    if-eq v0, v8, :cond_15

    .line 465
    .line 466
    move v0, v4

    .line 467
    goto :goto_d

    .line 468
    :cond_15
    move v0, v6

    .line 469
    :goto_d
    and-int/2addr p2, v4

    .line 470
    check-cast p1, Landroidx/compose/runtime/GapComposer;

    .line 471
    .line 472
    invoke-virtual {p1, p2, v0}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 473
    .line 474
    .line 475
    move-result p2

    .line 476
    if-eqz p2, :cond_19

    .line 477
    .line 478
    check-cast v7, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 479
    .line 480
    check-cast p0, Landroidx/compose/material3/ScaffoldKt$ScaffoldLayout$contentPadding$1$1;

    .line 481
    .line 482
    sget-object p2, Landroidx/compose/ui/Alignment$Companion;->TopStart:Landroidx/compose/ui/BiasAlignment;

    .line 483
    .line 484
    invoke-static {p2, v6}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/BiasAlignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 485
    .line 486
    .line 487
    move-result-object p2

    .line 488
    invoke-static {p1}, Landroidx/compose/runtime/Updater;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;)I

    .line 489
    .line 490
    .line 491
    move-result v0

    .line 492
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 493
    .line 494
    .line 495
    move-result-object v1

    .line 496
    invoke-static {p1, v3}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 497
    .line 498
    .line 499
    move-result-object v3

    .line 500
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 501
    .line 502
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 503
    .line 504
    .line 505
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 506
    .line 507
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 508
    .line 509
    .line 510
    iget-boolean v8, p1, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 511
    .line 512
    if-eqz v8, :cond_16

    .line 513
    .line 514
    invoke-virtual {p1, v6}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 515
    .line 516
    .line 517
    goto :goto_e

    .line 518
    :cond_16
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 519
    .line 520
    .line 521
    :goto_e
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 522
    .line 523
    invoke-static {p1, p2, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 524
    .line 525
    .line 526
    sget-object p2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 527
    .line 528
    invoke-static {p1, v1, p2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 529
    .line 530
    .line 531
    sget-object p2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 532
    .line 533
    iget-boolean v1, p1, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 534
    .line 535
    if-nez v1, :cond_17

    .line 536
    .line 537
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 538
    .line 539
    .line 540
    move-result-object v1

    .line 541
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 542
    .line 543
    .line 544
    move-result-object v6

    .line 545
    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 546
    .line 547
    .line 548
    move-result v1

    .line 549
    if-nez v1, :cond_18

    .line 550
    .line 551
    :cond_17
    invoke-static {v0, p1, v0, p2}, Landroidx/compose/ui/Modifier$-CC;->m(ILandroidx/compose/runtime/GapComposer;ILandroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;)V

    .line 552
    .line 553
    .line 554
    :cond_18
    sget-object p2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 555
    .line 556
    invoke-static {p1, v3, p2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 557
    .line 558
    .line 559
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 560
    .line 561
    .line 562
    move-result-object p2

    .line 563
    invoke-virtual {v7, p0, p1, p2}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 564
    .line 565
    .line 566
    invoke-virtual {p1, v4}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 567
    .line 568
    .line 569
    goto :goto_f

    .line 570
    :cond_19
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 571
    .line 572
    .line 573
    :goto_f
    return-object v5

    .line 574
    :pswitch_6
    check-cast p1, Landroidx/compose/runtime/Composer;

    .line 575
    .line 576
    check-cast p2, Ljava/lang/Number;

    .line 577
    .line 578
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 579
    .line 580
    .line 581
    move-result p2

    .line 582
    and-int/lit8 v0, p2, 0x3

    .line 583
    .line 584
    if-eq v0, v8, :cond_1a

    .line 585
    .line 586
    move v0, v4

    .line 587
    goto :goto_10

    .line 588
    :cond_1a
    move v0, v6

    .line 589
    :goto_10
    and-int/2addr p2, v4

    .line 590
    check-cast p1, Landroidx/compose/runtime/GapComposer;

    .line 591
    .line 592
    invoke-virtual {p1, p2, v0}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 593
    .line 594
    .line 595
    move-result p2

    .line 596
    if-eqz p2, :cond_1b

    .line 597
    .line 598
    check-cast p0, Landroidx/compose/material3/Typography;

    .line 599
    .line 600
    iget-object p0, p0, Landroidx/compose/material3/Typography;->bodyLarge:Landroidx/compose/ui/text/TextStyle;

    .line 601
    .line 602
    check-cast v7, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 603
    .line 604
    invoke-static {p0, v7, p1, v6}, Landroidx/compose/material3/TextKt;->ProvideTextStyle(Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 605
    .line 606
    .line 607
    goto :goto_11

    .line 608
    :cond_1b
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 609
    .line 610
    .line 611
    :goto_11
    return-object v5

    .line 612
    :pswitch_7
    check-cast p1, Landroidx/compose/runtime/Composer;

    .line 613
    .line 614
    check-cast p2, Ljava/lang/Number;

    .line 615
    .line 616
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 617
    .line 618
    .line 619
    move-result p2

    .line 620
    and-int/lit8 v0, p2, 0x3

    .line 621
    .line 622
    if-eq v0, v8, :cond_1c

    .line 623
    .line 624
    move v0, v4

    .line 625
    goto :goto_12

    .line 626
    :cond_1c
    move v0, v6

    .line 627
    :goto_12
    and-int/2addr p2, v4

    .line 628
    check-cast p1, Landroidx/compose/runtime/GapComposer;

    .line 629
    .line 630
    invoke-virtual {p1, p2, v0}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 631
    .line 632
    .line 633
    move-result p2

    .line 634
    if-eqz p2, :cond_21

    .line 635
    .line 636
    sget-object p2, Landroidx/compose/material3/AlertDialogKt;->TitlePadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 637
    .line 638
    invoke-static {v3, p2}, Landroidx/compose/foundation/layout/OffsetKt;->padding(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;)Landroidx/compose/ui/Modifier;

    .line 639
    .line 640
    .line 641
    move-result-object p2

    .line 642
    check-cast p0, Lkotlin/jvm/functions/Function2;

    .line 643
    .line 644
    if-nez p0, :cond_1d

    .line 645
    .line 646
    sget-object p0, Landroidx/compose/ui/Alignment$Companion;->Start:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 647
    .line 648
    goto :goto_13

    .line 649
    :cond_1d
    sget-object p0, Landroidx/compose/ui/Alignment$Companion;->CenterHorizontally:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 650
    .line 651
    :goto_13
    new-instance v0, Landroidx/compose/foundation/layout/HorizontalAlignElement;

    .line 652
    .line 653
    invoke-direct {v0, p0}, Landroidx/compose/foundation/layout/HorizontalAlignElement;-><init>(Landroidx/compose/ui/BiasAlignment$Horizontal;)V

    .line 654
    .line 655
    .line 656
    invoke-interface {p2, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 657
    .line 658
    .line 659
    move-result-object p0

    .line 660
    check-cast v7, Lkotlin/jvm/functions/Function2;

    .line 661
    .line 662
    sget-object p2, Landroidx/compose/ui/Alignment$Companion;->TopStart:Landroidx/compose/ui/BiasAlignment;

    .line 663
    .line 664
    invoke-static {p2, v6}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/BiasAlignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 665
    .line 666
    .line 667
    move-result-object p2

    .line 668
    invoke-static {p1}, Landroidx/compose/runtime/Updater;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;)I

    .line 669
    .line 670
    .line 671
    move-result v0

    .line 672
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 673
    .line 674
    .line 675
    move-result-object v1

    .line 676
    invoke-static {p1, p0}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 677
    .line 678
    .line 679
    move-result-object p0

    .line 680
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 681
    .line 682
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 683
    .line 684
    .line 685
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 686
    .line 687
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 688
    .line 689
    .line 690
    iget-boolean v3, p1, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 691
    .line 692
    if-eqz v3, :cond_1e

    .line 693
    .line 694
    invoke-virtual {p1, v2}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 695
    .line 696
    .line 697
    goto :goto_14

    .line 698
    :cond_1e
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 699
    .line 700
    .line 701
    :goto_14
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 702
    .line 703
    invoke-static {p1, p2, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 704
    .line 705
    .line 706
    sget-object p2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 707
    .line 708
    invoke-static {p1, v1, p2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 709
    .line 710
    .line 711
    sget-object p2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 712
    .line 713
    iget-boolean v1, p1, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 714
    .line 715
    if-nez v1, :cond_1f

    .line 716
    .line 717
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 718
    .line 719
    .line 720
    move-result-object v1

    .line 721
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 722
    .line 723
    .line 724
    move-result-object v2

    .line 725
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 726
    .line 727
    .line 728
    move-result v1

    .line 729
    if-nez v1, :cond_20

    .line 730
    .line 731
    :cond_1f
    invoke-static {v0, p1, v0, p2}, Landroidx/compose/ui/Modifier$-CC;->m(ILandroidx/compose/runtime/GapComposer;ILandroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;)V

    .line 732
    .line 733
    .line 734
    :cond_20
    sget-object p2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 735
    .line 736
    invoke-static {p1, p0, p2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 737
    .line 738
    .line 739
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 740
    .line 741
    .line 742
    move-result-object p0

    .line 743
    invoke-interface {v7, p1, p0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 744
    .line 745
    .line 746
    invoke-virtual {p1, v4}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 747
    .line 748
    .line 749
    goto :goto_15

    .line 750
    :cond_21
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 751
    .line 752
    .line 753
    :goto_15
    return-object v5

    .line 754
    :pswitch_8
    check-cast p1, Landroidx/compose/runtime/Composer;

    .line 755
    .line 756
    check-cast p2, Ljava/lang/Number;

    .line 757
    .line 758
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 759
    .line 760
    .line 761
    move-result p2

    .line 762
    and-int/lit8 v0, p2, 0x3

    .line 763
    .line 764
    if-eq v0, v8, :cond_22

    .line 765
    .line 766
    move v6, v4

    .line 767
    :cond_22
    and-int/2addr p2, v4

    .line 768
    check-cast p1, Landroidx/compose/runtime/GapComposer;

    .line 769
    .line 770
    invoke-virtual {p1, p2, v6}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 771
    .line 772
    .line 773
    move-result p2

    .line 774
    if-eqz p2, :cond_26

    .line 775
    .line 776
    sget p2, Landroidx/compose/material3/ButtonDefaults;->MinWidth:F

    .line 777
    .line 778
    sget v0, Landroidx/compose/material3/ButtonDefaults;->MinHeight:F

    .line 779
    .line 780
    invoke-static {v3, p2, v0}, Landroidx/compose/foundation/layout/SizeKt;->defaultMinSize-VpY3zN4(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    .line 781
    .line 782
    .line 783
    move-result-object p2

    .line 784
    check-cast p0, Landroidx/compose/foundation/layout/PaddingValues;

    .line 785
    .line 786
    invoke-static {p2, p0}, Landroidx/compose/foundation/layout/OffsetKt;->padding(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;)Landroidx/compose/ui/Modifier;

    .line 787
    .line 788
    .line 789
    move-result-object p0

    .line 790
    sget-object p2, Landroidx/compose/foundation/layout/OffsetKt;->Center:Landroidx/compose/foundation/layout/Arrangement$End$1;

    .line 791
    .line 792
    sget-object v0, Landroidx/compose/ui/Alignment$Companion;->CenterVertically:Landroidx/compose/ui/BiasAlignment$Vertical;

    .line 793
    .line 794
    check-cast v7, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 795
    .line 796
    const/16 v1, 0x36

    .line 797
    .line 798
    invoke-static {p2, v0, p1, v1}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    .line 799
    .line 800
    .line 801
    move-result-object p2

    .line 802
    invoke-static {p1}, Landroidx/compose/runtime/Updater;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;)I

    .line 803
    .line 804
    .line 805
    move-result v0

    .line 806
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 807
    .line 808
    .line 809
    move-result-object v1

    .line 810
    invoke-static {p1, p0}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 811
    .line 812
    .line 813
    move-result-object p0

    .line 814
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 815
    .line 816
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 817
    .line 818
    .line 819
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 820
    .line 821
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 822
    .line 823
    .line 824
    iget-boolean v6, p1, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 825
    .line 826
    if-eqz v6, :cond_23

    .line 827
    .line 828
    invoke-virtual {p1, v3}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 829
    .line 830
    .line 831
    goto :goto_16

    .line 832
    :cond_23
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 833
    .line 834
    .line 835
    :goto_16
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 836
    .line 837
    invoke-static {p1, p2, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 838
    .line 839
    .line 840
    sget-object p2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 841
    .line 842
    invoke-static {p1, v1, p2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 843
    .line 844
    .line 845
    sget-object p2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 846
    .line 847
    iget-boolean v1, p1, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 848
    .line 849
    if-nez v1, :cond_24

    .line 850
    .line 851
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 852
    .line 853
    .line 854
    move-result-object v1

    .line 855
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 856
    .line 857
    .line 858
    move-result-object v3

    .line 859
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 860
    .line 861
    .line 862
    move-result v1

    .line 863
    if-nez v1, :cond_25

    .line 864
    .line 865
    :cond_24
    invoke-static {v0, p1, v0, p2}, Landroidx/compose/ui/Modifier$-CC;->m(ILandroidx/compose/runtime/GapComposer;ILandroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;)V

    .line 866
    .line 867
    .line 868
    :cond_25
    sget-object p2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 869
    .line 870
    invoke-static {p1, p0, p2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 871
    .line 872
    .line 873
    sget-object p0, Landroidx/compose/foundation/layout/RowScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/RowScopeInstance;

    .line 874
    .line 875
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 876
    .line 877
    .line 878
    move-result-object p2

    .line 879
    invoke-virtual {v7, p0, p1, p2}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 880
    .line 881
    .line 882
    invoke-virtual {p1, v4}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 883
    .line 884
    .line 885
    goto :goto_17

    .line 886
    :cond_26
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 887
    .line 888
    .line 889
    :goto_17
    return-object v5

    .line 890
    nop

    .line 891
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
