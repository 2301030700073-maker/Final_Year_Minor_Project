.class public abstract Lcom/google/gson/internal/bind/TypeAdapters;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field public static final ATOMIC_BOOLEAN_FACTORY:Lcom/google/gson/internal/bind/TypeAdapters$31;

.field public static final ATOMIC_INTEGER_ARRAY_FACTORY:Lcom/google/gson/internal/bind/TypeAdapters$31;

.field public static final ATOMIC_INTEGER_FACTORY:Lcom/google/gson/internal/bind/TypeAdapters$31;

.field public static final BIG_DECIMAL:Lcom/google/gson/Gson$1;

.field public static final BIG_INTEGER:Lcom/google/gson/Gson$1;

.field public static final BIT_SET_FACTORY:Lcom/google/gson/internal/bind/TypeAdapters$31;

.field public static final BOOLEAN_AS_STRING:Lcom/google/gson/Gson$1;

.field public static final BOOLEAN_FACTORY:Lcom/google/gson/internal/bind/TypeAdapters$32;

.field public static final BYTE_FACTORY:Lcom/google/gson/internal/bind/TypeAdapters$32;

.field public static final CALENDAR_FACTORY:Lcom/google/gson/internal/bind/TypeAdapters$33;

.field public static final CHARACTER_FACTORY:Lcom/google/gson/internal/bind/TypeAdapters$32;

.field public static final CLASS_FACTORY:Lcom/google/gson/internal/bind/TypeAdapters$31;

.field public static final CURRENCY_FACTORY:Lcom/google/gson/internal/bind/TypeAdapters$31;

.field public static final ENUM_FACTORY:Lcom/google/gson/internal/bind/TypeAdapters$29;

.field public static final INET_ADDRESS_FACTORY:Lcom/google/gson/internal/bind/TypeAdapters$31;

.field public static final INTEGER_FACTORY:Lcom/google/gson/internal/bind/TypeAdapters$32;

.field public static final JSON_ELEMENT:Lcom/google/gson/Gson$1;

.field public static final JSON_ELEMENT_FACTORY:Lcom/google/gson/internal/bind/TypeAdapters$31;

.field public static final LAZILY_PARSED_NUMBER:Lcom/google/gson/Gson$1;

.field public static final LOCALE_FACTORY:Lcom/google/gson/internal/bind/TypeAdapters$31;

.field public static final LONG:Lcom/google/gson/Gson$1;

.field public static final SHORT_FACTORY:Lcom/google/gson/internal/bind/TypeAdapters$32;

.field public static final STRING_BUFFER_FACTORY:Lcom/google/gson/internal/bind/TypeAdapters$31;

.field public static final STRING_BUILDER_FACTORY:Lcom/google/gson/internal/bind/TypeAdapters$31;

.field public static final STRING_FACTORY:Lcom/google/gson/internal/bind/TypeAdapters$31;

.field public static final URI_FACTORY:Lcom/google/gson/internal/bind/TypeAdapters$31;

.field public static final URL_FACTORY:Lcom/google/gson/internal/bind/TypeAdapters$31;

