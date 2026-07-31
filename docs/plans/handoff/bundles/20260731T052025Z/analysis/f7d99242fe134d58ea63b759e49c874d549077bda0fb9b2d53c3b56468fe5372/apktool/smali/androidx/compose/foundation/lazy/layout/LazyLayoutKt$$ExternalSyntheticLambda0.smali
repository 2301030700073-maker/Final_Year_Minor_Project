.class public final synthetic Landroidx/compose/foundation/lazy/layout/LazyLayoutKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic f$0:Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

.field public final synthetic f$1:Landroidx/compose/ui/Modifier;

.field public final synthetic f$2:Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;

.field public final synthetic f$3:Landroidx/compose/runtime/MutableState;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;Landroidx/compose/runtime/MutableState;)V
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
    iput-object p3, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt$$ExternalSyntheticLambda0;->f$2:Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;

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
    check-cast p2, Landroidx/compose/runtime/GapComposer;

    .line 11
    .line 12
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p3

    .line 16
    const/4 v0, 0x3

    .line 17
    sget-object v1, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 18
    .line 19
    if-ne p3, v1, :cond_0

    .line 20
    .line 21
    new-instance p3, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;

    .line 22
    .line 23
    new-instance v2, Landroidx/compose/material3/TooltipKt$$ExternalSyntheticLambda1;

    .line 24
    .line 25
    iget-object v3, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt$$ExternalSyntheticLambda0;->f$3:Landroidx/compose/runtime/MutableState;

    .line 26
    .line 27
    invoke-direct {v2, v3, v0}, Landroidx/compose/material3/TooltipKt$$ExternalSyntheticLambda1;-><init>(Landroidx/compose/runtime/MutableState;I)V

    .line 28
    .line 29
    .line 30
    invoke-direct {p3, p1, v2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;-><init>(Landroidx/compose/runtime/saveable/SaveableStateHolder;Landroidx/compose/material3/TooltipKt$$ExternalSyntheticLambda1;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2, p3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    check-cast p3, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;

    .line 37
    .line 38
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    if-ne p1, v1, :cond_1

    .line 43
    .line 44
    new-instance p1, Landroidx/compose/ui/layout/SubcomposeLayoutState;

    .line 45
    .line 46
    new-instance v2, Landroidx/cardview/widget/CardView$1;

    .line 47
    .line 48
    invoke-direct {v2, p3}, Landroidx/cardview/widget/CardView$1;-><init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;)V

    .line 49
    .line 50
    .line 51
    invoke-direct {p1, v2}, Landroidx/compose/ui/layout/SubcomposeLayoutState;-><init>(Landroidx/compose/ui/layout/SubcomposeSlotReusePolicy;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p2, p1}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    :cond_1
    check-cast p1, Landroidx/compose/ui/layout/SubcomposeLayoutState;

    .line 58
    .line 59
    iget-object v2, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt$$ExternalSyntheticLambda0;->f$0:Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

    .line 60
    .line 61
    const/4 v3, 0x0

    .line 62
    if-eqz v2, :cond_9

    .line 63
    .line 64
    const v4, 0x67eb8deb

    .line 65
    .line 66
    .line 67
    invoke-virtual {p2, v4}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 68
    .line 69
    .line 70
    const v4, 0x34e696b7

    .line 71
    .line 72
    .line 73
    invoke-virtual {p2, v4}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 74
    .line 75
    .line 76
    sget-object v4, Landroidx/compose/foundation/lazy/layout/PrefetchScheduler_androidKt;->RobolectricImpl:Landroidx/compose/foundation/lazy/layout/PrefetchScheduler_androidKt$RobolectricImpl$1;

    .line 77
    .line 78
    if-eqz v4, :cond_2

    .line 79
    .line 80
    const v5, 0x503387d0

    .line 81
    .line 82
    .line 83
    invoke-virtual {p2, v5}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 84
    .line 85
    .line 86
    :goto_0
    invoke-virtual {p2, v3}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 87
    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_2
    const v4, 0x50344781

    .line 91
    .line 92
    .line 93
    invoke-virtual {p2, v4}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 94
    .line 95
    .line 96
    sget-object v4, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalView:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 97
    .line 98
    invoke-virtual {p2, v4}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v4

    .line 102
    check-cast v4, Landroid/view/View;

    .line 103
    .line 104
    invoke-virtual {p2, v4}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v5

    .line 108
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v6

    .line 112
    if-nez v5, :cond_3

    .line 113
    .line 114
    if-ne v6, v1, :cond_6

    .line 115
    .line 116
    :cond_3
    const v5, 0x7f090146

    .line 117
    .line 118
    .line 119
    invoke-virtual {v4, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v6

    .line 123
    instance-of v7, v6, Landroidx/compose/foundation/lazy/layout/PrefetchScheduler;

    .line 124
    .line 125
    if-eqz v7, :cond_4

    .line 126
    .line 127
    check-cast v6, Landroidx/compose/foundation/lazy/layout/PrefetchScheduler;

    .line 128
    .line 129
    goto :goto_1

    .line 130
    :cond_4
    const/4 v6, 0x0

    .line 131
    :goto_1
    if-nez v6, :cond_5

    .line 132
    .line 133
    new-instance v6, Landroidx/compose/foundation/lazy/layout/AndroidPrefetchScheduler;

    .line 134
    .line 135
    invoke-direct {v6, v4}, Landroidx/compose/foundation/lazy/layout/AndroidPrefetchScheduler;-><init>(Landroid/view/View;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v4, v5, v6}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 139
    .line 140
    .line 141
    :cond_5
    invoke-virtual {p2, v6}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 142
    .line 143
    .line 144
    :cond_6
    move-object v4, v6

    .line 145
    check-cast v4, Landroidx/compose/foundation/lazy/layout/PrefetchScheduler;

    .line 146
    .line 147
    goto :goto_0

    .line 148
    :goto_2
    invoke-virtual {p2, v3}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 149
    .line 150
    .line 151
    const/4 v5, 0x4

    .line 152
    new-array v5, v5, [Ljava/lang/Object;

    .line 153
    .line 154
    aput-object v2, v5, v3

    .line 155
    .line 156
    const/4 v6, 0x1

    .line 157
    aput-object p3, v5, v6

    .line 158
    .line 159
    const/4 v6, 0x2

    .line 160
    aput-object p1, v5, v6

    .line 161
    .line 162
    aput-object v4, v5, v0

    .line 163
    .line 164
    invoke-virtual {p2, v2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 165
    .line 166
    .line 167
    move-result v0

    .line 168
    invoke-virtual {p2, p3}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    move-result v6

    .line 172
    or-int/2addr v0, v6

    .line 173
    invoke-virtual {p2, p1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    move-result v6

    .line 177
    or-int/2addr v0, v6

    .line 178
    invoke-virtual {p2, v4}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 179
    .line 180
    .line 181
    move-result v6

    .line 182
    or-int/2addr v0, v6

    .line 183
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object v6

    .line 187
    if-nez v0, :cond_7

    .line 188
    .line 189
    if-ne v6, v1, :cond_8

    .line 190
    .line 191
    :cond_7
    new-instance v6, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt$$ExternalSyntheticLambda3;

    .line 192
    .line 193
    invoke-direct {v6, v2, p3, p1, v4}, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt$$ExternalSyntheticLambda3;-><init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;Landroidx/compose/ui/layout/SubcomposeLayoutState;Landroidx/compose/foundation/lazy/layout/PrefetchScheduler;)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {p2, v6}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 197
    .line 198
    .line 199
    :cond_8
    check-cast v6, Lkotlin/jvm/functions/Function1;

    .line 200
    .line 201
    invoke-static {v5, v6, p2}, Landroidx/compose/runtime/Updater;->DisposableEffect([Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {p2, v3}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 205
    .line 206
    .line 207
    goto :goto_3

    .line 208
    :cond_9
    const v0, 0x67f47fcd

    .line 209
    .line 210
    .line 211
    invoke-virtual {p2, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {p2, v3}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 215
    .line 216
    .line 217
    :goto_3
    sget v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchStateKt;->$r8$clinit:I

    .line 218
    .line 219
    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt$$ExternalSyntheticLambda0;->f$1:Landroidx/compose/ui/Modifier;

    .line 220
    .line 221
    if-eqz v2, :cond_b

    .line 222
    .line 223
    new-instance v3, Landroidx/compose/foundation/lazy/layout/TraversablePrefetchStateModifierElement;

    .line 224
    .line 225
    invoke-direct {v3, v2}, Landroidx/compose/foundation/lazy/layout/TraversablePrefetchStateModifierElement;-><init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;)V

    .line 226
    .line 227
    .line 228
    invoke-interface {v0, v3}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 229
    .line 230
    .line 231
    move-result-object v2

    .line 232
    if-nez v2, :cond_a

    .line 233
    .line 234
    goto :goto_4

    .line 235
    :cond_a
    move-object v0, v2

    .line 236
    :cond_b
    :goto_4
    invoke-virtual {p2, p3}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 237
    .line 238
    .line 239
    move-result v2

    .line 240
    iget-object p0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt$$ExternalSyntheticLambda0;->f$2:Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;

    .line 241
    .line 242
    invoke-virtual {p2, p0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 243
    .line 244
    .line 245
    move-result v3

    .line 246
    or-int/2addr v2, v3

    .line 247
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 248
    .line 249
    .line 250
    move-result-object v3

    .line 251
    if-nez v2, :cond_c

    .line 252
    .line 253
    if-ne v3, v1, :cond_d

    .line 254
    .line 255
    :cond_c
    new-instance v3, Landroidx/compose/runtime/GapComposer$$ExternalSyntheticLambda3;

    .line 256
    .line 257
    const/4 v1, 0x6

    .line 258
    invoke-direct {v3, v1, p3, p0}, Landroidx/compose/runtime/GapComposer$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 259
    .line 260
    .line 261
    invoke-virtual {p2, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 262
    .line 263
    .line 264
    :cond_d
    check-cast v3, Lkotlin/jvm/functions/Function2;

    .line 265
    .line 266
    const/16 p0, 0x8

    .line 267
    .line 268
    invoke-static {p1, v0, v3, p2, p0}, Landroidx/compose/ui/layout/RulerKt;->SubcomposeLayout(Landroidx/compose/ui/layout/SubcomposeLayoutState;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 269
    .line 270
    .line 271
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 272
    .line 273
    return-object p0
.end method
