.class public final synthetic Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsFragmentKt$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic f$0:Lorg/wikipedia/util/Resource;

.field public final synthetic f$1:Lorg/wikipedia/compose/components/error/WikiErrorClickEvents;

.field public final synthetic f$2:Z

.field public final synthetic f$3:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;

.field public final synthetic f$4:Lkotlin/jvm/functions/Function1;

.field public final synthetic f$5:Lkotlin/jvm/functions/Function0;

.field public final synthetic f$6:Lkotlin/jvm/functions/Function0;

.field public final synthetic f$7:Landroidx/compose/runtime/MutableState;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/util/Resource;Lorg/wikipedia/compose/components/error/WikiErrorClickEvents;ZLandroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/MutableState;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsFragmentKt$$ExternalSyntheticLambda6;->f$0:Lorg/wikipedia/util/Resource;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsFragmentKt$$ExternalSyntheticLambda6;->f$1:Lorg/wikipedia/compose/components/error/WikiErrorClickEvents;

    .line 7
    .line 8
    iput-boolean p3, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsFragmentKt$$ExternalSyntheticLambda6;->f$2:Z

    .line 9
    .line 10
    iput-object p4, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsFragmentKt$$ExternalSyntheticLambda6;->f$3:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;

    .line 11
    .line 12
    iput-object p5, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsFragmentKt$$ExternalSyntheticLambda6;->f$4:Lkotlin/jvm/functions/Function1;

    .line 13
    .line 14
    iput-object p6, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsFragmentKt$$ExternalSyntheticLambda6;->f$5:Lkotlin/jvm/functions/Function0;

    .line 15
    .line 16
    iput-object p7, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsFragmentKt$$ExternalSyntheticLambda6;->f$6:Lkotlin/jvm/functions/Function0;

    .line 17
    .line 18
    iput-object p8, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsFragmentKt$$ExternalSyntheticLambda6;->f$7:Landroidx/compose/runtime/MutableState;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

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
    sget-object p3, Landroidx/compose/ui/Alignment$Companion;->Center:Landroidx/compose/ui/BiasAlignment;

    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    and-int/lit8 v0, p2, 0x6

    .line 18
    .line 19
    const/4 v1, 0x2

    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {v4, p1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    const/4 v0, 0x4

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    move v0, v1

    .line 31
    :goto_0
    or-int/2addr p2, v0

    .line 32
    :cond_1
    and-int/lit8 v0, p2, 0x13

    .line 33
    .line 34
    const/16 v2, 0x12

    .line 35
    .line 36
    const/4 v10, 0x0

    .line 37
    const/4 v11, 0x1

    .line 38
    if-eq v0, v2, :cond_2

    .line 39
    .line 40
    move v0, v11

    .line 41
    goto :goto_1

    .line 42
    :cond_2
    move v0, v10

    .line 43
    :goto_1
    and-int/2addr p2, v11

    .line 44
    invoke-virtual {v4, p2, v0}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 45
    .line 46
    .line 47
    move-result p2

    .line 48
    if-eqz p2, :cond_a

    .line 49
    .line 50
    iget-object p2, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsFragmentKt$$ExternalSyntheticLambda6;->f$0:Lorg/wikipedia/util/Resource;

    .line 51
    .line 52
    instance-of v0, p2, Lorg/wikipedia/util/Resource$Loading;

    .line 53
    .line 54
    const/high16 v2, 0x3f800000    # 1.0f

    .line 55
    .line 56
    const/16 v3, 0x20

    .line 57
    .line 58
    sget-object v5, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 59
    .line 60
    if-eqz v0, :cond_4

    .line 61
    .line 62
    const p0, -0x1379b831

    .line 63
    .line 64
    .line 65
    invoke-virtual {v4, p0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 66
    .line 67
    .line 68
    invoke-static {v5, v2}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    invoke-static {p0, p1}, Landroidx/compose/foundation/layout/OffsetKt;->padding(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;)Landroidx/compose/ui/Modifier;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    sget-object p1, Landroidx/compose/ui/Alignment$Companion;->TopStart:Landroidx/compose/ui/BiasAlignment;

    .line 77
    .line 78
    invoke-static {p1, v10}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    iget-wide p2, v4, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 83
    .line 84
    ushr-long v0, p2, v3

    .line 85
    .line 86
    xor-long/2addr p2, v0

    .line 87
    long-to-int p2, p2

    .line 88
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 89
    .line 90
    .line 91
    move-result-object p3

    .line 92
    invoke-static {v4, p0}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 97
    .line 98
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 99
    .line 100
    .line 101
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 102
    .line 103
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 104
    .line 105
    .line 106
    iget-boolean v1, v4, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 107
    .line 108
    if-eqz v1, :cond_3

    .line 109
    .line 110
    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 111
    .line 112
    .line 113
    goto :goto_2

    .line 114
    :cond_3
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 115
    .line 116
    .line 117
    :goto_2
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 118
    .line 119
    invoke-static {v4, p1, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 120
    .line 121
    .line 122
    sget-object p1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 123
    .line 124
    invoke-static {v4, p3, p1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 125
    .line 126
    .line 127
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    sget-object p2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 132
    .line 133
    invoke-static {v4, p1, p2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 134
    .line 135
    .line 136
    sget-object p1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 137
    .line 138
    invoke-static {v4, p1}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    .line 139
    .line 140
    .line 141
    sget-object p1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 142
    .line 143
    invoke-static {v4, p0, p1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 144
    .line 145
    .line 146
    invoke-static {v5, v2}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    sget-object p0, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 151
    .line 152
    invoke-virtual {v4, p0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    check-cast p1, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 157
    .line 158
    iget-wide v1, p1, Lorg/wikipedia/compose/theme/WikipediaColor;->progressiveColor:J

    .line 159
    .line 160
    invoke-virtual {v4, p0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object p0

    .line 164
    check-cast p0, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 165
    .line 166
    iget-wide p0, p0, Lorg/wikipedia/compose/theme/WikipediaColor;->borderColor:J

    .line 167
    .line 168
    const/4 v6, 0x0

    .line 169
    const/4 v8, 0x6

    .line 170
    const/4 v5, 0x0

    .line 171
    move-object v7, v4

    .line 172
    move-wide v3, p0

    .line 173
    invoke-static/range {v0 .. v8}, Landroidx/compose/material3/ProgressIndicatorKt;->LinearProgressIndicator-rIrjwxo(Landroidx/compose/ui/Modifier;JJIFLandroidx/compose/runtime/GapComposer;I)V

    .line 174
    .line 175
    .line 176
    move-object v4, v7

    .line 177
    invoke-virtual {v4, v11}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v4, v10}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 181
    .line 182
    .line 183
    goto/16 :goto_5

    .line 184
    .line 185
    :cond_4
    instance-of v0, p2, Lorg/wikipedia/util/Resource$Error;

    .line 186
    .line 187
    if-eqz v0, :cond_6

    .line 188
    .line 189
    const v0, -0x13720200

    .line 190
    .line 191
    .line 192
    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 193
    .line 194
    .line 195
    sget-object v0, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxSize:Landroidx/compose/foundation/layout/FillElement;

    .line 196
    .line 197
    invoke-static {v0, p1}, Landroidx/compose/foundation/layout/OffsetKt;->padding(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;)Landroidx/compose/ui/Modifier;

    .line 198
    .line 199
    .line 200
    move-result-object p1

    .line 201
    invoke-static {p3, v10}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 202
    .line 203
    .line 204
    move-result-object p3

    .line 205
    iget-wide v0, v4, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 206
    .line 207
    ushr-long v6, v0, v3

    .line 208
    .line 209
    xor-long/2addr v0, v6

    .line 210
    long-to-int v0, v0

    .line 211
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 212
    .line 213
    .line 214
    move-result-object v1

    .line 215
    invoke-static {v4, p1}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 216
    .line 217
    .line 218
    move-result-object p1

    .line 219
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 220
    .line 221
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 222
    .line 223
    .line 224
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 225
    .line 226
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 227
    .line 228
    .line 229
    iget-boolean v6, v4, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 230
    .line 231
    if-eqz v6, :cond_5

    .line 232
    .line 233
    invoke-virtual {v4, v3}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 234
    .line 235
    .line 236
    goto :goto_3

    .line 237
    :cond_5
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 238
    .line 239
    .line 240
    :goto_3
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 241
    .line 242
    invoke-static {v4, p3, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 243
    .line 244
    .line 245
    sget-object p3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 246
    .line 247
    invoke-static {v4, v1, p3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 248
    .line 249
    .line 250
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 251
    .line 252
    .line 253
    move-result-object p3

    .line 254
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 255
    .line 256
    invoke-static {v4, p3, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 257
    .line 258
    .line 259
    sget-object p3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 260
    .line 261
    invoke-static {v4, p3}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    .line 262
    .line 263
    .line 264
    sget-object p3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 265
    .line 266
    invoke-static {v4, p1, p3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 267
    .line 268
    .line 269
    invoke-static {v5, v2}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 270
    .line 271
    .line 272
    move-result-object v0

    .line 273
    check-cast p2, Lorg/wikipedia/util/Resource$Error;

    .line 274
    .line 275
    iget-object v1, p2, Lorg/wikipedia/util/Resource$Error;->throwable:Ljava/lang/Throwable;

    .line 276
    .line 277
    const/4 v5, 0x6

    .line 278
    const/16 v6, 0x14

    .line 279
    .line 280
    iget-object v2, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsFragmentKt$$ExternalSyntheticLambda6;->f$1:Lorg/wikipedia/compose/components/error/WikiErrorClickEvents;

    .line 281
    .line 282
    const/4 v3, 0x0

    .line 283
    invoke-static/range {v0 .. v6}, Lokio/Okio__JvmOkioKt;->WikiErrorView(Landroidx/compose/ui/Modifier;Ljava/lang/Throwable;Lorg/wikipedia/compose/components/error/WikiErrorClickEvents;ZLandroidx/compose/runtime/GapComposer;II)V

    .line 284
    .line 285
    .line 286
    invoke-virtual {v4, v11}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 287
    .line 288
    .line 289
    invoke-virtual {v4, v10}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 290
    .line 291
    .line 292
    goto/16 :goto_5

    .line 293
    .line 294
    :cond_6
    instance-of v0, p2, Lorg/wikipedia/util/Resource$Success;

    .line 295
    .line 296
    if-eqz v0, :cond_9

    .line 297
    .line 298
    const v0, -0x13696c83

    .line 299
    .line 300
    .line 301
    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 302
    .line 303
    .line 304
    sget-object v0, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxSize:Landroidx/compose/foundation/layout/FillElement;

    .line 305
    .line 306
    invoke-static {v0, p1}, Landroidx/compose/foundation/layout/OffsetKt;->padding(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;)Landroidx/compose/ui/Modifier;

    .line 307
    .line 308
    .line 309
    move-result-object p1

    .line 310
    invoke-static {p3, v10}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 311
    .line 312
    .line 313
    move-result-object p3

    .line 314
    iget-wide v5, v4, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 315
    .line 316
    ushr-long v2, v5, v3

    .line 317
    .line 318
    xor-long/2addr v2, v5

    .line 319
    long-to-int v0, v2

    .line 320
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 321
    .line 322
    .line 323
    move-result-object v2

    .line 324
    invoke-static {v4, p1}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 325
    .line 326
    .line 327
    move-result-object p1

    .line 328
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 329
    .line 330
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 331
    .line 332
    .line 333
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 334
    .line 335
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 336
    .line 337
    .line 338
    iget-boolean v5, v4, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 339
    .line 340
    if-eqz v5, :cond_7

    .line 341
    .line 342
    invoke-virtual {v4, v3}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 343
    .line 344
    .line 345
    goto :goto_4

    .line 346
    :cond_7
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 347
    .line 348
    .line 349
    :goto_4
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 350
    .line 351
    invoke-static {v4, p3, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 352
    .line 353
    .line 354
    sget-object p3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 355
    .line 356
    invoke-static {v4, v2, p3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 357
    .line 358
    .line 359
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 360
    .line 361
    .line 362
    move-result-object p3

    .line 363
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 364
    .line 365
    invoke-static {v4, p3, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 366
    .line 367
    .line 368
    sget-object p3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 369
    .line 370
    invoke-static {v4, p3}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    .line 371
    .line 372
    .line 373
    sget-object p3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 374
    .line 375
    invoke-static {v4, p1, p3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 376
    .line 377
    .line 378
    check-cast p2, Lorg/wikipedia/util/Resource$Success;

    .line 379
    .line 380
    iget-object p1, p2, Lorg/wikipedia/util/Resource$Success;->data:Ljava/lang/Object;

    .line 381
    .line 382
    check-cast p1, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsViewModel$UiState;

    .line 383
    .line 384
    iget-object v2, p1, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsViewModel$UiState;->items:Ljava/util/List;

    .line 385
    .line 386
    iget-object v3, p1, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsViewModel$UiState;->selectedItems:Ljava/util/Set;

    .line 387
    .line 388
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 389
    .line 390
    .line 391
    move-result-object p1

    .line 392
    sget-object p2, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 393
    .line 394
    if-ne p1, p2, :cond_8

    .line 395
    .line 396
    new-instance p1, Lorg/wikipedia/search/HybridSearchResultsScreenKt$$ExternalSyntheticLambda32;

    .line 397
    .line 398
    iget-object p2, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsFragmentKt$$ExternalSyntheticLambda6;->f$7:Landroidx/compose/runtime/MutableState;

    .line 399
    .line 400
    invoke-direct {p1, p2, v1}, Lorg/wikipedia/search/HybridSearchResultsScreenKt$$ExternalSyntheticLambda32;-><init>(Landroidx/compose/runtime/MutableState;I)V

    .line 401
    .line 402
    .line 403
    invoke-virtual {v4, p1}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 404
    .line 405
    .line 406
    :cond_8
    move-object v6, p1

    .line 407
    check-cast v6, Lkotlin/jvm/functions/Function0;

    .line 408
    .line 409
    const/high16 v9, 0x180000

    .line 410
    .line 411
    iget-boolean v0, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsFragmentKt$$ExternalSyntheticLambda6;->f$2:Z

    .line 412
    .line 413
    iget-object v1, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsFragmentKt$$ExternalSyntheticLambda6;->f$3:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;

    .line 414
    .line 415
    move-object v7, v4

    .line 416
    iget-object v4, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsFragmentKt$$ExternalSyntheticLambda6;->f$4:Lkotlin/jvm/functions/Function1;

    .line 417
    .line 418
    iget-object v5, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsFragmentKt$$ExternalSyntheticLambda6;->f$5:Lkotlin/jvm/functions/Function0;

    .line 419
    .line 420
    iget-object p0, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsFragmentKt$$ExternalSyntheticLambda6;->f$6:Lkotlin/jvm/functions/Function0;

    .line 421
    .line 422
    move-object v8, v7

    .line 423
    move-object v7, p0

    .line 424
    invoke-static/range {v0 .. v9}, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceScreenKt;->RecommendedReadingListInterestsContent(ZLandroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;Ljava/util/List;Ljava/util/Set;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/GapComposer;I)V

    .line 425
    .line 426
    .line 427
    move-object v4, v8

    .line 428
    invoke-virtual {v4, v11}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 429
    .line 430
    .line 431
    invoke-virtual {v4, v10}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 432
    .line 433
    .line 434
    goto :goto_5

    .line 435
    :cond_9
    const p0, -0x135ce938    # -1.5772999E27f

    .line 436
    .line 437
    .line 438
    invoke-virtual {v4, p0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 439
    .line 440
    .line 441
    invoke-virtual {v4, v10}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 442
    .line 443
    .line 444
    goto :goto_5

    .line 445
    :cond_a
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 446
    .line 447
    .line 448
    :goto_5
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 449
    .line 450
    return-object p0
.end method