.field public static final UUID_FACTORY:Lcom/google/gson/internal/bind/TypeAdapters$31;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/gson/Gson$1;

    .line 2
    .line 3
    const/16 v1, 0xd

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/google/gson/Gson$1;-><init>(I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/google/gson/TypeAdapter;->nullSafe()Lcom/google/gson/TypeAdapter;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    new-instance v1, Lcom/google/gson/internal/bind/TypeAdapters$31;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    const-class v3, Ljava/lang/Class;

    .line 16
    .line 17
    invoke-direct {v1, v3, v0, v2}, Lcom/google/gson/internal/bind/TypeAdapters$31;-><init>(Ljava/lang/Object;Lcom/google/gson/TypeAdapter;I)V

    .line 18
    .line 19
    .line 20
    sput-object v1, Lcom/google/gson/internal/bind/TypeAdapters;->CLASS_FACTORY:Lcom/google/gson/internal/bind/TypeAdapters$31;

    .line 21
    .line 22
    new-instance v0, Lcom/google/gson/Gson$1;

    .line 23
    .line 24
    const/16 v1, 0x17

    .line 25
    .line 26
    invoke-direct {v0, v1}, Lcom/google/gson/Gson$1;-><init>(I)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/google/gson/TypeAdapter;->nullSafe()Lcom/google/gson/TypeAdapter;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    new-instance v1, Lcom/google/gson/internal/bind/TypeAdapters$31;

    .line 34
    .line 35
    const-class v3, Ljava/util/BitSet;

    .line 36
    .line 37
    invoke-direct {v1, v3, v0, v2}, Lcom/google/gson/internal/bind/TypeAdapters$31;-><init>(Ljava/lang/Object;Lcom/google/gson/TypeAdapter;I)V

    .line 38
    .line 39
    .line 40
    sput-object v1, Lcom/google/gson/internal/bind/TypeAdapters;->BIT_SET_FACTORY:Lcom/google/gson/internal/bind/TypeAdapters$31;

    .line 41
    .line 42
    new-instance v0, Lcom/google/gson/Gson$1;

    .line 43
    .line 44
    const/16 v1, 0x18

    .line 45
    .line 46
    invoke-direct {v0, v1}, Lcom/google/gson/Gson$1;-><init>(I)V

    .line 47
    .line 48
    .line 49
    new-instance v1, Lcom/google/gson/Gson$1;

    .line 50
    .line 51
    const/16 v2, 0x19

    .line 52
    .line 53
    invoke-direct {v1, v2}, Lcom/google/gson/Gson$1;-><init>(I)V

    .line 54
    .line 55
    .line 56
    sput-object v1, Lcom/google/gson/internal/bind/TypeAdapters;->BOOLEAN_AS_STRING:Lcom/google/gson/Gson$1;

    .line 57
    .line 58
    new-instance v1, Lcom/google/gson/internal/bind/TypeAdapters$32;

    .line 59
    .line 60
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 61
    .line 62
    const-class v3, Ljava/lang/Boolean;

    .line 63
    .line 64
    invoke-direct {v1, v2, v3, v0}, Lcom/google/gson/internal/bind/TypeAdapters$32;-><init>(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/gson/TypeAdapter;)V

    .line 65
    .line 66
    .line 67
    sput-object v1, Lcom/google/gson/internal/bind/TypeAdapters;->BOOLEAN_FACTORY:Lcom/google/gson/internal/bind/TypeAdapters$32;

    .line 68
    .line 69
    new-instance v0, Lcom/google/gson/Gson$1;

    .line 70
    .line 71
    const/16 v1, 0x1a

    .line 72
    .line 73
    invoke-direct {v0, v1}, Lcom/google/gson/Gson$1;-><init>(I)V

    .line 74
    .line 75
    .line 76
    new-instance v1, Lcom/google/gson/internal/bind/TypeAdapters$32;

    .line 77
    .line 78
    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 79
    .line 80
    const-class v3, Ljava/lang/Byte;

    .line 81
    .line 82
    invoke-direct {v1, v2, v3, v0}, Lcom/google/gson/internal/bind/TypeAdapters$32;-><init>(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/gson/TypeAdapter;)V

    .line 83
    .line 84
    .line 85
    sput-object v1, Lcom/google/gson/internal/bind/TypeAdapters;->BYTE_FACTORY:Lcom/google/gson/internal/bind/TypeAdapters$32;

    .line 86
    .line 87
    new-instance v0, Lcom/google/gson/Gson$1;

    .line 88
    .line 89
    const/16 v1, 0x1b

    .line 90
    .line 91
    invoke-direct {v0, v1}, Lcom/google/gson/Gson$1;-><init>(I)V

    .line 92
    .line 93
    .line 94
    new-instance v1, Lcom/google/gson/internal/bind/TypeAdapters$32;

    .line 95
    .line 96
    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    .line 97
    .line 98
    const-class v3, Ljava/lang/Short;

    .line 99
    .line 100
    invoke-direct {v1, v2, v3, v0}, Lcom/google/gson/internal/bind/TypeAdapters$32;-><init>(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/gson/TypeAdapter;)V

    .line 101
    .line 102
    .line 103
    sput-object v1, Lcom/google/gson/internal/bind/TypeAdapters;->SHORT_FACTORY:Lcom/google/gson/internal/bind/TypeAdapters$32;

    .line 104
    .line 105
    new-instance v0, Lcom/google/gson/Gson$1;

    .line 106
    .line 107
    const/16 v1, 0x1c

    .line 108
    .line 109
    invoke-direct {v0, v1}, Lcom/google/gson/Gson$1;-><init>(I)V

    .line 110
    .line 111
    .line 112
    new-instance v1, Lcom/google/gson/internal/bind/TypeAdapters$32;

    .line 113
    .line 114
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 115
    .line 116
    const-class v3, Ljava/lang/Integer;

    .line 117
    .line 118
    invoke-direct {v1, v2, v3, v0}, Lcom/google/gson/internal/bind/TypeAdapters$32;-><init>(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/gson/TypeAdapter;)V

    .line 119
    .line 120
    .line 121
    sput-object v1, Lcom/google/gson/internal/bind/TypeAdapters;->INTEGER_FACTORY:Lcom/google/gson/internal/bind/TypeAdapters$32;

    .line 122
    .line 123
    new-instance v0, Lcom/google/gson/internal/bind/TypeAdapters$9;

    .line 124
    .line 125
    const/4 v1, 0x1

    .line 126
    invoke-direct {v0, v1}, Lcom/google/gson/internal/bind/TypeAdapters$9;-><init>(I)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0}, Lcom/google/gson/TypeAdapter;->nullSafe()Lcom/google/gson/TypeAdapter;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    new-instance v1, Lcom/google/gson/internal/bind/TypeAdapters$31;

    .line 134
    .line 135
    const/4 v2, 0x0

    .line 136
    const-class v3, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 137
    .line 138
    invoke-direct {v1, v3, v0, v2}, Lcom/google/gson/internal/bind/TypeAdapters$31;-><init>(Ljava/lang/Object;Lcom/google/gson/TypeAdapter;I)V

    .line 139
    .line 140
    .line 141
    sput-object v1, Lcom/google/gson/internal/bind/TypeAdapters;->ATOMIC_INTEGER_FACTORY:Lcom/google/gson/internal/bind/TypeAdapters$31;

    .line 142
    .line 143
    new-instance v0, Lcom/google/gson/internal/bind/TypeAdapters$9;

    .line 144
    .line 145
    const/4 v1, 0x0

    .line 146
    invoke-direct {v0, v1}, Lcom/google/gson/internal/bind/TypeAdapters$9;-><init>(I)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v0}, Lcom/google/gson/TypeAdapter;->nullSafe()Lcom/google/gson/TypeAdapter;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    new-instance v1, Lcom/google/gson/internal/bind/TypeAdapters$31;

    .line 154
    .line 155
    const-class v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 156
    .line 157
    invoke-direct {v1, v3, v0, v2}, Lcom/google/gson/internal/bind/TypeAdapters$31;-><init>(Ljava/lang/Object;Lcom/google/gson/TypeAdapter;I)V

    .line 158
    .line 159
    .line 160
    sput-object v1, Lcom/google/gson/internal/bind/TypeAdapters;->ATOMIC_BOOLEAN_FACTORY:Lcom/google/gson/internal/bind/TypeAdapters$31;

    .line 161
    .line 162
    new-instance v0, Lcom/google/gson/Gson$1;

    .line 163
    .line 164
    const/4 v1, 0x3

    .line 165
    invoke-direct {v0, v1}, Lcom/google/gson/Gson$1;-><init>(I)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v0}, Lcom/google/gson/TypeAdapter;->nullSafe()Lcom/google/gson/TypeAdapter;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    new-instance v1, Lcom/google/gson/internal/bind/TypeAdapters$31;

    .line 173
    .line 174
    const-class v3, Ljava/util/concurrent/atomic/AtomicIntegerArray;

    .line 175
    .line 176
    invoke-direct {v1, v3, v0, v2}, Lcom/google/gson/internal/bind/TypeAdapters$31;-><init>(Ljava/lang/Object;Lcom/google/gson/TypeAdapter;I)V

    .line 177
    .line 178
    .line 179
    sput-object v1, Lcom/google/gson/internal/bind/TypeAdapters;->ATOMIC_INTEGER_ARRAY_FACTORY:Lcom/google/gson/internal/bind/TypeAdapters$31;

    .line 180
    .line 181
    new-instance v0, Lcom/google/gson/Gson$1;

    .line 182
    .line 183
    const/4 v1, 0x4

    .line 184
    invoke-direct {v0, v1}, Lcom/google/gson/Gson$1;-><init>(I)V

    .line 185
    .line 186
    .line 187
    sput-object v0, Lcom/google/gson/internal/bind/TypeAdapters;->LONG:Lcom/google/gson/Gson$1;

    .line 188
    .line 189
    new-instance v0, Lcom/google/gson/Gson$1;

    .line 190
    .line 191
    const/4 v1, 0x7

    .line 192
    invoke-direct {v0, v1}, Lcom/google/gson/Gson$1;-><init>(I)V

    .line 193
    .line 194
    .line 195
    new-instance v1, Lcom/google/gson/internal/bind/TypeAdapters$32;

    .line 196
    .line 197
    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    .line 198
    .line 199
    const-class v3, Ljava/lang/Character;

    .line 200
    .line 201
    invoke-direct {v1, v2, v3, v0}, Lcom/google/gson/internal/bind/TypeAdapters$32;-><init>(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/gson/TypeAdapter;)V

    .line 202
    .line 203
    .line 204
    sput-object v1, Lcom/google/gson/internal/bind/TypeAdapters;->CHARACTER_FACTORY:Lcom/google/gson/internal/bind/TypeAdapters$32;

    .line 205
    .line 206
    new-instance v0, Lcom/google/gson/Gson$1;

    .line 207
    .line 208
    const/16 v1, 0x8

    .line 209
    .line 210
    invoke-direct {v0, v1}, Lcom/google/gson/Gson$1;-><init>(I)V

    .line 211
    .line 212
    .line 213
    new-instance v1, Lcom/google/gson/Gson$1;

    .line 214
    .line 215
    const/16 v2, 0x9

    .line 216
    .line 217
    invoke-direct {v1, v2}, Lcom/google/gson/Gson$1;-><init>(I)V

    .line 218
    .line 219
    .line 220
    sput-object v1, Lcom/google/gson/internal/bind/TypeAdapters;->BIG_DECIMAL:Lcom/google/gson/Gson$1;

    .line 221
    .line 222
    new-instance v1, Lcom/google/gson/Gson$1;

    .line 223
    .line 224
    const/16 v2, 0xa

    .line 225
    .line 226
    invoke-direct {v1, v2}, Lcom/google/gson/Gson$1;-><init>(I)V

    .line 227
    .line 228
    .line 229
    sput-object v1, Lcom/google/gson/internal/bind/TypeAdapters;->BIG_INTEGER:Lcom/google/gson/Gson$1;

    .line 230
    .line 231
    new-instance v1, Lcom/google/gson/Gson$1;

    .line 232
    .line 233
    const/16 v2, 0xb

    .line 234
    .line 235
    invoke-direct {v1, v2}, Lcom/google/gson/Gson$1;-><init>(I)V

    .line 236
    .line 237
    .line 238
    sput-object v1, Lcom/google/gson/internal/bind/TypeAdapters;->LAZILY_PARSED_NUMBER:Lcom/google/gson/Gson$1;

    .line 239
    .line 240
    new-instance v1, Lcom/google/gson/internal/bind/TypeAdapters$31;

    .line 241
    .line 242
    const/4 v2, 0x0

    .line 243
    const-class v3, Ljava/lang/String;

    .line 244
    .line 245
    invoke-direct {v1, v3, v0, v2}, Lcom/google/gson/internal/bind/TypeAdapters$31;-><init>(Ljava/lang/Object;Lcom/google/gson/TypeAdapter;I)V

    .line 246
    .line 247
    .line 248
    sput-object v1, Lcom/google/gson/internal/bind/TypeAdapters;->STRING_FACTORY:Lcom/google/gson/internal/bind/TypeAdapters$31;

    .line 249
    .line 250
    new-instance v0, Lcom/google/gson/Gson$1;

    .line 251
    .line 252
    const/16 v1, 0xc

    .line 253
    .line 254
    invoke-direct {v0, v1}, Lcom/google/gson/Gson$1;-><init>(I)V

    .line 255
    .line 256
    .line 257
    new-instance v1, Lcom/google/gson/internal/bind/TypeAdapters$31;

    .line 258
    .line 259
    const-class v3, Ljava/lang/StringBuilder;

    .line 260
    .line 261
    invoke-direct {v1, v3, v0, v2}, Lcom/google/gson/internal/bind/TypeAdapters$31;-><init>(Ljava/lang/Object;Lcom/google/gson/TypeAdapter;I)V

    .line 262
    .line 263
    .line 264
    sput-object v1, Lcom/google/gson/internal/bind/TypeAdapters;->STRING_BUILDER_FACTORY:Lcom/google/gson/internal/bind/TypeAdapters$31;

    .line 265
    .line 266
    new-instance v0, Lcom/google/gson/Gson$1;

    .line 267
    .line 268
    const/16 v1, 0xe

    .line 269
    .line 270
    invoke-direct {v0, v1}, Lcom/google/gson/Gson$1;-><init>(I)V

    .line 271
    .line 272
    .line 273
    new-instance v1, Lcom/google/gson/internal/bind/TypeAdapters$31;

    .line 274
    .line 275
    const-class v3, Ljava/lang/StringBuffer;

    .line 276
    .line 277
    invoke-direct {v1, v3, v0, v2}, Lcom/google/gson/internal/bind/TypeAdapters$31;-><init>(Ljava/lang/Object;Lcom/google/gson/TypeAdapter;I)V

    .line 278
    .line 279
    .line 280
    sput-object v1, Lcom/google/gson/internal/bind/TypeAdapters;->STRING_BUFFER_FACTORY:Lcom/google/gson/internal/bind/TypeAdapters$31;

    .line 281
    .line 282
    new-instance v0, Lcom/google/gson/Gson$1;

    .line 283
    .line 284
    const/16 v1, 0xf

    .line 285
    .line 286
    invoke-direct {v0, v1}, Lcom/google/gson/Gson$1;-><init>(I)V

    .line 287
    .line 288
    .line 289
    new-instance v1, Lcom/google/gson/internal/bind/TypeAdapters$31;

    .line 290
    .line 291
    const-class v3, Ljava/net/URL;

    .line 292
    .line 293
    invoke-direct {v1, v3, v0, v2}, Lcom/google/gson/internal/bind/TypeAdapters$31;-><init>(Ljava/lang/Object;Lcom/google/gson/TypeAdapter;I)V

    .line 294
    .line 295
    .line 296
    sput-object v1, Lcom/google/gson/internal/bind/TypeAdapters;->URL_FACTORY:Lcom/google/gson/internal/bind/TypeAdapters$31;

    .line 297
    .line 298
    new-instance v0, Lcom/google/gson/Gson$1;

    .line 299
    .line 300
    const/16 v1, 0x10

    .line 301
    .line 302
    invoke-direct {v0, v1}, Lcom/google/gson/Gson$1;-><init>(I)V

    .line 303
    .line 304
    .line 305
    new-instance v1, Lcom/google/gson/internal/bind/TypeAdapters$31;

    .line 306
    .line 307
    const-class v3, Ljava/net/URI;

    .line 308
    .line 309
    invoke-direct {v1, v3, v0, v2}, Lcom/google/gson/internal/bind/TypeAdapters$31;-><init>(Ljava/lang/Object;Lcom/google/gson/TypeAdapter;I)V

    .line 310
    .line 311
    .line 312
    sput-object v1, Lcom/google/gson/internal/bind/TypeAdapters;->URI_FACTORY:Lcom/google/gson/internal/bind/TypeAdapters$31;

    .line 313
    .line 314
    new-instance v0, Lcom/google/gson/Gson$1;

    .line 315
    .line 316
    const/16 v1, 0x11

    .line 317
    .line 318
    invoke-direct {v0, v1}, Lcom/google/gson/Gson$1;-><init>(I)V

    .line 319
    .line 320
    .line 321
    new-instance v1, Lcom/google/gson/internal/bind/TypeAdapters$31;

    .line 322
    .line 323
    const/4 v2, 0x1

    .line 324
    const-class v3, Ljava/net/InetAddress;

    .line 325
    .line 326
    invoke-direct {v1, v3, v0, v2}, Lcom/google/gson/internal/bind/TypeAdapters$31;-><init>(Ljava/lang/Object;Lcom/google/gson/TypeAdapter;I)V

    .line 327
    .line 328
    .line 329
    sput-object v1, Lcom/google/gson/internal/bind/TypeAdapters;->INET_ADDRESS_FACTORY:Lcom/google/gson/internal/bind/TypeAdapters$31;

    .line 330
    .line 331
    new-instance v0, Lcom/google/gson/Gson$1;

    .line 332
    .line 333
    const/16 v1, 0x12

    .line 334
    .line 335
    invoke-direct {v0, v1}, Lcom/google/gson/Gson$1;-><init>(I)V

    .line 336
    .line 337
    .line 338
    new-instance v1, Lcom/google/gson/internal/bind/TypeAdapters$31;

    .line 339
    .line 340
    const/4 v2, 0x0

    .line 341
    const-class v3, Ljava/util/UUID;

    .line 342
    .line 343
    invoke-direct {v1, v3, v0, v2}, Lcom/google/gson/internal/bind/TypeAdapters$31;-><init>(Ljava/lang/Object;Lcom/google/gson/TypeAdapter;I)V

    .line 344
    .line 345
    .line 346
    sput-object v1, Lcom/google/gson/internal/bind/TypeAdapters;->UUID_FACTORY:Lcom/google/gson/internal/bind/TypeAdapters$31;

    .line 347
    .line 348
    new-instance v0, Lcom/google/gson/Gson$1;

    .line 349
    .line 350
    const/16 v1, 0x13

    .line 351
    .line 352
    invoke-direct {v0, v1}, Lcom/google/gson/Gson$1;-><init>(I)V

    .line 353
    .line 354
    .line 355
    invoke-virtual {v0}, Lcom/google/gson/TypeAdapter;->nullSafe()Lcom/google/gson/TypeAdapter;

    .line 356
    .line 357
    .line 358
    move-result-object v0

    .line 359
    new-instance v1, Lcom/google/gson/internal/bind/TypeAdapters$31;

    .line 360
    .line 361
    const-class v3, Ljava/util/Currency;

    .line 362
    .line 363
    invoke-direct {v1, v3, v0, v2}, Lcom/google/gson/internal/bind/TypeAdapters$31;-><init>(Ljava/lang/Object;Lcom/google/gson/TypeAdapter;I)V

    .line 364
    .line 365
    .line 366
    sput-object v1, Lcom/google/gson/internal/bind/TypeAdapters;->CURRENCY_FACTORY:Lcom/google/gson/internal/bind/TypeAdapters$31;

    .line 367
    .line 368
    new-instance v0, Lcom/google/gson/Gson$1;

    .line 369
    .line 370
    const/16 v1, 0x14

    .line 371
    .line 372
    invoke-direct {v0, v1}, Lcom/google/gson/Gson$1;-><init>(I)V

    .line 373
    .line 374
    .line 375
    new-instance v1, Lcom/google/gson/internal/bind/TypeAdapters$33;

    .line 376
    .line 377
    invoke-direct {v1, v2, v0}, Lcom/google/gson/internal/bind/TypeAdapters$33;-><init>(ILjava/lang/Object;)V

    .line 378
    .line 379
    .line 380
    sput-object v1, Lcom/google/gson/internal/bind/TypeAdapters;->CALENDAR_FACTORY:Lcom/google/gson/internal/bind/TypeAdapters$33;

    .line 381
    .line 382
    new-instance v0, Lcom/google/gson/Gson$1;

    .line 383
    .line 384
    const/16 v1, 0x15

    .line 385
    .line 386
    invoke-direct {v0, v1}, Lcom/google/gson/Gson$1;-><init>(I)V

    .line 387
    .line 388
    .line 389
    new-instance v1, Lcom/google/gson/internal/bind/TypeAdapters$31;

    .line 390
    .line 391
    const-class v3, Ljava/util/Locale;

    .line 392
    .line 393
    invoke-direct {v1, v3, v0, v2}, Lcom/google/gson/internal/bind/TypeAdapters$31;-><init>(Ljava/lang/Object;Lcom/google/gson/TypeAdapter;I)V

    .line 394
    .line 395
    .line 396
    sput-object v1, Lcom/google/gson/internal/bind/TypeAdapters;->LOCALE_FACTORY:Lcom/google/gson/internal/bind/TypeAdapters$31;

    .line 397
    .line 398
    new-instance v0, Lcom/google/gson/Gson$1;

    .line 399
    .line 400
    const/16 v1, 0x16

    .line 401
    .line 402
    invoke-direct {v0, v1}, Lcom/google/gson/Gson$1;-><init>(I)V

    .line 403
    .line 404
    .line 405
    sput-object v0, Lcom/google/gson/internal/bind/TypeAdapters;->JSON_ELEMENT:Lcom/google/gson/Gson$1;

    .line 406
    .line 407
    new-instance v1, Lcom/google/gson/internal/bind/TypeAdapters$31;

    .line 408
    .line 409
    const/4 v2, 0x1

    .line 410
    const-class v3, Lcom/google/gson/JsonElement;

    .line 411
    .line 412
    invoke-direct {v1, v3, v0, v2}, Lcom/google/gson/internal/bind/TypeAdapters$31;-><init>(Ljava/lang/Object;Lcom/google/gson/TypeAdapter;I)V

    .line 413
    .line 414
    .line 415
    sput-object v1, Lcom/google/gson/internal/bind/TypeAdapters;->JSON_ELEMENT_FACTORY:Lcom/google/gson/internal/bind/TypeAdapters$31;

    .line 416
    .line 417
    new-instance v0, Lcom/google/gson/internal/bind/TypeAdapters$29;

    .line 418
    .line 419
    const/4 v1, 0x0

    .line 420
    invoke-direct {v0, v1}, Lcom/google/gson/internal/bind/TypeAdapters$29;-><init>(I)V

    .line 421
    .line 422
    .line 423
    sput-object v0, Lcom/google/gson/internal/bind/TypeAdapters;->ENUM_FACTORY:Lcom/google/gson/internal/bind/TypeAdapters$29;

    .line 424
    .line 425
    return-void
.end method
