.class public final synthetic Landroidx/compose/foundation/lazy/layout/LazyLayoutKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

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
    .locals 10

    .line 1
    check-cast p1, Landroidx/compose/runtime/saveable/SaveableStateHolder;

    .line 2
    .line 3
    check-cast p2, Landroidx/compose/runtime/Composer;

    .line 4
    .line 5
    check-cast p3, Ljava/lang/Integer;

    .line 6
    .line 7
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-object v3, p2

    .line 11
    check-cast v3, Landroidx/compose/runtime/GapComposer;

    .line 12
    .line 13
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    const/4 p3, 0x2

    .line 18
    sget-object v0, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 19
    .line 20
    if-ne p2, v0, :cond_0

    .line 21
    .line 22
    new-instance p2, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;

    .line 23
    .line 24
    new-instance v1, Lnet/newpipe/app/screen/about/LicensePageKt$$ExternalSyntheticLambda4;

    .line 25
    .line 26
    iget-object v2, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt$$ExternalSyntheticLambda0;->f$3:Landroidx/compose/runtime/MutableState;

    .line 27
    .line 28
    invoke-direct {v1, v2, p3}, Lnet/newpipe/app/screen/about/LicensePageKt$$ExternalSyntheticLambda4;-><init>(Landroidx/compose/runtime/MutableState;I)V

    .line 29
    .line 30
    .line 31
    invoke-direct {p2, p1, v1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;-><init>(Landroidx/compose/runtime/saveable/SaveableStateHolder;Lnet/newpipe/app/screen/about/LicensePageKt$$ExternalSyntheticLambda4;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v3, p2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    check-cast p2, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;

    .line 38
    .line 39
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    if-ne p1, v0, :cond_1

    .line 44
    .line 45
    new-instance p1, Landroidx/compose/ui/layout/SubcomposeLayoutState;

    .line 46
    .line 47
    new-instance v1, Landroidx/cardview/widget/CardView$1;

    .line 48
    .line 49
    invoke-direct {v1, p2}, Landroidx/cardview/widget/CardView$1;-><init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;)V

    .line 50
    .line 51
    .line 52
    invoke-direct {p1, v1}, Landroidx/compose/ui/layout/SubcomposeLayoutState;-><init>(Landroidx/compose/ui/layout/SubcomposeSlotReusePolicy;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v3, p1}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    :cond_1
    check-cast p1, Landroidx/compose/ui/layout/SubcomposeLayoutState;

    .line 59
    .line 60
    const/4 v1, 0x3

    .line 61
    iget-object v2, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt$$ExternalSyntheticLambda0;->f$0:Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

    .line 62
    .line 63
    const/4 v4, 0x0

    .line 64
    if-eqz v2, :cond_c

    .line 65
    .line 66
    const v5, 0x67eb8deb

    .line 67
    .line 68
    .line 69
    invoke-virtual {v3, v5}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 70
    .line 71
    .line 72
    const v5, 0x34e696b7

    .line 73
    .line 74
    .line 75
    invoke-virtual {v3, v5}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 76
    .line 77
    .line 78
    sget-object v5, Landroidx/compose/foundation/lazy/layout/PrefetchScheduler_androidKt;->RobolectricImpl:Landroidx/compose/foundation/lazy/layout/PrefetchScheduler_androidKt$RobolectricImpl$1;

    .line 79
    .line 80
    if-eqz v5, :cond_2

    .line 81
    .line 82
    const v6, 0x503387d0

    .line 83
    .line 84
    .line 85
    invoke-virtual {v3, v6}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 86
    .line 87
    .line 88
    :goto_0
    invoke-virtual {v3, v4}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 89
    .line 90
    .line 91
    goto :goto_2

    .line 92
    :cond_2
    const v5, 0x50344781

    .line 93
    .line 94
    .line 95
    invoke-virtual {v3, v5}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 96
    .line 97
    .line 98
    sget-object v5, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalView:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 99
    .line 100
    invoke-virtual {v3, v5}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v5

    .line 104
    check-cast v5, Landroid/view/View;

    .line 105
    .line 106
    invoke-virtual {v3, v5}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result v6

    .line 110
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v7

    .line 114
    if-nez v6, :cond_3

    .line 115
    .line 116
    if-ne v7, v0, :cond_6

    .line 117
    .line 118
    :cond_3
    const v6, 0x7f0a00c1

    .line 119
    .line 120
    .line 121
    invoke-virtual {v5, v6}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v7

    .line 125
    instance-of v8, v7, Landroidx/compose/foundation/lazy/layout/PrefetchScheduler;

    .line 126
    .line 127
    if-eqz v8, :cond_4

    .line 128
    .line 129
    check-cast v7, Landroidx/compose/foundation/lazy/layout/PrefetchScheduler;

    .line 130
    .line 131
    goto :goto_1

    .line 132
    :cond_4
    const/4 v7, 0x0

    .line 133
    :goto_1
    if-nez v7, :cond_5

    .line 134
    .line 135
    new-instance v7, Landroidx/compose/foundation/lazy/layout/AndroidPrefetchScheduler;

    .line 136
    .line 137
    invoke-direct {v7, v5}, Landroidx/compose/foundation/lazy/layout/AndroidPrefetchScheduler;-><init>(Landroid/view/View;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v5, v6, v7}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 141
    .line 142
    .line 143
    :cond_5
    invoke-virtual {v3, v7}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 144
    .line 145
    .line 146
    :cond_6
    move-object v5, v7

    .line 147
    check-cast v5, Landroidx/compose/foundation/lazy/layout/PrefetchScheduler;

    .line 148
    .line 149
    goto :goto_0

    .line 150
    :goto_2
    invoke-virtual {v3, v4}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 151
    .line 152
    .line 153
    const/4 v6, 0x4

    .line 154
    new-array v7, v6, [Ljava/lang/Object;

    .line 155
    .line 156
    aput-object v2, v7, v4

    .line 157
    .line 158
    const/4 v8, 0x1

    .line 159
    aput-object p2, v7, v8

    .line 160
    .line 161
    aput-object p1, v7, p3

    .line 162
    .line 163
    aput-object v5, v7, v1

    .line 164
    .line 165
    invoke-virtual {v3, v2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    move-result p3

    .line 169
    invoke-virtual {v3, p2}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    move-result v8

    .line 173
    or-int/2addr p3, v8

    .line 174
    invoke-virtual {v3, p1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    move-result v8

    .line 178
    or-int/2addr p3, v8

    .line 179
    invoke-virtual {v3, v5}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 180
    .line 181
    .line 182
    move-result v8

    .line 183
    or-int/2addr p3, v8

    .line 184
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object v8

    .line 188
    if-nez p3, :cond_7

    .line 189
    .line 190
    if-ne v8, v0, :cond_8

    .line 191
    .line 192
    :cond_7
    new-instance v8, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt$$ExternalSyntheticLambda3;

    .line 193
    .line 194
    invoke-direct {v8, v2, p2, p1, v5}, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt$$ExternalSyntheticLambda3;-><init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;Landroidx/compose/ui/layout/SubcomposeLayoutState;Landroidx/compose/foundation/lazy/layout/PrefetchScheduler;)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v3, v8}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 198
    .line 199
    .line 200
    :cond_8
    check-cast v8, Lkotlin/jvm/functions/Function1;

    .line 201
    .line 202
    invoke-static {v7, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    move-result-object p3

    .line 206
    array-length v5, p3

    .line 207
    move v6, v4

    .line 208
    move v7, v6

    .line 209
    :goto_3
    if-ge v6, v5, :cond_9

    .line 210
    .line 211
    aget-object v9, p3, v6

    .line 212
    .line 213
    invoke-virtual {v3, v9}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 214
    .line 215
    .line 216
    move-result v9

    .line 217
    or-int/2addr v7, v9

    .line 218
    add-int/lit8 v6, v6, 0x1

    .line 219
    .line 220
    goto :goto_3

    .line 221
    :cond_9
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    move-result-object p3

    .line 225
    if-nez v7, :cond_a

    .line 226
    .line 227
    if-ne p3, v0, :cond_b

    .line 228
    .line 229
    :cond_a
    new-instance p3, Landroidx/compose/runtime/DisposableEffectImpl;

    .line 230
    .line 231
    invoke-direct {p3, v8}, Landroidx/compose/runtime/DisposableEffectImpl;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {v3, p3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 235
    .line 236
    .line 237
    :cond_b
    invoke-virtual {v3, v4}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 238
    .line 239
    .line 240
    goto :goto_4

    .line 241
    :cond_c
    const p3, 0x67f47fcd

    .line 242
    .line 243
    .line 244
    invoke-virtual {v3, p3}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 245
    .line 246
    .line 247
    invoke-virtual {v3, v4}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 248
    .line 249
    .line 250
    :goto_4
    sget p3, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchStateKt;->$r8$clinit:I

    .line 251
    .line 252
    iget-object p3, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt$$ExternalSyntheticLambda0;->f$1:Landroidx/compose/ui/Modifier;

    .line 253
    .line 254
    if-eqz v2, :cond_e

    .line 255
    .line 256
    new-instance v4, Landroidx/compose/foundation/lazy/layout/TraversablePrefetchStateModifierElement;

    .line 257
    .line 258
    invoke-direct {v4, v2}, Landroidx/compose/foundation/lazy/layout/TraversablePrefetchStateModifierElement;-><init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;)V

    .line 259
    .line 260
    .line 261
    invoke-interface {p3, v4}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 262
    .line 263
    .line 264
    move-result-object v2

    .line 265
    if-nez v2, :cond_d

    .line 266
    .line 267
    goto :goto_5

    .line 268
    :cond_d
    move-object p3, v2

    .line 269
    :cond_e
    :goto_5
    invoke-virtual {v3, p2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 270
    .line 271
    .line 272
    move-result v2

    .line 273
    iget-object p0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt$$ExternalSyntheticLambda0;->f$2:Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasurePolicy;

    .line 274
    .line 275
    invoke-virtual {v3, p0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 276
    .line 277
    .line 278
    move-result v4

    .line 279
    or-int/2addr v2, v4

    .line 280
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 281
    .line 282
    .line 283
    move-result-object v4

    .line 284
    if-nez v2, :cond_f

    .line 285
    .line 286
    if-ne v4, v0, :cond_10

    .line 287
    .line 288
    :cond_f
    new-instance v4, Landroidx/compose/material3/TextKt$$ExternalSyntheticLambda2;

    .line 289
    .line 290
    invoke-direct {v4, p2, p0, v1}, Landroidx/compose/material3/TextKt$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 291
    .line 292
    .line 293
    invoke-virtual {v3, v4}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 294
    .line 295
    .line 296
    :cond_10
    move-object v2, v4

    .line 297
    check-cast v2, Lkotlin/jvm/functions/Function2;

    .line 298
    .line 299
    const/16 v4, 0x8

    .line 300
    .line 301
    const/4 v5, 0x0

    .line 302
    move-object v0, p1

    .line 303
    move-object v1, p3

    .line 304
    invoke-static/range {v0 .. v5}, Landroidx/compose/ui/layout/RulerKt;->SubcomposeLayout(Landroidx/compose/ui/layout/SubcomposeLayoutState;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    .line 305
    .line 306
    .line 307
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 308
    .line 309
    return-object p0
.end method
