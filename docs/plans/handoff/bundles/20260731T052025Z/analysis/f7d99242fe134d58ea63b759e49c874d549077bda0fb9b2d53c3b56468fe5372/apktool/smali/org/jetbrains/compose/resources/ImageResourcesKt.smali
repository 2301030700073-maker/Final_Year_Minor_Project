.class public abstract Lorg/jetbrains/compose/resources/ImageResourcesKt;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final emptyImageBitmap$delegate:Lkotlin/SynchronizedLazyImpl;

.field public static final emptyImageVector$delegate:Lkotlin/SynchronizedLazyImpl;

.field public static final emptySvgPainter$delegate:Lkotlin/SynchronizedLazyImpl;

.field public static final imageCache:Lorg/jsoup/internal/SoftPool;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lorg/koin/java/KoinJavaComponent$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-direct {v0, v1}, Lorg/koin/java/KoinJavaComponent$$ExternalSyntheticLambda0;-><init>(I)V

    .line 5
    .line 6
    .line 7
    new-instance v1, Lkotlin/SynchronizedLazyImpl;

    .line 8
    .line 9
    invoke-direct {v1, v0}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 10
    .line 11
    .line 12
    sput-object v1, Lorg/jetbrains/compose/resources/ImageResourcesKt;->emptyImageBitmap$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 13
    .line 14
    new-instance v0, Lorg/koin/java/KoinJavaComponent$$ExternalSyntheticLambda0;

    .line 15
    .line 16
    const/4 v1, 0x4

    .line 17
    invoke-direct {v0, v1}, Lorg/koin/java/KoinJavaComponent$$ExternalSyntheticLambda0;-><init>(I)V

    .line 18
    .line 19
    .line 20
    new-instance v1, Lkotlin/SynchronizedLazyImpl;

    .line 21
    .line 22
    invoke-direct {v1, v0}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 23
    .line 24
    .line 25
    sput-object v1, Lorg/jetbrains/compose/resources/ImageResourcesKt;->emptyImageVector$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 26
    .line 27
    new-instance v0, Lorg/koin/java/KoinJavaComponent$$ExternalSyntheticLambda0;

    .line 28
    .line 29
    const/4 v1, 0x5

    .line 30
    invoke-direct {v0, v1}, Lorg/koin/java/KoinJavaComponent$$ExternalSyntheticLambda0;-><init>(I)V

    .line 31
    .line 32
    .line 33
    new-instance v1, Lkotlin/SynchronizedLazyImpl;

    .line 34
    .line 35
    invoke-direct {v1, v0}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 36
    .line 37
    .line 38
    sput-object v1, Lorg/jetbrains/compose/resources/ImageResourcesKt;->emptySvgPainter$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 39
    .line 40
    new-instance v0, Lorg/jsoup/internal/SoftPool;

    .line 41
    .line 42
    invoke-direct {v0}, Lorg/jsoup/internal/SoftPool;-><init>()V

    .line 43
    .line 44
    .line 45
    sput-object v0, Lorg/jetbrains/compose/resources/ImageResourcesKt;->imageCache:Lorg/jsoup/internal/SoftPool;

    .line 46
    .line 47
    return-void
.end method

