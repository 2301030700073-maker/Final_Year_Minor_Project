.class public abstract Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;
.super Lkotlin/UnsignedKt;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final _concrete:Ljava/util/HashMap;

.field public static final _concreteLazy:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/util/HashMap;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 9
    .line 10
    .line 11
    const-class v2, Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    new-instance v3, Lcom/fasterxml/jackson/databind/ser/std/StringSerializer;

    .line 18
    .line 19
    const/4 v4, 0x0

    .line 20
    invoke-direct {v3, v4}, Lcom/fasterxml/jackson/databind/ser/std/StringSerializer;-><init>(I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    sget-object v2, Lcom/fasterxml/jackson/databind/ser/std/ToStringSerializer;->instance:Lcom/fasterxml/jackson/databind/ser/std/ToStringSerializer;

    .line 27
    .line 28
    const-class v3, Ljava/lang/StringBuffer;

    .line 29
    .line 30
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    const-class v3, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    const-class v3, Ljava/lang/Character;

    .line 47
    .line 48
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    sget-object v3, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    .line 56
    .line 57
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    const-class v2, Ljava/lang/Integer;

    .line 65
    .line 66
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    new-instance v5, Lcom/fasterxml/jackson/databind/ser/std/NumberSerializers$LongSerializer;

    .line 71
    .line 72
    const/4 v6, 0x5

    .line 73
    invoke-direct {v5, v6, v2}, Lcom/fasterxml/jackson/databind/ser/std/NumberSerializers$LongSerializer;-><init>(ILjava/lang/Class;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 80
    .line 81
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    new-instance v5, Lcom/fasterxml/jackson/databind/ser/std/NumberSerializers$LongSerializer;

    .line 86
    .line 87
    invoke-direct {v5, v6, v2}, Lcom/fasterxml/jackson/databind/ser/std/NumberSerializers$LongSerializer;-><init>(ILjava/lang/Class;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    const-class v2, Ljava/lang/Long;

    .line 94
    .line 95
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    new-instance v5, Lcom/fasterxml/jackson/databind/ser/std/NumberSerializers$LongSerializer;

    .line 100
    .line 101
    invoke-direct {v5, v4, v2}, Lcom/fasterxml/jackson/databind/ser/std/NumberSerializers$LongSerializer;-><init>(ILjava/lang/Class;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v1, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 108
    .line 109
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    new-instance v5, Lcom/fasterxml/jackson/databind/ser/std/NumberSerializers$LongSerializer;

    .line 114
    .line 115
    invoke-direct {v5, v4, v2}, Lcom/fasterxml/jackson/databind/ser/std/NumberSerializers$LongSerializer;-><init>(ILjava/lang/Class;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v1, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    const-class v2, Ljava/lang/Byte;

    .line 122
    .line 123
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    sget-object v3, Lcom/fasterxml/jackson/databind/ser/std/NumberSerializers$LongSerializer;->instance$1:Lcom/fasterxml/jackson/databind/ser/std/NumberSerializers$LongSerializer;

    .line 128
    .line 129
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 133
    .line 134
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    const-class v2, Ljava/lang/Short;

    .line 142
    .line 143
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    sget-object v3, Lcom/fasterxml/jackson/databind/ser/std/NumberSerializers$LongSerializer;->instance$2:Lcom/fasterxml/jackson/databind/ser/std/NumberSerializers$LongSerializer;

    .line 148
    .line 149
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    .line 153
    .line 154
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v2

    .line 158
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    const-class v2, Ljava/lang/Double;

    .line 162
    .line 163
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v3

    .line 167
    new-instance v5, Lcom/fasterxml/jackson/databind/ser/std/NumberSerializers$LongSerializer;

    .line 168
    .line 169
    const/4 v6, 0x4

    .line 170
    invoke-direct {v5, v6, v2}, Lcom/fasterxml/jackson/databind/ser/std/NumberSerializers$LongSerializer;-><init>(ILjava/lang/Class;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v1, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 177
    .line 178
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v3

    .line 182
    new-instance v5, Lcom/fasterxml/jackson/databind/ser/std/NumberSerializers$LongSerializer;

    .line 183
    .line 184
    invoke-direct {v5, v6, v2}, Lcom/fasterxml/jackson/databind/ser/std/NumberSerializers$LongSerializer;-><init>(ILjava/lang/Class;)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v1, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    const-class v2, Ljava/lang/Float;

    .line 191
    .line 192
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v2

    .line 196
    sget-object v3, Lcom/fasterxml/jackson/databind/ser/std/NumberSerializers$LongSerializer;->instance:Lcom/fasterxml/jackson/databind/ser/std/NumberSerializers$LongSerializer;

    .line 197
    .line 198
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 202
    .line 203
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v2

    .line 207
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 211
    .line 212
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v2

    .line 216
    new-instance v3, Lcom/fasterxml/jackson/databind/ser/std/BooleanSerializer;

    .line 217
    .line 218
    const/4 v5, 0x1

    .line 219
    invoke-direct {v3, v4, v5}, Lcom/fasterxml/jackson/databind/ser/std/BooleanSerializer;-><init>(IZ)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    const-class v2, Ljava/lang/Boolean;

    .line 226
    .line 227
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v2

    .line 231
    new-instance v3, Lcom/fasterxml/jackson/databind/ser/std/BooleanSerializer;

    .line 232
    .line 233
    invoke-direct {v3, v4, v4}, Lcom/fasterxml/jackson/databind/ser/std/BooleanSerializer;-><init>(IZ)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    const-class v2, Ljava/math/BigInteger;

    .line 240
    .line 241
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v3

    .line 245
    new-instance v5, Lcom/fasterxml/jackson/databind/ser/std/NumberSerializer;

    .line 246
    .line 247
    invoke-direct {v5, v2}, Lcom/fasterxml/jackson/databind/ser/std/StdScalarSerializer;-><init>(Ljava/lang/Class;)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {v1, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    const-class v2, Ljava/math/BigDecimal;

    .line 254
    .line 255
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v3

    .line 259
    new-instance v5, Lcom/fasterxml/jackson/databind/ser/std/NumberSerializer;

    .line 260
    .line 261
    invoke-direct {v5, v2}, Lcom/fasterxml/jackson/databind/ser/std/StdScalarSerializer;-><init>(Ljava/lang/Class;)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {v1, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    .line 266
    .line 267
    const-class v2, Ljava/util/Calendar;

    .line 268
    .line 269
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v2

    .line 273
    sget-object v3, Lcom/fasterxml/jackson/databind/ser/std/CalendarSerializer;->instance:Lcom/fasterxml/jackson/databind/ser/std/CalendarSerializer;

    .line 274
    .line 275
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    .line 277
    .line 278
    const-class v2, Ljava/util/Date;

    .line 279
    .line 280
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v2

    .line 284
    sget-object v3, Lcom/fasterxml/jackson/databind/ser/std/DateSerializer;->instance:Lcom/fasterxml/jackson/databind/ser/std/DateSerializer;

    .line 285
    .line 286
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    .line 288
    .line 289
    new-instance v2, Ljava/util/HashMap;

    .line 290
    .line 291
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 292
    .line 293
    .line 294
    new-instance v3, Lcom/fasterxml/jackson/databind/ser/std/ToStringSerializer;

    .line 295
    .line 296
    const-class v5, Ljava/net/URL;

    .line 297
    .line 298
    invoke-direct {v3, v4, v5}, Lcom/fasterxml/jackson/databind/ser/std/ToStringSerializer;-><init>(ILjava/lang/Class;)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {v2, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    .line 303
    .line 304
    new-instance v3, Lcom/fasterxml/jackson/databind/ser/std/ToStringSerializer;

    .line 305
    .line 306
    const-class v5, Ljava/net/URI;

    .line 307
    .line 308
    invoke-direct {v3, v4, v5}, Lcom/fasterxml/jackson/databind/ser/std/ToStringSerializer;-><init>(ILjava/lang/Class;)V

    .line 309
    .line 310
    .line 311
    invoke-virtual {v2, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    .line 313
    .line 314
    new-instance v3, Lcom/fasterxml/jackson/databind/ser/std/ToStringSerializer;

    .line 315
    .line 316
    const-class v5, Ljava/util/Currency;

    .line 317
    .line 318
    invoke-direct {v3, v4, v5}, Lcom/fasterxml/jackson/databind/ser/std/ToStringSerializer;-><init>(ILjava/lang/Class;)V

    .line 319
    .line 320
    .line 321
    invoke-virtual {v2, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    .line 323
    .line 324
    new-instance v3, Lcom/fasterxml/jackson/databind/ser/std/UUIDSerializer;

    .line 325
    .line 326
    const/4 v5, 0x0

    .line 327
    invoke-direct {v3, v5}, Lcom/fasterxml/jackson/databind/ser/std/UUIDSerializer;-><init>(Ljava/lang/Boolean;)V

    .line 328
    .line 329
    .line 330
    const-class v5, Ljava/util/UUID;

    .line 331
    .line 332
    invoke-virtual {v2, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    .line 334
    .line 335
    new-instance v3, Lcom/fasterxml/jackson/databind/ser/std/ToStringSerializer;

    .line 336
    .line 337
    const-class v5, Ljava/util/regex/Pattern;

    .line 338
    .line 339
    invoke-direct {v3, v4, v5}, Lcom/fasterxml/jackson/databind/ser/std/ToStringSerializer;-><init>(ILjava/lang/Class;)V

    .line 340
    .line 341
    .line 342
    invoke-virtual {v2, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    .line 344
    .line 345
    new-instance v3, Lcom/fasterxml/jackson/databind/ser/std/ToStringSerializer;

    .line 346
    .line 347
    const-class v5, Ljava/util/Locale;

    .line 348
    .line 349
    invoke-direct {v3, v4, v5}, Lcom/fasterxml/jackson/databind/ser/std/ToStringSerializer;-><init>(ILjava/lang/Class;)V

    .line 350
    .line 351
    .line 352
    invoke-virtual {v2, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    .line 354
    .line 355
    const-class v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 356
    .line 357
    const-class v4, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers$AtomicBooleanSerializer;

    .line 358
    .line 359
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    .line 361
    .line 362
    const-class v3, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 363
    .line 364
    const-class v4, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers$AtomicIntegerSerializer;

    .line 365
    .line 366
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    .line 368
    .line 369
    const-class v3, Ljava/util/concurrent/atomic/AtomicLong;

    .line 370
    .line 371
    const-class v4, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers$AtomicLongSerializer;

    .line 372
    .line 373
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    .line 375
    .line 376
    const-class v3, Ljava/io/File;

    .line 377
    .line 378
    const-class v4, Lcom/fasterxml/jackson/databind/ser/std/FileSerializer;

    .line 379
    .line 380
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    .line 382
    .line 383
    const-class v3, Ljava/lang/Class;

    .line 384
    .line 385
    const-class v4, Lcom/fasterxml/jackson/databind/ser/std/ClassSerializer;

    .line 386
    .line 387
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    .line 389
    .line 390
    sget-object v3, Lcom/fasterxml/jackson/databind/ser/std/RawSerializer;->instance:Lcom/fasterxml/jackson/databind/ser/std/RawSerializer;

    .line 391
    .line 392
    const-class v4, Ljava/lang/Void;

    .line 393
    .line 394
    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    .line 396
    .line 397
    sget-object v4, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    .line 398
    .line 399
    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    .line 401
    .line 402
    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 403
    .line 404
    .line 405
    move-result-object v2

    .line 406
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 407
    .line 408
    .line 409
    move-result-object v2

    .line 410
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 411
    .line 412
    .line 413
    move-result v3

    .line 414
    if-eqz v3, :cond_1

    .line 415
    .line 416
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 417
    .line 418
    .line 419
    move-result-object v3

    .line 420
    check-cast v3, Ljava/util/Map$Entry;

    .line 421
    .line 422
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 423
    .line 424
    .line 425
    move-result-object v4

    .line 426
    instance-of v5, v4, Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 427
    .line 428
    if-eqz v5, :cond_0

    .line 429
    .line 430
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 431
    .line 432
    .line 433
    move-result-object v3

    .line 434
    check-cast v3, Ljava/lang/Class;

    .line 435
    .line 436
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 437
    .line 438
    .line 439
    move-result-object v3

    .line 440
    check-cast v4, Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 441
    .line 442
    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    .line 444
    .line 445
    goto :goto_0

    .line 446
    :cond_0
    check-cast v4, Ljava/lang/Class;

    .line 447
    .line 448
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 449
    .line 450
    .line 451
    move-result-object v3

    .line 452
    check-cast v3, Ljava/lang/Class;

    .line 453
    .line 454
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 455
    .line 456
    .line 457
    move-result-object v3

    .line 458
    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    .line 460
    .line 461
    goto :goto_0

    .line 462
    :cond_1
    const-class v2, Lcom/fasterxml/jackson/databind/util/TokenBuffer;

    .line 463
    .line 464
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 465
    .line 466
    .line 467
    move-result-object v2

    .line 468
    const-class v3, Lcom/fasterxml/jackson/databind/ser/std/StdScalarSerializer;

    .line 469
    .line 470
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    .line 472
    .line 473
    sput-object v1, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->_concrete:Ljava/util/HashMap;

    .line 474
    .line 475
    sput-object v0, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->_concreteLazy:Ljava/util/HashMap;

    .line 476
    .line 477
    return-void
.end method

.method public static _findInclusionWithContent(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;Lcom/fasterxml/jackson/databind/type/TypeBase;Ljava/lang/Class;)Lcom/fasterxml/jackson/annotation/JsonInclude$Value;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fasterxml/jackson/databind/SerializerProvider;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->_configOverrides:Lkotlin/InitializedLazyImpl;

    .line 4
    .line 5
    iget-object p0, p0, Lkotlin/InitializedLazyImpl;->value:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    .line 8
    .line 9
    iget-object p3, p1, Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;

    .line 10
    .line 11
    if-eqz p3, :cond_1

    .line 12
    .line 13
    iget-object p1, p1, Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;->_classInfo:Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

    .line 14
    .line 15
    invoke-virtual {p3, p1}, Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;->findPropertyInclusion(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    if-nez p0, :cond_0

    .line 22
    .line 23
    move-object p0, p1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->withOverrides(Lcom/fasterxml/jackson/annotation/JsonInclude$Value;)Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    :cond_1
    :goto_0
    iget-object p1, p2, Lcom/fasterxml/jackson/databind/type/TypeBase;->_class:Ljava/lang/Class;

    .line 30
    .line 31
    return-object p0
.end method

.method public static findSerializerFromAnnotation(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/databind/JsonSerializer;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/SerializerProvider;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;->findSerializer(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    return-object p0

    .line 15
    :cond_0
    invoke-virtual {p0, p1, v1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->serializerInstance(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;->findSerializationConverter(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    if-nez p1, :cond_1

    .line 28
    .line 29
    return-object v1

    .line 30
    :cond_1
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->converterInstance(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    return-object v1
.end method

.method public static usesStaticTyping(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object p1, p1, Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;->_classInfo:Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;->findSerializationTyping(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/databind/annotation/JsonSerialize$Typing;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    if-eqz p1, :cond_1

    .line 12
    .line 13
    sget-object v0, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize$Typing;->DEFAULT_TYPING:Lcom/fasterxml/jackson/databind/annotation/JsonSerialize$Typing;

    .line 14
    .line 15
    if-eq p1, v0, :cond_1

    .line 16
    .line 17
    sget-object p0, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize$Typing;->STATIC:Lcom/fasterxml/jackson/databind/annotation/JsonSerialize$Typing;

    .line 18
    .line 19
    if-ne p1, p0, :cond_0

    .line 20
    .line 21
    const/4 p0, 0x1

    .line 22
    return p0

    .line 23
    :cond_0
    const/4 p0, 0x0

    .line 24
    return p0

    .line 25
    :cond_1
    sget-object p1, Lcom/fasterxml/jackson/databind/MapperFeature;->USE_STATIC_TYPING:Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 26
    .line 27
    iget-wide v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->_mapperFeatures:J

    .line 28
    .line 29
    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/databind/MapperFeature;->enabledIn(J)Z

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    return p0
.end method


# virtual methods
.method public final createKeySerializer(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/type/TypeBase;)Lcom/fasterxml/jackson/databind/JsonSerializer;
    .locals 10

    .line 1
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/SerializerProvider;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    .line 2
    .line 3
    invoke-virtual {v0, p2}, Lcom/fasterxml/jackson/databind/SerializationConfig;->introspect(Lcom/fasterxml/jackson/databind/type/TypeBase;)Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object p2, p2, Lcom/fasterxml/jackson/databind/type/TypeBase;->_class:Ljava/lang/Class;

    .line 8
    .line 9
    iget-object v2, v1, Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;->_classInfo:Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    invoke-virtual {v3, v2}, Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;->findKeySerializer(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    const/4 v4, 0x0

    .line 20
    if-eqz v3, :cond_0

    .line 21
    .line 22
    invoke-virtual {p1, v2, v3}, Lcom/fasterxml/jackson/databind/SerializerProvider;->serializerInstance(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move-object v2, v4

    .line 28
    :goto_0
    if-nez v2, :cond_20

    .line 29
    .line 30
    const/4 v2, 0x2

    .line 31
    const/4 v3, 0x1

    .line 32
    const/16 v5, 0x8

    .line 33
    .line 34
    if-eqz p2, :cond_15

    .line 35
    .line 36
    const-class v6, Ljava/lang/Object;

    .line 37
    .line 38
    if-ne p2, v6, :cond_1

    .line 39
    .line 40
    goto/16 :goto_4

    .line 41
    .line 42
    :cond_1
    const-class v6, Ljava/lang/String;

    .line 43
    .line 44
    if-ne p2, v6, :cond_2

    .line 45
    .line 46
    sget-object v6, Lcom/fasterxml/jackson/databind/ser/std/StdKeySerializers;->DEFAULT_STRING_SERIALIZER:Lcom/fasterxml/jackson/databind/ser/std/RawSerializer;

    .line 47
    .line 48
    :goto_1
    move-object v7, v6

    .line 49
    goto/16 :goto_5

    .line 50
    .line 51
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Class;->isPrimitive()Z

    .line 52
    .line 53
    .line 54
    move-result v6

    .line 55
    const-class v7, Ljava/lang/Long;

    .line 56
    .line 57
    const-class v8, Ljava/lang/Integer;

    .line 58
    .line 59
    if-eqz v6, :cond_b

    .line 60
    .line 61
    sget-object v6, Lcom/fasterxml/jackson/databind/util/ClassUtil;->NO_ANNOTATIONS:[Ljava/lang/annotation/Annotation;

    .line 62
    .line 63
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 64
    .line 65
    if-ne p2, v6, :cond_3

    .line 66
    .line 67
    move-object v6, v8

    .line 68
    goto :goto_2

    .line 69
    :cond_3
    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 70
    .line 71
    if-ne p2, v6, :cond_4

    .line 72
    .line 73
    move-object v6, v7

    .line 74
    goto :goto_2

    .line 75
    :cond_4
    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 76
    .line 77
    if-ne p2, v6, :cond_5

    .line 78
    .line 79
    const-class v6, Ljava/lang/Boolean;

    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_5
    sget-object v6, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 83
    .line 84
    if-ne p2, v6, :cond_6

    .line 85
    .line 86
    const-class v6, Ljava/lang/Double;

    .line 87
    .line 88
    goto :goto_2

    .line 89
    :cond_6
    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 90
    .line 91
    if-ne p2, v6, :cond_7

    .line 92
    .line 93
    const-class v6, Ljava/lang/Float;

    .line 94
    .line 95
    goto :goto_2

    .line 96
    :cond_7
    sget-object v6, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 97
    .line 98
    if-ne p2, v6, :cond_8

    .line 99
    .line 100
    const-class v6, Ljava/lang/Byte;

    .line 101
    .line 102
    goto :goto_2

    .line 103
    :cond_8
    sget-object v6, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    .line 104
    .line 105
    if-ne p2, v6, :cond_9

    .line 106
    .line 107
    const-class v6, Ljava/lang/Short;

    .line 108
    .line 109
    goto :goto_2

    .line 110
    :cond_9
    sget-object v6, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    .line 111
    .line 112
    if-ne p2, v6, :cond_a

    .line 113
    .line 114
    const-class v6, Ljava/lang/Character;

    .line 115
    .line 116
    goto :goto_2

    .line 117
    :cond_a
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    const-string p1, " is not a primitive type"

    .line 122
    .line 123
    const-string p2, "Class "

    .line 124
    .line 125
    invoke-static {p0, p1, p2}, Landroidx/glance/session/TimeSource$Companion$$ExternalSyntheticLambda0;->m$2(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    return-object v4

    .line 129
    :cond_b
    move-object v6, p2

    .line 130
    :goto_2
    if-ne v6, v8, :cond_c

    .line 131
    .line 132
    new-instance v7, Lcom/fasterxml/jackson/databind/ser/std/StdKeySerializers$Default;

    .line 133
    .line 134
    const/4 v8, 0x5

    .line 135
    invoke-direct {v7, v8, v6}, Lcom/fasterxml/jackson/databind/ser/std/StdKeySerializers$Default;-><init>(ILjava/lang/Class;)V

    .line 136
    .line 137
    .line 138
    goto/16 :goto_5

    .line 139
    .line 140
    :cond_c
    if-ne v6, v7, :cond_d

    .line 141
    .line 142
    new-instance v7, Lcom/fasterxml/jackson/databind/ser/std/StdKeySerializers$Default;

    .line 143
    .line 144
    const/4 v8, 0x6

    .line 145
    invoke-direct {v7, v8, v6}, Lcom/fasterxml/jackson/databind/ser/std/StdKeySerializers$Default;-><init>(ILjava/lang/Class;)V

    .line 146
    .line 147
    .line 148
    goto :goto_5

    .line 149
    :cond_d
    invoke-virtual {v6}, Ljava/lang/Class;->isPrimitive()Z

    .line 150
    .line 151
    .line 152
    move-result v7

    .line 153
    if-nez v7, :cond_14

    .line 154
    .line 155
    const-class v7, Ljava/lang/Number;

    .line 156
    .line 157
    invoke-virtual {v7, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 158
    .line 159
    .line 160
    move-result v7

    .line 161
    if-eqz v7, :cond_e

    .line 162
    .line 163
    goto :goto_3

    .line 164
    :cond_e
    const-class v7, Ljava/lang/Class;

    .line 165
    .line 166
    if-ne v6, v7, :cond_f

    .line 167
    .line 168
    new-instance v7, Lcom/fasterxml/jackson/databind/ser/std/StdKeySerializers$Default;

    .line 169
    .line 170
    const/4 v8, 0x3

    .line 171
    invoke-direct {v7, v8, v6}, Lcom/fasterxml/jackson/databind/ser/std/StdKeySerializers$Default;-><init>(ILjava/lang/Class;)V

    .line 172
    .line 173
    .line 174
    goto :goto_5

    .line 175
    :cond_f
    const-class v7, Ljava/util/Date;

    .line 176
    .line 177
    invoke-virtual {v7, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 178
    .line 179
    .line 180
    move-result v7

    .line 181
    if-eqz v7, :cond_10

    .line 182
    .line 183
    new-instance v7, Lcom/fasterxml/jackson/databind/ser/std/StdKeySerializers$Default;

    .line 184
    .line 185
    invoke-direct {v7, v3, v6}, Lcom/fasterxml/jackson/databind/ser/std/StdKeySerializers$Default;-><init>(ILjava/lang/Class;)V

    .line 186
    .line 187
    .line 188
    goto :goto_5

    .line 189
    :cond_10
    const-class v7, Ljava/util/Calendar;

    .line 190
    .line 191
    invoke-virtual {v7, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 192
    .line 193
    .line 194
    move-result v7

    .line 195
    if-eqz v7, :cond_11

    .line 196
    .line 197
    new-instance v7, Lcom/fasterxml/jackson/databind/ser/std/StdKeySerializers$Default;

    .line 198
    .line 199
    invoke-direct {v7, v2, v6}, Lcom/fasterxml/jackson/databind/ser/std/StdKeySerializers$Default;-><init>(ILjava/lang/Class;)V

    .line 200
    .line 201
    .line 202
    goto :goto_5

    .line 203
    :cond_11
    const-class v7, Ljava/util/UUID;

    .line 204
    .line 205
    if-ne v6, v7, :cond_12

    .line 206
    .line 207
    new-instance v7, Lcom/fasterxml/jackson/databind/ser/std/StdKeySerializers$Default;

    .line 208
    .line 209
    invoke-direct {v7, v5, v6}, Lcom/fasterxml/jackson/databind/ser/std/StdKeySerializers$Default;-><init>(ILjava/lang/Class;)V

    .line 210
    .line 211
    .line 212
    goto :goto_5

    .line 213
    :cond_12
    const-class v7, [B

    .line 214
    .line 215
    if-ne v6, v7, :cond_13

    .line 216
    .line 217
    new-instance v7, Lcom/fasterxml/jackson/databind/ser/std/StdKeySerializers$Default;

    .line 218
    .line 219
    const/4 v8, 0x7

    .line 220
    invoke-direct {v7, v8, v6}, Lcom/fasterxml/jackson/databind/ser/std/StdKeySerializers$Default;-><init>(ILjava/lang/Class;)V

    .line 221
    .line 222
    .line 223
    goto :goto_5

    .line 224
    :cond_13
    move-object v7, v4

    .line 225
    goto :goto_5

    .line 226
    :cond_14
    :goto_3
    new-instance v7, Lcom/fasterxml/jackson/databind/ser/std/StdKeySerializers$Default;

    .line 227
    .line 228
    invoke-direct {v7, v5, v6}, Lcom/fasterxml/jackson/databind/ser/std/StdKeySerializers$Default;-><init>(ILjava/lang/Class;)V

    .line 229
    .line 230
    .line 231
    goto :goto_5

    .line 232
    :cond_15
    :goto_4
    new-instance v6, Lcom/fasterxml/jackson/databind/ser/std/StdKeySerializers$Dynamic;

    .line 233
    .line 234
    invoke-direct {v6}, Lcom/fasterxml/jackson/databind/ser/std/StdKeySerializers$Dynamic;-><init>()V

    .line 235
    .line 236
    .line 237
    goto/16 :goto_1

    .line 238
    .line 239
    :goto_5
    if-nez v7, :cond_1f

    .line 240
    .line 241
    iget-object v6, v1, Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;->_propCollector:Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;

    .line 242
    .line 243
    if-nez v6, :cond_17

    .line 244
    .line 245
    :cond_16
    move-object v2, v4

    .line 246
    goto :goto_6

    .line 247
    :cond_17
    iget-boolean v7, v6, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_collected:Z

    .line 248
    .line 249
    if-nez v7, :cond_18

    .line 250
    .line 251
    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->collectAll()V

    .line 252
    .line 253
    .line 254
    :cond_18
    iget-object v7, v6, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_jsonKeyAccessors:Ljava/util/LinkedList;

    .line 255
    .line 256
    if-eqz v7, :cond_16

    .line 257
    .line 258
    invoke-virtual {v7}, Ljava/util/LinkedList;->size()I

    .line 259
    .line 260
    .line 261
    move-result v7

    .line 262
    iget-object v8, v6, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_jsonKeyAccessors:Ljava/util/LinkedList;

    .line 263
    .line 264
    const/4 v9, 0x0

    .line 265
    if-gt v7, v3, :cond_19

    .line 266
    .line 267
    invoke-virtual {v8, v9}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    .line 268
    .line 269
    .line 270
    move-result-object v2

    .line 271
    check-cast v2, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    .line 272
    .line 273
    goto :goto_6

    .line 274
    :cond_19
    invoke-virtual {v8, v9}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    .line 275
    .line 276
    .line 277
    move-result-object p0

    .line 278
    iget-object p1, v6, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_jsonKeyAccessors:Ljava/util/LinkedList;

    .line 279
    .line 280
    invoke-virtual {p1, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    .line 281
    .line 282
    .line 283
    move-result-object p1

    .line 284
    new-array p2, v2, [Ljava/lang/Object;

    .line 285
    .line 286
    aput-object p0, p2, v9

    .line 287
    .line 288
    aput-object p1, p2, v3

    .line 289
    .line 290
    const-string p0, "Multiple \'as-key\' properties defined (%s vs %s)"

    .line 291
    .line 292
    invoke-virtual {v6, p0, p2}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->reportProblem(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 293
    .line 294
    .line 295
    throw v4

    .line 296
    :goto_6
    if-nez v2, :cond_1a

    .line 297
    .line 298
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;->findJsonValueAccessor()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    .line 299
    .line 300
    .line 301
    move-result-object v2

    .line 302
    :cond_1a
    if-eqz v2, :cond_1c

    .line 303
    .line 304
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/introspect/Annotated;->getType()Lcom/fasterxml/jackson/databind/type/TypeBase;

    .line 305
    .line 306
    .line 307
    move-result-object p2

    .line 308
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->createKeySerializer(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/type/TypeBase;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 309
    .line 310
    .line 311
    move-result-object p0

    .line 312
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->canOverrideAccessModifiers()Z

    .line 313
    .line 314
    .line 315
    move-result p1

    .line 316
    if-eqz p1, :cond_1b

    .line 317
    .line 318
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;->getMember()Ljava/lang/reflect/Member;

    .line 319
    .line 320
    .line 321
    move-result-object p1

    .line 322
    sget-object p2, Lcom/fasterxml/jackson/databind/MapperFeature;->OVERRIDE_PUBLIC_ACCESS_MODIFIERS:Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 323
    .line 324
    iget-wide v0, v0, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->_mapperFeatures:J

    .line 325
    .line 326
    invoke-virtual {p2, v0, v1}, Lcom/fasterxml/jackson/databind/MapperFeature;->enabledIn(J)Z

    .line 327
    .line 328
    .line 329
    move-result p2

    .line 330
    invoke-static {p1, p2}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->checkAndFixAccess(Ljava/lang/reflect/Member;Z)V

    .line 331
    .line 332
    .line 333
    :cond_1b
    new-instance p1, Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer;

    .line 334
    .line 335
    invoke-direct {p1, v2, v4, p0}, Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer;-><init>(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/fasterxml/jackson/databind/JsonSerializer;)V

    .line 336
    .line 337
    .line 338
    :goto_7
    move-object v2, p1

    .line 339
    goto :goto_9

    .line 340
    :cond_1c
    if-eqz p2, :cond_1e

    .line 341
    .line 342
    const-class p0, Ljava/lang/Enum;

    .line 343
    .line 344
    if-ne p2, p0, :cond_1d

    .line 345
    .line 346
    new-instance p0, Lcom/fasterxml/jackson/databind/ser/std/StdKeySerializers$Dynamic;

    .line 347
    .line 348
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/ser/std/StdKeySerializers$Dynamic;-><init>()V

    .line 349
    .line 350
    .line 351
    :goto_8
    move-object v2, p0

    .line 352
    goto :goto_9

    .line 353
    :cond_1d
    sget-object p1, Lcom/fasterxml/jackson/databind/util/ClassUtil;->NO_ANNOTATIONS:[Ljava/lang/annotation/Annotation;

    .line 354
    .line 355
    invoke-virtual {p0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 356
    .line 357
    .line 358
    move-result p0

    .line 359
    if-eqz p0, :cond_1e

    .line 360
    .line 361
    invoke-static {v0, p2}, Lkotlin/UnsafeLazyImpl;->constructFromName(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Ljava/lang/Class;)Lkotlin/UnsafeLazyImpl;

    .line 362
    .line 363
    .line 364
    move-result-object p0

    .line 365
    new-instance p1, Lcom/fasterxml/jackson/databind/ser/impl/UnsupportedTypeSerializer;

    .line 366
    .line 367
    invoke-direct {p1, p2, p0}, Lcom/fasterxml/jackson/databind/ser/impl/UnsupportedTypeSerializer;-><init>(Ljava/lang/Class;Lkotlin/UnsafeLazyImpl;)V

    .line 368
    .line 369
    .line 370
    goto :goto_7

    .line 371
    :cond_1e
    new-instance p0, Lcom/fasterxml/jackson/databind/ser/std/StdKeySerializers$Default;

    .line 372
    .line 373
    invoke-direct {p0, v5, p2}, Lcom/fasterxml/jackson/databind/ser/std/StdKeySerializers$Default;-><init>(ILjava/lang/Class;)V

    .line 374
    .line 375
    .line 376
    goto :goto_8

    .line 377
    :cond_1f
    move-object v2, v7

    .line 378
    :cond_20
    :goto_9
    return-object v2
.end method

.method public final createTypeSerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/type/TypeBase;)Lcom/fasterxml/jackson/databind/jsontype/impl/TypeSerializerBase;
    .locals 6

    .line 1
    iget-object p0, p2, Lcom/fasterxml/jackson/databind/type/TypeBase;->_class:Ljava/lang/Class;

    .line 2
    .line 3
    invoke-virtual {p1, p0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->constructType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/type/TypeBase;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->_base:Lcom/fasterxml/jackson/databind/cfg/BaseSettings;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_classIntrospector:Lcom/fasterxml/jackson/databind/introspect/Annotated;

    .line 10
    .line 11
    check-cast v0, Lcom/fasterxml/jackson/databind/introspect/BasicClassIntrospector;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-static {p1, p0}, Lcom/fasterxml/jackson/databind/introspect/BasicClassIntrospector;->_findStdTypeDesc(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/type/TypeBase;)Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    invoke-static {p1, p0, p1}, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->resolve(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/type/TypeBase;Lcom/fasterxml/jackson/databind/cfg/MapperConfig;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-static {p1, p0, v0}, Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;->forOtherUse(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/type/TypeBase;Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;)Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    :cond_0
    iget-object p0, v0, Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;->_classInfo:Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0, p1, p0, p2}, Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;->findTypeResolver(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;Lcom/fasterxml/jackson/databind/type/TypeBase;)Lcom/fasterxml/jackson/databind/jsontype/impl/StdTypeResolverBuilder;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    const/4 v1, 0x0

    .line 41
    if-nez v0, :cond_1

    .line 42
    .line 43
    move-object p0, v1

    .line 44
    move-object v0, p0

    .line 45
    goto :goto_0

    .line 46
    :cond_1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    new-instance v3, Ljava/util/HashMap;

    .line 51
    .line 52
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 53
    .line 54
    .line 55
    new-instance v4, Lcom/fasterxml/jackson/databind/jsontype/NamedType;

    .line 56
    .line 57
    iget-object v5, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_class:Ljava/lang/Class;

    .line 58
    .line 59
    invoke-direct {v4, v5, v1}, Lcom/fasterxml/jackson/databind/jsontype/NamedType;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-static {p0, v4, p1, v2, v3}, Lcom/fasterxml/jackson/databind/jsontype/impl/StdSubtypeResolver;->_collectAndResolve(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;Lcom/fasterxml/jackson/databind/jsontype/NamedType;Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;Ljava/util/HashMap;)V

    .line 63
    .line 64
    .line 65
    new-instance p0, Ljava/util/ArrayList;

    .line 66
    .line 67
    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    invoke-direct {p0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 72
    .line 73
    .line 74
    :goto_0
    if-nez v0, :cond_2

    .line 75
    .line 76
    return-object v1

    .line 77
    :cond_2
    invoke-virtual {v0, p1, p2, p0}, Lcom/fasterxml/jackson/databind/jsontype/impl/StdTypeResolverBuilder;->buildTypeSerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/type/TypeBase;Ljava/util/ArrayList;)Lcom/fasterxml/jackson/databind/jsontype/impl/TypeSerializerBase;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    return-object p0
.end method

.method public final findSerializerByAnnotations(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/type/TypeBase;Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;)Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;
    .locals 4

    .line 1
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/SerializerProvider;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    .line 2
    .line 3
    iget-object p2, p2, Lcom/fasterxml/jackson/databind/type/TypeBase;->_class:Ljava/lang/Class;

    .line 4
    .line 5
    const-class v1, Lcom/fasterxml/jackson/databind/JsonSerializable;

    .line 6
    .line 7
    invoke-virtual {v1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    if-eqz p2, :cond_0

    .line 12
    .line 13
    sget-object p0, Lcom/fasterxml/jackson/databind/ser/std/RawSerializer;->instance$1:Lcom/fasterxml/jackson/databind/ser/std/RawSerializer;

    .line 14
    .line 15
    return-object p0

    .line 16
    :cond_0
    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;->findJsonValueAccessor()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    if-eqz p2, :cond_4

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->canOverrideAccessModifiers()Z

    .line 23
    .line 24
    .line 25
    move-result p3

    .line 26
    if-eqz p3, :cond_1

    .line 27
    .line 28
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;->getMember()Ljava/lang/reflect/Member;

    .line 29
    .line 30
    .line 31
    move-result-object p3

    .line 32
    sget-object v1, Lcom/fasterxml/jackson/databind/MapperFeature;->OVERRIDE_PUBLIC_ACCESS_MODIFIERS:Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 33
    .line 34
    iget-wide v2, v0, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->_mapperFeatures:J

    .line 35
    .line 36
    invoke-virtual {v1, v2, v3}, Lcom/fasterxml/jackson/databind/MapperFeature;->enabledIn(J)Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    invoke-static {p3, v1}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->checkAndFixAccess(Ljava/lang/reflect/Member;Z)V

    .line 41
    .line 42
    .line 43
    :cond_1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/introspect/Annotated;->getType()Lcom/fasterxml/jackson/databind/type/TypeBase;

    .line 44
    .line 45
    .line 46
    move-result-object p3

    .line 47
    invoke-static {p1, p2}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->findSerializerFromAnnotation(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    if-nez p1, :cond_2

    .line 52
    .line 53
    iget-object p1, p3, Lcom/fasterxml/jackson/databind/type/TypeBase;->_valueHandler:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast p1, Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 56
    .line 57
    :cond_2
    iget-object v1, p3, Lcom/fasterxml/jackson/databind/type/TypeBase;->_typeHandler:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast v1, Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;

    .line 60
    .line 61
    if-nez v1, :cond_3

    .line 62
    .line 63
    invoke-virtual {p0, v0, p3}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->createTypeSerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/type/TypeBase;)Lcom/fasterxml/jackson/databind/jsontype/impl/TypeSerializerBase;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    :cond_3
    new-instance p0, Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer;

    .line 68
    .line 69
    invoke-direct {p0, p2, v1, p1}, Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer;-><init>(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/fasterxml/jackson/databind/JsonSerializer;)V

    .line 70
    .line 71
    .line 72
    return-object p0

    .line 73
    :cond_4
    const/4 p0, 0x0

    .line 74
    return-object p0
.end method
