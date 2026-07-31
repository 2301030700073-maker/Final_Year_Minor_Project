.class public final synthetic Lorg/wikipedia/search/SearchResultsScreenKt$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Landroidx/compose/ui/Modifier;

.field public final synthetic f$1:Landroidx/paging/CombinedLoadStates;

.field public final synthetic f$10:Lkotlin/jvm/functions/Function1;

.field public final synthetic f$11:Lkotlin/jvm/functions/Function4;

.field public final synthetic f$12:Lkotlin/jvm/functions/Function3;

.field public final synthetic f$2:Lkotlin/jvm/functions/Function0;

.field public final synthetic f$3:Lkotlin/jvm/functions/Function0;

.field public final synthetic f$4:Landroidx/paging/compose/LazyPagingItems;

.field public final synthetic f$5:Lorg/wikipedia/search/SearchResultsViewModel;

.field public final synthetic f$6:Landroidx/compose/runtime/State;

.field public final synthetic f$7:Lkotlin/jvm/functions/Function3;

.field public final synthetic f$8:Lkotlin/jvm/functions/Function0;

.field public final synthetic f$9:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Landroidx/paging/CombinedLoadStates;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/paging/compose/LazyPagingItems;Lorg/wikipedia/search/SearchResultsViewModel;Landroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function0;Ljava/util/ArrayList;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;Lkotlin/jvm/functions/Function3;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/wikipedia/search/SearchResultsScreenKt$$ExternalSyntheticLambda4;->f$0:Landroidx/compose/ui/Modifier;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/wikipedia/search/SearchResultsScreenKt$$ExternalSyntheticLambda4;->f$1:Landroidx/paging/CombinedLoadStates;

    .line 7
    .line 8
    iput-object p3, p0, Lorg/wikipedia/search/SearchResultsScreenKt$$ExternalSyntheticLambda4;->f$2:Lkotlin/jvm/functions/Function0;

    .line 9
    .line 10
    iput-object p4, p0, Lorg/wikipedia/search/SearchResultsScreenKt$$ExternalSyntheticLambda4;->f$3:Lkotlin/jvm/functions/Function0;

    .line 11
    .line 12
    iput-object p5, p0, Lorg/wikipedia/search/SearchResultsScreenKt$$ExternalSyntheticLambda4;->f$4:Landroidx/paging/compose/LazyPagingItems;

    .line 13
    .line 14
    iput-object p6, p0, Lorg/wikipedia/search/SearchResultsScreenKt$$ExternalSyntheticLambda4;->f$5:Lorg/wikipedia/search/SearchResultsViewModel;

    .line 15
    .line 16
    iput-object p7, p0, Lorg/wikipedia/search/SearchResultsScreenKt$$ExternalSyntheticLambda4;->f$6:Landroidx/compose/runtime/State;

    .line 17
    .line 18
    iput-object p8, p0, Lorg/wikipedia/search/SearchResultsScreenKt$$ExternalSyntheticLambda4;->f$7:Lkotlin/jvm/functions/Function3;

    .line 19
    .line 20
    iput-object p9, p0, Lorg/wikipedia/search/SearchResultsScreenKt$$ExternalSyntheticLambda4;->f$8:Lkotlin/jvm/functions/Function0;

    .line 21
    .line 22
    iput-object p10, p0, Lorg/wikipedia/search/SearchResultsScreenKt$$ExternalSyntheticLambda4;->f$9:Ljava/util/List;

    .line 23
    .line 24
    iput-object p11, p0, Lorg/wikipedia/search/SearchResultsScreenKt$$ExternalSyntheticLambda4;->f$10:Lkotlin/jvm/functions/Function1;

    .line 25
    .line 26
    iput-object p12, p0, Lorg/wikipedia/search/SearchResultsScreenKt$$ExternalSyntheticLambda4;->f$11:Lkotlin/jvm/functions/Function4;

    .line 27
    .line 28
    iput-object p13, p0, Lorg/wikipedia/search/SearchResultsScreenKt$$ExternalSyntheticLambda4;->f$12:Lkotlin/jvm/functions/Function3;

    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    iget-object v0, p0, Lorg/wikipedia/search/SearchResultsScreenKt$$ExternalSyntheticLambda4;->f$1:Landroidx/paging/CombinedLoadStates;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/paging/CombinedLoadStates;->refresh:Landroidx/paging/LoadState;

    .line 4
    .line 5
    move-object v6, p1

    .line 6
    check-cast v6, Landroidx/compose/runtime/GapComposer;

    .line 7
    .line 8
    check-cast p2, Ljava/lang/Integer;

    .line 9
    .line 10
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    and-int/lit8 p2, p1, 0x3

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    const/4 v9, 0x1

    .line 18
    const/4 v10, 0x0

    .line 19
    if-eq p2, v2, :cond_0

    .line 20
    .line 21
    move p2, v9

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move p2, v10

    .line 24
    :goto_0
    and-int/2addr p1, v9

    .line 25
    invoke-virtual {v6, p1, p2}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-eqz p1, :cond_11

    .line 30
    .line 31
    sget-object p1, Landroidx/compose/ui/Alignment$Companion;->TopStart:Landroidx/compose/ui/BiasAlignment;

    .line 32
    .line 33
    invoke-static {p1, v10}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    iget-wide v2, v6, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 38
    .line 39
    const/16 p2, 0x20

    .line 40
    .line 41
    ushr-long v4, v2, p2

    .line 42
    .line 43
    xor-long/2addr v2, v4

    .line 44
    long-to-int p2, v2

    .line 45
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    iget-object v3, p0, Lorg/wikipedia/search/SearchResultsScreenKt$$ExternalSyntheticLambda4;->f$0:Landroidx/compose/ui/Modifier;

    .line 50
    .line 51
    invoke-static {v6, v3}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 56
    .line 57
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 61
    .line 62
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 63
    .line 64
    .line 65
    iget-boolean v5, v6, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 66
    .line 67
    if-eqz v5, :cond_1

    .line 68
    .line 69
    invoke-virtual {v6, v4}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 70
    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_1
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 74
    .line 75
    .line 76
    :goto_1
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 77
    .line 78
    invoke-static {v6, p1, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 79
    .line 80
    .line 81
    sget-object p1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 82
    .line 83
    invoke-static {v6, v2, p1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 84
    .line 85
    .line 86
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    sget-object p2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 91
    .line 92
    invoke-static {v6, p1, p2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 93
    .line 94
    .line 95
    sget-object p1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 96
    .line 97
    invoke-static {v6, p1}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    .line 98
    .line 99
    .line 100
    sget-object p1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 101
    .line 102
    invoke-static {v6, v3, p1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 103
    .line 104
    .line 105
    instance-of p1, v1, Landroidx/paging/LoadState$Loading;

    .line 106
    .line 107
    if-eqz p1, :cond_2

    .line 108
    .line 109
    const p0, -0x7d1333ac

    .line 110
    .line 111
    .line 112
    invoke-virtual {v6, p0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v6, v10}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 116
    .line 117
    .line 118
    goto/16 :goto_4

    .line 119
    .line 120
    :cond_2
    instance-of p1, v1, Landroidx/paging/LoadState$Error;

    .line 121
    .line 122
    const/4 p2, 0x0

    .line 123
    const/high16 v2, 0x3f800000    # 1.0f

    .line 124
    .line 125
    sget-object v3, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 126
    .line 127
    sget-object v4, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 128
    .line 129
    sget-object v5, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    .line 130
    .line 131
    if-eqz p1, :cond_7

    .line 132
    .line 133
    const p1, -0x7d11455e

    .line 134
    .line 135
    .line 136
    invoke-virtual {v6, p1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 140
    .line 141
    .line 142
    check-cast v1, Landroidx/paging/LoadState$Error;

    .line 143
    .line 144
    iget-object p1, v1, Landroidx/paging/LoadState$Error;->error:Ljava/lang/Exception;

    .line 145
    .line 146
    invoke-static {v3, v2}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    sget-object v1, Landroidx/compose/ui/Alignment$Companion;->Center:Landroidx/compose/ui/BiasAlignment;

    .line 151
    .line 152
    invoke-virtual {v5, v0, v1}, Landroidx/compose/foundation/layout/BoxScopeInstance;->align(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/BiasAlignment;)Landroidx/compose/ui/Modifier;

    .line 153
    .line 154
    .line 155
    move-result-object v2

    .line 156
    iget-object v0, p0, Lorg/wikipedia/search/SearchResultsScreenKt$$ExternalSyntheticLambda4;->f$2:Lkotlin/jvm/functions/Function0;

    .line 157
    .line 158
    invoke-virtual {v6, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    move-result v1

    .line 162
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v3

    .line 166
    if-nez v1, :cond_3

    .line 167
    .line 168
    if-ne v3, v4, :cond_4

    .line 169
    .line 170
    :cond_3
    new-instance v3, Lorg/wikipedia/search/SearchResultsScreenKt$$ExternalSyntheticLambda1;

    .line 171
    .line 172
    const/4 v1, 0x7

    .line 173
    invoke-direct {v3, v1, v0}, Lorg/wikipedia/search/SearchResultsScreenKt$$ExternalSyntheticLambda1;-><init>(ILkotlin/jvm/functions/Function0;)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v6, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 177
    .line 178
    .line 179
    :cond_4
    check-cast v3, Lkotlin/jvm/functions/Function0;

    .line 180
    .line 181
    iget-object p0, p0, Lorg/wikipedia/search/SearchResultsScreenKt$$ExternalSyntheticLambda4;->f$3:Lkotlin/jvm/functions/Function0;

    .line 182
    .line 183
    invoke-virtual {v6, p0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 184
    .line 185
    .line 186
    move-result v0

    .line 187
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object v1

    .line 191
    if-nez v0, :cond_5

    .line 192
    .line 193
    if-ne v1, v4, :cond_6

    .line 194
    .line 195
    :cond_5
    new-instance v1, Lorg/wikipedia/search/SearchResultsScreenKt$$ExternalSyntheticLambda1;

    .line 196
    .line 197
    const/16 v0, 0x8

    .line 198
    .line 199
    invoke-direct {v1, v0, p0}, Lorg/wikipedia/search/SearchResultsScreenKt$$ExternalSyntheticLambda1;-><init>(ILkotlin/jvm/functions/Function0;)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v6, v1}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 203
    .line 204
    .line 205
    :cond_6
    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 206
    .line 207
    new-instance v4, Lorg/wikipedia/compose/components/error/WikiErrorClickEvents;

    .line 208
    .line 209
    const/16 p0, 0xc

    .line 210
    .line 211
    invoke-direct {v4, v3, v1, p2, p0}, Lorg/wikipedia/compose/components/error/WikiErrorClickEvents;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;I)V

    .line 212
    .line 213
    .line 214
    const/4 v7, 0x0

    .line 215
    const/16 v8, 0x14

    .line 216
    .line 217
    const/4 v5, 0x0

    .line 218
    move-object v3, p1

    .line 219
    invoke-static/range {v2 .. v8}, Lokio/Okio__JvmOkioKt;->WikiErrorView(Landroidx/compose/ui/Modifier;Ljava/lang/Throwable;Lorg/wikipedia/compose/components/error/WikiErrorClickEvents;ZLandroidx/compose/runtime/GapComposer;II)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v6, v10}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 223
    .line 224
    .line 225
    goto/16 :goto_4

    .line 226
    .line 227
    :cond_7
    iget-object p1, v0, Landroidx/paging/CombinedLoadStates;->append:Landroidx/paging/LoadState;

    .line 228
    .line 229
    instance-of v0, p1, Landroidx/paging/LoadState$NotLoading;

    .line 230
    .line 231
    move-object v1, v3

    .line 232
    iget-object v3, p0, Lorg/wikipedia/search/SearchResultsScreenKt$$ExternalSyntheticLambda4;->f$4:Landroidx/paging/compose/LazyPagingItems;

    .line 233
    .line 234
    iget-object v7, p0, Lorg/wikipedia/search/SearchResultsScreenKt$$ExternalSyntheticLambda4;->f$5:Lorg/wikipedia/search/SearchResultsViewModel;

    .line 235
    .line 236
    iget-object v8, p0, Lorg/wikipedia/search/SearchResultsScreenKt$$ExternalSyntheticLambda4;->f$6:Landroidx/compose/runtime/State;

    .line 237
    .line 238
    iget-object v11, p0, Lorg/wikipedia/search/SearchResultsScreenKt$$ExternalSyntheticLambda4;->f$7:Lkotlin/jvm/functions/Function3;

    .line 239
    .line 240
    if-eqz v0, :cond_b

    .line 241
    .line 242
    iget-boolean p1, p1, Landroidx/paging/LoadState;->endOfPaginationReached:Z

    .line 243
    .line 244
    if-eqz p1, :cond_b

    .line 245
    .line 246
    invoke-virtual {v3}, Landroidx/paging/compose/LazyPagingItems;->getItemCount()I

    .line 247
    .line 248
    .line 249
    move-result p1

    .line 250
    if-nez p1, :cond_b

    .line 251
    .line 252
    const p1, -0x7d065ee2

    .line 253
    .line 254
    .line 255
    invoke-virtual {v6, p1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 256
    .line 257
    .line 258
    invoke-virtual {v7}, Lorg/wikipedia/search/SearchResultsViewModel;->isHybridSearchExperimentOn()Z

    .line 259
    .line 260
    .line 261
    move-result p1

    .line 262
    if-eqz p1, :cond_a

    .line 263
    .line 264
    const p1, -0x7d059524

    .line 265
    .line 266
    .line 267
    invoke-virtual {v6, p1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 268
    .line 269
    .line 270
    invoke-static {v1, v2}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 271
    .line 272
    .line 273
    move-result-object p1

    .line 274
    sget-object v0, Landroidx/compose/ui/Alignment$Companion;->BottomStart:Landroidx/compose/ui/BiasAlignment;

    .line 275
    .line 276
    invoke-virtual {v5, p1, v0}, Landroidx/compose/foundation/layout/BoxScopeInstance;->align(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/BiasAlignment;)Landroidx/compose/ui/Modifier;

    .line 277
    .line 278
    .line 279
    move-result-object p1

    .line 280
    sget-object v0, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 281
    .line 282
    invoke-virtual {v6, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 283
    .line 284
    .line 285
    move-result-object v0

    .line 286
    check-cast v0, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 287
    .line 288
    iget-wide v0, v0, Lorg/wikipedia/compose/theme/WikipediaColor;->paperColor:J

    .line 289
    .line 290
    sget-object v2, Landroidx/compose/ui/graphics/ColorKt;->RectangleShape:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    .line 291
    .line 292
    invoke-static {p1, v0, v1, v2}, Landroidx/compose/foundation/ImageKt;->background-bw27NRU(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 293
    .line 294
    .line 295
    move-result-object p1

    .line 296
    invoke-virtual {v6, v8}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 297
    .line 298
    .line 299
    move-result v0

    .line 300
    invoke-virtual {v6, v11}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 301
    .line 302
    .line 303
    move-result v1

    .line 304
    or-int/2addr v0, v1

    .line 305
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 306
    .line 307
    .line 308
    move-result-object v1

    .line 309
    if-nez v0, :cond_8

    .line 310
    .line 311
    if-ne v1, v4, :cond_9

    .line 312
    .line 313
    :cond_8
    new-instance v1, Lorg/wikipedia/settings/AboutActivityKt$$ExternalSyntheticLambda11;

    .line 314
    .line 315
    const/4 v0, 0x5

    .line 316
    invoke-direct {v1, v0, v8, v11}, Lorg/wikipedia/settings/AboutActivityKt$$ExternalSyntheticLambda11;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 317
    .line 318
    .line 319
    invoke-virtual {v6, v1}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 320
    .line 321
    .line 322
    :cond_9
    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 323
    .line 324
    const/16 v0, 0xf

    .line 325
    .line 326
    invoke-static {v0, p1, p2, v1, v10}, Landroidx/compose/foundation/ImageKt;->clickable-oSLSa3U$default(ILandroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Z)Landroidx/compose/ui/Modifier;

    .line 327
    .line 328
    .line 329
    move-result-object p1

    .line 330
    invoke-interface {v8}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 331
    .line 332
    .line 333
    move-result-object p2

    .line 334
    check-cast p2, Ljava/lang/String;

    .line 335
    .line 336
    invoke-static {v10, v6, p1, p2}, Lorg/wikipedia/search/NoSearchResultsKt;->SearchResultTitleOnlyBottomContent(ILandroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;Ljava/lang/String;)V

    .line 337
    .line 338
    .line 339
    iget-object p0, p0, Lorg/wikipedia/search/SearchResultsScreenKt$$ExternalSyntheticLambda4;->f$8:Lkotlin/jvm/functions/Function0;

    .line 340
    .line 341
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 342
    .line 343
    .line 344
    invoke-virtual {v6, v10}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 345
    .line 346
    .line 347
    goto :goto_2

    .line 348
    :cond_a
    const p1, -0x7cf956c0

    .line 349
    .line 350
    .line 351
    invoke-virtual {v6, p1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 352
    .line 353
    .line 354
    invoke-virtual {v7}, Lorg/wikipedia/search/SearchResultsViewModel;->getInvokeSource()Lorg/wikipedia/Constants$InvokeSource;

    .line 355
    .line 356
    .line 357
    move-result-object v4

    .line 358
    const/4 v5, 0x0

    .line 359
    const/4 v7, 0x0

    .line 360
    iget-object v2, p0, Lorg/wikipedia/search/SearchResultsScreenKt$$ExternalSyntheticLambda4;->f$9:Ljava/util/List;

    .line 361
    .line 362
    iget-object v3, p0, Lorg/wikipedia/search/SearchResultsScreenKt$$ExternalSyntheticLambda4;->f$10:Lkotlin/jvm/functions/Function1;

    .line 363
    .line 364
    invoke-static/range {v2 .. v7}, Lorg/wikipedia/search/NoSearchResultsKt;->NoSearchResults(Ljava/util/List;Lkotlin/jvm/functions/Function1;Lorg/wikipedia/Constants$InvokeSource;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/GapComposer;I)V

    .line 365
    .line 366
    .line 367
    invoke-virtual {v6, v10}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 368
    .line 369
    .line 370
    :goto_2
    invoke-virtual {v6, v10}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 371
    .line 372
    .line 373
    goto/16 :goto_4

    .line 374
    .line 375
    :cond_b
    const p1, -0x7cf42d41

    .line 376
    .line 377
    .line 378
    invoke-virtual {v6, p1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 379
    .line 380
    .line 381
    invoke-virtual {v7}, Lorg/wikipedia/search/SearchResultsViewModel;->isHybridSearchExperimentOn()Z

    .line 382
    .line 383
    .line 384
    move-result p1

    .line 385
    if-eqz p1, :cond_10

    .line 386
    .line 387
    const p0, -0x7cf368b8

    .line 388
    .line 389
    .line 390
    invoke-virtual {v6, p0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 391
    .line 392
    .line 393
    sget-object v2, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxSize:Landroidx/compose/foundation/layout/FillElement;

    .line 394
    .line 395
    invoke-interface {v8}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 396
    .line 397
    .line 398
    move-result-object p0

    .line 399
    check-cast p0, Ljava/lang/String;

    .line 400
    .line 401
    invoke-virtual {v6, v11}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 402
    .line 403
    .line 404
    move-result p1

    .line 405
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 406
    .line 407
    .line 408
    move-result-object p2

    .line 409
    if-nez p1, :cond_c

    .line 410
    .line 411
    if-ne p2, v4, :cond_d

    .line 412
    .line 413
    :cond_c
    new-instance p2, Lorg/wikipedia/search/SearchResultsScreenKt$$ExternalSyntheticLambda9;

    .line 414
    .line 415
    invoke-direct {p2, v11, v10}, Lorg/wikipedia/search/SearchResultsScreenKt$$ExternalSyntheticLambda9;-><init>(Lkotlin/jvm/functions/Function3;I)V

    .line 416
    .line 417
    .line 418
    invoke-virtual {v6, p2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 419
    .line 420
    .line 421
    :cond_d
    move-object v5, p2

    .line 422
    check-cast v5, Lkotlin/jvm/functions/Function1;

    .line 423
    .line 424
    invoke-virtual {v6, v11}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 425
    .line 426
    .line 427
    move-result p1

    .line 428
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 429
    .line 430
    .line 431
    move-result-object p2

    .line 432
    if-nez p1, :cond_e

    .line 433
    .line 434
    if-ne p2, v4, :cond_f

    .line 435
    .line 436
    :cond_e
    new-instance p2, Lorg/wikipedia/search/SearchResultsScreenKt$$ExternalSyntheticLambda9;

    .line 437
    .line 438
    invoke-direct {p2, v11, v9}, Lorg/wikipedia/search/SearchResultsScreenKt$$ExternalSyntheticLambda9;-><init>(Lkotlin/jvm/functions/Function3;I)V

    .line 439
    .line 440
    .line 441
    invoke-virtual {v6, p2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 442
    .line 443
    .line 444
    :cond_f
    check-cast p2, Lkotlin/jvm/functions/Function1;

    .line 445
    .line 446
    const/16 v8, 0x46

    .line 447
    .line 448
    move-object v4, p0

    .line 449
    move-object v7, v6

    .line 450
    move-object v6, p2

    .line 451
    invoke-static/range {v2 .. v8}, Lorg/wikipedia/search/NoSearchResultsKt;->HybridSearchSuggestionListView(Landroidx/compose/ui/Modifier;Landroidx/paging/compose/LazyPagingItems;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/GapComposer;I)V

    .line 452
    .line 453
    .line 454
    move-object v6, v7

    .line 455
    invoke-virtual {v6, v10}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 456
    .line 457
    .line 458
    goto :goto_3

    .line 459
    :cond_10
    move-object v2, v3

    .line 460
    const p1, -0x7ce8293b

    .line 461
    .line 462
    .line 463
    invoke-virtual {v6, p1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 464
    .line 465
    .line 466
    invoke-interface {v8}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 467
    .line 468
    .line 469
    move-result-object p1

    .line 470
    move-object v3, p1

    .line 471
    check-cast v3, Ljava/lang/String;

    .line 472
    .line 473
    move-object v7, v6

    .line 474
    const/4 v6, 0x0

    .line 475
    const/16 v8, 0x8

    .line 476
    .line 477
    iget-object v4, p0, Lorg/wikipedia/search/SearchResultsScreenKt$$ExternalSyntheticLambda4;->f$11:Lkotlin/jvm/functions/Function4;

    .line 478
    .line 479
    iget-object v5, p0, Lorg/wikipedia/search/SearchResultsScreenKt$$ExternalSyntheticLambda4;->f$12:Lkotlin/jvm/functions/Function3;

    .line 480
    .line 481
    invoke-static/range {v2 .. v8}, Lorg/wikipedia/search/NoSearchResultsKt;->SearchResultsList(Landroidx/paging/compose/LazyPagingItems;Ljava/lang/String;Lkotlin/jvm/functions/Function4;Lkotlin/jvm/functions/Function3;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/GapComposer;I)V

    .line 482
    .line 483
    .line 484
    move-object v6, v7

    .line 485
    invoke-virtual {v6, v10}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 486
    .line 487
    .line 488
    :goto_3
    invoke-virtual {v6, v10}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 489
    .line 490
    .line 491
    :goto_4
    invoke-virtual {v6, v9}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 492
    .line 493
    .line 494
    goto :goto_5

    .line 495
    :cond_11
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 496
    .line 497
    .line 498
    :goto_5
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 499
    .line 500
    return-object p0
.end method