.method public static final painterResource(Lorg/jetbrains/compose/resources/DrawableResource;Landroidx/compose/runtime/Composer;)Landroidx/compose/ui/graphics/painter/Painter;
    .locals 13

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-object v5, p1

    .line 5
    check-cast v5, Landroidx/compose/runtime/GapComposer;

    .line 6
    .line 7
    const p1, -0x59f05fb7

    .line 8
    .line 9
    .line 10
    invoke-virtual {v5, p1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 11
    .line 12
    .line 13
    sget-object p1, Lorg/jetbrains/compose/resources/ResourceEnvironmentKt;->LocalComposeEnvironment:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 14
    .line 15
    invoke-virtual {v5, p1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lorg/jetbrains/compose/resources/ResourceEnvironmentKt$DefaultComposeEnvironment$1;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    invoke-static {v5}, Lorg/jetbrains/compose/resources/ResourceEnvironmentKt$DefaultComposeEnvironment$1;->rememberEnvironment(Landroidx/compose/runtime/Composer;)Lorg/jetbrains/compose/resources/ResourceEnvironment;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v5, p0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    invoke-virtual {v5, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    or-int/2addr v1, v2

    .line 37
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    sget-object v3, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 42
    .line 43
    if-nez v1, :cond_0

    .line 44
    .line 45
    if-ne v2, v3, :cond_1

    .line 46
    .line 47
    :cond_0
    invoke-static {p0, v0}, Lorg/jetbrains/compose/resources/ResourceEnvironmentKt;->getResourceItemByEnvironment(Lorg/jetbrains/compose/resources/Resource;Lorg/jetbrains/compose/resources/ResourceEnvironment;)Lorg/jetbrains/compose/resources/ResourceItem;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    iget-object v2, v0, Lorg/jetbrains/compose/resources/ResourceItem;->path:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {v5, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    :cond_1
    check-cast v2, Ljava/lang/String;

    .line 57
    .line 58
    const-string v0, ".xml"

    .line 59
    .line 60
    const/4 v1, 0x1

    .line 61
    invoke-static {v2, v0, v1}, Lkotlin/text/StringsKt__StringsJVMKt;->endsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    const/4 v10, 0x0

    .line 66
    const/4 v12, 0x0

    .line 67
    if-eqz v0, :cond_5

    .line 68
    .line 69
    const p1, -0x4b8e104d

    .line 70
    .line 71
    .line 72
    invoke-virtual {v5, p1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 73
    .line 74
    .line 75
    sget-object p1, Lorg/jetbrains/compose/resources/ResourceReaderKt;->LocalResourceReader:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 76
    .line 77
    invoke-static {p1, v5}, Lkotlin/ranges/RangesKt;->getCurrentOrPreview(Landroidx/compose/runtime/ProvidableCompositionLocal;Landroidx/compose/runtime/Composer;)Lorg/jetbrains/compose/resources/DefaultAndroidResourceReader;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    sget-object p1, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalDensity:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 82
    .line 83
    invoke-virtual {v5, p1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    move-object v2, p1

    .line 88
    check-cast v2, Landroidx/compose/ui/unit/Density;

    .line 89
    .line 90
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    if-ne p1, v3, :cond_2

    .line 95
    .line 96
    new-instance p1, Lorg/koin/java/KoinJavaComponent$$ExternalSyntheticLambda0;

    .line 97
    .line 98
    const/4 v0, 0x7

    .line 99
    invoke-direct {p1, v0}, Lorg/koin/java/KoinJavaComponent$$ExternalSyntheticLambda0;-><init>(I)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v5, p1}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    :cond_2
    check-cast p1, Lkotlin/jvm/functions/Function0;

    .line 106
    .line 107
    invoke-virtual {v5, p0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    invoke-virtual {v5, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result v4

    .line 115
    or-int/2addr v0, v4

    .line 116
    invoke-virtual {v5, v2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v4

    .line 120
    or-int/2addr v0, v4

    .line 121
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v4

    .line 125
    if-nez v0, :cond_4

    .line 126
    .line 127
    if-ne v4, v3, :cond_3

    .line 128
    .line 129
    goto :goto_0

    .line 130
    :cond_3
    move-object v0, p0

    .line 131
    goto :goto_1

    .line 132
    :cond_4
    :goto_0
    new-instance v6, Lorg/jetbrains/compose/resources/ImageResourcesKt$svgPainter$svgPainter$3$1;

    .line 133
    .line 134
    const/4 v11, 0x1

    .line 135
    move-object v7, p0

    .line 136
    move-object v8, v1

    .line 137
    move-object v9, v2

    .line 138
    invoke-direct/range {v6 .. v11}, Lorg/jetbrains/compose/resources/ImageResourcesKt$svgPainter$svgPainter$3$1;-><init>(Lorg/jetbrains/compose/resources/DrawableResource;Lorg/jetbrains/compose/resources/DefaultAndroidResourceReader;Landroidx/compose/ui/unit/Density;Lkotlin/coroutines/Continuation;I)V

    .line 139
    .line 140
    .line 141
    move-object v0, v7

    .line 142
    invoke-virtual {v5, v6}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 143
    .line 144
    .line 145
    move-object v4, v6

    .line 146
    :goto_1
    check-cast v4, Lkotlin/jvm/functions/Function2;

    .line 147
    .line 148
    move-object v3, p1

    .line 149
    invoke-static/range {v0 .. v5}, Lorg/minidns/util/Base64;->rememberResourceState(Lorg/jetbrains/compose/resources/DrawableResource;Lorg/jetbrains/compose/resources/DefaultAndroidResourceReader;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    .line 150
    .line 151
    .line 152
    move-result-object p0

    .line 153
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object p0

    .line 157
    check-cast p0, Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 158
    .line 159
    invoke-static {p0, v5}, Landroidx/compose/ui/graphics/vector/PathParserKt;->rememberVectorPainter(Landroidx/compose/ui/graphics/vector/ImageVector;Landroidx/compose/runtime/Composer;)Landroidx/compose/ui/graphics/vector/VectorPainter;

    .line 160
    .line 161
    .line 162
    move-result-object p0

    .line 163
    invoke-virtual {v5, v12}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 164
    .line 165
    .line 166
    :goto_2
    invoke-virtual {v5, v12}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 167
    .line 168
    .line 169
    return-object p0

    .line 170
    :cond_5
    move-object v0, p0

    .line 171
    const-string p0, ".svg"

    .line 172
    .line 173
    invoke-static {v2, p0, v1}, Lkotlin/text/StringsKt__StringsJVMKt;->endsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 174
    .line 175
    .line 176
    move-result p0

    .line 177
    if-eqz p0, :cond_9

    .line 178
    .line 179
    const p0, -0x4b8c5db2

    .line 180
    .line 181
    .line 182
    invoke-virtual {v5, p0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 183
    .line 184
    .line 185
    sget-object p0, Lorg/jetbrains/compose/resources/ResourceReaderKt;->LocalResourceReader:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 186
    .line 187
    invoke-static {p0, v5}, Lkotlin/ranges/RangesKt;->getCurrentOrPreview(Landroidx/compose/runtime/ProvidableCompositionLocal;Landroidx/compose/runtime/Composer;)Lorg/jetbrains/compose/resources/DefaultAndroidResourceReader;

    .line 188
    .line 189
    .line 190
    move-result-object v1

    .line 191
    sget-object p0, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalDensity:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 192
    .line 193
    invoke-virtual {v5, p0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    move-result-object p0

    .line 197
    move-object v2, p0

    .line 198
    check-cast v2, Landroidx/compose/ui/unit/Density;

    .line 199
    .line 200
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object p0

    .line 204
    if-ne p0, v3, :cond_6

    .line 205
    .line 206
    new-instance p0, Lorg/koin/java/KoinJavaComponent$$ExternalSyntheticLambda0;

    .line 207
    .line 208
    const/4 p1, 0x6

    .line 209
    invoke-direct {p0, p1}, Lorg/koin/java/KoinJavaComponent$$ExternalSyntheticLambda0;-><init>(I)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v5, p0}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 213
    .line 214
    .line 215
    :cond_6
    check-cast p0, Lkotlin/jvm/functions/Function0;

    .line 216
    .line 217
    invoke-virtual {v5, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 218
    .line 219
    .line 220
    move-result p1

    .line 221
    invoke-virtual {v5, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 222
    .line 223
    .line 224
    move-result v4

    .line 225
    or-int/2addr p1, v4

    .line 226
    invoke-virtual {v5, v2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 227
    .line 228
    .line 229
    move-result v4

    .line 230
    or-int/2addr p1, v4

    .line 231
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    move-result-object v4

    .line 235
    if-nez p1, :cond_7

    .line 236
    .line 237
    if-ne v4, v3, :cond_8

    .line 238
    .line 239
    :cond_7
    new-instance v6, Lorg/jetbrains/compose/resources/ImageResourcesKt$svgPainter$svgPainter$3$1;

    .line 240
    .line 241
    const/4 v11, 0x0

    .line 242
    move-object v7, v0

    .line 243
    move-object v8, v1

    .line 244
    move-object v9, v2

    .line 245
    invoke-direct/range {v6 .. v11}, Lorg/jetbrains/compose/resources/ImageResourcesKt$svgPainter$svgPainter$3$1;-><init>(Lorg/jetbrains/compose/resources/DrawableResource;Lorg/jetbrains/compose/resources/DefaultAndroidResourceReader;Landroidx/compose/ui/unit/Density;Lkotlin/coroutines/Continuation;I)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {v5, v6}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 249
    .line 250
    .line 251
    move-object v4, v6

    .line 252
    :cond_8
    check-cast v4, Lkotlin/jvm/functions/Function2;

    .line 253
    .line 254
    move-object v3, p0

    .line 255
    invoke-static/range {v0 .. v5}, Lorg/minidns/util/Base64;->rememberResourceState(Lorg/jetbrains/compose/resources/DrawableResource;Lorg/jetbrains/compose/resources/DefaultAndroidResourceReader;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    .line 256
    .line 257
    .line 258
    move-result-object p0

    .line 259
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 260
    .line 261
    .line 262
    move-result-object p0

    .line 263
    check-cast p0, Landroidx/compose/ui/graphics/painter/Painter;

    .line 264
    .line 265
    invoke-virtual {v5, v12}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 266
    .line 267
    .line 268
    goto :goto_2

    .line 269
    :cond_9
    const p0, -0x4b8b9da4

    .line 270
    .line 271
    .line 272
    invoke-virtual {v5, p0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 273
    .line 274
    .line 275
    new-instance p0, Landroidx/compose/ui/graphics/painter/BitmapPainter;

    .line 276
    .line 277
    sget-object v1, Lorg/jetbrains/compose/resources/ResourceReaderKt;->LocalResourceReader:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 278
    .line 279
    invoke-static {v1, v5}, Lkotlin/ranges/RangesKt;->getCurrentOrPreview(Landroidx/compose/runtime/ProvidableCompositionLocal;Landroidx/compose/runtime/Composer;)Lorg/jetbrains/compose/resources/DefaultAndroidResourceReader;

    .line 280
    .line 281
    .line 282
    move-result-object v1

    .line 283
    invoke-virtual {v5, p1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 284
    .line 285
    .line 286
    move-result-object p1

    .line 287
    check-cast p1, Lorg/jetbrains/compose/resources/ResourceEnvironmentKt$DefaultComposeEnvironment$1;

    .line 288
    .line 289
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 290
    .line 291
    .line 292
    invoke-static {v5}, Lorg/jetbrains/compose/resources/ResourceEnvironmentKt$DefaultComposeEnvironment$1;->rememberEnvironment(Landroidx/compose/runtime/Composer;)Lorg/jetbrains/compose/resources/ResourceEnvironment;

    .line 293
    .line 294
    .line 295
    move-result-object v2

    .line 296
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 297
    .line 298
    .line 299
    move-result-object p1

    .line 300
    if-ne p1, v3, :cond_a

    .line 301
    .line 302
    new-instance p1, Lorg/koin/java/KoinJavaComponent$$ExternalSyntheticLambda0;

    .line 303
    .line 304
    const/4 v4, 0x2

    .line 305
    invoke-direct {p1, v4}, Lorg/koin/java/KoinJavaComponent$$ExternalSyntheticLambda0;-><init>(I)V

    .line 306
    .line 307
    .line 308
    invoke-virtual {v5, p1}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 309
    .line 310
    .line 311
    :cond_a
    check-cast p1, Lkotlin/jvm/functions/Function0;

    .line 312
    .line 313
    invoke-virtual {v5, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 314
    .line 315
    .line 316
    move-result v4

    .line 317
    invoke-virtual {v5, v2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 318
    .line 319
    .line 320
    move-result v6

    .line 321
    or-int/2addr v4, v6

    .line 322
    invoke-virtual {v5, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 323
    .line 324
    .line 325
    move-result v6

    .line 326
    or-int/2addr v4, v6

    .line 327
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 328
    .line 329
    .line 330
    move-result-object v6

    .line 331
    if-nez v4, :cond_b

    .line 332
    .line 333
    if-ne v6, v3, :cond_c

    .line 334
    .line 335
    :cond_b
    new-instance v6, Landroidx/navigation/compose/NavHostKt$NavHost$29$1;

    .line 336
    .line 337
    const/16 v11, 0x19

    .line 338
    .line 339
    move-object v7, v0

    .line 340
    move-object v9, v1

    .line 341
    move-object v8, v2

    .line 342
    invoke-direct/range {v6 .. v11}, Landroidx/navigation/compose/NavHostKt$NavHost$29$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 343
    .line 344
    .line 345
    invoke-virtual {v5, v6}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 346
    .line 347
    .line 348
    :cond_c
    move-object v4, v6

    .line 349
    check-cast v4, Lkotlin/jvm/functions/Function2;

    .line 350
    .line 351
    move-object v3, p1

    .line 352
    invoke-static/range {v0 .. v5}, Lorg/minidns/util/Base64;->rememberResourceState(Lorg/jetbrains/compose/resources/DrawableResource;Lorg/jetbrains/compose/resources/DefaultAndroidResourceReader;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    .line 353
    .line 354
    .line 355
    move-result-object p1

    .line 356
    invoke-interface {p1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 357
    .line 358
    .line 359
    move-result-object p1

    .line 360
    check-cast p1, Landroidx/compose/ui/graphics/ImageBitmap;

    .line 361
    .line 362
    invoke-direct {p0, p1}, Landroidx/compose/ui/graphics/painter/BitmapPainter;-><init>(Landroidx/compose/ui/graphics/ImageBitmap;)V

    .line 363
    .line 364
    .line 365
    invoke-virtual {v5, v12}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 366
    .line 367
    .line 368
    goto/16 :goto_2
.end method
