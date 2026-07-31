.class public final enum Lnet/thunderbird/feature/search/legacy/api/MessageSearchField;
.super Ljava/lang/Enum;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lnet/thunderbird/feature/search/legacy/api/SearchField;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/thunderbird/feature/search/legacy/api/MessageSearchField;",
        ">;",
        "Lnet/thunderbird/feature/search/legacy/api/SearchField;"
    }
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lnet/thunderbird/feature/search/legacy/api/MessageSearchField;

.field public static final $cachedSerializer$delegate:Lkotlin/Lazy;

.field public static final enum BCC:Lnet/thunderbird/feature/search/legacy/api/MessageSearchField;

.field public static final enum CC:Lnet/thunderbird/feature/search/legacy/api/MessageSearchField;

.field public static final Companion:Lnet/thunderbird/feature/search/legacy/api/MessageSearchField$Companion;

.field public static final enum FOLDER:Lnet/thunderbird/feature/search/legacy/api/MessageSearchField;

.field public static final enum INTEGRATE:Lnet/thunderbird/feature/search/legacy/api/MessageSearchField;

.field public static final enum MESSAGE_CONTENTS:Lnet/thunderbird/feature/search/legacy/api/MessageSearchField;

.field public static final enum NEW_MESSAGE:Lnet/thunderbird/feature/search/legacy/api/MessageSearchField;

.field public static final enum SENDER:Lnet/thunderbird/feature/search/legacy/api/MessageSearchField;

.field public static final enum SUBJECT:Lnet/thunderbird/feature/search/legacy/api/MessageSearchField;

.field public static final enum THREAD_ID:Lnet/thunderbird/feature/search/legacy/api/MessageSearchField;

.field public static final enum TO:Lnet/thunderbird/feature/search/legacy/api/MessageSearchField;

.field public static final enum VISIBLE:Lnet/thunderbird/feature/search/legacy/api/MessageSearchField;


# instance fields
.field public final customQueryTemplate:Ljava/lang/String;

.field public final fieldName:Ljava/lang/String;

.field public final fieldType:Lnet/thunderbird/feature/search/legacy/api/SearchFieldType;


