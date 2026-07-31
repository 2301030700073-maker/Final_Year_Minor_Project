.class public final Landroidx/compose/material3/TooltipKt$TooltipBox$3;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic $scope:Ljava/lang/Object;

.field public final synthetic $tooltip:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

.field public final synthetic $transition:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILandroidx/compose/runtime/internal/ComposableLambdaImpl;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 14
    iput p1, p0, Landroidx/compose/material3/TooltipKt$TooltipBox$3;->$r8$classId:I

    iput-object p3, p0, Landroidx/compose/material3/TooltipKt$TooltipBox$3;->$transition:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/compose/material3/TooltipKt$TooltipBox$3;->$tooltip:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    iput-object p4, p0, Landroidx/compose/material3/TooltipKt$TooltipBox$3;->$scope:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/ScrollState;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Landroidx/compose/material3/TooltipKt$TooltipBox$3;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Landroidx/compose/material3/TooltipKt$TooltipBox$3;->$transition:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p2, p0, Landroidx/compose/material3/TooltipKt$TooltipBox$3;->$scope:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p3, p0, Landroidx/compose/material3/TooltipKt$TooltipBox$3;->$tooltip:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    iget v0, p0, Landroidx/compose/material3/TooltipKt$TooltipBox$3;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x6

    .line 4
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 5
    .line 6
    iget-object v3, p0, Landroidx/compose/material3/TooltipKt$TooltipBox$3;->$tooltip:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 7
    .line 8
    iget-object v4, p0, Landroidx/compose/material3/TooltipKt$TooltipBox$3;->$transition:Ljava/lang/Object;

    .line 9
    .line 10
    iget-object p0, p0, Landroidx/compose/material3/TooltipKt$TooltipBox$3;->$scope:Ljava/lang/Object;

    .line 11
    .line 12
    const/4 v5, 0x2

    .line 13
    const/4 v6, 0x1

    .line 14
    const/4 v7, 0x0

    .line 15
    packed-switch v0, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    check-cast p1, Landroidx/compose/runtime/Composer;

    .line 19
    .line 20
    check-cast p2, Ljava/lang/Number;

    .line 21
    .line 22
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 23
    .line 24
    .line 25
    move-result p2

    .line 26
    and-int/lit8 v0, p2, 0x3

    .line 27
    .line 28
    if-eq v0, v5, :cond_0

    .line 29
    .line 30
    move v0, v6

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    move v0, v7

    .line 33
    :goto_0
    and-int/2addr p2, v6

    .line 34
    check-cast p1, Landroidx/compose/runtime/GapComposer;

    .line 35
    .line 36
    invoke-virtual {p1, p2, v0}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 37
    .line 38
    .line 39
    move-result p2

    .line 40
    if-eqz p2, :cond_7

    .line 41
    .line 42
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    sget-object v0, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 47
    .line 48
    if-ne p2, v0, :cond_1

    .line 49
    .line 50
    invoke-static {p1}, Landroidx/compose/runtime/Updater;->createCompositionCoroutineScope(Landroidx/compose/runtime/Composer;)Lkotlinx/coroutines/CoroutineScope;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    invoke-virtual {p1, p2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    :cond_1
    check-cast p2, Lkotlinx/coroutines/CoroutineScope;

    .line 58
    .line 59
    check-cast p0, Landroidx/compose/animation/core/SpringSpec;

    .line 60
    .line 61
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    if-ne v1, v0, :cond_2

    .line 66
    .line 67
    new-instance v1, Landroidx/compose/material3/SegmentedButtonContentMeasurePolicy;

    .line 68
    .line 69
    invoke-direct {v1, p2, p0}, Landroidx/compose/material3/SegmentedButtonContentMeasurePolicy;-><init>(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/animation/core/SpringSpec;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1, v1}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    :cond_2
    check-cast v1, Landroidx/compose/material3/SegmentedButtonContentMeasurePolicy;

    .line 76
    .line 77
    sget-object p0, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 78
    .line 79
    invoke-static {p0}, Landroidx/compose/foundation/layout/OffsetKt;->height(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    check-cast v4, Lkotlin/jvm/functions/Function2;

    .line 84
    .line 85
    new-array p2, v5, [Lkotlin/jvm/functions/Function2;

    .line 86
    .line 87
    aput-object v4, p2, v7

    .line 88
    .line 89
    aput-object v3, p2, v6

    .line 90
    .line 91
    invoke-static {p2}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 92
    .line 93
    .line 94
    move-result-object p2

    .line 95
    new-instance v3, Landroidx/compose/ui/window/PopupLayout$Content$4;

    .line 96
    .line 97
    const/4 v4, 0x3

    .line 98
    invoke-direct {v3, v4, p2}, Landroidx/compose/ui/window/PopupLayout$Content$4;-><init>(ILjava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    new-instance p2, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 102
    .line 103
    const v4, 0x4bcece3c    # 2.7106424E7f

    .line 104
    .line 105
    .line 106
    invoke-direct {p2, v4, v3, v6}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(ILjava/lang/Object;Z)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    if-ne v3, v0, :cond_3

    .line 114
    .line 115
    new-instance v3, Landroidx/compose/ui/layout/MultiContentMeasurePolicyImpl;

    .line 116
    .line 117
    invoke-direct {v3, v1}, Landroidx/compose/ui/layout/MultiContentMeasurePolicyImpl;-><init>(Landroidx/compose/ui/layout/MultiContentMeasurePolicy;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p1, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 121
    .line 122
    .line 123
    :cond_3
    check-cast v3, Landroidx/compose/ui/layout/MeasurePolicy;

    .line 124
    .line 125
    invoke-static {p1}, Landroidx/compose/runtime/Updater;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;)I

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    invoke-static {p1, p0}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 134
    .line 135
    .line 136
    move-result-object p0

    .line 137
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 138
    .line 139
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 140
    .line 141
    .line 142
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 143
    .line 144
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 145
    .line 146
    .line 147
    iget-boolean v5, p1, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 148
    .line 149
    if-eqz v5, :cond_4

    .line 150
    .line 151
    invoke-virtual {p1, v4}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 152
    .line 153
    .line 154
    goto :goto_1

    .line 155
    :cond_4
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 156
    .line 157
    .line 158
    :goto_1
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 159
    .line 160
    invoke-static {p1, v3, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 161
    .line 162
    .line 163
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 164
    .line 165
    invoke-static {p1, v1, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 166
    .line 167
    .line 168
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 169
    .line 170
    iget-boolean v3, p1, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 171
    .line 172
    if-nez v3, :cond_5

    .line 173
    .line 174
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object v3

    .line 178
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 179
    .line 180
    .line 181
    move-result-object v4

    .line 182
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 183
    .line 184
    .line 185
    move-result v3

    .line 186
    if-nez v3, :cond_6

    .line 187
    .line 188
    :cond_5
    invoke-static {v0, p1, v0, v1}, Landroidx/compose/ui/Modifier$-CC;->m(ILandroidx/compose/runtime/GapComposer;ILandroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;)V

    .line 189
    .line 190
    .line 191
    :cond_6
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 192
    .line 193
    invoke-static {p1, p0, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 194
    .line 195
    .line 196
    invoke-static {v7, p2, p1, v6}, Landroidx/camera/core/impl/Config$-CC;->m(ILandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;Z)V

    .line 197
    .line 198
    .line 199
    goto :goto_2

    .line 200
    :cond_7
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 201
    .line 202
    .line 203
    :goto_2
    return-object v2

    .line 204
    :pswitch_0
    check-cast p1, Landroidx/compose/runtime/Composer;

    .line 205
    .line 206
    check-cast p2, Ljava/lang/Number;

    .line 207
    .line 208
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 209
    .line 210
    .line 211
    move-result p2

    .line 212
    and-int/lit8 v0, p2, 0x3

    .line 213
    .line 214
    if-eq v0, v5, :cond_8

    .line 215
    .line 216
    move v0, v6

    .line 217
    goto :goto_3

    .line 218
    :cond_8
    move v0, v7

    .line 219
    :goto_3
    and-int/2addr p2, v6

    .line 220
    check-cast p1, Landroidx/compose/runtime/GapComposer;

    .line 221
    .line 222
    invoke-virtual {p1, p2, v0}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 223
    .line 224
    .line 225
    move-result p2

    .line 226
    if-eqz p2, :cond_9

    .line 227
    .line 228
    check-cast v4, Lkotlin/jvm/functions/Function2;

    .line 229
    .line 230
    check-cast p0, Landroidx/compose/foundation/layout/PaddingValues;

    .line 231
    .line 232
    invoke-static {v4, v3, p0, p1, v7}, Landroidx/compose/material3/CardKt;->SegmentedButtonContent(Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/Composer;I)V

    .line 233
    .line 234
    .line 235
    goto :goto_4

    .line 236
    :cond_9
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 237
    .line 238
    .line 239
    :goto_4
    return-object v2

    .line 240
    :pswitch_1
    check-cast p1, Landroidx/compose/runtime/Composer;

    .line 241
    .line 242
    check-cast p2, Ljava/lang/Number;

    .line 243
    .line 244
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 245
    .line 246
    .line 247
    move-result p2

    .line 248
    and-int/lit8 v0, p2, 0x3

    .line 249
    .line 250
    if-eq v0, v5, :cond_a

    .line 251
    .line 252
    move v0, v6

    .line 253
    goto :goto_5

    .line 254
    :cond_a
    move v0, v7

    .line 255
    :goto_5
    and-int/2addr p2, v6

    .line 256
    check-cast p1, Landroidx/compose/runtime/GapComposer;

    .line 257
    .line 258
    invoke-virtual {p1, p2, v0}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 259
    .line 260
    .line 261
    move-result p2

    .line 262
    if-eqz p2, :cond_e

    .line 263
    .line 264
    check-cast v4, Landroidx/compose/ui/Modifier;

    .line 265
    .line 266
    const/4 p2, 0x0

    .line 267
    const/high16 v0, 0x41000000    # 8.0f

    .line 268
    .line 269
    invoke-static {v4, p2, v0, v6}, Landroidx/compose/foundation/layout/OffsetKt;->padding-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    .line 270
    .line 271
    .line 272
    move-result-object p2

    .line 273
    sget-object v0, Landroidx/compose/foundation/layout/IntrinsicSize;->Max:Landroidx/compose/foundation/layout/IntrinsicSize;

    .line 274
    .line 275
    invoke-static {p2, v0}, Landroidx/compose/foundation/layout/OffsetKt;->width(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/IntrinsicSize;)Landroidx/compose/ui/Modifier;

    .line 276
    .line 277
    .line 278
    move-result-object p2

    .line 279
    check-cast p0, Landroidx/compose/foundation/ScrollState;

    .line 280
    .line 281
    invoke-static {p2, p0}, Landroidx/compose/foundation/ImageKt;->verticalScroll$default(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/ScrollState;)Landroidx/compose/ui/Modifier;

    .line 282
    .line 283
    .line 284
    move-result-object p0

    .line 285
    sget-object p2, Landroidx/compose/foundation/layout/OffsetKt;->Top:Landroidx/compose/foundation/layout/FlowRowOverflow;

    .line 286
    .line 287
    sget-object v0, Landroidx/compose/ui/Alignment$Companion;->Start:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 288
    .line 289
    invoke-static {p2, v0, p1, v7}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 290
    .line 291
    .line 292
    move-result-object p2

    .line 293
    invoke-static {p1}, Landroidx/compose/runtime/Updater;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;)I

    .line 294
    .line 295
    .line 296
    move-result v0

    .line 297
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 298
    .line 299
    .line 300
    move-result-object v4

    .line 301
    invoke-static {p1, p0}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 302
    .line 303
    .line 304
    move-result-object p0

    .line 305
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 306
    .line 307
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 308
    .line 309
    .line 310
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 311
    .line 312
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 313
    .line 314
    .line 315
    iget-boolean v7, p1, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 316
    .line 317
    if-eqz v7, :cond_b

    .line 318
    .line 319
    invoke-virtual {p1, v5}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 320
    .line 321
    .line 322
    goto :goto_6

    .line 323
    :cond_b
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 324
    .line 325
    .line 326
    :goto_6
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 327
    .line 328
    invoke-static {p1, p2, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 329
    .line 330
    .line 331
    sget-object p2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 332
    .line 333
    invoke-static {p1, v4, p2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 334
    .line 335
    .line 336
    sget-object p2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 337
    .line 338
    iget-boolean v4, p1, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 339
    .line 340
    if-nez v4, :cond_c

    .line 341
    .line 342
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 343
    .line 344
    .line 345
    move-result-object v4

    .line 346
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 347
    .line 348
    .line 349
    move-result-object v5

    .line 350
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 351
    .line 352
    .line 353
    move-result v4

    .line 354
    if-nez v4, :cond_d

    .line 355
    .line 356
    :cond_c
    invoke-static {v0, p1, v0, p2}, Landroidx/compose/ui/Modifier$-CC;->m(ILandroidx/compose/runtime/GapComposer;ILandroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;)V

    .line 357
    .line 358
    .line 359
    :cond_d
    sget-object p2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 360
    .line 361
    invoke-static {p1, p0, p2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 362
    .line 363
    .line 364
    sget-object p0, Landroidx/compose/foundation/layout/ColumnScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/ColumnScopeInstance;

    .line 365
    .line 366
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 367
    .line 368
    .line 369
    move-result-object p2

    .line 370
    invoke-virtual {v3, p0, p1, p2}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    .line 372
    .line 373
    invoke-virtual {p1, v6}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 374
    .line 375
    .line 376
    goto :goto_7

    .line 377
    :cond_e
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 378
    .line 379
    .line 380
    :goto_7
    return-object v2

    .line 381
    :pswitch_2
    check-cast p1, Landroidx/compose/runtime/Composer;

    .line 382
    .line 383
    check-cast p2, Ljava/lang/Number;

    .line 384
    .line 385
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 386
    .line 387
    .line 388
    move-result p2

    .line 389
    and-int/lit8 v0, p2, 0x3

    .line 390
    .line 391
    if-eq v0, v5, :cond_f

    .line 392
    .line 393
    move v0, v6

    .line 394
    goto :goto_8

    .line 395
    :cond_f
    move v0, v7

    .line 396
    :goto_8
    and-int/2addr p2, v6

    .line 397
    check-cast p1, Landroidx/compose/runtime/GapComposer;

    .line 398
    .line 399
    invoke-virtual {p1, p2, v0}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 400
    .line 401
    .line 402
    move-result p2

    .line 403
    if-eqz p2, :cond_13

    .line 404
    .line 405
    check-cast v4, Landroidx/compose/animation/core/Transition;

    .line 406
    .line 407
    new-instance p2, Landroidx/compose/material3/TooltipKt$animateTooltip$2;

    .line 408
    .line 409
    invoke-direct {p2, v7, v4}, Landroidx/compose/material3/TooltipKt$animateTooltip$2;-><init>(ILjava/lang/Object;)V

    .line 410
    .line 411
    .line 412
    new-instance v0, Landroidx/compose/ui/ComposedModifier;

    .line 413
    .line 414
    invoke-direct {v0, p2}, Landroidx/compose/ui/ComposedModifier;-><init>(Lkotlin/jvm/functions/Function3;)V

    .line 415
    .line 416
    .line 417
    check-cast p0, Landroidx/compose/material3/TooltipScopeImpl;

    .line 418
    .line 419
    sget-object p2, Landroidx/compose/ui/Alignment$Companion;->TopStart:Landroidx/compose/ui/BiasAlignment;

    .line 420
    .line 421
    invoke-static {p2, v7}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/BiasAlignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 422
    .line 423
    .line 424
    move-result-object p2

    .line 425
    invoke-static {p1}, Landroidx/compose/runtime/Updater;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;)I

    .line 426
    .line 427
    .line 428
    move-result v4

    .line 429
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 430
    .line 431
    .line 432
    move-result-object v5

    .line 433
    invoke-static {p1, v0}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 434
    .line 435
    .line 436
    move-result-object v0

    .line 437
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 438
    .line 439
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 440
    .line 441
    .line 442
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 443
    .line 444
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 445
    .line 446
    .line 447
    iget-boolean v8, p1, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 448
    .line 449
    if-eqz v8, :cond_10

    .line 450
    .line 451
    invoke-virtual {p1, v7}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 452
    .line 453
    .line 454
    goto :goto_9

    .line 455
    :cond_10
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 456
    .line 457
    .line 458
    :goto_9
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 459
    .line 460
    invoke-static {p1, p2, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 461
    .line 462
    .line 463
    sget-object p2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 464
    .line 465
    invoke-static {p1, v5, p2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 466
    .line 467
    .line 468
    sget-object p2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 469
    .line 470
    iget-boolean v5, p1, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 471
    .line 472
    if-nez v5, :cond_11

    .line 473
    .line 474
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 475
    .line 476
    .line 477
    move-result-object v5

    .line 478
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 479
    .line 480
    .line 481
    move-result-object v7

    .line 482
    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 483
    .line 484
    .line 485
    move-result v5

    .line 486
    if-nez v5, :cond_12

    .line 487
    .line 488
    :cond_11
    invoke-static {v4, p1, v4, p2}, Landroidx/compose/ui/Modifier$-CC;->m(ILandroidx/compose/runtime/GapComposer;ILandroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;)V

    .line 489
    .line 490
    .line 491
    :cond_12
    sget-object p2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 492
    .line 493
    invoke-static {p1, v0, p2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 494
    .line 495
    .line 496
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 497
    .line 498
    .line 499
    move-result-object p2

    .line 500
    invoke-virtual {v3, p0, p1, p2}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    .line 502
    .line 503
    invoke-virtual {p1, v6}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 504
    .line 505
    .line 506
    goto :goto_a

    .line 507
    :cond_13
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 508
    .line 509
    .line 510
    :goto_a
    return-object v2

    .line 511
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
