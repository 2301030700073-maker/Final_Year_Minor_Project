.class public final synthetic Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceScreenKt$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic f$0:Lorg/wikipedia/util/Resource;

.field public final synthetic f$1:Lorg/wikipedia/compose/components/error/WikiErrorClickEvents;

.field public final synthetic f$2:Lkotlin/jvm/functions/Function1;

.field public final synthetic f$3:Lkotlin/jvm/functions/Function0;

.field public final synthetic f$4:Z


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/util/Resource;Lorg/wikipedia/compose/components/error/WikiErrorClickEvents;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceScreenKt$$ExternalSyntheticLambda2;->f$0:Lorg/wikipedia/util/Resource;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceScreenKt$$ExternalSyntheticLambda2;->f$1:Lorg/wikipedia/compose/components/error/WikiErrorClickEvents;

    .line 7
    .line 8
    iput-object p3, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceScreenKt$$ExternalSyntheticLambda2;->f$2:Lkotlin/jvm/functions/Function1;

    .line 9
    .line 10
    iput-object p4, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceScreenKt$$ExternalSyntheticLambda2;->f$3:Lkotlin/jvm/functions/Function0;

    .line 11
    .line 12
    iput-boolean p5, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceScreenKt$$ExternalSyntheticLambda2;->f$4:Z

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    check-cast p1, Landroidx/compose/foundation/layout/PaddingValues;

    .line 2
    .line 3
    move-object v4, p2

    .line 4
    check-cast v4, Landroidx/compose/runtime/GapComposer;

    .line 5
    .line 6
    check-cast p3, Ljava/lang/Integer;

    .line 7
    .line 8
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    sget-object p3, Landroidx/compose/ui/Alignment$Companion;->TopStart:Landroidx/compose/ui/BiasAlignment;

    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    and-int/lit8 v0, p2, 0x6

    .line 18
    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    invoke-virtual {v4, p1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    const/4 v0, 0x4

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 v0, 0x2

    .line 30
    :goto_0
    or-int/2addr p2, v0

    .line 31
    :cond_1
    and-int/lit8 v0, p2, 0x13

    .line 32
    .line 33
    const/16 v1, 0x12

    .line 34
    .line 35
    const/4 v9, 0x0

    .line 36
    const/4 v10, 0x1

    .line 37
    if-eq v0, v1, :cond_2

    .line 38
    .line 39
    move v0, v10

    .line 40
    goto :goto_1

    .line 41
    :cond_2
    move v0, v9

    .line 42
    :goto_1
    and-int/2addr p2, v10

    .line 43
    invoke-virtual {v4, p2, v0}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 44
    .line 45
    .line 46
    move-result p2

    .line 47
    if-eqz p2, :cond_d

    .line 48
    .line 49
    iget-object p2, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceScreenKt$$ExternalSyntheticLambda2;->f$0:Lorg/wikipedia/util/Resource;

    .line 50
    .line 51
    instance-of v0, p2, Lorg/wikipedia/util/Resource$Loading;

    .line 52
    .line 53
    const/high16 v1, 0x3f800000    # 1.0f

    .line 54
    .line 55
    const/16 v2, 0x20

    .line 56
    .line 57
    sget-object v3, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 58
    .line 59
    if-eqz v0, :cond_4

    .line 60
    .line 61
    const p0, -0x4f156209

    .line 62
    .line 63
    .line 64
    invoke-virtual {v4, p0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 65
    .line 66
    .line 67
    invoke-static {v3, v1}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    invoke-static {p0, p1}, Landroidx/compose/foundation/layout/OffsetKt;->padding(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;)Landroidx/compose/ui/Modifier;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    invoke-static {p3, v9}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    iget-wide p2, v4, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 80
    .line 81
    ushr-long v5, p2, v2

    .line 82
    .line 83
    xor-long/2addr p2, v5

    .line 84
    long-to-int p2, p2

    .line 85
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 86
    .line 87
    .line 88
    move-result-object p3

    .line 89
    invoke-static {v4, p0}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 94
    .line 95
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 96
    .line 97
    .line 98
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 99
    .line 100
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 101
    .line 102
    .line 103
    iget-boolean v2, v4, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 104
    .line 105
    if-eqz v2, :cond_3

    .line 106
    .line 107
    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 108
    .line 109
    .line 110
    goto :goto_2

    .line 111
    :cond_3
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 112
    .line 113
    .line 114
    :goto_2
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 115
    .line 116
    invoke-static {v4, p1, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 117
    .line 118
    .line 119
    sget-object p1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 120
    .line 121
    invoke-static {v4, p3, p1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 122
    .line 123
    .line 124
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    sget-object p2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 129
    .line 130
    invoke-static {v4, p1, p2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 131
    .line 132
    .line 133
    sget-object p1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 134
    .line 135
    invoke-static {v4, p1}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    .line 136
    .line 137
    .line 138
    sget-object p1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 139
    .line 140
    invoke-static {v4, p0, p1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 141
    .line 142
    .line 143
    invoke-static {v3, v1}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    sget-object p0, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 148
    .line 149
    invoke-virtual {v4, p0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    check-cast p1, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 154
    .line 155
    iget-wide v1, p1, Lorg/wikipedia/compose/theme/WikipediaColor;->progressiveColor:J

    .line 156
    .line 157
    invoke-virtual {v4, p0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object p0

    .line 161
    check-cast p0, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 162
    .line 163
    iget-wide p0, p0, Lorg/wikipedia/compose/theme/WikipediaColor;->borderColor:J

    .line 164
    .line 165
    const/4 v6, 0x0

    .line 166
    const/4 v8, 0x6

    .line 167
    const/4 v5, 0x0

    .line 168
    move-object v7, v4

    .line 169
    move-wide v3, p0

    .line 170
    invoke-static/range {v0 .. v8}, Landroidx/compose/material3/ProgressIndicatorKt;->LinearProgressIndicator-rIrjwxo(Landroidx/compose/ui/Modifier;JJIFLandroidx/compose/runtime/GapComposer;I)V

    .line 171
    .line 172
    .line 173
    move-object v4, v7

    .line 174
    invoke-virtual {v4, v10}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v4, v9}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 178
    .line 179
    .line 180
    goto/16 :goto_5

    .line 181
    .line 182
    :cond_4
    instance-of v0, p2, Lorg/wikipedia/util/Resource$Error;

    .line 183
    .line 184
    if-eqz v0, :cond_6

    .line 185
    .line 186
    const p3, -0x4f0dabd8

    .line 187
    .line 188
    .line 189
    invoke-virtual {v4, p3}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 190
    .line 191
    .line 192
    sget-object p3, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxSize:Landroidx/compose/foundation/layout/FillElement;

    .line 193
    .line 194
    invoke-static {p3, p1}, Landroidx/compose/foundation/layout/OffsetKt;->padding(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;)Landroidx/compose/ui/Modifier;

    .line 195
    .line 196
    .line 197
    move-result-object p1

    .line 198
    sget-object p3, Landroidx/compose/ui/Alignment$Companion;->Center:Landroidx/compose/ui/BiasAlignment;

    .line 199
    .line 200
    invoke-static {p3, v9}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 201
    .line 202
    .line 203
    move-result-object p3

    .line 204
    iget-wide v5, v4, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 205
    .line 206
    ushr-long v7, v5, v2

    .line 207
    .line 208
    xor-long/2addr v5, v7

    .line 209
    long-to-int v0, v5

    .line 210
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 211
    .line 212
    .line 213
    move-result-object v2

    .line 214
    invoke-static {v4, p1}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 215
    .line 216
    .line 217
    move-result-object p1

    .line 218
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 219
    .line 220
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 221
    .line 222
    .line 223
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 224
    .line 225
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 226
    .line 227
    .line 228
    iget-boolean v6, v4, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 229
    .line 230
    if-eqz v6, :cond_5

    .line 231
    .line 232
    invoke-virtual {v4, v5}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 233
    .line 234
    .line 235
    goto :goto_3

    .line 236
    :cond_5
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 237
    .line 238
    .line 239
    :goto_3
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 240
    .line 241
    invoke-static {v4, p3, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 242
    .line 243
    .line 244
    sget-object p3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 245
    .line 246
    invoke-static {v4, v2, p3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 247
    .line 248
    .line 249
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 250
    .line 251
    .line 252
    move-result-object p3

    .line 253
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 254
    .line 255
    invoke-static {v4, p3, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 256
    .line 257
    .line 258
    sget-object p3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 259
    .line 260
    invoke-static {v4, p3}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    .line 261
    .line 262
    .line 263
    sget-object p3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 264
    .line 265
    invoke-static {v4, p1, p3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 266
    .line 267
    .line 268
    invoke-static {v3, v1}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 269
    .line 270
    .line 271
    move-result-object v0

    .line 272
    check-cast p2, Lorg/wikipedia/util/Resource$Error;

    .line 273
    .line 274
    iget-object v1, p2, Lorg/wikipedia/util/Resource$Error;->throwable:Ljava/lang/Throwable;

    .line 275
    .line 276
    const/4 v5, 0x6

    .line 277
    const/16 v6, 0x14

    .line 278
    .line 279
    iget-object v2, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceScreenKt$$ExternalSyntheticLambda2;->f$1:Lorg/wikipedia/compose/components/error/WikiErrorClickEvents;

    .line 280
    .line 281
    const/4 v3, 0x0

    .line 282
    invoke-static/range {v0 .. v6}, Lokio/Okio__JvmOkioKt;->WikiErrorView(Landroidx/compose/ui/Modifier;Ljava/lang/Throwable;Lorg/wikipedia/compose/components/error/WikiErrorClickEvents;ZLandroidx/compose/runtime/GapComposer;II)V

    .line 283
    .line 284
    .line 285
    invoke-virtual {v4, v10}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 286
    .line 287
    .line 288
    invoke-virtual {v4, v9}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 289
    .line 290
    .line 291
    goto/16 :goto_5

    .line 292
    .line 293
    :cond_6
    instance-of v0, p2, Lorg/wikipedia/util/Resource$Success;

    .line 294
    .line 295
    if-eqz v0, :cond_c

    .line 296
    .line 297
    const v0, -0x4f051ddd

    .line 298
    .line 299
    .line 300
    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 301
    .line 302
    .line 303
    sget-object v0, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxSize:Landroidx/compose/foundation/layout/FillElement;

    .line 304
    .line 305
    invoke-static {v0, p1}, Landroidx/compose/foundation/layout/OffsetKt;->padding(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;)Landroidx/compose/ui/Modifier;

    .line 306
    .line 307
    .line 308
    move-result-object p1

    .line 309
    invoke-static {p3, v9}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 310
    .line 311
    .line 312
    move-result-object p3

    .line 313
    iget-wide v0, v4, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 314
    .line 315
    ushr-long v2, v0, v2

    .line 316
    .line 317
    xor-long/2addr v0, v2

    .line 318
    long-to-int v0, v0

    .line 319
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 320
    .line 321
    .line 322
    move-result-object v1

    .line 323
    invoke-static {v4, p1}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 324
    .line 325
    .line 326
    move-result-object p1

    .line 327
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 328
    .line 329
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 330
    .line 331
    .line 332
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 333
    .line 334
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 335
    .line 336
    .line 337
    iget-boolean v3, v4, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 338
    .line 339
    if-eqz v3, :cond_7

    .line 340
    .line 341
    invoke-virtual {v4, v2}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 342
    .line 343
    .line 344
    goto :goto_4

    .line 345
    :cond_7
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 346
    .line 347
    .line 348
    :goto_4
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 349
    .line 350
    invoke-static {v4, p3, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 351
    .line 352
    .line 353
    sget-object p3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 354
    .line 355
    invoke-static {v4, v1, p3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 356
    .line 357
    .line 358
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 359
    .line 360
    .line 361
    move-result-object p3

    .line 362
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 363
    .line 364
    invoke-static {v4, p3, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 365
    .line 366
    .line 367
    sget-object p3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 368
    .line 369
    invoke-static {v4, p3}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    .line 370
    .line 371
    .line 372
    sget-object p3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 373
    .line 374
    invoke-static {v4, p1, p3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 375
    .line 376
    .line 377
    check-cast p2, Lorg/wikipedia/util/Resource$Success;

    .line 378
    .line 379
    iget-object p1, p2, Lorg/wikipedia/util/Resource$Success;->data:Ljava/lang/Object;

    .line 380
    .line 381
    check-cast p1, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceViewModel$SourceSelectionUiState;

    .line 382
    .line 383
    iget-object v2, p1, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceViewModel$SourceSelectionUiState;->selectedSource:Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSource;

    .line 384
    .line 385
    iget-boolean v3, p1, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceViewModel$SourceSelectionUiState;->isSavedOptionEnabled:Z

    .line 386
    .line 387
    iget-boolean p1, p1, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceViewModel$SourceSelectionUiState;->isHistoryOptionEnabled:Z

    .line 388
    .line 389
    iget-object p2, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceScreenKt$$ExternalSyntheticLambda2;->f$2:Lkotlin/jvm/functions/Function1;

    .line 390
    .line 391
    invoke-virtual {v4, p2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 392
    .line 393
    .line 394
    move-result p3

    .line 395
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 396
    .line 397
    .line 398
    move-result-object v0

    .line 399
    sget-object v1, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 400
    .line 401
    if-nez p3, :cond_8

    .line 402
    .line 403
    if-ne v0, v1, :cond_9

    .line 404
    .line 405
    :cond_8
    new-instance v0, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda8;

    .line 406
    .line 407
    const/16 p3, 0x1a

    .line 408
    .line 409
    invoke-direct {v0, p2, p3}, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda8;-><init>(Lkotlin/jvm/functions/Function1;I)V

    .line 410
    .line 411
    .line 412
    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 413
    .line 414
    .line 415
    :cond_9
    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 416
    .line 417
    iget-object p2, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceScreenKt$$ExternalSyntheticLambda2;->f$3:Lkotlin/jvm/functions/Function0;

    .line 418
    .line 419
    invoke-virtual {v4, p2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 420
    .line 421
    .line 422
    move-result p3

    .line 423
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 424
    .line 425
    .line 426
    move-result-object v5

    .line 427
    if-nez p3, :cond_a

    .line 428
    .line 429
    if-ne v5, v1, :cond_b

    .line 430
    .line 431
    :cond_a
    new-instance v5, Lorg/wikipedia/search/SearchResultsScreenKt$$ExternalSyntheticLambda1;

    .line 432
    .line 433
    invoke-direct {v5, v10, p2}, Lorg/wikipedia/search/SearchResultsScreenKt$$ExternalSyntheticLambda1;-><init>(ILkotlin/jvm/functions/Function0;)V

    .line 434
    .line 435
    .line 436
    invoke-virtual {v4, v5}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 437
    .line 438
    .line 439
    :cond_b
    move-object v1, v5

    .line 440
    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 441
    .line 442
    const/4 v7, 0x0

    .line 443
    iget-boolean v5, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceScreenKt$$ExternalSyntheticLambda2;->f$4:Z

    .line 444
    .line 445
    move-object v6, v4

    .line 446
    move v4, p1

    .line 447
    invoke-static/range {v0 .. v7}, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceScreenKt;->SourceSelectionContent(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSource;ZZZLandroidx/compose/runtime/GapComposer;I)V

    .line 448
    .line 449
    .line 450
    move-object v4, v6

    .line 451
    invoke-virtual {v4, v10}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 452
    .line 453
    .line 454
    invoke-virtual {v4, v9}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 455
    .line 456
    .line 457
    goto :goto_5

    .line 458
    :cond_c
    const p0, -0x4ef98350

    .line 459
    .line 460
    .line 461
    invoke-virtual {v4, p0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 462
    .line 463
    .line 464
    invoke-virtual {v4, v9}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 465
    .line 466
    .line 467
    goto :goto_5

    .line 468
    :cond_d
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 469
    .line 470
    .line 471
    :goto_5
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 472
    .line 473
    return-object p0
.end method
