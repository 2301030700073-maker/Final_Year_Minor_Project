.class public abstract Lokhttp3/tls/internal/der/CertificateAdapters;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field public static final basicConstraints:Lokhttp3/tls/internal/der/BasicDerAdapter;

.field public static final certificate:Lokhttp3/tls/internal/der/BasicDerAdapter;

.field public static final generalNameDnsName:Lokhttp3/tls/internal/der/BasicDerAdapter;

.field public static final generalNameIpAddress:Lokhttp3/tls/internal/der/BasicDerAdapter;

.field public static final rdnSequence:Lokhttp3/tls/internal/der/BasicDerAdapter;

.field public static final subjectAlternativeName:Lokhttp3/tls/internal/der/BasicDerAdapter;

.field public static final subjectPublicKeyInfo:Lokhttp3/tls/internal/der/BasicDerAdapter;

.field public static final tbsCertificate:Lokhttp3/tls/internal/der/BasicDerAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 21

    .line 1
    new-instance v0, Lokhttp3/tls/internal/der/Adapters$ANY_VALUE$1;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Lokhttp3/tls/internal/der/Adapters$ANY_VALUE$1;-><init>(I)V

    .line 5
    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    new-array v3, v2, [Lokhttp3/tls/internal/der/DerAdapter;

    .line 9
    .line 10
    const/4 v4, 0x0

    .line 11
    aput-object v0, v3, v4

    .line 12
    .line 13
    aput-object v0, v3, v1

    .line 14
    .line 15
    new-instance v0, Lokio/internal/ZipFilesKt$$ExternalSyntheticLambda3;

    .line 16
    .line 17
    const/4 v5, 0x7

    .line 18
    invoke-direct {v0, v5}, Lokio/internal/ZipFilesKt$$ExternalSyntheticLambda3;-><init>(I)V

    .line 19
    .line 20
    .line 21
    new-instance v6, Lokio/internal/ZipFilesKt$$ExternalSyntheticLambda3;

    .line 22
    .line 23
    const/16 v7, 0x9

    .line 24
    .line 25
    invoke-direct {v6, v7}, Lokio/internal/ZipFilesKt$$ExternalSyntheticLambda3;-><init>(I)V

    .line 26
    .line 27
    .line 28
    const-string v8, "Validity"

    .line 29
    .line 30
    invoke-static {v8, v3, v0, v6}, Lokhttp3/tls/internal/der/Adapters;->sequence(Ljava/lang/String;[Lokhttp3/tls/internal/der/DerAdapter;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lokhttp3/tls/internal/der/BasicDerAdapter;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    new-instance v3, Lokio/internal/ZipFilesKt$$ExternalSyntheticLambda3;

    .line 35
    .line 36
    const/16 v6, 0xa

    .line 37
    .line 38
    invoke-direct {v3, v6}, Lokio/internal/ZipFilesKt$$ExternalSyntheticLambda3;-><init>(I)V

    .line 39
    .line 40
    .line 41
    new-instance v8, Lokhttp3/tls/internal/der/Adapters$any$1;

    .line 42
    .line 43
    invoke-direct {v8, v2, v3}, Lokhttp3/tls/internal/der/Adapters$any$1;-><init>(ILjava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    sget-object v3, Lokhttp3/tls/internal/der/Adapters;->OBJECT_IDENTIFIER:Lokhttp3/tls/internal/der/BasicDerAdapter;

    .line 47
    .line 48
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    const-wide/16 v9, 0x0

    .line 52
    .line 53
    const/4 v11, 0x0

    .line 54
    const/16 v12, 0x3f

    .line 55
    .line 56
    invoke-static {v3, v9, v10, v11, v12}, Lokhttp3/tls/internal/der/BasicDerAdapter;->copy$default(Lokhttp3/tls/internal/der/BasicDerAdapter;JLjava/lang/Object;I)Lokhttp3/tls/internal/der/BasicDerAdapter;

    .line 57
    .line 58
    .line 59
    move-result-object v13

    .line 60
    new-array v14, v2, [Lokhttp3/tls/internal/der/DerAdapter;

    .line 61
    .line 62
    aput-object v13, v14, v4

    .line 63
    .line 64
    aput-object v8, v14, v1

    .line 65
    .line 66
    new-instance v8, Lokio/internal/ZipFilesKt$$ExternalSyntheticLambda3;

    .line 67
    .line 68
    const/16 v13, 0xb

    .line 69
    .line 70
    invoke-direct {v8, v13}, Lokio/internal/ZipFilesKt$$ExternalSyntheticLambda3;-><init>(I)V

    .line 71
    .line 72
    .line 73
    new-instance v13, Lokio/internal/ZipFilesKt$$ExternalSyntheticLambda3;

    .line 74
    .line 75
    const/16 v15, 0xc

    .line 76
    .line 77
    invoke-direct {v13, v15}, Lokio/internal/ZipFilesKt$$ExternalSyntheticLambda3;-><init>(I)V

    .line 78
    .line 79
    .line 80
    const-string v15, "AlgorithmIdentifier"

    .line 81
    .line 82
    invoke-static {v15, v14, v8, v13}, Lokhttp3/tls/internal/der/Adapters;->sequence(Ljava/lang/String;[Lokhttp3/tls/internal/der/DerAdapter;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lokhttp3/tls/internal/der/BasicDerAdapter;

    .line 83
    .line 84
    .line 85
    move-result-object v8

    .line 86
    sget-object v13, Lokhttp3/tls/internal/der/Adapters;->BOOLEAN:Lokhttp3/tls/internal/der/BasicDerAdapter;

    .line 87
    .line 88
    sget-object v14, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 89
    .line 90
    invoke-virtual {v13, v14}, Lokhttp3/tls/internal/der/BasicDerAdapter;->optional(Ljava/lang/Object;)Lokhttp3/tls/internal/der/BasicDerAdapter;

    .line 91
    .line 92
    .line 93
    move-result-object v15

    .line 94
    move/from16 v16, v5

    .line 95
    .line 96
    sget-object v5, Lokhttp3/tls/internal/der/Adapters;->INTEGER_AS_LONG:Lokhttp3/tls/internal/der/BasicDerAdapter;

    .line 97
    .line 98
    invoke-virtual {v5, v11}, Lokhttp3/tls/internal/der/BasicDerAdapter;->optional(Ljava/lang/Object;)Lokhttp3/tls/internal/der/BasicDerAdapter;

    .line 99
    .line 100
    .line 101
    move-result-object v17

    .line 102
    move/from16 v18, v7

    .line 103
    .line 104
    new-array v7, v2, [Lokhttp3/tls/internal/der/DerAdapter;

    .line 105
    .line 106
    aput-object v15, v7, v4

    .line 107
    .line 108
    aput-object v17, v7, v1

    .line 109
    .line 110
    new-instance v15, Lokio/internal/ZipFilesKt$$ExternalSyntheticLambda3;

    .line 111
    .line 112
    const/16 v6, 0xd

    .line 113
    .line 114
    invoke-direct {v15, v6}, Lokio/internal/ZipFilesKt$$ExternalSyntheticLambda3;-><init>(I)V

    .line 115
    .line 116
    .line 117
    new-instance v6, Lokio/internal/ZipFilesKt$$ExternalSyntheticLambda3;

    .line 118
    .line 119
    move/from16 v19, v4

    .line 120
    .line 121
    const/16 v4, 0xe

    .line 122
    .line 123
    invoke-direct {v6, v4}, Lokio/internal/ZipFilesKt$$ExternalSyntheticLambda3;-><init>(I)V

    .line 124
    .line 125
    .line 126
    const-string v4, "BasicConstraints"

    .line 127
    .line 128
    invoke-static {v4, v7, v15, v6}, Lokhttp3/tls/internal/der/Adapters;->sequence(Ljava/lang/String;[Lokhttp3/tls/internal/der/DerAdapter;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lokhttp3/tls/internal/der/BasicDerAdapter;

    .line 129
    .line 130
    .line 131
    move-result-object v4

    .line 132
    sput-object v4, Lokhttp3/tls/internal/der/CertificateAdapters;->basicConstraints:Lokhttp3/tls/internal/der/BasicDerAdapter;

    .line 133
    .line 134
    sget-object v4, Lokhttp3/tls/internal/der/Adapters;->IA5_STRING:Lokhttp3/tls/internal/der/BasicDerAdapter;

    .line 135
    .line 136
    const-wide/16 v6, 0x2

    .line 137
    .line 138
    invoke-static {v4, v6, v7}, Lokhttp3/tls/internal/der/BasicDerAdapter;->withTag$default(Lokhttp3/tls/internal/der/BasicDerAdapter;J)Lokhttp3/tls/internal/der/BasicDerAdapter;

    .line 139
    .line 140
    .line 141
    move-result-object v4

    .line 142
    sput-object v4, Lokhttp3/tls/internal/der/CertificateAdapters;->generalNameDnsName:Lokhttp3/tls/internal/der/BasicDerAdapter;

    .line 143
    .line 144
    sget-object v15, Lokhttp3/tls/internal/der/Adapters;->OCTET_STRING:Lokhttp3/tls/internal/der/BasicDerAdapter;

    .line 145
    .line 146
    const-wide/16 v6, 0x7

    .line 147
    .line 148
    invoke-static {v15, v6, v7}, Lokhttp3/tls/internal/der/BasicDerAdapter;->withTag$default(Lokhttp3/tls/internal/der/BasicDerAdapter;J)Lokhttp3/tls/internal/der/BasicDerAdapter;

    .line 149
    .line 150
    .line 151
    move-result-object v6

    .line 152
    sput-object v6, Lokhttp3/tls/internal/der/CertificateAdapters;->generalNameIpAddress:Lokhttp3/tls/internal/der/BasicDerAdapter;

    .line 153
    .line 154
    sget-object v7, Lokhttp3/tls/internal/der/Adapters;->ANY_VALUE:Lokhttp3/tls/internal/der/Adapters$ANY_VALUE$1;

    .line 155
    .line 156
    const/4 v9, 0x3

    .line 157
    new-array v10, v9, [Lokhttp3/tls/internal/der/DerAdapter;

    .line 158
    .line 159
    aput-object v4, v10, v19

    .line 160
    .line 161
    aput-object v6, v10, v1

    .line 162
    .line 163
    aput-object v7, v10, v2

    .line 164
    .line 165
    new-instance v4, Lokhttp3/tls/internal/der/Adapters$any$1;

    .line 166
    .line 167
    invoke-direct {v4, v1, v10}, Lokhttp3/tls/internal/der/Adapters$any$1;-><init>(ILjava/lang/Object;)V

    .line 168
    .line 169
    .line 170
    invoke-static {v4}, Lcoil3/size/ViewSizeResolver$-CC;->asSequenceOf$default(Lokhttp3/tls/internal/der/DerAdapter;)Lokhttp3/tls/internal/der/BasicDerAdapter;

    .line 171
    .line 172
    .line 173
    move-result-object v4

    .line 174
    sput-object v4, Lokhttp3/tls/internal/der/CertificateAdapters;->subjectAlternativeName:Lokhttp3/tls/internal/der/BasicDerAdapter;

    .line 175
    .line 176
    new-instance v4, Lokio/internal/ZipFilesKt$$ExternalSyntheticLambda3;

    .line 177
    .line 178
    const/16 v6, 0xf

    .line 179
    .line 180
    invoke-direct {v4, v6}, Lokio/internal/ZipFilesKt$$ExternalSyntheticLambda3;-><init>(I)V

    .line 181
    .line 182
    .line 183
    new-instance v6, Lokhttp3/tls/internal/der/Adapters$any$1;

    .line 184
    .line 185
    invoke-direct {v6, v2, v4}, Lokhttp3/tls/internal/der/Adapters$any$1;-><init>(ILjava/lang/Object;)V

    .line 186
    .line 187
    .line 188
    iget v4, v15, Lokhttp3/tls/internal/der/BasicDerAdapter;->tagClass:I

    .line 189
    .line 190
    move v10, v1

    .line 191
    move/from16 v20, v2

    .line 192
    .line 193
    iget-wide v1, v15, Lokhttp3/tls/internal/der/BasicDerAdapter;->tag:J

    .line 194
    .line 195
    invoke-static {v6, v4, v1, v2, v14}, Lcoil3/size/ViewSizeResolver$-CC;->$default$withExplicitBox(Lokhttp3/tls/internal/der/DerAdapter;IJLjava/lang/Boolean;)Lokhttp3/tls/internal/der/BasicDerAdapter;

    .line 196
    .line 197
    .line 198
    move-result-object v1

    .line 199
    move v4, v10

    .line 200
    const-wide/16 v9, 0x0

    .line 201
    .line 202
    invoke-static {v3, v9, v10, v11, v12}, Lokhttp3/tls/internal/der/BasicDerAdapter;->copy$default(Lokhttp3/tls/internal/der/BasicDerAdapter;JLjava/lang/Object;I)Lokhttp3/tls/internal/der/BasicDerAdapter;

    .line 203
    .line 204
    .line 205
    move-result-object v6

    .line 206
    invoke-virtual {v13, v14}, Lokhttp3/tls/internal/der/BasicDerAdapter;->optional(Ljava/lang/Object;)Lokhttp3/tls/internal/der/BasicDerAdapter;

    .line 207
    .line 208
    .line 209
    move-result-object v9

    .line 210
    const/4 v2, 0x3

    .line 211
    new-array v10, v2, [Lokhttp3/tls/internal/der/DerAdapter;

    .line 212
    .line 213
    aput-object v6, v10, v19

    .line 214
    .line 215
    aput-object v9, v10, v4

    .line 216
    .line 217
    aput-object v1, v10, v20

    .line 218
    .line 219
    new-instance v1, Lokio/internal/ZipFilesKt$$ExternalSyntheticLambda3;

    .line 220
    .line 221
    const/16 v6, 0x10

    .line 222
    .line 223
    invoke-direct {v1, v6}, Lokio/internal/ZipFilesKt$$ExternalSyntheticLambda3;-><init>(I)V

    .line 224
    .line 225
    .line 226
    new-instance v6, Lokio/internal/ZipFilesKt$$ExternalSyntheticLambda3;

    .line 227
    .line 228
    const/16 v9, 0x11

    .line 229
    .line 230
    invoke-direct {v6, v9}, Lokio/internal/ZipFilesKt$$ExternalSyntheticLambda3;-><init>(I)V

    .line 231
    .line 232
    .line 233
    const-string v9, "Extension"

    .line 234
    .line 235
    invoke-static {v9, v10, v1, v6}, Lokhttp3/tls/internal/der/Adapters;->sequence(Ljava/lang/String;[Lokhttp3/tls/internal/der/DerAdapter;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lokhttp3/tls/internal/der/BasicDerAdapter;

    .line 236
    .line 237
    .line 238
    move-result-object v1

    .line 239
    sget-object v6, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    .line 240
    .line 241
    const-class v9, Ljava/lang/String;

    .line 242
    .line 243
    invoke-virtual {v6, v9}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 244
    .line 245
    .line 246
    move-result-object v9

    .line 247
    sget-object v10, Lokhttp3/tls/internal/der/Adapters;->UTF8_STRING:Lokhttp3/tls/internal/der/BasicDerAdapter;

    .line 248
    .line 249
    new-instance v12, Lkotlin/Pair;

    .line 250
    .line 251
    invoke-direct {v12, v9, v10}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 252
    .line 253
    .line 254
    const-class v9, Ljava/lang/Void;

    .line 255
    .line 256
    invoke-virtual {v6, v9}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 257
    .line 258
    .line 259
    move-result-object v9

    .line 260
    sget-object v10, Lokhttp3/tls/internal/der/Adapters;->PRINTABLE_STRING:Lokhttp3/tls/internal/der/BasicDerAdapter;

    .line 261
    .line 262
    new-instance v13, Lkotlin/Pair;

    .line 263
    .line 264
    invoke-direct {v13, v9, v10}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 265
    .line 266
    .line 267
    const-class v9, Lokhttp3/tls/internal/der/AnyValue;

    .line 268
    .line 269
    invoke-virtual {v6, v9}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 270
    .line 271
    .line 272
    move-result-object v6

    .line 273
    new-instance v9, Lkotlin/Pair;

    .line 274
    .line 275
    invoke-direct {v9, v6, v7}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 276
    .line 277
    .line 278
    const/4 v2, 0x3

    .line 279
    new-array v6, v2, [Lkotlin/Pair;

    .line 280
    .line 281
    aput-object v12, v6, v19

    .line 282
    .line 283
    aput-object v13, v6, v4

    .line 284
    .line 285
    aput-object v9, v6, v20

    .line 286
    .line 287
    new-instance v7, Lokhttp3/tls/internal/der/Adapters$any$1;

    .line 288
    .line 289
    move/from16 v9, v19

    .line 290
    .line 291
    invoke-direct {v7, v9, v6}, Lokhttp3/tls/internal/der/Adapters$any$1;-><init>(ILjava/lang/Object;)V

    .line 292
    .line 293
    .line 294
    move/from16 v6, v20

    .line 295
    .line 296
    new-array v10, v6, [Lokhttp3/tls/internal/der/DerAdapter;

    .line 297
    .line 298
    aput-object v3, v10, v9

    .line 299
    .line 300
    aput-object v7, v10, v4

    .line 301
    .line 302
    new-instance v3, Lokio/internal/ZipFilesKt$$ExternalSyntheticLambda3;

    .line 303
    .line 304
    const/16 v6, 0x12

    .line 305
    .line 306
    invoke-direct {v3, v6}, Lokio/internal/ZipFilesKt$$ExternalSyntheticLambda3;-><init>(I)V

    .line 307
    .line 308
    .line 309
    new-instance v6, Lokio/internal/ZipFilesKt$$ExternalSyntheticLambda3;

    .line 310
    .line 311
    const/16 v7, 0x13

    .line 312
    .line 313
    invoke-direct {v6, v7}, Lokio/internal/ZipFilesKt$$ExternalSyntheticLambda3;-><init>(I)V

    .line 314
    .line 315
    .line 316
    const-string v7, "AttributeTypeAndValue"

    .line 317
    .line 318
    invoke-static {v7, v10, v3, v6}, Lokhttp3/tls/internal/der/Adapters;->sequence(Ljava/lang/String;[Lokhttp3/tls/internal/der/DerAdapter;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lokhttp3/tls/internal/der/BasicDerAdapter;

    .line 319
    .line 320
    .line 321
    move-result-object v3

    .line 322
    const-string v6, "SET OF"

    .line 323
    .line 324
    const-wide/16 v9, 0x11

    .line 325
    .line 326
    invoke-static {v3, v6, v9, v10}, Lcoil3/size/ViewSizeResolver$-CC;->$default$asSequenceOf(Lokhttp3/tls/internal/der/DerAdapter;Ljava/lang/String;J)Lokhttp3/tls/internal/der/BasicDerAdapter;

    .line 327
    .line 328
    .line 329
    move-result-object v3

    .line 330
    invoke-static {v3}, Lcoil3/size/ViewSizeResolver$-CC;->asSequenceOf$default(Lokhttp3/tls/internal/der/DerAdapter;)Lokhttp3/tls/internal/der/BasicDerAdapter;

    .line 331
    .line 332
    .line 333
    move-result-object v3

    .line 334
    sput-object v3, Lokhttp3/tls/internal/der/CertificateAdapters;->rdnSequence:Lokhttp3/tls/internal/der/BasicDerAdapter;

    .line 335
    .line 336
    move v10, v4

    .line 337
    new-array v4, v10, [Lokhttp3/tls/internal/der/DerAdapter;

    .line 338
    .line 339
    const/16 v19, 0x0

    .line 340
    .line 341
    aput-object v3, v4, v19

    .line 342
    .line 343
    new-instance v3, Lokhttp3/tls/internal/der/Adapters$any$1;

    .line 344
    .line 345
    invoke-direct {v3, v10, v4}, Lokhttp3/tls/internal/der/Adapters$any$1;-><init>(ILjava/lang/Object;)V

    .line 346
    .line 347
    .line 348
    sget-object v4, Lokhttp3/tls/internal/der/Adapters;->BIT_STRING:Lokhttp3/tls/internal/der/BasicDerAdapter;

    .line 349
    .line 350
    const/4 v6, 0x2

    .line 351
    new-array v7, v6, [Lokhttp3/tls/internal/der/DerAdapter;

    .line 352
    .line 353
    aput-object v8, v7, v19

    .line 354
    .line 355
    aput-object v4, v7, v10

    .line 356
    .line 357
    new-instance v6, Lokio/internal/ZipFilesKt$$ExternalSyntheticLambda3;

    .line 358
    .line 359
    const/16 v9, 0x14

    .line 360
    .line 361
    invoke-direct {v6, v9}, Lokio/internal/ZipFilesKt$$ExternalSyntheticLambda3;-><init>(I)V

    .line 362
    .line 363
    .line 364
    new-instance v9, Lokio/internal/ZipFilesKt$$ExternalSyntheticLambda3;

    .line 365
    .line 366
    const/16 v12, 0x15

    .line 367
    .line 368
    invoke-direct {v9, v12}, Lokio/internal/ZipFilesKt$$ExternalSyntheticLambda3;-><init>(I)V

    .line 369
    .line 370
    .line 371
    const-string v12, "SubjectPublicKeyInfo"

    .line 372
    .line 373
    invoke-static {v12, v7, v6, v9}, Lokhttp3/tls/internal/der/Adapters;->sequence(Ljava/lang/String;[Lokhttp3/tls/internal/der/DerAdapter;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lokhttp3/tls/internal/der/BasicDerAdapter;

    .line 374
    .line 375
    .line 376
    move-result-object v6

    .line 377
    sput-object v6, Lokhttp3/tls/internal/der/CertificateAdapters;->subjectPublicKeyInfo:Lokhttp3/tls/internal/der/BasicDerAdapter;

    .line 378
    .line 379
    const-wide/16 v12, 0x0

    .line 380
    .line 381
    invoke-virtual {v5, v12, v13}, Lokhttp3/tls/internal/der/BasicDerAdapter;->withExplicitBox(J)Lokhttp3/tls/internal/der/BasicDerAdapter;

    .line 382
    .line 383
    .line 384
    move-result-object v7

    .line 385
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 386
    .line 387
    .line 388
    move-result-object v9

    .line 389
    invoke-virtual {v7, v9}, Lokhttp3/tls/internal/der/BasicDerAdapter;->optional(Ljava/lang/Object;)Lokhttp3/tls/internal/der/BasicDerAdapter;

    .line 390
    .line 391
    .line 392
    move-result-object v7

    .line 393
    const-wide/16 v12, 0x1

    .line 394
    .line 395
    invoke-static {v4, v12, v13}, Lokhttp3/tls/internal/der/BasicDerAdapter;->withTag$default(Lokhttp3/tls/internal/der/BasicDerAdapter;J)Lokhttp3/tls/internal/der/BasicDerAdapter;

    .line 396
    .line 397
    .line 398
    move-result-object v9

    .line 399
    invoke-virtual {v9, v11}, Lokhttp3/tls/internal/der/BasicDerAdapter;->optional(Ljava/lang/Object;)Lokhttp3/tls/internal/der/BasicDerAdapter;

    .line 400
    .line 401
    .line 402
    move-result-object v9

    .line 403
    const/16 v12, 0x79

    .line 404
    .line 405
    const-wide/16 v13, 0x2

    .line 406
    .line 407
    invoke-static {v4, v13, v14, v11, v12}, Lokhttp3/tls/internal/der/BasicDerAdapter;->copy$default(Lokhttp3/tls/internal/der/BasicDerAdapter;JLjava/lang/Object;I)Lokhttp3/tls/internal/der/BasicDerAdapter;

    .line 408
    .line 409
    .line 410
    move-result-object v12

    .line 411
    invoke-virtual {v12, v11}, Lokhttp3/tls/internal/der/BasicDerAdapter;->optional(Ljava/lang/Object;)Lokhttp3/tls/internal/der/BasicDerAdapter;

    .line 412
    .line 413
    .line 414
    move-result-object v11

    .line 415
    invoke-static {v1}, Lcoil3/size/ViewSizeResolver$-CC;->asSequenceOf$default(Lokhttp3/tls/internal/der/DerAdapter;)Lokhttp3/tls/internal/der/BasicDerAdapter;

    .line 416
    .line 417
    .line 418
    move-result-object v1

    .line 419
    const-wide/16 v12, 0x3

    .line 420
    .line 421
    invoke-virtual {v1, v12, v13}, Lokhttp3/tls/internal/der/BasicDerAdapter;->withExplicitBox(J)Lokhttp3/tls/internal/der/BasicDerAdapter;

    .line 422
    .line 423
    .line 424
    move-result-object v1

    .line 425
    sget-object v12, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 426
    .line 427
    invoke-virtual {v1, v12}, Lokhttp3/tls/internal/der/BasicDerAdapter;->optional(Ljava/lang/Object;)Lokhttp3/tls/internal/der/BasicDerAdapter;

    .line 428
    .line 429
    .line 430
    move-result-object v1

    .line 431
    const/16 v12, 0xa

    .line 432
    .line 433
    new-array v12, v12, [Lokhttp3/tls/internal/der/DerAdapter;

    .line 434
    .line 435
    const/16 v19, 0x0

    .line 436
    .line 437
    aput-object v7, v12, v19

    .line 438
    .line 439
    sget-object v7, Lokhttp3/tls/internal/der/Adapters;->INTEGER_AS_BIG_INTEGER:Lokhttp3/tls/internal/der/BasicDerAdapter;

    .line 440
    .line 441
    const/4 v10, 0x1

    .line 442
    aput-object v7, v12, v10

    .line 443
    .line 444
    const/16 v20, 0x2

    .line 445
    .line 446
    aput-object v8, v12, v20

    .line 447
    .line 448
    const/4 v2, 0x3

    .line 449
    aput-object v3, v12, v2

    .line 450
    .line 451
    const/4 v7, 0x4

    .line 452
    aput-object v0, v12, v7

    .line 453
    .line 454
    const/4 v0, 0x5

    .line 455
    aput-object v3, v12, v0

    .line 456
    .line 457
    const/4 v0, 0x6

    .line 458
    aput-object v6, v12, v0

    .line 459
    .line 460
    aput-object v9, v12, v16

    .line 461
    .line 462
    const/16 v0, 0x8

    .line 463
    .line 464
    aput-object v11, v12, v0

    .line 465
    .line 466
    aput-object v1, v12, v18

    .line 467
    .line 468
    new-instance v1, Lokio/internal/ZipFilesKt$$ExternalSyntheticLambda3;

    .line 469
    .line 470
    const/16 v3, 0x16

    .line 471
    .line 472
    invoke-direct {v1, v3}, Lokio/internal/ZipFilesKt$$ExternalSyntheticLambda3;-><init>(I)V

    .line 473
    .line 474
    .line 475
    new-instance v3, Lokio/internal/ZipFilesKt$$ExternalSyntheticLambda3;

    .line 476
    .line 477
    const/16 v6, 0x17

    .line 478
    .line 479
    invoke-direct {v3, v6}, Lokio/internal/ZipFilesKt$$ExternalSyntheticLambda3;-><init>(I)V

    .line 480
    .line 481
    .line 482
    const-string v6, "TBSCertificate"

    .line 483
    .line 484
    invoke-static {v6, v12, v1, v3}, Lokhttp3/tls/internal/der/Adapters;->sequence(Ljava/lang/String;[Lokhttp3/tls/internal/der/DerAdapter;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lokhttp3/tls/internal/der/BasicDerAdapter;

    .line 485
    .line 486
    .line 487
    move-result-object v1

    .line 488
    sput-object v1, Lokhttp3/tls/internal/der/CertificateAdapters;->tbsCertificate:Lokhttp3/tls/internal/der/BasicDerAdapter;

    .line 489
    .line 490
    const/4 v2, 0x3

    .line 491
    new-array v3, v2, [Lokhttp3/tls/internal/der/DerAdapter;

    .line 492
    .line 493
    const/16 v19, 0x0

    .line 494
    .line 495
    aput-object v1, v3, v19

    .line 496
    .line 497
    const/4 v10, 0x1

    .line 498
    aput-object v8, v3, v10

    .line 499
    .line 500
    const/16 v20, 0x2

    .line 501
    .line 502
    aput-object v4, v3, v20

    .line 503
    .line 504
    new-instance v1, Lokio/internal/ZipFilesKt$$ExternalSyntheticLambda3;

    .line 505
    .line 506
    const/16 v4, 0x18

    .line 507
    .line 508
    invoke-direct {v1, v4}, Lokio/internal/ZipFilesKt$$ExternalSyntheticLambda3;-><init>(I)V

    .line 509
    .line 510
    .line 511
    new-instance v4, Lokio/internal/ZipFilesKt$$ExternalSyntheticLambda3;

    .line 512
    .line 513
    const/16 v6, 0x19

    .line 514
    .line 515
    invoke-direct {v4, v6}, Lokio/internal/ZipFilesKt$$ExternalSyntheticLambda3;-><init>(I)V

    .line 516
    .line 517
    .line 518
    const-string v6, "Certificate"

    .line 519
    .line 520
    invoke-static {v6, v3, v1, v4}, Lokhttp3/tls/internal/der/Adapters;->sequence(Ljava/lang/String;[Lokhttp3/tls/internal/der/DerAdapter;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lokhttp3/tls/internal/der/BasicDerAdapter;

    .line 521
    .line 522
    .line 523
    move-result-object v1

    .line 524
    sput-object v1, Lokhttp3/tls/internal/der/CertificateAdapters;->certificate:Lokhttp3/tls/internal/der/BasicDerAdapter;

    .line 525
    .line 526
    const/4 v2, 0x3

    .line 527
    new-array v1, v2, [Lokhttp3/tls/internal/der/DerAdapter;

    .line 528
    .line 529
    const/16 v19, 0x0

    .line 530
    .line 531
    aput-object v5, v1, v19

    .line 532
    .line 533
    const/4 v10, 0x1

    .line 534
    aput-object v8, v1, v10

    .line 535
    .line 536
    const/16 v20, 0x2

    .line 537
    .line 538
    aput-object v15, v1, v20

    .line 539
    .line 540
    new-instance v2, Lokio/internal/ZipFilesKt$$ExternalSyntheticLambda3;

    .line 541
    .line 542
    const/16 v3, 0x1a

    .line 543
    .line 544
    invoke-direct {v2, v3}, Lokio/internal/ZipFilesKt$$ExternalSyntheticLambda3;-><init>(I)V

    .line 545
    .line 546
    .line 547
    new-instance v3, Lokio/internal/ZipFilesKt$$ExternalSyntheticLambda3;

    .line 548
    .line 549
    invoke-direct {v3, v0}, Lokio/internal/ZipFilesKt$$ExternalSyntheticLambda3;-><init>(I)V

    .line 550
    .line 551
    .line 552
    const-string v0, "PrivateKeyInfo"

    .line 553
    .line 554
    invoke-static {v0, v1, v2, v3}, Lokhttp3/tls/internal/der/Adapters;->sequence(Ljava/lang/String;[Lokhttp3/tls/internal/der/DerAdapter;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lokhttp3/tls/internal/der/BasicDerAdapter;

    .line 555
    .line 556
    .line 557
    return-void
.end method
