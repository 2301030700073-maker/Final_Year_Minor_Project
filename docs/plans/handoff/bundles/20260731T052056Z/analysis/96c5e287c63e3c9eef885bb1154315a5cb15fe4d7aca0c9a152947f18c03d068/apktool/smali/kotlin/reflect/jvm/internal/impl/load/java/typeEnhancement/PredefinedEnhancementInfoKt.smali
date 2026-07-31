.class public abstract Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/PredefinedEnhancementInfoKt;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field public static final NOT_NULLABLE:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeQualifiers;

.field public static final NOT_PLATFORM:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeQualifiers;

.field public static final NULLABLE:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeQualifiers;

.field public static final PREDEFINED_FUNCTION_ENHANCEMENT_INFO_BY_SIGNATURE:Ljava/util/LinkedHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 1
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeQualifiers;

    .line 2
    .line 3
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;->NULLABLE:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeQualifiers;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;Z)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/PredefinedEnhancementInfoKt;->NULLABLE:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeQualifiers;

    .line 10
    .line 11
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeQualifiers;

    .line 12
    .line 13
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;->NOT_NULL:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;

    .line 14
    .line 15
    invoke-direct {v0, v1, v2}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeQualifiers;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;Z)V

    .line 16
    .line 17
    .line 18
    sput-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/PredefinedEnhancementInfoKt;->NOT_PLATFORM:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeQualifiers;

    .line 19
    .line 20
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeQualifiers;

    .line 21
    .line 22
    const/4 v3, 0x1

    .line 23
    invoke-direct {v0, v1, v3}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeQualifiers;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;Z)V

    .line 24
    .line 25
    .line 26
    sput-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/PredefinedEnhancementInfoKt;->NOT_NULLABLE:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeQualifiers;

    .line 27
    .line 28
    const-string v0, "java/lang/"

    .line 29
    .line 30
    const-string v1, "Object"

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    const-string v4, "java/util/function/"

    .line 37
    .line 38
    const-string v5, "Predicate"

    .line 39
    .line 40
    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    const-string v6, "Function"

    .line 45
    .line 46
    invoke-virtual {v4, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v6

    .line 50
    const-string v7, "Consumer"

    .line 51
    .line 52
    invoke-virtual {v4, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v7

    .line 56
    const-string v8, "BiFunction"

    .line 57
    .line 58
    invoke-virtual {v4, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v8

    .line 62
    const-string v9, "BiConsumer"

    .line 63
    .line 64
    invoke-virtual {v4, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v9

    .line 68
    const-string v10, "UnaryOperator"

    .line 69
    .line 70
    invoke-virtual {v4, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v10

    .line 74
    const-string v11, "java/util/"

    .line 75
    .line 76
    const-string v12, "stream/Stream"

    .line 77
    .line 78
    invoke-virtual {v11, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v12

    .line 82
    const-string v13, "Optional"

    .line 83
    .line 84
    invoke-virtual {v11, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v13

    .line 88
    new-instance v14, Lcoil3/network/NetworkHeaders$Builder;

    .line 89
    .line 90
    const/4 v15, 0x6

    .line 91
    invoke-direct {v14, v15}, Lcoil3/network/NetworkHeaders$Builder;-><init>(I)V

    .line 92
    .line 93
    .line 94
    const-string v15, "Iterator"

    .line 95
    .line 96
    invoke-virtual {v11, v15}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v15

    .line 100
    new-instance v2, Lokhttp3/FormBody$Builder;

    .line 101
    .line 102
    const/4 v3, 0x7

    .line 103
    invoke-direct {v2, v3, v14, v15}, Lokhttp3/FormBody$Builder;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    new-instance v15, Landroidx/compose/ui/semantics/SemanticsNode$emitFakeNodes$fakeNode$2;

    .line 107
    .line 108
    const/4 v3, 0x1

    .line 109
    invoke-direct {v15, v3, v7}, Landroidx/compose/ui/semantics/SemanticsNode$emitFakeNodes$fakeNode$2;-><init>(ILjava/lang/String;)V

    .line 110
    .line 111
    .line 112
    const-string v3, "forEachRemaining"

    .line 113
    .line 114
    invoke-virtual {v2, v3, v15}, Lokhttp3/FormBody$Builder;->function(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 115
    .line 116
    .line 117
    const-string v2, "Iterable"

    .line 118
    .line 119
    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    new-instance v3, Lokhttp3/FormBody$Builder;

    .line 124
    .line 125
    const/4 v15, 0x7

    .line 126
    invoke-direct {v3, v15, v14, v2}, Lokhttp3/FormBody$Builder;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    new-instance v2, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancement$containsFunctionN$1;

    .line 130
    .line 131
    const/4 v15, 0x4

    .line 132
    move-object/from16 v16, v4

    .line 133
    .line 134
    const/4 v4, 0x1

    .line 135
    invoke-direct {v2, v4, v15}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancement$containsFunctionN$1;-><init>(II)V

    .line 136
    .line 137
    .line 138
    const-string v4, "spliterator"

    .line 139
    .line 140
    invoke-virtual {v3, v4, v2}, Lokhttp3/FormBody$Builder;->function(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 141
    .line 142
    .line 143
    const-string v2, "Collection"

    .line 144
    .line 145
    invoke-virtual {v11, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v2

    .line 149
    new-instance v3, Lokhttp3/FormBody$Builder;

    .line 150
    .line 151
    const/4 v4, 0x7

    .line 152
    invoke-direct {v3, v4, v14, v2}, Lokhttp3/FormBody$Builder;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 153
    .line 154
    .line 155
    new-instance v2, Landroidx/compose/ui/semantics/SemanticsNode$emitFakeNodes$fakeNode$2;

    .line 156
    .line 157
    invoke-direct {v2, v4, v5}, Landroidx/compose/ui/semantics/SemanticsNode$emitFakeNodes$fakeNode$2;-><init>(ILjava/lang/String;)V

    .line 158
    .line 159
    .line 160
    const-string v4, "removeIf"

    .line 161
    .line 162
    invoke-virtual {v3, v4, v2}, Lokhttp3/FormBody$Builder;->function(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 163
    .line 164
    .line 165
    new-instance v2, Landroidx/compose/ui/semantics/SemanticsNode$emitFakeNodes$fakeNode$2;

    .line 166
    .line 167
    const/16 v4, 0x8

    .line 168
    .line 169
    invoke-direct {v2, v4, v12}, Landroidx/compose/ui/semantics/SemanticsNode$emitFakeNodes$fakeNode$2;-><init>(ILjava/lang/String;)V

    .line 170
    .line 171
    .line 172
    const-string v4, "stream"

    .line 173
    .line 174
    invoke-virtual {v3, v4, v2}, Lokhttp3/FormBody$Builder;->function(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 175
    .line 176
    .line 177
    new-instance v2, Landroidx/compose/ui/semantics/SemanticsNode$emitFakeNodes$fakeNode$2;

    .line 178
    .line 179
    const/16 v4, 0x9

    .line 180
    .line 181
    invoke-direct {v2, v4, v12}, Landroidx/compose/ui/semantics/SemanticsNode$emitFakeNodes$fakeNode$2;-><init>(ILjava/lang/String;)V

    .line 182
    .line 183
    .line 184
    const-string v4, "parallelStream"

    .line 185
    .line 186
    invoke-virtual {v3, v4, v2}, Lokhttp3/FormBody$Builder;->function(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 187
    .line 188
    .line 189
    const-string v2, "List"

    .line 190
    .line 191
    invoke-virtual {v11, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v2

    .line 195
    new-instance v3, Lokhttp3/FormBody$Builder;

    .line 196
    .line 197
    const/4 v4, 0x7

    .line 198
    invoke-direct {v3, v4, v14, v2}, Lokhttp3/FormBody$Builder;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 199
    .line 200
    .line 201
    new-instance v2, Landroidx/compose/ui/semantics/SemanticsNode$emitFakeNodes$fakeNode$2;

    .line 202
    .line 203
    const/16 v12, 0xa

    .line 204
    .line 205
    invoke-direct {v2, v12, v10}, Landroidx/compose/ui/semantics/SemanticsNode$emitFakeNodes$fakeNode$2;-><init>(ILjava/lang/String;)V

    .line 206
    .line 207
    .line 208
    const-string v10, "replaceAll"

    .line 209
    .line 210
    invoke-virtual {v3, v10, v2}, Lokhttp3/FormBody$Builder;->function(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 211
    .line 212
    .line 213
    const-string v2, "Map"

    .line 214
    .line 215
    invoke-virtual {v11, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v2

    .line 219
    new-instance v3, Lokhttp3/FormBody$Builder;

    .line 220
    .line 221
    invoke-direct {v3, v4, v14, v2}, Lokhttp3/FormBody$Builder;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 222
    .line 223
    .line 224
    new-instance v2, Landroidx/compose/ui/semantics/SemanticsNode$emitFakeNodes$fakeNode$2;

    .line 225
    .line 226
    const/16 v4, 0xb

    .line 227
    .line 228
    invoke-direct {v2, v4, v9}, Landroidx/compose/ui/semantics/SemanticsNode$emitFakeNodes$fakeNode$2;-><init>(ILjava/lang/String;)V

    .line 229
    .line 230
    .line 231
    const-string v4, "forEach"

    .line 232
    .line 233
    invoke-virtual {v3, v4, v2}, Lokhttp3/FormBody$Builder;->function(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 234
    .line 235
    .line 236
    new-instance v2, Landroidx/compose/ui/semantics/SemanticsNode$emitFakeNodes$fakeNode$2;

    .line 237
    .line 238
    const/16 v4, 0xc

    .line 239
    .line 240
    invoke-direct {v2, v4, v1}, Landroidx/compose/ui/semantics/SemanticsNode$emitFakeNodes$fakeNode$2;-><init>(ILjava/lang/String;)V

    .line 241
    .line 242
    .line 243
    const-string v4, "putIfAbsent"

    .line 244
    .line 245
    invoke-virtual {v3, v4, v2}, Lokhttp3/FormBody$Builder;->function(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 246
    .line 247
    .line 248
    new-instance v2, Landroidx/compose/ui/semantics/SemanticsNode$emitFakeNodes$fakeNode$2;

    .line 249
    .line 250
    const/16 v4, 0xd

    .line 251
    .line 252
    invoke-direct {v2, v4, v1}, Landroidx/compose/ui/semantics/SemanticsNode$emitFakeNodes$fakeNode$2;-><init>(ILjava/lang/String;)V

    .line 253
    .line 254
    .line 255
    const-string v4, "replace"

    .line 256
    .line 257
    invoke-virtual {v3, v4, v2}, Lokhttp3/FormBody$Builder;->function(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 258
    .line 259
    .line 260
    new-instance v2, Landroidx/compose/ui/semantics/SemanticsNode$emitFakeNodes$fakeNode$2;

    .line 261
    .line 262
    const/16 v11, 0xe

    .line 263
    .line 264
    invoke-direct {v2, v11, v1}, Landroidx/compose/ui/semantics/SemanticsNode$emitFakeNodes$fakeNode$2;-><init>(ILjava/lang/String;)V

    .line 265
    .line 266
    .line 267
    invoke-virtual {v3, v4, v2}, Lokhttp3/FormBody$Builder;->function(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 268
    .line 269
    .line 270
    new-instance v2, Landroidx/compose/ui/semantics/SemanticsNode$emitFakeNodes$fakeNode$2;

    .line 271
    .line 272
    const/16 v4, 0xf

    .line 273
    .line 274
    invoke-direct {v2, v4, v8}, Landroidx/compose/ui/semantics/SemanticsNode$emitFakeNodes$fakeNode$2;-><init>(ILjava/lang/String;)V

    .line 275
    .line 276
    .line 277
    invoke-virtual {v3, v10, v2}, Lokhttp3/FormBody$Builder;->function(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 278
    .line 279
    .line 280
    new-instance v2, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/PredefinedEnhancementInfoKt$PREDEFINED_FUNCTION_ENHANCEMENT_INFO_BY_SIGNATURE$1$1$5$6;

    .line 281
    .line 282
    const/4 v4, 0x0

    .line 283
    invoke-direct {v2, v1, v8, v4}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/PredefinedEnhancementInfoKt$PREDEFINED_FUNCTION_ENHANCEMENT_INFO_BY_SIGNATURE$1$1$5$6;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 284
    .line 285
    .line 286
    const-string v4, "compute"

    .line 287
    .line 288
    invoke-virtual {v3, v4, v2}, Lokhttp3/FormBody$Builder;->function(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 289
    .line 290
    .line 291
    new-instance v2, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/PredefinedEnhancementInfoKt$PREDEFINED_FUNCTION_ENHANCEMENT_INFO_BY_SIGNATURE$1$1$5$6;

    .line 292
    .line 293
    const/4 v4, 0x1

    .line 294
    invoke-direct {v2, v1, v6, v4}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/PredefinedEnhancementInfoKt$PREDEFINED_FUNCTION_ENHANCEMENT_INFO_BY_SIGNATURE$1$1$5$6;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 295
    .line 296
    .line 297
    const-string v4, "computeIfAbsent"

    .line 298
    .line 299
    invoke-virtual {v3, v4, v2}, Lokhttp3/FormBody$Builder;->function(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 300
    .line 301
    .line 302
    new-instance v2, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/PredefinedEnhancementInfoKt$PREDEFINED_FUNCTION_ENHANCEMENT_INFO_BY_SIGNATURE$1$1$5$6;

    .line 303
    .line 304
    const/4 v4, 0x2

    .line 305
    invoke-direct {v2, v1, v8, v4}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/PredefinedEnhancementInfoKt$PREDEFINED_FUNCTION_ENHANCEMENT_INFO_BY_SIGNATURE$1$1$5$6;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 306
    .line 307
    .line 308
    const-string v10, "computeIfPresent"

    .line 309
    .line 310
    invoke-virtual {v3, v10, v2}, Lokhttp3/FormBody$Builder;->function(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 311
    .line 312
    .line 313
    new-instance v2, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/PredefinedEnhancementInfoKt$PREDEFINED_FUNCTION_ENHANCEMENT_INFO_BY_SIGNATURE$1$1$5$6;

    .line 314
    .line 315
    const/4 v10, 0x3

    .line 316
    invoke-direct {v2, v1, v8, v10}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/PredefinedEnhancementInfoKt$PREDEFINED_FUNCTION_ENHANCEMENT_INFO_BY_SIGNATURE$1$1$5$6;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 317
    .line 318
    .line 319
    const-string v11, "merge"

    .line 320
    .line 321
    invoke-virtual {v3, v11, v2}, Lokhttp3/FormBody$Builder;->function(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 322
    .line 323
    .line 324
    new-instance v2, Lokhttp3/FormBody$Builder;

    .line 325
    .line 326
    const/4 v3, 0x7

    .line 327
    invoke-direct {v2, v3, v14, v13}, Lokhttp3/FormBody$Builder;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 328
    .line 329
    .line 330
    new-instance v3, Landroidx/compose/ui/semantics/SemanticsNode$emitFakeNodes$fakeNode$2;

    .line 331
    .line 332
    const/16 v11, 0x10

    .line 333
    .line 334
    invoke-direct {v3, v11, v13}, Landroidx/compose/ui/semantics/SemanticsNode$emitFakeNodes$fakeNode$2;-><init>(ILjava/lang/String;)V

    .line 335
    .line 336
    .line 337
    const-string v11, "empty"

    .line 338
    .line 339
    invoke-virtual {v2, v11, v3}, Lokhttp3/FormBody$Builder;->function(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 340
    .line 341
    .line 342
    new-instance v3, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/PredefinedEnhancementInfoKt$PREDEFINED_FUNCTION_ENHANCEMENT_INFO_BY_SIGNATURE$1$1$5$6;

    .line 343
    .line 344
    invoke-direct {v3, v1, v13, v15}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/PredefinedEnhancementInfoKt$PREDEFINED_FUNCTION_ENHANCEMENT_INFO_BY_SIGNATURE$1$1$5$6;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 345
    .line 346
    .line 347
    const-string v11, "of"

    .line 348
    .line 349
    invoke-virtual {v2, v11, v3}, Lokhttp3/FormBody$Builder;->function(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 350
    .line 351
    .line 352
    new-instance v3, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/PredefinedEnhancementInfoKt$PREDEFINED_FUNCTION_ENHANCEMENT_INFO_BY_SIGNATURE$1$1$5$6;

    .line 353
    .line 354
    const/4 v11, 0x5

    .line 355
    invoke-direct {v3, v1, v13, v11}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/PredefinedEnhancementInfoKt$PREDEFINED_FUNCTION_ENHANCEMENT_INFO_BY_SIGNATURE$1$1$5$6;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 356
    .line 357
    .line 358
    const-string v12, "ofNullable"

    .line 359
    .line 360
    invoke-virtual {v2, v12, v3}, Lokhttp3/FormBody$Builder;->function(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 361
    .line 362
    .line 363
    new-instance v3, Landroidx/compose/ui/semantics/SemanticsNode$emitFakeNodes$fakeNode$2;

    .line 364
    .line 365
    const/16 v12, 0x11

    .line 366
    .line 367
    invoke-direct {v3, v12, v1}, Landroidx/compose/ui/semantics/SemanticsNode$emitFakeNodes$fakeNode$2;-><init>(ILjava/lang/String;)V

    .line 368
    .line 369
    .line 370
    const-string v12, "get"

    .line 371
    .line 372
    invoke-virtual {v2, v12, v3}, Lokhttp3/FormBody$Builder;->function(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 373
    .line 374
    .line 375
    new-instance v3, Landroidx/compose/ui/semantics/SemanticsNode$emitFakeNodes$fakeNode$2;

    .line 376
    .line 377
    const/16 v13, 0x12

    .line 378
    .line 379
    invoke-direct {v3, v13, v7}, Landroidx/compose/ui/semantics/SemanticsNode$emitFakeNodes$fakeNode$2;-><init>(ILjava/lang/String;)V

    .line 380
    .line 381
    .line 382
    const-string v13, "ifPresent"

    .line 383
    .line 384
    invoke-virtual {v2, v13, v3}, Lokhttp3/FormBody$Builder;->function(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 385
    .line 386
    .line 387
    const-string v2, "ref/Reference"

    .line 388
    .line 389
    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 390
    .line 391
    .line 392
    move-result-object v0

    .line 393
    new-instance v2, Lokhttp3/FormBody$Builder;

    .line 394
    .line 395
    const/4 v3, 0x7

    .line 396
    invoke-direct {v2, v3, v14, v0}, Lokhttp3/FormBody$Builder;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 397
    .line 398
    .line 399
    new-instance v0, Landroidx/compose/ui/semantics/SemanticsNode$emitFakeNodes$fakeNode$2;

    .line 400
    .line 401
    const/16 v13, 0x13

    .line 402
    .line 403
    invoke-direct {v0, v13, v1}, Landroidx/compose/ui/semantics/SemanticsNode$emitFakeNodes$fakeNode$2;-><init>(ILjava/lang/String;)V

    .line 404
    .line 405
    .line 406
    invoke-virtual {v2, v12, v0}, Lokhttp3/FormBody$Builder;->function(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 407
    .line 408
    .line 409
    new-instance v0, Lokhttp3/FormBody$Builder;

    .line 410
    .line 411
    invoke-direct {v0, v3, v14, v5}, Lokhttp3/FormBody$Builder;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 412
    .line 413
    .line 414
    new-instance v2, Landroidx/compose/ui/semantics/SemanticsNode$emitFakeNodes$fakeNode$2;

    .line 415
    .line 416
    const/16 v5, 0x14

    .line 417
    .line 418
    invoke-direct {v2, v5, v1}, Landroidx/compose/ui/semantics/SemanticsNode$emitFakeNodes$fakeNode$2;-><init>(ILjava/lang/String;)V

    .line 419
    .line 420
    .line 421
    const-string v5, "test"

    .line 422
    .line 423
    invoke-virtual {v0, v5, v2}, Lokhttp3/FormBody$Builder;->function(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 424
    .line 425
    .line 426
    const-string v0, "BiPredicate"

    .line 427
    .line 428
    move-object/from16 v2, v16

    .line 429
    .line 430
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 431
    .line 432
    .line 433
    move-result-object v0

    .line 434
    new-instance v13, Lokhttp3/FormBody$Builder;

    .line 435
    .line 436
    invoke-direct {v13, v3, v14, v0}, Lokhttp3/FormBody$Builder;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 437
    .line 438
    .line 439
    new-instance v0, Landroidx/compose/ui/semantics/SemanticsNode$emitFakeNodes$fakeNode$2;

    .line 440
    .line 441
    const/16 v11, 0x15

    .line 442
    .line 443
    invoke-direct {v0, v11, v1}, Landroidx/compose/ui/semantics/SemanticsNode$emitFakeNodes$fakeNode$2;-><init>(ILjava/lang/String;)V

    .line 444
    .line 445
    .line 446
    invoke-virtual {v13, v5, v0}, Lokhttp3/FormBody$Builder;->function(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 447
    .line 448
    .line 449
    new-instance v0, Lokhttp3/FormBody$Builder;

    .line 450
    .line 451
    invoke-direct {v0, v3, v14, v7}, Lokhttp3/FormBody$Builder;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 452
    .line 453
    .line 454
    new-instance v5, Landroidx/compose/ui/semantics/SemanticsNode$emitFakeNodes$fakeNode$2;

    .line 455
    .line 456
    invoke-direct {v5, v4, v1}, Landroidx/compose/ui/semantics/SemanticsNode$emitFakeNodes$fakeNode$2;-><init>(ILjava/lang/String;)V

    .line 457
    .line 458
    .line 459
    const-string v4, "accept"

    .line 460
    .line 461
    invoke-virtual {v0, v4, v5}, Lokhttp3/FormBody$Builder;->function(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 462
    .line 463
    .line 464
    new-instance v0, Lokhttp3/FormBody$Builder;

    .line 465
    .line 466
    invoke-direct {v0, v3, v14, v9}, Lokhttp3/FormBody$Builder;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 467
    .line 468
    .line 469
    new-instance v5, Landroidx/compose/ui/semantics/SemanticsNode$emitFakeNodes$fakeNode$2;

    .line 470
    .line 471
    invoke-direct {v5, v10, v1}, Landroidx/compose/ui/semantics/SemanticsNode$emitFakeNodes$fakeNode$2;-><init>(ILjava/lang/String;)V

    .line 472
    .line 473
    .line 474
    invoke-virtual {v0, v4, v5}, Lokhttp3/FormBody$Builder;->function(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 475
    .line 476
    .line 477
    new-instance v0, Lokhttp3/FormBody$Builder;

    .line 478
    .line 479
    invoke-direct {v0, v3, v14, v6}, Lokhttp3/FormBody$Builder;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 480
    .line 481
    .line 482
    new-instance v4, Landroidx/compose/ui/semantics/SemanticsNode$emitFakeNodes$fakeNode$2;

    .line 483
    .line 484
    invoke-direct {v4, v15, v1}, Landroidx/compose/ui/semantics/SemanticsNode$emitFakeNodes$fakeNode$2;-><init>(ILjava/lang/String;)V

    .line 485
    .line 486
    .line 487
    const-string v5, "apply"

    .line 488
    .line 489
    invoke-virtual {v0, v5, v4}, Lokhttp3/FormBody$Builder;->function(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 490
    .line 491
    .line 492
    new-instance v0, Lokhttp3/FormBody$Builder;

    .line 493
    .line 494
    invoke-direct {v0, v3, v14, v8}, Lokhttp3/FormBody$Builder;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 495
    .line 496
    .line 497
    new-instance v4, Landroidx/compose/ui/semantics/SemanticsNode$emitFakeNodes$fakeNode$2;

    .line 498
    .line 499
    const/4 v6, 0x5

    .line 500
    invoke-direct {v4, v6, v1}, Landroidx/compose/ui/semantics/SemanticsNode$emitFakeNodes$fakeNode$2;-><init>(ILjava/lang/String;)V

    .line 501
    .line 502
    .line 503
    invoke-virtual {v0, v5, v4}, Lokhttp3/FormBody$Builder;->function(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 504
    .line 505
    .line 506
    const-string v0, "Supplier"

    .line 507
    .line 508
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 509
    .line 510
    .line 511
    move-result-object v0

    .line 512
    new-instance v2, Lokhttp3/FormBody$Builder;

    .line 513
    .line 514
    invoke-direct {v2, v3, v14, v0}, Lokhttp3/FormBody$Builder;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 515
    .line 516
    .line 517
    new-instance v0, Landroidx/compose/ui/semantics/SemanticsNode$emitFakeNodes$fakeNode$2;

    .line 518
    .line 519
    const/4 v3, 0x6

    .line 520
    invoke-direct {v0, v3, v1}, Landroidx/compose/ui/semantics/SemanticsNode$emitFakeNodes$fakeNode$2;-><init>(ILjava/lang/String;)V

    .line 521
    .line 522
    .line 523
    invoke-virtual {v2, v12, v0}, Lokhttp3/FormBody$Builder;->function(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 524
    .line 525
    .line 526
    iget-object v0, v14, Lcoil3/network/NetworkHeaders$Builder;->data:Ljava/util/LinkedHashMap;

    .line 527
    .line 528
    sput-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/PredefinedEnhancementInfoKt;->PREDEFINED_FUNCTION_ENHANCEMENT_INFO_BY_SIGNATURE:Ljava/util/LinkedHashMap;

    .line 529
    .line 530
    return-void
.end method
