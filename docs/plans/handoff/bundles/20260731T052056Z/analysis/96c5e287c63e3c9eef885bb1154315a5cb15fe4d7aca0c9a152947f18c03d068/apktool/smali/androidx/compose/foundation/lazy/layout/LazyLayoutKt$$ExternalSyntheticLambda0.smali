.class public final synthetic Landroidx/compose/foundation/lazy/layout/LazyLayoutKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic f$0:Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

.field public final synthetic f$1:Landroidx/compose/ui/Modifier;

.field public final synthetic f$2:Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasurePolicy;

.field public final synthetic f$3:Landroidx/compose/runtime/MutableState;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasurePolicy;Landroidx/compose/runtime/MutableState;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt$$ExternalSyntheticLambda0;->f$0:Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt$$ExternalSyntheticLambda0;->f$1:Landroidx/compose/ui/Modifier;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt$$ExternalSyntheticLambda0;->f$2:Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasurePolicy;

    .line 9
    .line 10
    iput-object p4, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt$$ExternalSyntheticLambda0;->f$3:Landroidx/compose/runtime/MutableState;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    check-cast p1, Landroidx/compose/runtime/saveable/SaveableStateHolder;

    .line 2
    .line 3
    check-cast p2, Landroidx/compose/runtime/GapComposer;

    .line 4
    .line 5
    check-cast p3, Ljava/lang/Integer;

    .line 6
    .line 7
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p3

    .line 14
    const/4 v0, 0x3

    .line 15
    sget-object v1, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 16
    .line 17
    if-ne p3, v1, :cond_0

    .line 18
    .line 19
    new-instance p3, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;

    .line 20
    .line 21
    new-instance v2, Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda2;

    .line 22
    .line 23
    iget-object v3, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt$$ExternalSyntheticLambda0;->f$3:Landroidx/compose/runtime/MutableState;

    .line 24
    .line 25
    invoke-direct {v2, v3, v0}, Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda2;-><init>(Landroidx/compose/runtime/MutableState;I)V

    .line 26
    .line 27
    .line 28
    invoke-direct {p3, p1, v2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;-><init>(Landroidx/compose/runtime/saveable/SaveableStateHolder;Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda2;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2, p3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    check-cast p3, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;

    .line 35
    .line 36
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    if-ne p1, v1, :cond_1

    .line 41
    .line 42
    new-instance p1, Landroidx/compose/ui/layout/SubcomposeLayoutState;

    .line 43
    .line 44
    new-instance v2, Landroidx/cardview/widget/CardView$1;

    .line 45
    .line 46
    invoke-direct {v2, p3}, Landroidx/cardview/widget/CardView$1;-><init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;)V

    .line 47
    .line 48
    .line 49
    invoke-direct {p1, v2}, Landroidx/compose/ui/layout/SubcomposeLayoutState;-><init>(Landroidx/compose/ui/layout/SubcomposeSlotReusePolicy;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p2, p1}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    :cond_1
    check-cast p1, Landroidx/compose/ui/layout/SubcomposeLayoutState;

    .line 56
    .line 57
    iget-object v2, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt$$ExternalSyntheticLambda0;->f$0:Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

    .line 58
    .line 59
    const/4 v3, 0x0

    .line 60
    if-eqz v2, :cond_9

    .line 61
    .line 62
    const v4, 0x67eb8deb

    .line 63
    .line 64
    .line 65
    invoke-virtual {p2, v4}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 66
    .line 67
    .line 68
    const v4, 0x34e696b7

    .line 69
    .line 70
    .line 71
    invoke-virtual {p2, v4}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 72
    .line 73
    .line 74
    sget-object v4, Landroidx/compose/foundation/lazy/layout/PrefetchScheduler_androidKt;->RobolectricImpl:Landroidx/compose/foundation/lazy/layout/PrefetchScheduler_androidKt$RobolectricImpl$1;

    .line 75
    .line 76
    if-eqz v4, :cond_2

    .line 77
    .line 78
    const v5, 0x503387d0

    .line 79
    .line 80
    .line 81
    invoke-virtual {p2, v5}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 82
    .line 83
    .line 84
    :goto_0
    invoke-virtual {p2, v3}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 85
    .line 86
    .line 87
    goto :goto_2

    .line 88
    :cond_2
    const v4, 0x50344781

    .line 89
    .line 90
    .line 91
    invoke-virtual {p2, v4}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 92
    .line 93
    .line 94
    sget-object v4, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalView:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 95
    .line 96
    invoke-virtual {p2, v4}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v4

    .line 100
    check-cast v4, Landroid/view/View;

    .line 101
    .line 102
    invoke-virtual {p2, v4}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v5

    .line 106
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v6

    .line 110
    if-nez v5, :cond_3

    .line 111
    .line 112
    if-ne v6, v1, :cond_6

    .line 113
    .line 114
    :cond_3
    const v5, 0x7f090165

    .line 115
    .line 116
    .line 117
    invoke-virtual {v4, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v6

    .line 121
    instance-of v7, v6, Landroidx/compose/foundation/lazy/layout/PrefetchScheduler;

    .line 122
    .line 123
    if-eqz v7, :cond_4

    .line 124
    .line 125
    check-cast v6, Landroidx/compose/foundation/lazy/layout/PrefetchScheduler;

    .line 126
    .line 127
    goto :goto_1

    .line 128
    :cond_4
    const/4 v6, 0x0

    .line 129
    :goto_1
    if-nez v6, :cond_5

    .line 130
    .line 131
    new-instance v6, Landroidx/compose/foundation/lazy/layout/AndroidPrefetchScheduler;

    .line 132
    .line 133
    invoke-direct {v6, v4}, Landroidx/compose/foundation/lazy/layout/AndroidPrefetchScheduler;-><init>(Landroid/view/View;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v4, v5, v6}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 137
    .line 138
    .line 139
    :cond_5
    invoke-virtual {p2, v6}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 140
    .line 141
    .line 142
    :cond_6
    move-object v4, v6

    .line 143
    check-cast v4, Landroidx/compose/foundation/lazy/layout/PrefetchScheduler;

    .line 144
    .line 145
    goto :goto_0

    .line 146
    :goto_2
    invoke-virtual {p2, v3}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 147
    .line 148
    .line 149
    const/4 v5, 0x4

    .line 150
    new-array v5, v5, [Ljava/lang/Object;

    .line 151
    .line 152
    aput-object v2, v5, v3

    .line 153
    .line 154
    const/4 v6, 0x1

    .line 155
    aput-object p3, v5, v6

    .line 156
    .line 157
    const/4 v6, 0x2

    .line 158
    aput-object p1, v5, v6

    .line 159
    .line 160
    aput-object v4, v5, v0

    .line 161
    .line 162
    invoke-virtual {p2, v2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    move-result v0

    .line 166
    invoke-virtual {p2, p3}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 167
    .line 168
    .line 169
    move-result v6

    .line 170
    or-int/2addr v0, v6

    .line 171
    invoke-virtual {p2, p1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    move-result v6

    .line 175
    or-int/2addr v0, v6

    .line 176
    invoke-virtual {p2, v4}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 177
    .line 178
    .line 179
    move-result v6

    .line 180
    or-int/2addr v0, v6

    .line 181
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object v6

    .line 185
    if-nez v0, :cond_7

    .line 186
    .line 187
    if-ne v6, v1, :cond_8

    .line 188
    .line 189
    :cond_7
    new-instance v6, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt$$ExternalSyntheticLambda3;

    .line 190
    .line 191
    invoke-direct {v6, v2, p3, p1, v4}, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt$$ExternalSyntheticLambda3;-><init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;Landroidx/compose/ui/layout/SubcomposeLayoutState;Landroidx/compose/foundation/lazy/layout/PrefetchScheduler;)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {p2, v6}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 195
    .line 196
    .line 197
    :cond_8
    check-cast v6, Lkotlin/jvm/functions/Function1;

    .line 198
    .line 199
    invoke-static {v5, v6, p2}, Landroidx/compose/runtime/Updater;->DisposableEffect([Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/GapComposer;)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {p2, v3}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 203
    .line 204
    .line 205
    goto :goto_3

    .line 206
    :cond_9
    const v0, 0x67f47fcd

    .line 207
    .line 208
    .line 209
    invoke-virtual {p2, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {p2, v3}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 213
    .line 214
    .line 215
    :goto_3
    sget v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchStateKt;->$r8$clinit:I

    .line 216
    .line 217
    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt$$ExternalSyntheticLambda0;->f$1:Landroidx/compose/ui/Modifier;

    .line 218
    .line 219
    if-eqz v2, :cond_b

    .line 220
    .line 221
    new-instance v3, Landroidx/compose/foundation/lazy/layout/TraversablePrefetchStateModifierElement;

    .line 222
    .line 223
    invoke-direct {v3, v2}, Landroidx/compose/foundation/lazy/layout/TraversablePrefetchStateModifierElement;-><init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;)V

    .line 224
    .line 225
    .line 226
    invoke-interface {v0, v3}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 227
    .line 228
    .line 229
    move-result-object v2

    .line 230
    if-nez v2, :cond_a

    .line 231
    .line 232
    goto :goto_4

    .line 233
    :cond_a
    move-object v0, v2

    .line 234
    :cond_b
    :goto_4
    invoke-virtual {p2, p3}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 235
    .line 236
    .line 237
    move-result v2

    .line 238
    iget-object p0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt$$ExternalSyntheticLambda0;->f$2:Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasurePolicy;

    .line 239
    .line 240
    invoke-virtual {p2, p0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 241
    .line 242
    .line 243
    move-result v3

    .line 244
    or-int/2addr v2, v3

    .line 245
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 246
    .line 247
    .line 248
    move-result-object v3

    .line 249
    if-nez v2, :cond_c

    .line 250
    .line 251
    if-ne v3, v1, :cond_d

    .line 252
    .line 253
    :cond_c
    new-instance v3, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda17;

    .line 254
    .line 255
    const/4 v1, 0x5

    .line 256
    invoke-direct {v3, v1, p3, p0}, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda17;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 257
    .line 258
    .line 259
    invoke-virtual {p2, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 260
    .line 261
    .line 262
    :cond_d
    check-cast v3, Lkotlin/jvm/functions/Function2;

    .line 263
    .line 264
    const/16 p0, 0x8

    .line 265
    .line 266
    invoke-static {p1, v0, v3, p2, p0}, Landroidx/compose/ui/layout/RulerKt;->SubcomposeLayout(Landroidx/compose/ui/layout/SubcomposeLayoutState;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/GapComposer;I)V

    .line 267
    .line 268
    .line 269
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 270
    .line 271
    return-object p0
.end method
