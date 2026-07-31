.class public final synthetic Lcoil3/disk/UtilsKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 8
    iput p1, p0, Lcoil3/disk/UtilsKt$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/wikipedia/search/SearchResult$$ExternalSyntheticLambda0;)V
    .locals 0

    .line 1
    const/4 p1, 0x3

    .line 2
    iput p1, p0, Lcoil3/disk/UtilsKt$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v0, v0, Lcoil3/disk/UtilsKt$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    sget-object v0, Lorg/wikimedia/testkitchen/config/curation/CurationRules;->Companion:Lorg/wikimedia/testkitchen/config/curation/CurationRules$Companion;

    .line 11
    .line 12
    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lorg/wikimedia/testkitchen/config/curation/CurationRules$Companion;->serializer(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    return-object v0

    .line 19
    :pswitch_0
    sget-object v0, Lorg/wikimedia/testkitchen/config/curation/CurationRules;->Companion:Lorg/wikimedia/testkitchen/config/curation/CurationRules$Companion;

    .line 20
    .line 21
    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lorg/wikimedia/testkitchen/config/curation/CurationRules$Companion;->serializer(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    return-object v0

    .line 28
    :pswitch_1
    sget-object v0, Lorg/wikimedia/testkitchen/config/curation/CurationRules;->Companion:Lorg/wikimedia/testkitchen/config/curation/CurationRules$Companion;

    .line 29
    .line 30
    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Lorg/wikimedia/testkitchen/config/curation/CurationRules$Companion;->serializer(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    return-object v0

    .line 37
    :pswitch_2
    sget-object v0, Lorg/wikimedia/testkitchen/config/curation/CurationRules;->Companion:Lorg/wikimedia/testkitchen/config/curation/CurationRules$Companion;

    .line 38
    .line 39
    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Lorg/wikimedia/testkitchen/config/curation/CurationRules$Companion;->serializer(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    return-object v0

    .line 46
    :pswitch_3
    sget-object v0, Lorg/wikimedia/testkitchen/config/curation/ComparableCurationRules;->Companion:Lorg/wikimedia/testkitchen/config/curation/ComparableCurationRules$Companion;

    .line 47
    .line 48
    sget-object v1, Lorg/wikimedia/testkitchen/context/InstantSerializer;->INSTANCE:Lorg/wikimedia/testkitchen/context/InstantSerializer;

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Lorg/wikimedia/testkitchen/config/curation/ComparableCurationRules$Companion;->serializer(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    return-object v0

    .line 55
    :pswitch_4
    sget-object v0, Lorg/wikimedia/testkitchen/config/curation/CurationRules;->Companion:Lorg/wikimedia/testkitchen/config/curation/CurationRules$Companion;

    .line 56
    .line 57
    sget-object v1, Lkotlinx/serialization/internal/BooleanSerializer;->INSTANCE:Lkotlinx/serialization/internal/BooleanSerializer;

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Lorg/wikimedia/testkitchen/config/curation/CurationRules$Companion;->serializer(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    return-object v0

    .line 64
    :pswitch_5
    sget-object v0, Lorg/wikimedia/testkitchen/config/curation/CurationRules;->Companion:Lorg/wikimedia/testkitchen/config/curation/CurationRules$Companion;

    .line 65
    .line 66
    sget-object v1, Lkotlinx/serialization/internal/BooleanSerializer;->INSTANCE:Lkotlinx/serialization/internal/BooleanSerializer;

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Lorg/wikimedia/testkitchen/config/curation/CurationRules$Companion;->serializer(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    return-object v0

    .line 73
    :pswitch_6
    sget-object v0, Lorg/wikimedia/testkitchen/config/curation/CollectionCurationRules;->Companion:Lorg/wikimedia/testkitchen/config/curation/CollectionCurationRules$Companion;

    .line 74
    .line 75
    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 76
    .line 77
    invoke-virtual {v0, v1}, Lorg/wikimedia/testkitchen/config/curation/CollectionCurationRules$Companion;->serializer(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    return-object v0

    .line 82
    :pswitch_7
    sget-object v0, Lorg/wikimedia/testkitchen/config/curation/CurationRules;->Companion:Lorg/wikimedia/testkitchen/config/curation/CurationRules$Companion;

    .line 83
    .line 84
    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 85
    .line 86
    invoke-virtual {v0, v1}, Lorg/wikimedia/testkitchen/config/curation/CurationRules$Companion;->serializer(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    return-object v0

    .line 91
    :pswitch_8
    sget-object v0, Lorg/wikimedia/testkitchen/config/curation/CurationRules;->Companion:Lorg/wikimedia/testkitchen/config/curation/CurationRules$Companion;

    .line 92
    .line 93
    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 94
    .line 95
    invoke-virtual {v0, v1}, Lorg/wikimedia/testkitchen/config/curation/CurationRules$Companion;->serializer(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    return-object v0

    .line 100
    :pswitch_9
    sget-object v0, Lorg/wikimedia/testkitchen/config/curation/CurationRules;->Companion:Lorg/wikimedia/testkitchen/config/curation/CurationRules$Companion;

    .line 101
    .line 102
    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 103
    .line 104
    invoke-virtual {v0, v1}, Lorg/wikimedia/testkitchen/config/curation/CurationRules$Companion;->serializer(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    return-object v0

    .line 109
    :pswitch_a
    sget-object v0, Lorg/wikimedia/testkitchen/config/curation/CurationRules;->Companion:Lorg/wikimedia/testkitchen/config/curation/CurationRules$Companion;

    .line 110
    .line 111
    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 112
    .line 113
    invoke-virtual {v0, v1}, Lorg/wikimedia/testkitchen/config/curation/CurationRules$Companion;->serializer(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    return-object v0

    .line 118
    :pswitch_b
    sget-object v0, Lorg/wikimedia/testkitchen/config/curation/CurationRules;->Companion:Lorg/wikimedia/testkitchen/config/curation/CurationRules$Companion;

    .line 119
    .line 120
    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 121
    .line 122
    invoke-virtual {v0, v1}, Lorg/wikimedia/testkitchen/config/curation/CurationRules$Companion;->serializer(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    return-object v0

    .line 127
    :pswitch_c
    new-instance v0, Ljava/util/ArrayList;

    .line 128
    .line 129
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 130
    .line 131
    .line 132
    const-string v4, "localhost"

    .line 133
    .line 134
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    const-string v5, "localhost.localdomain"

    .line 138
    .line 139
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    const-string v5, "EC"

    .line 143
    .line 144
    invoke-static {v5}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    .line 145
    .line 146
    .line 147
    move-result-object v5

    .line 148
    new-instance v6, Ljava/security/SecureRandom;

    .line 149
    .line 150
    invoke-direct {v6}, Ljava/security/SecureRandom;-><init>()V

    .line 151
    .line 152
    .line 153
    const/16 v7, 0x100

    .line 154
    .line 155
    invoke-virtual {v5, v7, v6}, Ljava/security/KeyPairGenerator;->initialize(ILjava/security/SecureRandom;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v5}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    .line 159
    .line 160
    .line 161
    move-result-object v5

    .line 162
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 163
    .line 164
    .line 165
    sget-object v6, Lokhttp3/tls/internal/der/CertificateAdapters;->subjectPublicKeyInfo:Lokhttp3/tls/internal/der/BasicDerAdapter;

    .line 166
    .line 167
    sget-object v7, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    .line 168
    .line 169
    invoke-virtual {v5}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    .line 170
    .line 171
    .line 172
    move-result-object v7

    .line 173
    invoke-interface {v7}, Ljava/security/Key;->getEncoded()[B

    .line 174
    .line 175
    .line 176
    move-result-object v7

    .line 177
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 178
    .line 179
    .line 180
    invoke-static {v7}, Lokio/ByteString$Companion;->of$default([B)Lokio/ByteString;

    .line 181
    .line 182
    .line 183
    move-result-object v7

    .line 184
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 185
    .line 186
    .line 187
    new-instance v8, Lokio/Buffer;

    .line 188
    .line 189
    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v8, v7}, Lokio/Buffer;->write(Lokio/ByteString;)V

    .line 193
    .line 194
    .line 195
    new-instance v7, Lokhttp3/tls/internal/der/DerReader;

    .line 196
    .line 197
    invoke-direct {v7, v8}, Lokhttp3/tls/internal/der/DerReader;-><init>(Lokio/Buffer;)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v6, v7}, Lokhttp3/tls/internal/der/BasicDerAdapter;->fromDer(Lokhttp3/tls/internal/der/DerReader;)Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object v6

    .line 204
    move-object v15, v6

    .line 205
    check-cast v15, Lokhttp3/tls/internal/der/SubjectPublicKeyInfo;

    .line 206
    .line 207
    new-instance v12, Ljava/util/ArrayList;

    .line 208
    .line 209
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 210
    .line 211
    .line 212
    new-instance v6, Lokhttp3/tls/internal/der/AttributeTypeAndValue;

    .line 213
    .line 214
    const-string v7, "2.5.4.3"

    .line 215
    .line 216
    invoke-direct {v6, v7, v4}, Lokhttp3/tls/internal/der/AttributeTypeAndValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 217
    .line 218
    .line 219
    invoke-static {v6}, Landroidx/room/Room;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 220
    .line 221
    .line 222
    move-result-object v4

    .line 223
    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    .line 225
    .line 226
    invoke-virtual {v5}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    .line 227
    .line 228
    .line 229
    move-result-object v4

    .line 230
    instance-of v4, v4, Ljava/security/interfaces/RSAPrivateKey;

    .line 231
    .line 232
    const-string v6, "1.2.840.10045.4.3.2"

    .line 233
    .line 234
    const-string v7, "1.2.840.113549.1.1.11"

    .line 235
    .line 236
    if-eqz v4, :cond_0

    .line 237
    .line 238
    new-instance v4, Lokhttp3/tls/internal/der/AlgorithmIdentifier;

    .line 239
    .line 240
    invoke-direct {v4, v7, v1}, Lokhttp3/tls/internal/der/AlgorithmIdentifier;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 241
    .line 242
    .line 243
    :goto_0
    move-object v11, v4

    .line 244
    move-object v1, v7

    .line 245
    goto :goto_1

    .line 246
    :cond_0
    new-instance v4, Lokhttp3/tls/internal/der/AlgorithmIdentifier;

    .line 247
    .line 248
    sget-object v1, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    .line 249
    .line 250
    invoke-direct {v4, v6, v1}, Lokhttp3/tls/internal/der/AlgorithmIdentifier;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 251
    .line 252
    .line 253
    goto :goto_0

    .line 254
    :goto_1
    new-instance v7, Lokhttp3/tls/internal/der/TbsCertificate;

    .line 255
    .line 256
    sget-object v10, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    .line 257
    .line 258
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 259
    .line 260
    .line 261
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 262
    .line 263
    .line 264
    move-result-wide v8

    .line 265
    const-wide/32 v13, 0x5265c00

    .line 266
    .line 267
    .line 268
    add-long/2addr v13, v8

    .line 269
    new-instance v4, Lokhttp3/tls/internal/der/Validity;

    .line 270
    .line 271
    invoke-direct {v4, v8, v9, v13, v14}, Lokhttp3/tls/internal/der/Validity;-><init>(JJ)V

    .line 272
    .line 273
    .line 274
    new-instance v8, Ljava/util/ArrayList;

    .line 275
    .line 276
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 277
    .line 278
    .line 279
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 280
    .line 281
    .line 282
    move-result v9

    .line 283
    if-nez v9, :cond_3

    .line 284
    .line 285
    new-instance v9, Ljava/util/ArrayList;

    .line 286
    .line 287
    const/16 v13, 0xa

    .line 288
    .line 289
    invoke-static {v0, v13}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 290
    .line 291
    .line 292
    move-result v13

    .line 293
    invoke-direct {v9, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 294
    .line 295
    .line 296
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 297
    .line 298
    .line 299
    move-result-object v0

    .line 300
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 301
    .line 302
    .line 303
    move-result v13

    .line 304
    if-eqz v13, :cond_2

    .line 305
    .line 306
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 307
    .line 308
    .line 309
    move-result-object v13

    .line 310
    check-cast v13, Ljava/lang/String;

    .line 311
    .line 312
    sget-object v14, Lokhttp3/internal/_HostnamesCommonKt;->VERIFY_AS_IP_ADDRESS:Lkotlin/text/Regex;

    .line 313
    .line 314
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 315
    .line 316
    .line 317
    sget-object v14, Lokhttp3/internal/_HostnamesCommonKt;->VERIFY_AS_IP_ADDRESS:Lkotlin/text/Regex;

    .line 318
    .line 319
    invoke-virtual {v14, v13}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    .line 320
    .line 321
    .line 322
    move-result v14

    .line 323
    if-eqz v14, :cond_1

    .line 324
    .line 325
    sget-object v14, Lokhttp3/tls/internal/der/CertificateAdapters;->generalNameIpAddress:Lokhttp3/tls/internal/der/BasicDerAdapter;

    .line 326
    .line 327
    sget-object v16, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    .line 328
    .line 329
    invoke-static {v13}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 330
    .line 331
    .line 332
    move-result-object v13

    .line 333
    invoke-virtual {v13}, Ljava/net/InetAddress;->getAddress()[B

    .line 334
    .line 335
    .line 336
    move-result-object v13

    .line 337
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 338
    .line 339
    .line 340
    invoke-static {v13}, Lokio/ByteString$Companion;->of$default([B)Lokio/ByteString;

    .line 341
    .line 342
    .line 343
    move-result-object v13

    .line 344
    new-instance v3, Lkotlin/Pair;

    .line 345
    .line 346
    invoke-direct {v3, v14, v13}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 347
    .line 348
    .line 349
    goto :goto_3

    .line 350
    :cond_1
    sget-object v3, Lokhttp3/tls/internal/der/CertificateAdapters;->generalNameDnsName:Lokhttp3/tls/internal/der/BasicDerAdapter;

    .line 351
    .line 352
    new-instance v14, Lkotlin/Pair;

    .line 353
    .line 354
    invoke-direct {v14, v3, v13}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 355
    .line 356
    .line 357
    move-object v3, v14

    .line 358
    :goto_3
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 359
    .line 360
    .line 361
    goto :goto_2

    .line 362
    :cond_2
    new-instance v0, Lokhttp3/tls/internal/der/Extension;

    .line 363
    .line 364
    const-string v3, "2.5.29.17"

    .line 365
    .line 366
    invoke-direct {v0, v3, v2, v9}, Lokhttp3/tls/internal/der/Extension;-><init>(Ljava/lang/String;ZLjava/lang/Object;)V

    .line 367
    .line 368
    .line 369
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 370
    .line 371
    .line 372
    :cond_3
    move-object/from16 v18, v8

    .line 373
    .line 374
    const-wide/16 v8, 0x2

    .line 375
    .line 376
    const/16 v16, 0x0

    .line 377
    .line 378
    const/16 v17, 0x0

    .line 379
    .line 380
    move-object v14, v12

    .line 381
    move-object v13, v4

    .line 382
    invoke-direct/range {v7 .. v18}, Lokhttp3/tls/internal/der/TbsCertificate;-><init>(JLjava/math/BigInteger;Lokhttp3/tls/internal/der/AlgorithmIdentifier;Ljava/util/List;Lokhttp3/tls/internal/der/Validity;Ljava/util/List;Lokhttp3/tls/internal/der/SubjectPublicKeyInfo;Lokhttp3/tls/internal/der/BitString;Lokhttp3/tls/internal/der/BitString;Ljava/util/List;)V

    .line 383
    .line 384
    .line 385
    iget-object v0, v11, Lokhttp3/tls/internal/der/AlgorithmIdentifier;->algorithm:Ljava/lang/String;

    .line 386
    .line 387
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 388
    .line 389
    .line 390
    move-result v1

    .line 391
    if-eqz v1, :cond_4

    .line 392
    .line 393
    const-string v0, "SHA256WithRSA"

    .line 394
    .line 395
    goto :goto_4

    .line 396
    :cond_4
    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 397
    .line 398
    .line 399
    move-result v1

    .line 400
    if-eqz v1, :cond_5

    .line 401
    .line 402
    const-string v0, "SHA256withECDSA"

    .line 403
    .line 404
    :goto_4
    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    .line 405
    .line 406
    .line 407
    move-result-object v0

    .line 408
    invoke-virtual {v5}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    .line 409
    .line 410
    .line 411
    move-result-object v1

    .line 412
    invoke-virtual {v0, v1}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 413
    .line 414
    .line 415
    sget-object v1, Lokhttp3/tls/internal/der/CertificateAdapters;->tbsCertificate:Lokhttp3/tls/internal/der/BasicDerAdapter;

    .line 416
    .line 417
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 418
    .line 419
    .line 420
    invoke-static {v1, v7}, Lcoil3/size/ViewSizeResolver$-CC;->$default$toDer(Lokhttp3/tls/internal/der/DerAdapter;Ljava/lang/Object;)Lokio/ByteString;

    .line 421
    .line 422
    .line 423
    move-result-object v1

    .line 424
    invoke-virtual {v1}, Lokio/ByteString;->toByteArray()[B

    .line 425
    .line 426
    .line 427
    move-result-object v1

    .line 428
    invoke-virtual {v0, v1}, Ljava/security/Signature;->update([B)V

    .line 429
    .line 430
    .line 431
    sget-object v1, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    .line 432
    .line 433
    invoke-virtual {v0}, Ljava/security/Signature;->sign()[B

    .line 434
    .line 435
    .line 436
    move-result-object v0

    .line 437
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 438
    .line 439
    .line 440
    invoke-static {v0}, Lokio/ByteString$Companion;->of$default([B)Lokio/ByteString;

    .line 441
    .line 442
    .line 443
    move-result-object v0

    .line 444
    new-instance v1, Lokhttp3/tls/internal/der/Certificate;

    .line 445
    .line 446
    new-instance v2, Lokhttp3/tls/internal/der/BitString;

    .line 447
    .line 448
    const/4 v3, 0x0

    .line 449
    invoke-direct {v2, v0, v3}, Lokhttp3/tls/internal/der/BitString;-><init>(Lokio/ByteString;I)V

    .line 450
    .line 451
    .line 452
    invoke-direct {v1, v7, v11, v2}, Lokhttp3/tls/internal/der/Certificate;-><init>(Lokhttp3/tls/internal/der/TbsCertificate;Lokhttp3/tls/internal/der/AlgorithmIdentifier;Lokhttp3/tls/internal/der/BitString;)V

    .line 453
    .line 454
    .line 455
    new-instance v0, Lokhttp3/tls/HeldCertificate;

    .line 456
    .line 457
    const-string v2, "failed to decode certificate"

    .line 458
    .line 459
    sget-object v3, Lokhttp3/tls/internal/der/CertificateAdapters;->certificate:Lokhttp3/tls/internal/der/BasicDerAdapter;

    .line 460
    .line 461
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 462
    .line 463
    .line 464
    invoke-static {v3, v1}, Lcoil3/size/ViewSizeResolver$-CC;->$default$toDer(Lokhttp3/tls/internal/der/DerAdapter;Ljava/lang/Object;)Lokio/ByteString;

    .line 465
    .line 466
    .line 467
    move-result-object v1

    .line 468
    :try_start_0
    const-string v3, "X.509"

    .line 469
    .line 470
    invoke-static {v3}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    .line 471
    .line 472
    .line 473
    move-result-object v3

    .line 474
    new-instance v4, Lokio/Buffer;

    .line 475
    .line 476
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 477
    .line 478
    .line 479
    invoke-virtual {v4, v1}, Lokio/Buffer;->write(Lokio/ByteString;)V

    .line 480
    .line 481
    .line 482
    new-instance v1, Lokio/Buffer$inputStream$1;

    .line 483
    .line 484
    const/4 v6, 0x0

    .line 485
    invoke-direct {v1, v4, v6}, Lokio/Buffer$inputStream$1;-><init>(Lokio/BufferedSource;I)V

    .line 486
    .line 487
    .line 488
    invoke-virtual {v3, v1}, Ljava/security/cert/CertificateFactory;->generateCertificates(Ljava/io/InputStream;)Ljava/util/Collection;

    .line 489
    .line 490
    .line 491
    move-result-object v1

    .line 492
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 493
    .line 494
    .line 495
    check-cast v1, Ljava/lang/Iterable;

    .line 496
    .line 497
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->single(Ljava/lang/Iterable;)Ljava/lang/Object;

    .line 498
    .line 499
    .line 500
    move-result-object v1

    .line 501
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 502
    .line 503
    .line 504
    check-cast v1, Ljava/security/cert/X509Certificate;
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 505
    .line 506
    invoke-direct {v0, v5, v1}, Lokhttp3/tls/HeldCertificate;-><init>(Ljava/security/KeyPair;Ljava/security/cert/X509Certificate;)V

    .line 507
    .line 508
    .line 509
    new-instance v2, Lokio/internal/DefaultSocket;

    .line 510
    .line 511
    const/4 v3, 0x5

    .line 512
    invoke-direct {v2, v3}, Lokio/internal/DefaultSocket;-><init>(I)V

    .line 513
    .line 514
    .line 515
    const/4 v3, 0x0

    .line 516
    new-array v4, v3, [Ljava/security/cert/X509Certificate;

    .line 517
    .line 518
    iput-object v0, v2, Lokio/internal/DefaultSocket;->socket:Ljava/lang/Object;

    .line 519
    .line 520
    invoke-static {v4, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 521
    .line 522
    .line 523
    move-result-object v0

    .line 524
    check-cast v0, [Ljava/security/cert/X509Certificate;

    .line 525
    .line 526
    iput-object v0, v2, Lokio/internal/DefaultSocket;->closeBits:Ljava/lang/Object;

    .line 527
    .line 528
    iget-object v0, v2, Lokio/internal/DefaultSocket;->source:Ljava/lang/Object;

    .line 529
    .line 530
    check-cast v0, Ljava/util/ArrayList;

    .line 531
    .line 532
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 533
    .line 534
    .line 535
    invoke-virtual {v2}, Lokio/internal/DefaultSocket;->build()Lokhttp3/FormBody$Builder;

    .line 536
    .line 537
    .line 538
    move-result-object v0

    .line 539
    return-object v0

    .line 540
    :catch_0
    move-exception v0

    .line 541
    goto :goto_5

    .line 542
    :catch_1
    move-exception v0

    .line 543
    goto :goto_6

    .line 544
    :catch_2
    move-exception v0

    .line 545
    goto :goto_7

    .line 546
    :goto_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 547
    .line 548
    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 549
    .line 550
    .line 551
    throw v1

    .line 552
    :goto_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 553
    .line 554
    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 555
    .line 556
    .line 557
    throw v1

    .line 558
    :goto_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 559
    .line 560
    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 561
    .line 562
    .line 563
    throw v1

    .line 564
    :cond_5
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 565
    .line 566
    const-string/jumbo v2, "unexpected signature algorithm: "

    .line 567
    .line 568
    .line 569
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 570
    .line 571
    .line 572
    move-result-object v0

    .line 573
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 574
    .line 575
    .line 576
    move-result-object v0

    .line 577
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 578
    .line 579
    .line 580
    throw v1

    .line 581
    :pswitch_d
    sget-object v0, Lkotlinx/serialization/json/JsonArraySerializer;->descriptor:Lkotlinx/serialization/json/JsonArraySerializer$JsonArrayDescriptor;

    .line 582
    .line 583
    return-object v0

    .line 584
    :pswitch_e
    sget-object v0, Lkotlinx/serialization/json/JsonObjectSerializer;->descriptor:Lkotlinx/serialization/json/JsonObjectSerializer$JsonObjectDescriptor;

    .line 585
    .line 586
    return-object v0

    .line 587
    :pswitch_f
    sget-object v0, Lkotlinx/serialization/json/JsonLiteralSerializer;->descriptor:Lkotlinx/serialization/internal/PrimitiveSerialDescriptor;

    .line 588
    .line 589
    return-object v0

    .line 590
    :pswitch_10
    sget-object v0, Lkotlinx/serialization/json/JsonNullSerializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptorImpl;

    .line 591
    .line 592
    return-object v0

    .line 593
    :pswitch_11
    sget-object v0, Lkotlinx/serialization/json/JsonPrimitiveSerializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptorImpl;

    .line 594
    .line 595
    return-object v0

    .line 596
    :pswitch_12
    new-instance v0, Landroid/os/Handler;

    .line 597
    .line 598
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 599
    .line 600
    .line 601
    move-result-object v1

    .line 602
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 603
    .line 604
    .line 605
    return-object v0

    .line 606
    :pswitch_13
    sget-object v0, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 607
    .line 608
    sget-object v0, Lkotlinx/coroutines/internal/MainDispatcherLoader;->dispatcher:Lkotlinx/coroutines/android/HandlerContext;

    .line 609
    .line 610
    invoke-static {v0}, Lkotlinx/coroutines/AwaitKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    .line 611
    .line 612
    .line 613
    move-result-object v0

    .line 614
    return-object v0

    .line 615
    :pswitch_14
    const/4 v0, 0x7

    .line 616
    const/4 v3, 0x0

    .line 617
    invoke-static {v3, v0, v1}, Landroidx/compose/ui/unit/DpKt;->Channel$default(IILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/channels/BufferedChannel;

    .line 618
    .line 619
    .line 620
    move-result-object v0

    .line 621
    return-object v0

    .line 622
    :pswitch_15
    new-instance v0, Landroid/os/Handler;

    .line 623
    .line 624
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 625
    .line 626
    .line 627
    move-result-object v1

    .line 628
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 629
    .line 630
    .line 631
    return-object v0

    .line 632
    :pswitch_16
    :try_start_1
    new-instance v0, Lcoil3/gif/internal/GifDecoderServiceLoaderTarget;

    .line 633
    .line 634
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 635
    .line 636
    .line 637
    new-instance v1, Lcoil3/svg/internal/SvgDecoderServiceLoaderTarget;

    .line 638
    .line 639
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 640
    .line 641
    .line 642
    const/4 v3, 0x2

    .line 643
    new-array v3, v3, [Lcoil3/util/DecoderServiceLoaderTarget;

    .line 644
    .line 645
    const/4 v6, 0x0

    .line 646
    aput-object v0, v3, v6

    .line 647
    .line 648
    aput-object v1, v3, v2

    .line 649
    .line 650
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 651
    .line 652
    .line 653
    move-result-object v0

    .line 654
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 655
    .line 656
    .line 657
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 658
    invoke-static {v0}, Lkotlin/sequences/SequencesKt;->asSequence(Ljava/util/Iterator;)Lkotlin/sequences/Sequence;

    .line 659
    .line 660
    .line 661
    move-result-object v0

    .line 662
    invoke-static {v0}, Lkotlin/sequences/SequencesKt;->toList(Lkotlin/sequences/Sequence;)Ljava/util/List;

    .line 663
    .line 664
    .line 665
    move-result-object v0

    .line 666
    invoke-static {v0}, Lkotlin/ExceptionsKt;->toImmutableList(Ljava/util/List;)Ljava/util/List;

    .line 667
    .line 668
    .line 669
    move-result-object v0

    .line 670
    return-object v0

    .line 671
    :catchall_0
    move-exception v0

    .line 672
    new-instance v1, Ljava/util/ServiceConfigurationError;

    .line 673
    .line 674
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 675
    .line 676
    .line 677
    move-result-object v2

    .line 678
    invoke-direct {v1, v2, v0}, Ljava/util/ServiceConfigurationError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 679
    .line 680
    .line 681
    throw v1

    .line 682
    :pswitch_17
    :try_start_2
    new-instance v0, Lcoil3/network/okhttp/internal/OkHttpNetworkFetcherServiceLoaderTarget;

    .line 683
    .line 684
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 685
    .line 686
    .line 687
    new-array v1, v2, [Lcoil3/network/okhttp/internal/OkHttpNetworkFetcherServiceLoaderTarget;

    .line 688
    .line 689
    const/4 v3, 0x0

    .line 690
    aput-object v0, v1, v3

    .line 691
    .line 692
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 693
    .line 694
    .line 695
    move-result-object v0

    .line 696
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 697
    .line 698
    .line 699
    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 700
    invoke-static {v0}, Lkotlin/sequences/SequencesKt;->asSequence(Ljava/util/Iterator;)Lkotlin/sequences/Sequence;

    .line 701
    .line 702
    .line 703
    move-result-object v0

    .line 704
    invoke-static {v0}, Lkotlin/sequences/SequencesKt;->toList(Lkotlin/sequences/Sequence;)Ljava/util/List;

    .line 705
    .line 706
    .line 707
    move-result-object v0

    .line 708
    invoke-static {v0}, Lkotlin/ExceptionsKt;->toImmutableList(Ljava/util/List;)Ljava/util/List;

    .line 709
    .line 710
    .line 711
    move-result-object v0

    .line 712
    return-object v0

    .line 713
    :catchall_1
    move-exception v0

    .line 714
    new-instance v1, Ljava/util/ServiceConfigurationError;

    .line 715
    .line 716
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 717
    .line 718
    .line 719
    move-result-object v2

    .line 720
    invoke-direct {v1, v2, v0}, Ljava/util/ServiceConfigurationError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 721
    .line 722
    .line 723
    throw v1

    .line 724
    :pswitch_18
    new-instance v0, Lokhttp3/OkHttpClient;

    .line 725
    .line 726
    new-instance v1, Lokhttp3/OkHttpClient$Builder;

    .line 727
    .line 728
    invoke-direct {v1}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 729
    .line 730
    .line 731
    invoke-direct {v0, v1}, Lokhttp3/OkHttpClient;-><init>(Lokhttp3/OkHttpClient$Builder;)V

    .line 732
    .line 733
    .line 734
    new-instance v1, Lcoil3/network/okhttp/internal/CallFactoryNetworkClient;

    .line 735
    .line 736
    invoke-direct {v1, v0}, Lcoil3/network/okhttp/internal/CallFactoryNetworkClient;-><init>(Lokhttp3/OkHttpClient;)V

    .line 737
    .line 738
    .line 739
    return-object v1

    .line 740
    :pswitch_19
    sget-object v0, Lorg/wikipedia/dataclient/okhttp/OkHttpConnectionFactory;->client:Lokhttp3/OkHttpClient;

    .line 741
    .line 742
    new-instance v1, Lcoil3/network/okhttp/internal/CallFactoryNetworkClient;

    .line 743
    .line 744
    invoke-direct {v1, v0}, Lcoil3/network/okhttp/internal/CallFactoryNetworkClient;-><init>(Lokhttp3/OkHttpClient;)V

    .line 745
    .line 746
    .line 747
    return-object v1

    .line 748
    :pswitch_1a
    sget-object v0, Lcoil3/network/UncoordinatedConcurrentRequestStrategy;->UNCOORDINATED:Lcoil3/network/UncoordinatedConcurrentRequestStrategy;

    .line 749
    .line 750
    return-object v0

    .line 751
    :pswitch_1b
    sget-object v0, Lcoil3/network/CacheStrategy;->DEFAULT:Lcoil3/network/internal/DefaultCacheStrategy;

    .line 752
    .line 753
    return-object v0

    .line 754
    :pswitch_1c
    sget-object v0, Lokio/FileSystem;->SYSTEM:Lokio/JvmSystemFileSystem;

    .line 755
    .line 756
    sget-object v1, Lokio/FileSystem;->SYSTEM_TEMPORARY_DIRECTORY:Lokio/Path;

    .line 757
    .line 758
    const-string v2, "coil3_disk_cache"

    .line 759
    .line 760
    invoke-virtual {v1, v2}, Lokio/Path;->resolve(Ljava/lang/String;)Lokio/Path;

    .line 761
    .line 762
    .line 763
    move-result-object v1

    .line 764
    const-wide/32 v4, 0xa00000

    .line 765
    .line 766
    .line 767
    :try_start_3
    invoke-virtual {v1}, Lokio/Path;->toFile()Ljava/io/File;

    .line 768
    .line 769
    .line 770
    move-result-object v2

    .line 771
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    .line 772
    .line 773
    .line 774
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 775
    .line 776
    .line 777
    move-result-object v2

    .line 778
    new-instance v3, Landroid/os/StatFs;

    .line 779
    .line 780
    invoke-direct {v3, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 781
    .line 782
    .line 783
    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockCountLong()J

    .line 784
    .line 785
    .line 786
    move-result-wide v6

    .line 787
    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSizeLong()J

    .line 788
    .line 789
    .line 790
    move-result-wide v2

    .line 791
    mul-long/2addr v2, v6

    .line 792
    long-to-double v2, v2

    .line 793
    const-wide v6, 0x3f947ae147ae147bL    # 0.02

    .line 794
    .line 795
    .line 796
    .line 797
    .line 798
    mul-double/2addr v6, v2

    .line 799
    double-to-long v2, v6

    .line 800
    const-wide/32 v6, 0xfa00000

    .line 801
    .line 802
    .line 803
    invoke-static/range {v2 .. v7}, Lkotlin/text/RegexKt;->coerceIn(JJJ)J

    .line 804
    .line 805
    .line 806
    move-result-wide v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 807
    :catch_3
    new-instance v2, Lcoil3/disk/RealDiskCache;

    .line 808
    .line 809
    invoke-direct {v2, v4, v5, v0, v1}, Lcoil3/disk/RealDiskCache;-><init>(JLokio/FileSystem;Lokio/Path;)V

    .line 810
    .line 811
    .line 812
    return-object v2

    .line 813
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
