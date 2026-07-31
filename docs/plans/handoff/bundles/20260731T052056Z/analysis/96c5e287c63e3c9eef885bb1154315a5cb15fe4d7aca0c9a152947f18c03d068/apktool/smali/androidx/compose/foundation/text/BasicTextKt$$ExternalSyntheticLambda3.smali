.class public final synthetic Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 9
    iput p1, p0, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda3;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(ILandroidx/compose/foundation/lazy/LazyListMeasureResult;)V
    .locals 0

    .line 1
    const/16 p1, 0xf

    .line 2
    .line 3
    iput p1, p0, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    iget p0, p0, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    const-wide v0, 0xffffffffL

    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    const/4 v3, -0x1

    .line 10
    const/4 v4, 0x1

    .line 11
    const/4 v5, 0x0

    .line 12
    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 13
    .line 14
    packed-switch p0, :pswitch_data_0

    .line 15
    .line 16
    .line 17
    check-cast p1, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;

    .line 18
    .line 19
    iget-object p0, p1, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->annotatedString:Landroidx/compose/ui/text/AnnotatedString;

    .line 20
    .line 21
    iget-object p0, p0, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 22
    .line 23
    iget-wide v6, p1, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->selection:J

    .line 24
    .line 25
    sget v4, Landroidx/compose/ui/text/TextRange;->$r8$clinit:I

    .line 26
    .line 27
    and-long/2addr v6, v0

    .line 28
    long-to-int v4, v6

    .line 29
    invoke-static {v4, p0}, Landroidx/compose/foundation/text/BasicTextKt;->findFollowingBreak(ILjava/lang/String;)I

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    if-eq p0, v3, :cond_0

    .line 34
    .line 35
    new-instance v2, Landroidx/compose/ui/text/input/DeleteSurroundingTextCommand;

    .line 36
    .line 37
    iget-wide v3, p1, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->selection:J

    .line 38
    .line 39
    and-long/2addr v0, v3

    .line 40
    long-to-int p1, v0

    .line 41
    sub-int/2addr p0, p1

    .line 42
    invoke-direct {v2, v5, p0}, Landroidx/compose/ui/text/input/DeleteSurroundingTextCommand;-><init>(II)V

    .line 43
    .line 44
    .line 45
    :cond_0
    return-object v2

    .line 46
    :pswitch_0
    check-cast p1, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;

    .line 47
    .line 48
    iget-object p0, p1, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->annotatedString:Landroidx/compose/ui/text/AnnotatedString;

    .line 49
    .line 50
    iget-object p0, p0, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 51
    .line 52
    iget-wide v6, p1, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->selection:J

    .line 53
    .line 54
    sget v4, Landroidx/compose/ui/text/TextRange;->$r8$clinit:I

    .line 55
    .line 56
    and-long/2addr v6, v0

    .line 57
    long-to-int v4, v6

    .line 58
    if-gtz v4, :cond_1

    .line 59
    .line 60
    :goto_0
    move p0, v3

    .line 61
    goto :goto_1

    .line 62
    :cond_1
    invoke-static {}, Landroidx/compose/foundation/text/BasicTextKt;->getEmojiCompatIfLoaded()Landroidx/emoji2/text/EmojiCompat;

    .line 63
    .line 64
    .line 65
    move-result-object v6

    .line 66
    if-nez v6, :cond_3

    .line 67
    .line 68
    if-gtz v4, :cond_2

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_2
    invoke-static {p0, v4, v3}, Ljava/lang/Character;->offsetByCodePoints(Ljava/lang/CharSequence;II)I

    .line 72
    .line 73
    .line 74
    move-result p0

    .line 75
    goto :goto_1

    .line 76
    :cond_3
    add-int/lit8 v7, v4, -0x1

    .line 77
    .line 78
    invoke-virtual {v6, p0, v7}, Landroidx/emoji2/text/EmojiCompat;->getEmojiStart(Ljava/lang/CharSequence;I)I

    .line 79
    .line 80
    .line 81
    move-result v6

    .line 82
    if-gez v6, :cond_5

    .line 83
    .line 84
    if-gtz v4, :cond_4

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_4
    invoke-static {p0, v4, v3}, Ljava/lang/Character;->offsetByCodePoints(Ljava/lang/CharSequence;II)I

    .line 88
    .line 89
    .line 90
    move-result p0

    .line 91
    goto :goto_1

    .line 92
    :cond_5
    move p0, v6

    .line 93
    :goto_1
    if-ne p0, v3, :cond_6

    .line 94
    .line 95
    goto :goto_2

    .line 96
    :cond_6
    new-instance v2, Landroidx/compose/ui/text/input/DeleteSurroundingTextCommand;

    .line 97
    .line 98
    iget-wide v3, p1, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->selection:J

    .line 99
    .line 100
    and-long/2addr v0, v3

    .line 101
    long-to-int p1, v0

    .line 102
    sub-int/2addr p1, p0

    .line 103
    invoke-direct {v2, p1, v5}, Landroidx/compose/ui/text/input/DeleteSurroundingTextCommand;-><init>(II)V

    .line 104
    .line 105
    .line 106
    :goto_2
    return-object v2

    .line 107
    :pswitch_1
    check-cast p1, Landroidx/compose/ui/text/input/TextFieldValue;

    .line 108
    .line 109
    return-object v6

    .line 110
    :pswitch_2
    check-cast p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    .line 111
    .line 112
    return-object v6

    .line 113
    :pswitch_3
    check-cast p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    .line 114
    .line 115
    return-object v6

    .line 116
    :pswitch_4
    check-cast p1, Landroidx/compose/ui/text/TextLayoutResult;

    .line 117
    .line 118
    return-object v6

    .line 119
    :pswitch_5
    check-cast p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    .line 120
    .line 121
    return-object v6

    .line 122
    :pswitch_6
    check-cast p1, Ljava/util/List;

    .line 123
    .line 124
    new-instance p0, Landroidx/compose/foundation/pager/DefaultPagerState;

    .line 125
    .line 126
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 131
    .line 132
    .line 133
    check-cast v0, Ljava/lang/Integer;

    .line 134
    .line 135
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 144
    .line 145
    .line 146
    check-cast v1, Ljava/lang/Float;

    .line 147
    .line 148
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 149
    .line 150
    .line 151
    move-result v1

    .line 152
    new-instance v2, Lokhttp3/Handshake$Companion$$ExternalSyntheticLambda0;

    .line 153
    .line 154
    invoke-direct {v2, p1, v4}, Lokhttp3/Handshake$Companion$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;I)V

    .line 155
    .line 156
    .line 157
    invoke-direct {p0, v0, v1, v2}, Landroidx/compose/foundation/pager/DefaultPagerState;-><init>(IFLkotlin/jvm/functions/Function0;)V

    .line 158
    .line 159
    .line 160
    return-object p0

    .line 161
    :pswitch_7
    check-cast p1, Ljava/util/List;

    .line 162
    .line 163
    new-instance p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;

    .line 164
    .line 165
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    check-cast v0, [I

    .line 170
    .line 171
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    check-cast p1, [I

    .line 176
    .line 177
    invoke-direct {p0, v0, p1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;-><init>([I[I)V

    .line 178
    .line 179
    .line 180
    return-object p0

    .line 181
    :pswitch_8
    check-cast p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    .line 182
    .line 183
    return-object v6

    .line 184
    :pswitch_9
    check-cast p1, Ljava/lang/Integer;

    .line 185
    .line 186
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 187
    .line 188
    .line 189
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 190
    .line 191
    .line 192
    move-result-object p0

    .line 193
    return-object p0

    .line 194
    :pswitch_a
    check-cast p1, Ljava/lang/Integer;

    .line 195
    .line 196
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 197
    .line 198
    .line 199
    sget-object p0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 200
    .line 201
    return-object p0

    .line 202
    :pswitch_b
    check-cast p1, Ljava/util/List;

    .line 203
    .line 204
    new-instance p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;

    .line 205
    .line 206
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    check-cast v0, Ljava/lang/Number;

    .line 211
    .line 212
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 213
    .line 214
    .line 215
    move-result v0

    .line 216
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    move-result-object p1

    .line 220
    check-cast p1, Ljava/lang/Number;

    .line 221
    .line 222
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 223
    .line 224
    .line 225
    move-result p1

    .line 226
    invoke-direct {p0, v0, p1}, Landroidx/compose/foundation/lazy/grid/LazyGridState;-><init>(II)V

    .line 227
    .line 228
    .line 229
    return-object p0

    .line 230
    :pswitch_c
    check-cast p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    .line 231
    .line 232
    return-object v6

    .line 233
    :pswitch_d
    check-cast p1, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;

    .line 234
    .line 235
    return-object v6

    .line 236
    :pswitch_e
    check-cast p1, Ljava/util/List;

    .line 237
    .line 238
    new-instance p0, Landroidx/compose/foundation/lazy/LazyListState;

    .line 239
    .line 240
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    move-result-object v0

    .line 244
    check-cast v0, Ljava/lang/Number;

    .line 245
    .line 246
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 247
    .line 248
    .line 249
    move-result v0

    .line 250
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    move-result-object p1

    .line 254
    check-cast p1, Ljava/lang/Number;

    .line 255
    .line 256
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 257
    .line 258
    .line 259
    move-result p1

    .line 260
    invoke-direct {p0, v0, p1}, Landroidx/compose/foundation/lazy/LazyListState;-><init>(II)V

    .line 261
    .line 262
    .line 263
    return-object p0

    .line 264
    :pswitch_f
    check-cast p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    .line 265
    .line 266
    return-object v6

    .line 267
    :pswitch_10
    check-cast p1, Ljava/lang/Integer;

    .line 268
    .line 269
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 270
    .line 271
    .line 272
    return-object v2

    .line 273
    :pswitch_11
    check-cast p1, Landroidx/compose/foundation/layout/WindowInsetsHolder;

    .line 274
    .line 275
    iget-object p0, p1, Landroidx/compose/foundation/layout/WindowInsetsHolder;->navigationBars:Landroidx/compose/foundation/layout/AndroidWindowInsets;

    .line 276
    .line 277
    return-object p0

    .line 278
    :pswitch_12
    check-cast p1, Landroidx/compose/foundation/layout/WindowInsetsHolder;

    .line 279
    .line 280
    iget-object p0, p1, Landroidx/compose/foundation/layout/WindowInsetsHolder;->ime:Landroidx/compose/foundation/layout/AndroidWindowInsets;

    .line 281
    .line 282
    return-object p0

    .line 283
    :pswitch_13
    check-cast p1, Landroidx/compose/foundation/layout/WindowInsetsHolder;

    .line 284
    .line 285
    iget-object p0, p1, Landroidx/compose/foundation/layout/WindowInsetsHolder;->statusBars:Landroidx/compose/foundation/layout/AndroidWindowInsets;

    .line 286
    .line 287
    return-object p0

    .line 288
    :pswitch_14
    check-cast p1, Landroidx/compose/foundation/layout/WindowInsetsHolder;

    .line 289
    .line 290
    iget-object p0, p1, Landroidx/compose/foundation/layout/WindowInsetsHolder;->safeDrawing:Landroidx/compose/foundation/layout/UnionInsets;

    .line 291
    .line 292
    return-object p0

    .line 293
    :pswitch_15
    check-cast p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    .line 294
    .line 295
    return-object v6

    .line 296
    :pswitch_16
    check-cast p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    .line 297
    .line 298
    return-object v6

    .line 299
    :pswitch_17
    check-cast p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    .line 300
    .line 301
    return-object v6

    .line 302
    :pswitch_18
    check-cast p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    .line 303
    .line 304
    return-object v6

    .line 305
    :pswitch_19
    check-cast p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    .line 306
    .line 307
    return-object v6

    .line 308
    :pswitch_1a
    check-cast p1, Ljava/lang/Float;

    .line 309
    .line 310
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 311
    .line 312
    .line 313
    return-object v6

    .line 314
    :pswitch_1b
    check-cast p1, Landroidx/compose/ui/input/pointer/PointerType;

    .line 315
    .line 316
    if-nez p1, :cond_7

    .line 317
    .line 318
    goto :goto_3

    .line 319
    :cond_7
    iget p0, p1, Landroidx/compose/ui/input/pointer/PointerType;->value:I

    .line 320
    .line 321
    const/4 p1, 0x2

    .line 322
    if-ne p0, p1, :cond_8

    .line 323
    .line 324
    move v5, v4

    .line 325
    :cond_8
    :goto_3
    xor-int/lit8 p0, v5, 0x1

    .line 326
    .line 327
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 328
    .line 329
    .line 330
    move-result-object p0

    .line 331
    return-object p0

    .line 332
    :pswitch_1c
    check-cast p1, Ljava/lang/Long;

    .line 333
    .line 334
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 335
    .line 336
    .line 337
    return-object p1

    .line 338
    nop

    .line 339
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
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
