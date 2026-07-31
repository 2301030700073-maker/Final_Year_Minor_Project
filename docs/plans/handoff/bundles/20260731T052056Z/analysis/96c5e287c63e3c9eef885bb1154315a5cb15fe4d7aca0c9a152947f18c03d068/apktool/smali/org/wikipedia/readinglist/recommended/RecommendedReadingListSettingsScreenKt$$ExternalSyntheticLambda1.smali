.class public final synthetic Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsScreenKt$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic f$0:Lorg/wikipedia/util/Resource;

.field public final synthetic f$1:Lkotlin/jvm/functions/Function0;

.field public final synthetic f$10:Lkotlin/jvm/functions/Function1;

.field public final synthetic f$11:Landroidx/compose/runtime/MutableState;

.field public final synthetic f$2:Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsState;

.field public final synthetic f$3:Lkotlin/jvm/functions/Function1;

.field public final synthetic f$4:Lorg/wikipedia/compose/components/error/WikiErrorClickEvents;

.field public final synthetic f$5:Z

.field public final synthetic f$6:Lkotlin/jvm/functions/Function1;

.field public final synthetic f$7:Lkotlin/jvm/functions/Function1;

.field public final synthetic f$8:Lkotlin/jvm/functions/Function0;

.field public final synthetic f$9:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/util/Resource;Lkotlin/jvm/functions/Function0;Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsState;Lkotlin/jvm/functions/Function1;Lorg/wikipedia/compose/components/error/WikiErrorClickEvents;ZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableState;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsScreenKt$$ExternalSyntheticLambda1;->f$0:Lorg/wikipedia/util/Resource;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsScreenKt$$ExternalSyntheticLambda1;->f$1:Lkotlin/jvm/functions/Function0;

    .line 7
    .line 8
    iput-object p3, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsScreenKt$$ExternalSyntheticLambda1;->f$2:Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsState;

    .line 9
    .line 10
    iput-object p4, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsScreenKt$$ExternalSyntheticLambda1;->f$3:Lkotlin/jvm/functions/Function1;

    .line 11
    .line 12
    iput-object p5, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsScreenKt$$ExternalSyntheticLambda1;->f$4:Lorg/wikipedia/compose/components/error/WikiErrorClickEvents;

    .line 13
    .line 14
    iput-boolean p6, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsScreenKt$$ExternalSyntheticLambda1;->f$5:Z

    .line 15
    .line 16
    iput-object p7, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsScreenKt$$ExternalSyntheticLambda1;->f$6:Lkotlin/jvm/functions/Function1;

    .line 17
    .line 18
    iput-object p8, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsScreenKt$$ExternalSyntheticLambda1;->f$7:Lkotlin/jvm/functions/Function1;

    .line 19
    .line 20
    iput-object p9, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsScreenKt$$ExternalSyntheticLambda1;->f$8:Lkotlin/jvm/functions/Function0;

    .line 21
    .line 22
    iput-object p10, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsScreenKt$$ExternalSyntheticLambda1;->f$9:Lkotlin/jvm/functions/Function0;

    .line 23
    .line 24
    iput-object p11, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsScreenKt$$ExternalSyntheticLambda1;->f$10:Lkotlin/jvm/functions/Function1;

    .line 25
    .line 26
    iput-object p12, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsScreenKt$$ExternalSyntheticLambda1;->f$11:Landroidx/compose/runtime/MutableState;

    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    check-cast v1, Landroidx/compose/foundation/layout/PaddingValues;

    .line 6
    .line 7
    move-object/from16 v12, p2

    .line 8
    .line 9
    check-cast v12, Landroidx/compose/runtime/GapComposer;

    .line 10
    .line 11
    move-object/from16 v2, p3

    .line 12
    .line 13
    check-cast v2, Ljava/lang/Integer;

    .line 14
    .line 15
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    and-int/lit8 v3, v2, 0x6

    .line 23
    .line 24
    const/4 v4, 0x2

    .line 25
    if-nez v3, :cond_1

    .line 26
    .line 27
    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-eqz v3, :cond_0

    .line 32
    .line 33
    const/4 v3, 0x4

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    move v3, v4

    .line 36
    :goto_0
    or-int/2addr v2, v3

    .line 37
    :cond_1
    and-int/lit8 v3, v2, 0x13

    .line 38
    .line 39
    const/16 v5, 0x12

    .line 40
    .line 41
    const/4 v14, 0x1

    .line 42
    const/4 v15, 0x0

    .line 43
    if-eq v3, v5, :cond_2

    .line 44
    .line 45
    move v3, v14

    .line 46
    goto :goto_1

    .line 47
    :cond_2
    move v3, v15

    .line 48
    :goto_1
    and-int/2addr v2, v14

    .line 49
    invoke-virtual {v12, v2, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    sget-object v23, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 54
    .line 55
    if-eqz v2, :cond_14

    .line 56
    .line 57
    iget-object v2, v0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsScreenKt$$ExternalSyntheticLambda1;->f$0:Lorg/wikipedia/util/Resource;

    .line 58
    .line 59
    instance-of v3, v2, Lorg/wikipedia/util/Resource$Loading;

    .line 60
    .line 61
    const/high16 v5, 0x3f800000    # 1.0f

    .line 62
    .line 63
    const/16 v6, 0x20

    .line 64
    .line 65
    sget-object v7, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 66
    .line 67
    if-eqz v3, :cond_4

    .line 68
    .line 69
    const v0, 0xf251839

    .line 70
    .line 71
    .line 72
    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 73
    .line 74
    .line 75
    invoke-static {v7, v5}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/OffsetKt;->padding(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;)Landroidx/compose/ui/Modifier;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    sget-object v1, Landroidx/compose/ui/Alignment$Companion;->TopStart:Landroidx/compose/ui/BiasAlignment;

    .line 84
    .line 85
    invoke-static {v1, v15}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    iget-wide v2, v12, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 90
    .line 91
    ushr-long v8, v2, v6

    .line 92
    .line 93
    xor-long/2addr v2, v8

    .line 94
    long-to-int v2, v2

    .line 95
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    invoke-static {v12, v0}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 104
    .line 105
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 106
    .line 107
    .line 108
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 109
    .line 110
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 111
    .line 112
    .line 113
    iget-boolean v6, v12, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 114
    .line 115
    if-eqz v6, :cond_3

    .line 116
    .line 117
    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 118
    .line 119
    .line 120
    goto :goto_2

    .line 121
    :cond_3
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 122
    .line 123
    .line 124
    :goto_2
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 125
    .line 126
    invoke-static {v12, v1, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 127
    .line 128
    .line 129
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 130
    .line 131
    invoke-static {v12, v3, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 132
    .line 133
    .line 134
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 139
    .line 140
    invoke-static {v12, v1, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 141
    .line 142
    .line 143
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 144
    .line 145
    invoke-static {v12, v1}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    .line 146
    .line 147
    .line 148
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 149
    .line 150
    invoke-static {v12, v0, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 151
    .line 152
    .line 153
    invoke-static {v7, v5}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 154
    .line 155
    .line 156
    move-result-object v2

    .line 157
    sget-object v0, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 158
    .line 159
    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    check-cast v1, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 164
    .line 165
    iget-wide v3, v1, Lorg/wikipedia/compose/theme/WikipediaColor;->progressiveColor:J

    .line 166
    .line 167
    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    check-cast v0, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 172
    .line 173
    iget-wide v5, v0, Lorg/wikipedia/compose/theme/WikipediaColor;->borderColor:J

    .line 174
    .line 175
    const/4 v8, 0x0

    .line 176
    const/4 v10, 0x6

    .line 177
    const/4 v7, 0x0

    .line 178
    move-object v9, v12

    .line 179
    invoke-static/range {v2 .. v10}, Landroidx/compose/material3/ProgressIndicatorKt;->LinearProgressIndicator-rIrjwxo(Landroidx/compose/ui/Modifier;JJIFLandroidx/compose/runtime/GapComposer;I)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v12, v14}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v12, v15}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 186
    .line 187
    .line 188
    return-object v23

    .line 189
    :cond_4
    instance-of v3, v2, Lorg/wikipedia/util/Resource$Error;

    .line 190
    .line 191
    if-eqz v3, :cond_6

    .line 192
    .line 193
    const v3, 0xf2d4b05

    .line 194
    .line 195
    .line 196
    invoke-virtual {v12, v3}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 197
    .line 198
    .line 199
    sget-object v3, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxSize:Landroidx/compose/foundation/layout/FillElement;

    .line 200
    .line 201
    invoke-static {v3, v1}, Landroidx/compose/foundation/layout/OffsetKt;->padding(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;)Landroidx/compose/ui/Modifier;

    .line 202
    .line 203
    .line 204
    move-result-object v1

    .line 205
    sget-object v3, Landroidx/compose/ui/Alignment$Companion;->Center:Landroidx/compose/ui/BiasAlignment;

    .line 206
    .line 207
    invoke-static {v3, v15}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 208
    .line 209
    .line 210
    move-result-object v3

    .line 211
    iget-wide v8, v12, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 212
    .line 213
    ushr-long v10, v8, v6

    .line 214
    .line 215
    xor-long/2addr v8, v10

    .line 216
    long-to-int v4, v8

    .line 217
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 218
    .line 219
    .line 220
    move-result-object v6

    .line 221
    invoke-static {v12, v1}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 222
    .line 223
    .line 224
    move-result-object v1

    .line 225
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 226
    .line 227
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 228
    .line 229
    .line 230
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 231
    .line 232
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 233
    .line 234
    .line 235
    iget-boolean v9, v12, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 236
    .line 237
    if-eqz v9, :cond_5

    .line 238
    .line 239
    invoke-virtual {v12, v8}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 240
    .line 241
    .line 242
    goto :goto_3

    .line 243
    :cond_5
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 244
    .line 245
    .line 246
    :goto_3
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 247
    .line 248
    invoke-static {v12, v3, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 249
    .line 250
    .line 251
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 252
    .line 253
    invoke-static {v12, v6, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 254
    .line 255
    .line 256
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 257
    .line 258
    .line 259
    move-result-object v3

    .line 260
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 261
    .line 262
    invoke-static {v12, v3, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 263
    .line 264
    .line 265
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 266
    .line 267
    invoke-static {v12, v3}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    .line 268
    .line 269
    .line 270
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 271
    .line 272
    invoke-static {v12, v1, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 273
    .line 274
    .line 275
    invoke-static {v7, v5}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 276
    .line 277
    .line 278
    move-result-object v1

    .line 279
    check-cast v2, Lorg/wikipedia/util/Resource$Error;

    .line 280
    .line 281
    iget-object v3, v2, Lorg/wikipedia/util/Resource$Error;->throwable:Ljava/lang/Throwable;

    .line 282
    .line 283
    const/4 v7, 0x6

    .line 284
    const/16 v8, 0x14

    .line 285
    .line 286
    iget-object v4, v0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsScreenKt$$ExternalSyntheticLambda1;->f$4:Lorg/wikipedia/compose/components/error/WikiErrorClickEvents;

    .line 287
    .line 288
    const/4 v5, 0x0

    .line 289
    move-object v2, v1

    .line 290
    move-object v6, v12

    .line 291
    invoke-static/range {v2 .. v8}, Lokio/Okio__JvmOkioKt;->WikiErrorView(Landroidx/compose/ui/Modifier;Ljava/lang/Throwable;Lorg/wikipedia/compose/components/error/WikiErrorClickEvents;ZLandroidx/compose/runtime/GapComposer;II)V

    .line 292
    .line 293
    .line 294
    invoke-virtual {v12, v14}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 295
    .line 296
    .line 297
    invoke-virtual {v12, v15}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 298
    .line 299
    .line 300
    return-object v23

    .line 301
    :cond_6
    instance-of v2, v2, Lorg/wikipedia/util/Resource$Success;

    .line 302
    .line 303
    if-eqz v2, :cond_7

    .line 304
    .line 305
    const v1, 0xf360f21

    .line 306
    .line 307
    .line 308
    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 309
    .line 310
    .line 311
    iget-object v0, v0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsScreenKt$$ExternalSyntheticLambda1;->f$1:Lkotlin/jvm/functions/Function0;

    .line 312
    .line 313
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 314
    .line 315
    .line 316
    invoke-virtual {v12, v15}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 317
    .line 318
    .line 319
    return-object v23

    .line 320
    :cond_7
    const v2, 0xf3765f2

    .line 321
    .line 322
    .line 323
    invoke-virtual {v12, v2}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 324
    .line 325
    .line 326
    invoke-virtual {v12, v15}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 327
    .line 328
    .line 329
    invoke-static {v7, v1}, Landroidx/compose/foundation/layout/OffsetKt;->padding(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;)Landroidx/compose/ui/Modifier;

    .line 330
    .line 331
    .line 332
    move-result-object v1

    .line 333
    sget-object v2, Landroidx/compose/foundation/layout/OffsetKt;->Top:Landroidx/compose/foundation/layout/Arrangement$End$1;

    .line 334
    .line 335
    sget-object v3, Landroidx/compose/ui/Alignment$Companion;->Start:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 336
    .line 337
    invoke-static {v2, v3, v12, v15}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/GapComposer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 338
    .line 339
    .line 340
    move-result-object v2

    .line 341
    iget-wide v8, v12, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 342
    .line 343
    ushr-long v5, v8, v6

    .line 344
    .line 345
    xor-long/2addr v5, v8

    .line 346
    long-to-int v3, v5

    .line 347
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 348
    .line 349
    .line 350
    move-result-object v5

    .line 351
    invoke-static {v12, v1}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 352
    .line 353
    .line 354
    move-result-object v1

    .line 355
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 356
    .line 357
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 358
    .line 359
    .line 360
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 361
    .line 362
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 363
    .line 364
    .line 365
    iget-boolean v8, v12, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 366
    .line 367
    if-eqz v8, :cond_8

    .line 368
    .line 369
    invoke-virtual {v12, v6}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 370
    .line 371
    .line 372
    goto :goto_4

    .line 373
    :cond_8
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 374
    .line 375
    .line 376
    :goto_4
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 377
    .line 378
    invoke-static {v12, v2, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 379
    .line 380
    .line 381
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 382
    .line 383
    invoke-static {v12, v5, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 384
    .line 385
    .line 386
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 387
    .line 388
    .line 389
    move-result-object v2

    .line 390
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 391
    .line 392
    invoke-static {v12, v2, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 393
    .line 394
    .line 395
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 396
    .line 397
    invoke-static {v12, v2}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    .line 398
    .line 399
    .line 400
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 401
    .line 402
    invoke-static {v12, v1, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 403
    .line 404
    .line 405
    iget-boolean v1, v0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsScreenKt$$ExternalSyntheticLambda1;->f$5:Z

    .line 406
    .line 407
    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 408
    .line 409
    .line 410
    move-result v2

    .line 411
    iget-object v3, v0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsScreenKt$$ExternalSyntheticLambda1;->f$3:Lkotlin/jvm/functions/Function1;

    .line 412
    .line 413
    invoke-virtual {v12, v3}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 414
    .line 415
    .line 416
    move-result v5

    .line 417
    or-int/2addr v2, v5

    .line 418
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 419
    .line 420
    .line 421
    move-result-object v5

    .line 422
    iget-object v6, v0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsScreenKt$$ExternalSyntheticLambda1;->f$11:Landroidx/compose/runtime/MutableState;

    .line 423
    .line 424
    sget-object v8, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 425
    .line 426
    if-nez v2, :cond_9

    .line 427
    .line 428
    if-ne v5, v8, :cond_a

    .line 429
    .line 430
    :cond_9
    new-instance v5, Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceScreenKt$$ExternalSyntheticLambda10;

    .line 431
    .line 432
    invoke-direct {v5, v1, v3, v6, v4}, Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceScreenKt$$ExternalSyntheticLambda10;-><init>(ZLkotlin/jvm/functions/Function1;Ljava/lang/Object;I)V

    .line 433
    .line 434
    .line 435
    invoke-virtual {v12, v5}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 436
    .line 437
    .line 438
    :cond_a
    check-cast v5, Lkotlin/jvm/functions/Function0;

    .line 439
    .line 440
    invoke-static {v7, v5}, Lorg/jsoup/Jsoup;->noRippleClickable$default(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;)Landroidx/compose/ui/Modifier;

    .line 441
    .line 442
    .line 443
    move-result-object v2

    .line 444
    const/high16 v4, 0x41800000    # 16.0f

    .line 445
    .line 446
    invoke-static {v2, v4}, Landroidx/compose/foundation/layout/OffsetKt;->padding-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 447
    .line 448
    .line 449
    move-result-object v2

    .line 450
    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 451
    .line 452
    .line 453
    move-result v5

    .line 454
    invoke-virtual {v12, v3}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 455
    .line 456
    .line 457
    move-result v9

    .line 458
    or-int/2addr v5, v9

    .line 459
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 460
    .line 461
    .line 462
    move-result-object v9

    .line 463
    if-nez v5, :cond_b

    .line 464
    .line 465
    if-ne v9, v8, :cond_c

    .line 466
    .line 467
    :cond_b
    new-instance v9, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsScreenKt$$ExternalSyntheticLambda4;

    .line 468
    .line 469
    invoke-direct {v9, v1, v3, v6, v15}, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsScreenKt$$ExternalSyntheticLambda4;-><init>(ZLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableState;I)V

    .line 470
    .line 471
    .line 472
    invoke-virtual {v12, v9}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 473
    .line 474
    .line 475
    :cond_c
    check-cast v9, Lkotlin/jvm/functions/Function1;

    .line 476
    .line 477
    invoke-static {v15, v12, v2, v9, v1}, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceScreenKt;->RecommendedReadingListSwitch(ILandroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Z)V

    .line 478
    .line 479
    .line 480
    iget-object v1, v0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsScreenKt$$ExternalSyntheticLambda1;->f$2:Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsState;

    .line 481
    .line 482
    iget-boolean v2, v1, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsState;->isRecommendedReadingListEnabled:Z

    .line 483
    .line 484
    const/4 v5, 0x6

    .line 485
    if-nez v2, :cond_d

    .line 486
    .line 487
    const v0, 0x3d03f991

    .line 488
    .line 489
    .line 490
    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 491
    .line 492
    .line 493
    invoke-static {v7, v4}, Landroidx/compose/foundation/layout/OffsetKt;->padding-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 494
    .line 495
    .line 496
    move-result-object v0

    .line 497
    invoke-static {v0, v12, v5}, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceScreenKt;->DisabledState(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/GapComposer;I)V

    .line 498
    .line 499
    .line 500
    invoke-virtual {v12, v15}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 501
    .line 502
    .line 503
    move-object v0, v3

    .line 504
    move-object/from16 p0, v6

    .line 505
    .line 506
    move-object/from16 v24, v8

    .line 507
    .line 508
    goto :goto_5

    .line 509
    :cond_d
    const v2, 0x3d0667fd

    .line 510
    .line 511
    .line 512
    invoke-virtual {v12, v2}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 513
    .line 514
    .line 515
    iget v2, v1, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsState;->articlesNumber:I

    .line 516
    .line 517
    move-object v4, v3

    .line 518
    iget-object v3, v1, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsState;->updateFrequency:Lorg/wikipedia/readinglist/recommended/RecommendedReadingListUpdateFrequency;

    .line 519
    .line 520
    move-object v7, v4

    .line 521
    iget-object v4, v1, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsState;->recommendedReadingListSource:Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSource;

    .line 522
    .line 523
    move v9, v5

    .line 524
    iget-boolean v5, v1, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsState;->isRecommendedReadingListNotificationEnabled:Z

    .line 525
    .line 526
    const/4 v11, 0x0

    .line 527
    const/4 v13, 0x0

    .line 528
    move-object v10, v6

    .line 529
    iget-object v6, v0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsScreenKt$$ExternalSyntheticLambda1;->f$6:Lkotlin/jvm/functions/Function1;

    .line 530
    .line 531
    move-object/from16 v16, v7

    .line 532
    .line 533
    iget-object v7, v0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsScreenKt$$ExternalSyntheticLambda1;->f$7:Lkotlin/jvm/functions/Function1;

    .line 534
    .line 535
    move-object/from16 v17, v8

    .line 536
    .line 537
    iget-object v8, v0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsScreenKt$$ExternalSyntheticLambda1;->f$8:Lkotlin/jvm/functions/Function0;

    .line 538
    .line 539
    move/from16 v18, v9

    .line 540
    .line 541
    iget-object v9, v0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsScreenKt$$ExternalSyntheticLambda1;->f$9:Lkotlin/jvm/functions/Function0;

    .line 542
    .line 543
    iget-object v0, v0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsScreenKt$$ExternalSyntheticLambda1;->f$10:Lkotlin/jvm/functions/Function1;

    .line 544
    .line 545
    move-object/from16 p0, v10

    .line 546
    .line 547
    move-object/from16 v24, v17

    .line 548
    .line 549
    move-object v10, v0

    .line 550
    move-object/from16 v0, v16

    .line 551
    .line 552
    invoke-static/range {v2 .. v13}, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceScreenKt;->EnabledState(ILorg/wikipedia/readinglist/recommended/RecommendedReadingListUpdateFrequency;Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSource;ZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/GapComposer;I)V

    .line 553
    .line 554
    .line 555
    invoke-virtual {v12, v15}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 556
    .line 557
    .line 558
    :goto_5
    invoke-virtual {v12, v14}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 559
    .line 560
    .line 561
    invoke-interface/range {p0 .. p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 562
    .line 563
    .line 564
    move-result-object v2

    .line 565
    check-cast v2, Ljava/lang/Boolean;

    .line 566
    .line 567
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 568
    .line 569
    .line 570
    move-result v2

    .line 571
    if-eqz v2, :cond_13

    .line 572
    .line 573
    const v2, 0xf54611e

    .line 574
    .line 575
    .line 576
    invoke-virtual {v12, v2}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 577
    .line 578
    .line 579
    const v2, 0x7f120807

    .line 580
    .line 581
    .line 582
    invoke-static {v2, v12}, Lcoil3/util/UtilsKt;->stringResource(ILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 583
    .line 584
    .line 585
    move-result-object v3

    .line 586
    iget-object v1, v1, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsState;->updateFrequency:Lorg/wikipedia/readinglist/recommended/RecommendedReadingListUpdateFrequency;

    .line 587
    .line 588
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 589
    .line 590
    .line 591
    move-result-object v1

    .line 592
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 593
    .line 594
    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 595
    .line 596
    .line 597
    move-result-object v1

    .line 598
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 599
    .line 600
    .line 601
    new-array v2, v14, [Ljava/lang/Object;

    .line 602
    .line 603
    aput-object v1, v2, v15

    .line 604
    .line 605
    const v1, 0x7f120804

    .line 606
    .line 607
    .line 608
    invoke-static {v1, v2, v12}, Lcoil3/util/UtilsKt;->stringResource(I[Ljava/lang/Object;Landroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 609
    .line 610
    .line 611
    move-result-object v6

    .line 612
    const v1, 0x7f120805

    .line 613
    .line 614
    .line 615
    invoke-static {v1, v12}, Lcoil3/util/UtilsKt;->stringResource(ILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 616
    .line 617
    .line 618
    move-result-object v10

    .line 619
    const v1, 0x7f120806

    .line 620
    .line 621
    .line 622
    invoke-static {v1, v12}, Lcoil3/util/UtilsKt;->stringResource(ILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 623
    .line 624
    .line 625
    move-result-object v13

    .line 626
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 627
    .line 628
    .line 629
    move-result-object v1

    .line 630
    move-object/from16 v2, v24

    .line 631
    .line 632
    if-ne v1, v2, :cond_e

    .line 633
    .line 634
    new-instance v1, Lorg/wikipedia/search/HybridSearchResultsScreenKt$$ExternalSyntheticLambda32;

    .line 635
    .line 636
    const/4 v9, 0x6

    .line 637
    move-object/from16 v4, p0

    .line 638
    .line 639
    invoke-direct {v1, v4, v9}, Lorg/wikipedia/search/HybridSearchResultsScreenKt$$ExternalSyntheticLambda32;-><init>(Landroidx/compose/runtime/MutableState;I)V

    .line 640
    .line 641
    .line 642
    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 643
    .line 644
    .line 645
    goto :goto_6

    .line 646
    :cond_e
    const/4 v9, 0x6

    .line 647
    move-object/from16 v4, p0

    .line 648
    .line 649
    :goto_6
    move-object/from16 v16, v1

    .line 650
    .line 651
    check-cast v16, Lkotlin/jvm/functions/Function0;

    .line 652
    .line 653
    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 654
    .line 655
    .line 656
    move-result v1

    .line 657
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 658
    .line 659
    .line 660
    move-result-object v5

    .line 661
    if-nez v1, :cond_f

    .line 662
    .line 663
    if-ne v5, v2, :cond_10

    .line 664
    .line 665
    :cond_f
    new-instance v5, Lorg/wikipedia/search/SearchResultsScreenKt$$ExternalSyntheticLambda0;

    .line 666
    .line 667
    const/4 v1, 0x5

    .line 668
    invoke-direct {v5, v0, v4, v1}, Lorg/wikipedia/search/SearchResultsScreenKt$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableState;I)V

    .line 669
    .line 670
    .line 671
    invoke-virtual {v12, v5}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 672
    .line 673
    .line 674
    :cond_10
    move-object/from16 v17, v5

    .line 675
    .line 676
    check-cast v17, Lkotlin/jvm/functions/Function0;

    .line 677
    .line 678
    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 679
    .line 680
    .line 681
    move-result v1

    .line 682
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 683
    .line 684
    .line 685
    move-result-object v5

    .line 686
    if-nez v1, :cond_11

    .line 687
    .line 688
    if-ne v5, v2, :cond_12

    .line 689
    .line 690
    :cond_11
    new-instance v5, Lorg/wikipedia/search/SearchResultsScreenKt$$ExternalSyntheticLambda0;

    .line 691
    .line 692
    invoke-direct {v5, v0, v4, v9}, Lorg/wikipedia/search/SearchResultsScreenKt$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableState;I)V

    .line 693
    .line 694
    .line 695
    invoke-virtual {v12, v5}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 696
    .line 697
    .line 698
    :cond_12
    move-object/from16 v18, v5

    .line 699
    .line 700
    check-cast v18, Lkotlin/jvm/functions/Function0;

    .line 701
    .line 702
    const/16 v21, 0x180

    .line 703
    .line 704
    const/16 v22, 0xaed

    .line 705
    .line 706
    const/4 v2, 0x0

    .line 707
    const/4 v4, 0x0

    .line 708
    const/4 v5, 0x0

    .line 709
    const/4 v7, 0x0

    .line 710
    const/4 v8, 0x0

    .line 711
    const/4 v9, 0x0

    .line 712
    move-object/from16 v19, v12

    .line 713
    .line 714
    const-wide/16 v11, 0x0

    .line 715
    .line 716
    move v0, v15

    .line 717
    const-wide/16 v14, 0x0

    .line 718
    .line 719
    const/16 v20, 0x0

    .line 720
    .line 721
    invoke-static/range {v2 .. v22}, Lorg/wikipedia/compose/components/TabsBoxKt;->WikipediaAlertDialog-sK9R1Co(Landroidx/compose/ui/Modifier;Ljava/lang/String;Landroidx/compose/ui/Modifier;ILjava/lang/String;Landroidx/compose/ui/Modifier;ILkotlin/jvm/functions/Function2;Ljava/lang/String;JLjava/lang/String;JLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/GapComposer;III)V

    .line 722
    .line 723
    .line 724
    move-object/from16 v12, v19

    .line 725
    .line 726
    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 727
    .line 728
    .line 729
    return-object v23

    .line 730
    :cond_13
    move v0, v15

    .line 731
    const v1, 0xf6608d2

    .line 732
    .line 733
    .line 734
    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 735
    .line 736
    .line 737
    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 738
    .line 739
    .line 740
    return-object v23

    .line 741
    :cond_14
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 742
    .line 743
    .line 744
    return-object v23
.end method
