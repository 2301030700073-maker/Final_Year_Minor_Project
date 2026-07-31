.class public final synthetic Lorg/wikipedia/yearinreview/YearInReviewActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/wikipedia/yearinreview/YearInReviewActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/yearinreview/YearInReviewActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/yearinreview/YearInReviewActivity$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/yearinreview/YearInReviewActivity$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/yearinreview/YearInReviewActivity;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    iget v0, p0, Lorg/wikipedia/yearinreview/YearInReviewActivity$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    const/4 v3, 0x0

    .line 7
    const/4 v4, 0x1

    .line 8
    iget-object p0, p0, Lorg/wikipedia/yearinreview/YearInReviewActivity$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/yearinreview/YearInReviewActivity;

    .line 9
    .line 10
    packed-switch v0, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    check-cast p1, Ljava/lang/Integer;

    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    check-cast p2, Ljava/lang/Integer;

    .line 20
    .line 21
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    sget v0, Lorg/wikipedia/yearinreview/YearInReviewActivity;->$r8$clinit:I

    .line 26
    .line 27
    iget-object p0, p0, Lorg/wikipedia/yearinreview/YearInReviewActivity;->viewModel$delegate:Lokhttp3/Request$Builder;

    .line 28
    .line 29
    invoke-virtual {p0}, Lokhttp3/Request$Builder;->getValue()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    check-cast p0, Lorg/wikipedia/yearinreview/YearInReviewViewModel;

    .line 34
    .line 35
    iget-object v0, p0, Lorg/wikipedia/yearinreview/YearInReviewViewModel;->screenshotHeaderBitmap:Landroid/graphics/Bitmap;

    .line 36
    .line 37
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-ne v0, p1, :cond_0

    .line 42
    .line 43
    iget-object v0, p0, Lorg/wikipedia/yearinreview/YearInReviewViewModel;->screenshotHeaderBitmap:Landroid/graphics/Bitmap;

    .line 44
    .line 45
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-eq v0, p2, :cond_1

    .line 50
    .line 51
    :cond_0
    if-lez p1, :cond_1

    .line 52
    .line 53
    if-lez p2, :cond_1

    .line 54
    .line 55
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 56
    .line 57
    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    iput-object p1, p0, Lorg/wikipedia/yearinreview/YearInReviewViewModel;->screenshotHeaderBitmap:Landroid/graphics/Bitmap;

    .line 65
    .line 66
    :cond_1
    iget-object p0, p0, Lorg/wikipedia/yearinreview/YearInReviewViewModel;->screenshotHeaderBitmap:Landroid/graphics/Bitmap;

    .line 67
    .line 68
    return-object p0

    .line 69
    :pswitch_0
    move-object v10, p1

    .line 70
    check-cast v10, Landroidx/compose/runtime/GapComposer;

    .line 71
    .line 72
    check-cast p2, Ljava/lang/Integer;

    .line 73
    .line 74
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    sget p2, Lorg/wikipedia/yearinreview/YearInReviewActivity;->$r8$clinit:I

    .line 79
    .line 80
    and-int/lit8 p2, p1, 0x3

    .line 81
    .line 82
    if-eq p2, v2, :cond_2

    .line 83
    .line 84
    move p2, v4

    .line 85
    goto :goto_0

    .line 86
    :cond_2
    move p2, v3

    .line 87
    :goto_0
    and-int/2addr p1, v4

    .line 88
    invoke-virtual {v10, p1, p2}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    if-eqz p1, :cond_c

    .line 93
    .line 94
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    sget-object p2, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 99
    .line 100
    if-ne p1, p2, :cond_3

    .line 101
    .line 102
    invoke-static {v10}, Landroidx/compose/runtime/Updater;->createCompositionCoroutineScope(Landroidx/compose/runtime/GapComposer;)Lkotlinx/coroutines/CoroutineScope;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    invoke-virtual {v10, p1}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    :cond_3
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 110
    .line 111
    new-array v0, v3, [Landroidx/navigation/Navigator;

    .line 112
    .line 113
    invoke-static {v0, v10}, Lkotlin/ExceptionsKt;->rememberNavController([Landroidx/navigation/Navigator;Landroidx/compose/runtime/GapComposer;)Landroidx/navigation/NavHostController;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    invoke-virtual {v10, p0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v4

    .line 125
    if-nez v0, :cond_4

    .line 126
    .line 127
    if-ne v4, p2, :cond_5

    .line 128
    .line 129
    :cond_4
    new-instance v4, Lorg/wikipedia/yearinreview/YearInReviewActivity$$ExternalSyntheticLambda2;

    .line 130
    .line 131
    invoke-direct {v4, p0, v3}, Lorg/wikipedia/yearinreview/YearInReviewActivity$$ExternalSyntheticLambda2;-><init>(Lorg/wikipedia/yearinreview/YearInReviewActivity;I)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v10, v4}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 135
    .line 136
    .line 137
    :cond_5
    check-cast v4, Lkotlin/jvm/functions/Function0;

    .line 138
    .line 139
    invoke-static {v3, v4, v10, v3}, Landroidx/work/Operation$State;->BackHandler(ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/GapComposer;I)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    if-ne v0, p2, :cond_6

    .line 147
    .line 148
    new-instance v0, Lorg/wikipedia/util/StringUtil$$ExternalSyntheticLambda0;

    .line 149
    .line 150
    const/4 v3, 0x3

    .line 151
    invoke-direct {v0, v3}, Lorg/wikipedia/util/StringUtil$$ExternalSyntheticLambda0;-><init>(I)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 155
    .line 156
    .line 157
    :cond_6
    move-object v5, v0

    .line 158
    check-cast v5, Lkotlin/jvm/functions/Function1;

    .line 159
    .line 160
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    if-ne v0, p2, :cond_7

    .line 165
    .line 166
    new-instance v0, Lorg/wikipedia/util/StringUtil$$ExternalSyntheticLambda0;

    .line 167
    .line 168
    const/4 v3, 0x4

    .line 169
    invoke-direct {v0, v3}, Lorg/wikipedia/util/StringUtil$$ExternalSyntheticLambda0;-><init>(I)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 173
    .line 174
    .line 175
    :cond_7
    move-object v6, v0

    .line 176
    check-cast v6, Lkotlin/jvm/functions/Function1;

    .line 177
    .line 178
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    if-ne v0, p2, :cond_8

    .line 183
    .line 184
    new-instance v0, Lorg/wikipedia/util/StringUtil$$ExternalSyntheticLambda0;

    .line 185
    .line 186
    const/4 v3, 0x5

    .line 187
    invoke-direct {v0, v3}, Lorg/wikipedia/util/StringUtil$$ExternalSyntheticLambda0;-><init>(I)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 191
    .line 192
    .line 193
    :cond_8
    move-object v7, v0

    .line 194
    check-cast v7, Lkotlin/jvm/functions/Function1;

    .line 195
    .line 196
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    if-ne v0, p2, :cond_9

    .line 201
    .line 202
    new-instance v0, Lorg/wikipedia/util/StringUtil$$ExternalSyntheticLambda0;

    .line 203
    .line 204
    const/4 v3, 0x6

    .line 205
    invoke-direct {v0, v3}, Lorg/wikipedia/util/StringUtil$$ExternalSyntheticLambda0;-><init>(I)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 209
    .line 210
    .line 211
    :cond_9
    move-object v8, v0

    .line 212
    check-cast v8, Lkotlin/jvm/functions/Function1;

    .line 213
    .line 214
    invoke-virtual {v10, p0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 215
    .line 216
    .line 217
    move-result v0

    .line 218
    invoke-virtual {v10, p1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 219
    .line 220
    .line 221
    move-result v3

    .line 222
    or-int/2addr v0, v3

    .line 223
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    move-result-object v3

    .line 227
    if-nez v0, :cond_a

    .line 228
    .line 229
    if-ne v3, p2, :cond_b

    .line 230
    .line 231
    :cond_a
    new-instance v3, Lorg/wikipedia/util/SingleLiveData$$ExternalSyntheticLambda0;

    .line 232
    .line 233
    const/16 p2, 0xc

    .line 234
    .line 235
    invoke-direct {v3, p2, p0, p1}, Lorg/wikipedia/util/SingleLiveData$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v10, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 239
    .line 240
    .line 241
    :cond_b
    move-object v9, v3

    .line 242
    check-cast v9, Lkotlin/jvm/functions/Function1;

    .line 243
    .line 244
    const v11, 0x6db0030

    .line 245
    .line 246
    .line 247
    const/4 v3, 0x0

    .line 248
    const/4 v4, 0x0

    .line 249
    invoke-static/range {v2 .. v11}, Lcoil3/util/ContextsKt;->NavHost(Landroidx/navigation/NavHostController;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/GapComposer;I)V

    .line 250
    .line 251
    .line 252
    goto :goto_1

    .line 253
    :cond_c
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 254
    .line 255
    .line 256
    :goto_1
    return-object v1

    .line 257
    :pswitch_1
    check-cast p1, Landroidx/compose/runtime/GapComposer;

    .line 258
    .line 259
    check-cast p2, Ljava/lang/Integer;

    .line 260
    .line 261
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 262
    .line 263
    .line 264
    move-result p2

    .line 265
    sget v0, Lorg/wikipedia/yearinreview/YearInReviewActivity;->$r8$clinit:I

    .line 266
    .line 267
    and-int/lit8 v0, p2, 0x3

    .line 268
    .line 269
    if-eq v0, v2, :cond_d

    .line 270
    .line 271
    move v3, v4

    .line 272
    :cond_d
    and-int/2addr p2, v4

    .line 273
    invoke-virtual {p1, p2, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 274
    .line 275
    .line 276
    move-result p2

    .line 277
    if-eqz p2, :cond_e

    .line 278
    .line 279
    new-instance p2, Lorg/wikipedia/yearinreview/YearInReviewActivity$$ExternalSyntheticLambda0;

    .line 280
    .line 281
    invoke-direct {p2, p0, v4}, Lorg/wikipedia/yearinreview/YearInReviewActivity$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/yearinreview/YearInReviewActivity;I)V

    .line 282
    .line 283
    .line 284
    const p0, -0x29c7218d

    .line 285
    .line 286
    .line 287
    invoke-static {p0, p2, p1}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 288
    .line 289
    .line 290
    move-result-object p0

    .line 291
    const/16 p2, 0x30

    .line 292
    .line 293
    const/4 v0, 0x0

    .line 294
    invoke-static {v0, p0, p1, p2, v4}, Lokhttp3/Cache$Companion;->BaseTheme(Lorg/wikipedia/theme/Theme;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;II)V

    .line 295
    .line 296
    .line 297
    goto :goto_2

    .line 298
    :cond_e
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 299
    .line 300
    .line 301
    :goto_2
    return-object v1

    .line 302
    nop

    .line 303
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
