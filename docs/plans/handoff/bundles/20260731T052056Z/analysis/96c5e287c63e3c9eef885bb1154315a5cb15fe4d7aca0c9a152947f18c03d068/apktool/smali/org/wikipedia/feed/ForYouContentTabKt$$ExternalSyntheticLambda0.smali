.class public final synthetic Lorg/wikipedia/feed/ForYouContentTabKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic f$0:Lorg/wikipedia/feed/ForYouContentState;

.field public final synthetic f$1:F

.field public final synthetic f$2:I

.field public final synthetic f$3:Lorg/wikipedia/dataclient/WikiSite;

.field public final synthetic f$4:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/feed/ForYouContentState;FILorg/wikipedia/dataclient/WikiSite;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/wikipedia/feed/ForYouContentTabKt$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/feed/ForYouContentState;

    .line 5
    .line 6
    iput p2, p0, Lorg/wikipedia/feed/ForYouContentTabKt$$ExternalSyntheticLambda0;->f$1:F

    .line 7
    .line 8
    iput p3, p0, Lorg/wikipedia/feed/ForYouContentTabKt$$ExternalSyntheticLambda0;->f$2:I

    .line 9
    .line 10
    iput-object p4, p0, Lorg/wikipedia/feed/ForYouContentTabKt$$ExternalSyntheticLambda0;->f$3:Lorg/wikipedia/dataclient/WikiSite;

    .line 11
    .line 12
    iput-object p5, p0, Lorg/wikipedia/feed/ForYouContentTabKt$$ExternalSyntheticLambda0;->f$4:Lkotlin/jvm/functions/Function1;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    check-cast v1, Landroidx/compose/foundation/lazy/LazyItemScopeImpl;

    .line 6
    .line 7
    move-object/from16 v13, p2

    .line 8
    .line 9
    check-cast v13, Landroidx/compose/runtime/GapComposer;

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
    and-int/lit8 v1, v2, 0x11

    .line 23
    .line 24
    const/16 v3, 0x10

    .line 25
    .line 26
    const/4 v4, 0x1

    .line 27
    const/4 v5, 0x0

    .line 28
    if-eq v1, v3, :cond_0

    .line 29
    .line 30
    move v1, v4

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    move v1, v5

    .line 33
    :goto_0
    and-int/2addr v2, v4

    .line 34
    invoke-virtual {v13, v2, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_7

    .line 39
    .line 40
    iget-object v1, v0, Lorg/wikipedia/feed/ForYouContentTabKt$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/feed/ForYouContentState;

    .line 41
    .line 42
    iget-boolean v2, v1, Lorg/wikipedia/feed/ForYouContentState;->isLoadingMore:Z

    .line 43
    .line 44
    if-eqz v2, :cond_1

    .line 45
    .line 46
    const v0, 0x18522c3a

    .line 47
    .line 48
    .line 49
    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 50
    .line 51
    .line 52
    const/4 v0, 0x0

    .line 53
    invoke-static {v0, v13, v5, v4}, Lorg/wikipedia/feed/ForYouCardKt;->LoadingIndicator(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/GapComposer;II)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v13, v5}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 57
    .line 58
    .line 59
    goto/16 :goto_1

    .line 60
    .line 61
    :cond_1
    iget-object v1, v1, Lorg/wikipedia/feed/ForYouContentState;->modules:Ljava/util/List;

    .line 62
    .line 63
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    if-nez v1, :cond_6

    .line 68
    .line 69
    const v1, 0x185b0f94

    .line 70
    .line 71
    .line 72
    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 73
    .line 74
    .line 75
    new-instance v1, Lorg/wikipedia/feed/model/EmptyForYouCard;

    .line 76
    .line 77
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 78
    .line 79
    .line 80
    sget-object v2, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 81
    .line 82
    const/high16 v3, 0x3f800000    # 1.0f

    .line 83
    .line 84
    invoke-static {v2, v3}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    iget v3, v0, Lorg/wikipedia/feed/ForYouContentTabKt$$ExternalSyntheticLambda0;->f$1:F

    .line 89
    .line 90
    invoke-static {v2, v3}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    const v3, 0x7f0600aa

    .line 95
    .line 96
    .line 97
    invoke-static {v3, v13}, Lkotlin/TuplesKt;->colorResource(ILandroidx/compose/runtime/GapComposer;)J

    .line 98
    .line 99
    .line 100
    move-result-wide v6

    .line 101
    sget-object v3, Landroidx/compose/ui/graphics/ColorKt;->RectangleShape:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    .line 102
    .line 103
    invoke-static {v2, v6, v7, v3}, Landroidx/compose/foundation/ImageKt;->background-bw27NRU(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    const/high16 v3, 0x41800000    # 16.0f

    .line 108
    .line 109
    invoke-static {v2, v3}, Landroidx/compose/foundation/layout/OffsetKt;->padding-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 110
    .line 111
    .line 112
    move-result-object v6

    .line 113
    iget v2, v0, Lorg/wikipedia/feed/ForYouContentTabKt$$ExternalSyntheticLambda0;->f$2:I

    .line 114
    .line 115
    mul-int/lit8 v2, v2, 0x2

    .line 116
    .line 117
    add-int/lit8 v2, v2, 0x40

    .line 118
    .line 119
    int-to-float v8, v2

    .line 120
    const/4 v10, 0x0

    .line 121
    const/16 v11, 0xd

    .line 122
    .line 123
    const/4 v7, 0x0

    .line 124
    const/4 v9, 0x0

    .line 125
    invoke-static/range {v6 .. v11}, Landroidx/compose/foundation/layout/OffsetKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    invoke-static {v2}, Landroidx/compose/foundation/layout/OffsetKt;->navigationBarsPadding(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    iget-object v3, v0, Lorg/wikipedia/feed/ForYouContentTabKt$$ExternalSyntheticLambda0;->f$4:Lkotlin/jvm/functions/Function1;

    .line 134
    .line 135
    invoke-virtual {v13, v3}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    move-result v6

    .line 139
    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    move-result v7

    .line 143
    or-int/2addr v6, v7

    .line 144
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v7

    .line 148
    sget-object v8, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 149
    .line 150
    if-nez v6, :cond_2

    .line 151
    .line 152
    if-ne v7, v8, :cond_3

    .line 153
    .line 154
    :cond_2
    new-instance v7, Lorg/wikipedia/feed/ForYouContentTabKt$$ExternalSyntheticLambda3;

    .line 155
    .line 156
    invoke-direct {v7, v3, v1, v5}, Lorg/wikipedia/feed/ForYouContentTabKt$$ExternalSyntheticLambda3;-><init>(Lkotlin/jvm/functions/Function1;Lorg/wikipedia/feed/model/EmptyForYouCard;I)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v13, v7}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 160
    .line 161
    .line 162
    :cond_3
    move-object v11, v7

    .line 163
    check-cast v11, Lkotlin/jvm/functions/Function0;

    .line 164
    .line 165
    invoke-virtual {v13, v3}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    move-result v6

    .line 169
    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    move-result v7

    .line 173
    or-int/2addr v6, v7

    .line 174
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object v7

    .line 178
    if-nez v6, :cond_4

    .line 179
    .line 180
    if-ne v7, v8, :cond_5

    .line 181
    .line 182
    :cond_4
    new-instance v7, Lorg/wikipedia/feed/ForYouContentTabKt$$ExternalSyntheticLambda3;

    .line 183
    .line 184
    invoke-direct {v7, v3, v1, v4}, Lorg/wikipedia/feed/ForYouContentTabKt$$ExternalSyntheticLambda3;-><init>(Lkotlin/jvm/functions/Function1;Lorg/wikipedia/feed/model/EmptyForYouCard;I)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v13, v7}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 188
    .line 189
    .line 190
    :cond_5
    move-object v12, v7

    .line 191
    check-cast v12, Lkotlin/jvm/functions/Function0;

    .line 192
    .line 193
    const/4 v15, 0x0

    .line 194
    const/16 v16, 0x180

    .line 195
    .line 196
    iget-object v3, v0, Lorg/wikipedia/feed/ForYouContentTabKt$$ExternalSyntheticLambda0;->f$3:Lorg/wikipedia/dataclient/WikiSite;

    .line 197
    .line 198
    const v4, 0x7f080322

    .line 199
    .line 200
    .line 201
    move v0, v5

    .line 202
    const v5, 0x7f120283

    .line 203
    .line 204
    .line 205
    const v6, 0x7f120282

    .line 206
    .line 207
    .line 208
    const v7, 0x7f120284

    .line 209
    .line 210
    .line 211
    const v8, 0x7f120281

    .line 212
    .line 213
    .line 214
    const/4 v9, 0x0

    .line 215
    const/4 v10, 0x0

    .line 216
    const/4 v14, 0x0

    .line 217
    invoke-static/range {v2 .. v16}, Lorg/wikipedia/feed/ForYouCardKt;->ForYouFeedMessageView(Landroidx/compose/ui/Modifier;Lorg/wikipedia/dataclient/WikiSite;IIIIIIZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/GapComposer;III)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 221
    .line 222
    .line 223
    goto :goto_1

    .line 224
    :cond_6
    move v0, v5

    .line 225
    const v1, 0x1871efac

    .line 226
    .line 227
    .line 228
    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 232
    .line 233
    .line 234
    goto :goto_1

    .line 235
    :cond_7
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 236
    .line 237
    .line 238
    :goto_1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 239
    .line 240
    return-object v0
.end method