# direct methods
.method static constructor <clinit>()V
    .locals 25

    .line 1
    new-instance v0, Lnet/thunderbird/feature/search/legacy/api/MessageSearchField;

    .line 2
    .line 3
    sget-object v5, Lnet/thunderbird/feature/search/legacy/api/SearchFieldType;->TEXT:Lnet/thunderbird/feature/search/legacy/api/SearchFieldType;

    .line 4
    .line 5
    move-object v4, v5

    .line 6
    const/4 v5, 0x0

    .line 7
    const-string v1, "CC"

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    const-string v3, "cc_list"

    .line 11
    .line 12
    invoke-direct/range {v0 .. v5}, Lnet/thunderbird/feature/search/legacy/api/MessageSearchField;-><init>(Ljava/lang/String;ILjava/lang/String;Lnet/thunderbird/feature/search/legacy/api/SearchFieldType;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    move-object v5, v4

    .line 16
    sput-object v0, Lnet/thunderbird/feature/search/legacy/api/MessageSearchField;->CC:Lnet/thunderbird/feature/search/legacy/api/MessageSearchField;

    .line 17
    .line 18
    new-instance v6, Lnet/thunderbird/feature/search/legacy/api/MessageSearchField;

    .line 19
    .line 20
    sget-object v11, Lnet/thunderbird/feature/search/legacy/api/SearchFieldType;->NUMBER:Lnet/thunderbird/feature/search/legacy/api/SearchFieldType;

    .line 21
    .line 22
    move-object v10, v11

    .line 23
    const/4 v11, 0x0

    .line 24
    const-string v7, "DATE"

    .line 25
    .line 26
    const/4 v8, 0x1

    .line 27
    const-string v9, "date"

    .line 28
    .line 29
    invoke-direct/range {v6 .. v11}, Lnet/thunderbird/feature/search/legacy/api/MessageSearchField;-><init>(Ljava/lang/String;ILjava/lang/String;Lnet/thunderbird/feature/search/legacy/api/SearchFieldType;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    move-object v13, v6

    .line 33
    move-object v11, v10

    .line 34
    new-instance v1, Lnet/thunderbird/feature/search/legacy/api/MessageSearchField;

    .line 35
    .line 36
    const-string v4, "flags"

    .line 37
    .line 38
    const/4 v6, 0x0

    .line 39
    const-string v2, "FLAG"

    .line 40
    .line 41
    const/4 v3, 0x2

    .line 42
    invoke-direct/range {v1 .. v6}, Lnet/thunderbird/feature/search/legacy/api/MessageSearchField;-><init>(Ljava/lang/String;ILjava/lang/String;Lnet/thunderbird/feature/search/legacy/api/SearchFieldType;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    move-object v14, v1

    .line 46
    new-instance v7, Lnet/thunderbird/feature/search/legacy/api/MessageSearchField;

    .line 47
    .line 48
    const-string v10, "id"

    .line 49
    .line 50
    const/4 v12, 0x0

    .line 51
    const-string v8, "ID"

    .line 52
    .line 53
    const/4 v9, 0x3

    .line 54
    invoke-direct/range {v7 .. v12}, Lnet/thunderbird/feature/search/legacy/api/MessageSearchField;-><init>(Ljava/lang/String;ILjava/lang/String;Lnet/thunderbird/feature/search/legacy/api/SearchFieldType;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    move-object v15, v7

    .line 58
    new-instance v1, Lnet/thunderbird/feature/search/legacy/api/MessageSearchField;

    .line 59
    .line 60
    const-string v4, "sender_list"

    .line 61
    .line 62
    const-string v2, "SENDER"

    .line 63
    .line 64
    const/4 v3, 0x4

    .line 65
    invoke-direct/range {v1 .. v6}, Lnet/thunderbird/feature/search/legacy/api/MessageSearchField;-><init>(Ljava/lang/String;ILjava/lang/String;Lnet/thunderbird/feature/search/legacy/api/SearchFieldType;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    move-object/from16 v16, v1

    .line 69
    .line 70
    sput-object v16, Lnet/thunderbird/feature/search/legacy/api/MessageSearchField;->SENDER:Lnet/thunderbird/feature/search/legacy/api/MessageSearchField;

    .line 71
    .line 72
    new-instance v1, Lnet/thunderbird/feature/search/legacy/api/MessageSearchField;

    .line 73
    .line 74
    const-string v4, "subject"

    .line 75
    .line 76
    const-string v2, "SUBJECT"

    .line 77
    .line 78
    const/4 v3, 0x5

    .line 79
    invoke-direct/range {v1 .. v6}, Lnet/thunderbird/feature/search/legacy/api/MessageSearchField;-><init>(Ljava/lang/String;ILjava/lang/String;Lnet/thunderbird/feature/search/legacy/api/SearchFieldType;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    move-object/from16 v17, v1

    .line 83
    .line 84
    sput-object v17, Lnet/thunderbird/feature/search/legacy/api/MessageSearchField;->SUBJECT:Lnet/thunderbird/feature/search/legacy/api/MessageSearchField;

    .line 85
    .line 86
    new-instance v1, Lnet/thunderbird/feature/search/legacy/api/MessageSearchField;

    .line 87
    .line 88
    const-string v4, "uid"

    .line 89
    .line 90
    const-string v2, "UID"

    .line 91
    .line 92
    const/4 v3, 0x6

    .line 93
    invoke-direct/range {v1 .. v6}, Lnet/thunderbird/feature/search/legacy/api/MessageSearchField;-><init>(Ljava/lang/String;ILjava/lang/String;Lnet/thunderbird/feature/search/legacy/api/SearchFieldType;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    move-object/from16 v18, v1

    .line 97
    .line 98
    new-instance v1, Lnet/thunderbird/feature/search/legacy/api/MessageSearchField;

    .line 99
    .line 100
    const-string v4, "to_list"

    .line 101
    .line 102
    const-string v2, "TO"

    .line 103
    .line 104
    const/4 v3, 0x7

    .line 105
    invoke-direct/range {v1 .. v6}, Lnet/thunderbird/feature/search/legacy/api/MessageSearchField;-><init>(Ljava/lang/String;ILjava/lang/String;Lnet/thunderbird/feature/search/legacy/api/SearchFieldType;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    move-object/from16 v19, v1

    .line 109
    .line 110
    sput-object v19, Lnet/thunderbird/feature/search/legacy/api/MessageSearchField;->TO:Lnet/thunderbird/feature/search/legacy/api/MessageSearchField;

    .line 111
    .line 112
    new-instance v7, Lnet/thunderbird/feature/search/legacy/api/MessageSearchField;

    .line 113
    .line 114
    const-string v10, "folder_id"

    .line 115
    .line 116
    const-string v8, "FOLDER"

    .line 117
    .line 118
    const/16 v9, 0x8

    .line 119
    .line 120
    invoke-direct/range {v7 .. v12}, Lnet/thunderbird/feature/search/legacy/api/MessageSearchField;-><init>(Ljava/lang/String;ILjava/lang/String;Lnet/thunderbird/feature/search/legacy/api/SearchFieldType;Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    move-object/from16 v20, v7

    .line 124
    .line 125
    sput-object v20, Lnet/thunderbird/feature/search/legacy/api/MessageSearchField;->FOLDER:Lnet/thunderbird/feature/search/legacy/api/MessageSearchField;

    .line 126
    .line 127
    new-instance v1, Lnet/thunderbird/feature/search/legacy/api/MessageSearchField;

    .line 128
    .line 129
    const-string v4, "bcc_list"

    .line 130
    .line 131
    const-string v2, "BCC"

    .line 132
    .line 133
    const/16 v3, 0x9

    .line 134
    .line 135
    invoke-direct/range {v1 .. v6}, Lnet/thunderbird/feature/search/legacy/api/MessageSearchField;-><init>(Ljava/lang/String;ILjava/lang/String;Lnet/thunderbird/feature/search/legacy/api/SearchFieldType;Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    move-object/from16 v21, v1

    .line 139
    .line 140
    sput-object v21, Lnet/thunderbird/feature/search/legacy/api/MessageSearchField;->BCC:Lnet/thunderbird/feature/search/legacy/api/MessageSearchField;

    .line 141
    .line 142
    new-instance v1, Lnet/thunderbird/feature/search/legacy/api/MessageSearchField;

    .line 143
    .line 144
    const-string v4, "reply_to_list"

    .line 145
    .line 146
    const-string v2, "REPLY_TO"

    .line 147
    .line 148
    const/16 v3, 0xa

    .line 149
    .line 150
    invoke-direct/range {v1 .. v6}, Lnet/thunderbird/feature/search/legacy/api/MessageSearchField;-><init>(Ljava/lang/String;ILjava/lang/String;Lnet/thunderbird/feature/search/legacy/api/SearchFieldType;Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    new-instance v2, Lnet/thunderbird/feature/search/legacy/api/MessageSearchField;

    .line 154
    .line 155
    sget-object v6, Lnet/thunderbird/feature/search/legacy/api/SearchFieldType;->CUSTOM:Lnet/thunderbird/feature/search/legacy/api/SearchFieldType;

    .line 156
    .line 157
    const-string v7, "messages.id IN (SELECT docid FROM messages_fulltext WHERE fulltext MATCH ?)"

    .line 158
    .line 159
    const-string v3, "MESSAGE_CONTENTS"

    .line 160
    .line 161
    const/16 v4, 0xb

    .line 162
    .line 163
    const-string v5, "message_contents"

    .line 164
    .line 165
    invoke-direct/range {v2 .. v7}, Lnet/thunderbird/feature/search/legacy/api/MessageSearchField;-><init>(Ljava/lang/String;ILjava/lang/String;Lnet/thunderbird/feature/search/legacy/api/SearchFieldType;Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    sput-object v2, Lnet/thunderbird/feature/search/legacy/api/MessageSearchField;->MESSAGE_CONTENTS:Lnet/thunderbird/feature/search/legacy/api/MessageSearchField;

    .line 169
    .line 170
    new-instance v7, Lnet/thunderbird/feature/search/legacy/api/MessageSearchField;

    .line 171
    .line 172
    const-string v10, "attachment_count"

    .line 173
    .line 174
    const-string v8, "ATTACHMENT_COUNT"

    .line 175
    .line 176
    const/16 v9, 0xc

    .line 177
    .line 178
    invoke-direct/range {v7 .. v12}, Lnet/thunderbird/feature/search/legacy/api/MessageSearchField;-><init>(Ljava/lang/String;ILjava/lang/String;Lnet/thunderbird/feature/search/legacy/api/SearchFieldType;Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    move-object v3, v7

    .line 182
    new-instance v7, Lnet/thunderbird/feature/search/legacy/api/MessageSearchField;

    .line 183
    .line 184
    const-string v10, "deleted"

    .line 185
    .line 186
    const-string v8, "DELETED"

    .line 187
    .line 188
    const/16 v9, 0xd

    .line 189
    .line 190
    invoke-direct/range {v7 .. v12}, Lnet/thunderbird/feature/search/legacy/api/MessageSearchField;-><init>(Ljava/lang/String;ILjava/lang/String;Lnet/thunderbird/feature/search/legacy/api/SearchFieldType;Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    move-object v4, v7

    .line 194
    new-instance v7, Lnet/thunderbird/feature/search/legacy/api/MessageSearchField;

    .line 195
    .line 196
    const-string v10, "threads.root"

    .line 197
    .line 198
    const-string v8, "THREAD_ID"

    .line 199
    .line 200
    const/16 v9, 0xe

    .line 201
    .line 202
    invoke-direct/range {v7 .. v12}, Lnet/thunderbird/feature/search/legacy/api/MessageSearchField;-><init>(Ljava/lang/String;ILjava/lang/String;Lnet/thunderbird/feature/search/legacy/api/SearchFieldType;Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    move-object v5, v7

    .line 206
    sput-object v5, Lnet/thunderbird/feature/search/legacy/api/MessageSearchField;->THREAD_ID:Lnet/thunderbird/feature/search/legacy/api/MessageSearchField;

    .line 207
    .line 208
    new-instance v7, Lnet/thunderbird/feature/search/legacy/api/MessageSearchField;

    .line 209
    .line 210
    const-string v10, "integrate"

    .line 211
    .line 212
    const-string v8, "INTEGRATE"

    .line 213
    .line 214
    const/16 v9, 0xf

    .line 215
    .line 216
    invoke-direct/range {v7 .. v12}, Lnet/thunderbird/feature/search/legacy/api/MessageSearchField;-><init>(Ljava/lang/String;ILjava/lang/String;Lnet/thunderbird/feature/search/legacy/api/SearchFieldType;Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    move-object v6, v7

    .line 220
    sput-object v6, Lnet/thunderbird/feature/search/legacy/api/MessageSearchField;->INTEGRATE:Lnet/thunderbird/feature/search/legacy/api/MessageSearchField;

    .line 221
    .line 222
    new-instance v7, Lnet/thunderbird/feature/search/legacy/api/MessageSearchField;

    .line 223
    .line 224
    const-string v10, "new_message"

    .line 225
    .line 226
    const-string v8, "NEW_MESSAGE"

    .line 227
    .line 228
    const/16 v9, 0x10

    .line 229
    .line 230
    invoke-direct/range {v7 .. v12}, Lnet/thunderbird/feature/search/legacy/api/MessageSearchField;-><init>(Ljava/lang/String;ILjava/lang/String;Lnet/thunderbird/feature/search/legacy/api/SearchFieldType;Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    move-object/from16 v22, v7

    .line 234
    .line 235
    sput-object v22, Lnet/thunderbird/feature/search/legacy/api/MessageSearchField;->NEW_MESSAGE:Lnet/thunderbird/feature/search/legacy/api/MessageSearchField;

    .line 236
    .line 237
    new-instance v7, Lnet/thunderbird/feature/search/legacy/api/MessageSearchField;

    .line 238
    .line 239
    const-string v10, "read"

    .line 240
    .line 241
    const-string v8, "READ"

    .line 242
    .line 243
    const/16 v9, 0x11

    .line 244
    .line 245
    invoke-direct/range {v7 .. v12}, Lnet/thunderbird/feature/search/legacy/api/MessageSearchField;-><init>(Ljava/lang/String;ILjava/lang/String;Lnet/thunderbird/feature/search/legacy/api/SearchFieldType;Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    move-object/from16 v23, v7

    .line 249
    .line 250
    new-instance v7, Lnet/thunderbird/feature/search/legacy/api/MessageSearchField;

    .line 251
    .line 252
    const-string v10, "flagged"

    .line 253
    .line 254
    const-string v8, "FLAGGED"

    .line 255
    .line 256
    const/16 v9, 0x12

    .line 257
    .line 258
    invoke-direct/range {v7 .. v12}, Lnet/thunderbird/feature/search/legacy/api/MessageSearchField;-><init>(Ljava/lang/String;ILjava/lang/String;Lnet/thunderbird/feature/search/legacy/api/SearchFieldType;Ljava/lang/String;)V

    .line 259
    .line 260
    .line 261
    move-object/from16 v24, v7

    .line 262
    .line 263
    new-instance v7, Lnet/thunderbird/feature/search/legacy/api/MessageSearchField;

    .line 264
    .line 265
    const-string/jumbo v10, "visible"

    .line 266
    .line 267
    .line 268
    const-string v8, "VISIBLE"

    .line 269
    .line 270
    const/16 v9, 0x13

    .line 271
    .line 272
    invoke-direct/range {v7 .. v12}, Lnet/thunderbird/feature/search/legacy/api/MessageSearchField;-><init>(Ljava/lang/String;ILjava/lang/String;Lnet/thunderbird/feature/search/legacy/api/SearchFieldType;Ljava/lang/String;)V

    .line 273
    .line 274
    .line 275
    sput-object v7, Lnet/thunderbird/feature/search/legacy/api/MessageSearchField;->VISIBLE:Lnet/thunderbird/feature/search/legacy/api/MessageSearchField;

    .line 276
    .line 277
    const/16 v8, 0x14

    .line 278
    .line 279
    new-array v8, v8, [Lnet/thunderbird/feature/search/legacy/api/MessageSearchField;

    .line 280
    .line 281
    const/4 v9, 0x0

    .line 282
    aput-object v0, v8, v9

    .line 283
    .line 284
    const/4 v0, 0x1

    .line 285
    aput-object v13, v8, v0

    .line 286
    .line 287
    const/4 v0, 0x2

    .line 288
    aput-object v14, v8, v0

    .line 289
    .line 290
    const/4 v0, 0x3

    .line 291
    aput-object v15, v8, v0

    .line 292
    .line 293
    const/4 v0, 0x4

    .line 294
    aput-object v16, v8, v0

    .line 295
    .line 296
    const/4 v0, 0x5

    .line 297
    aput-object v17, v8, v0

    .line 298
    .line 299
    const/4 v0, 0x6

    .line 300
    aput-object v18, v8, v0

    .line 301
    .line 302
    const/4 v0, 0x7

    .line 303
    aput-object v19, v8, v0

    .line 304
    .line 305
    const/16 v0, 0x8

    .line 306
    .line 307
    aput-object v20, v8, v0

    .line 308
    .line 309
    const/16 v0, 0x9

    .line 310
    .line 311
    aput-object v21, v8, v0

    .line 312
    .line 313
    const/16 v0, 0xa

    .line 314
    .line 315
    aput-object v1, v8, v0

    .line 316
    .line 317
    const/16 v0, 0xb

    .line 318
    .line 319
    aput-object v2, v8, v0

    .line 320
    .line 321
    const/16 v0, 0xc

    .line 322
    .line 323
    aput-object v3, v8, v0

    .line 324
    .line 325
    const/16 v0, 0xd

    .line 326
    .line 327
    aput-object v4, v8, v0

    .line 328
    .line 329
    const/16 v0, 0xe

    .line 330
    .line 331
    aput-object v5, v8, v0

    .line 332
    .line 333
    const/16 v0, 0xf

    .line 334
    .line 335
    aput-object v6, v8, v0

    .line 336
    .line 337
    const/16 v0, 0x10

    .line 338
    .line 339
    aput-object v22, v8, v0

    .line 340
    .line 341
    const/16 v0, 0x11

    .line 342
    .line 343
    aput-object v23, v8, v0

    .line 344
    .line 345
    const/16 v0, 0x12

    .line 346
    .line 347
    aput-object v24, v8, v0

    .line 348
    .line 349
    const/16 v0, 0x13

    .line 350
    .line 351
    aput-object v7, v8, v0

    .line 352
    .line 353
    sput-object v8, Lnet/thunderbird/feature/search/legacy/api/MessageSearchField;->$VALUES:[Lnet/thunderbird/feature/search/legacy/api/MessageSearchField;

    .line 354
    .line 355
    new-instance v0, Lnet/thunderbird/feature/search/legacy/api/MessageSearchField$Companion;

    .line 356
    .line 357
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 358
    .line 359
    .line 360
    sput-object v0, Lnet/thunderbird/feature/search/legacy/api/MessageSearchField;->Companion:Lnet/thunderbird/feature/search/legacy/api/MessageSearchField$Companion;

    .line 361
    .line 362
    new-instance v0, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch$$ExternalSyntheticLambda0;

    .line 363
    .line 364
    const/16 v1, 0x17

    .line 365
    .line 366
    invoke-direct {v0, v1}, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch$$ExternalSyntheticLambda0;-><init>(I)V

    .line 367
    .line 368
    .line 369
    sget-object v1, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    .line 370
    .line 371
    invoke-static {v1, v0}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 372
    .line 373
    .line 374
    move-result-object v0

    .line 375
    sput-object v0, Lnet/thunderbird/feature/search/legacy/api/MessageSearchField;->$cachedSerializer$delegate:Lkotlin/Lazy;

    .line 376
    .line 377
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Lnet/thunderbird/feature/search/legacy/api/SearchFieldType;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lnet/thunderbird/feature/search/legacy/api/MessageSearchField;->fieldName:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p4, p0, Lnet/thunderbird/feature/search/legacy/api/MessageSearchField;->fieldType:Lnet/thunderbird/feature/search/legacy/api/SearchFieldType;

    .line 7
    .line 8
    iput-object p5, p0, Lnet/thunderbird/feature/search/legacy/api/MessageSearchField;->customQueryTemplate:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/thunderbird/feature/search/legacy/api/MessageSearchField;
    .locals 1

    .line 1
    const-class v0, Lnet/thunderbird/feature/search/legacy/api/MessageSearchField;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lnet/thunderbird/feature/search/legacy/api/MessageSearchField;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lnet/thunderbird/feature/search/legacy/api/MessageSearchField;
    .locals 1

    .line 1
    sget-object v0, Lnet/thunderbird/feature/search/legacy/api/MessageSearchField;->$VALUES:[Lnet/thunderbird/feature/search/legacy/api/MessageSearchField;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lnet/thunderbird/feature/search/legacy/api/MessageSearchField;

    .line 8
    .line 9
    return-object v0
.end method
