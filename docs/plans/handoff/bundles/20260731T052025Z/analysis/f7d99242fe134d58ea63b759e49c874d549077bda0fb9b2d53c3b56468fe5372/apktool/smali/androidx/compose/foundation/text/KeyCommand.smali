.class public final enum Landroidx/compose/foundation/text/KeyCommand;
.super Ljava/lang/Enum;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final synthetic $VALUES:[Landroidx/compose/foundation/text/KeyCommand;

.field public static final enum CENTER:Landroidx/compose/foundation/text/KeyCommand;

.field public static final enum COPY:Landroidx/compose/foundation/text/KeyCommand;

.field public static final enum CUT:Landroidx/compose/foundation/text/KeyCommand;

.field public static final enum DELETE_FROM_LINE_START:Landroidx/compose/foundation/text/KeyCommand;

.field public static final enum DELETE_NEXT_CHAR:Landroidx/compose/foundation/text/KeyCommand;

.field public static final enum DELETE_NEXT_WORD:Landroidx/compose/foundation/text/KeyCommand;

.field public static final enum DELETE_PREV_CHAR:Landroidx/compose/foundation/text/KeyCommand;

.field public static final enum DELETE_PREV_WORD:Landroidx/compose/foundation/text/KeyCommand;

.field public static final enum DELETE_TO_LINE_END:Landroidx/compose/foundation/text/KeyCommand;

.field public static final enum DESELECT:Landroidx/compose/foundation/text/KeyCommand;

.field public static final enum DOWN:Landroidx/compose/foundation/text/KeyCommand;

.field public static final enum END:Landroidx/compose/foundation/text/KeyCommand;

.field public static final enum HOME:Landroidx/compose/foundation/text/KeyCommand;

.field public static final enum LEFT_CHAR:Landroidx/compose/foundation/text/KeyCommand;

.field public static final enum LEFT_WORD:Landroidx/compose/foundation/text/KeyCommand;

.field public static final enum LINE_END:Landroidx/compose/foundation/text/KeyCommand;

.field public static final enum LINE_LEFT:Landroidx/compose/foundation/text/KeyCommand;

.field public static final enum LINE_RIGHT:Landroidx/compose/foundation/text/KeyCommand;

.field public static final enum LINE_START:Landroidx/compose/foundation/text/KeyCommand;

.field public static final enum NEW_LINE:Landroidx/compose/foundation/text/KeyCommand;

.field public static final enum NEXT_PARAGRAPH:Landroidx/compose/foundation/text/KeyCommand;

.field public static final enum PAGE_DOWN:Landroidx/compose/foundation/text/KeyCommand;

.field public static final enum PAGE_UP:Landroidx/compose/foundation/text/KeyCommand;

.field public static final enum PASTE:Landroidx/compose/foundation/text/KeyCommand;

.field public static final enum PREV_PARAGRAPH:Landroidx/compose/foundation/text/KeyCommand;

.field public static final enum REDO:Landroidx/compose/foundation/text/KeyCommand;

.field public static final enum RIGHT_CHAR:Landroidx/compose/foundation/text/KeyCommand;

.field public static final enum RIGHT_WORD:Landroidx/compose/foundation/text/KeyCommand;

.field public static final enum SELECT_ALL:Landroidx/compose/foundation/text/KeyCommand;

.field public static final enum SELECT_DOWN:Landroidx/compose/foundation/text/KeyCommand;

.field public static final enum SELECT_END:Landroidx/compose/foundation/text/KeyCommand;

.field public static final enum SELECT_HOME:Landroidx/compose/foundation/text/KeyCommand;

.field public static final enum SELECT_LEFT_CHAR:Landroidx/compose/foundation/text/KeyCommand;

.field public static final enum SELECT_LEFT_WORD:Landroidx/compose/foundation/text/KeyCommand;

.field public static final enum SELECT_LINE_END:Landroidx/compose/foundation/text/KeyCommand;

.field public static final enum SELECT_LINE_LEFT:Landroidx/compose/foundation/text/KeyCommand;

.field public static final enum SELECT_LINE_RIGHT:Landroidx/compose/foundation/text/KeyCommand;

.field public static final enum SELECT_LINE_START:Landroidx/compose/foundation/text/KeyCommand;

.field public static final enum SELECT_NEXT_PARAGRAPH:Landroidx/compose/foundation/text/KeyCommand;

.field public static final enum SELECT_PAGE_DOWN:Landroidx/compose/foundation/text/KeyCommand;

.field public static final enum SELECT_PAGE_UP:Landroidx/compose/foundation/text/KeyCommand;

.field public static final enum SELECT_PREV_PARAGRAPH:Landroidx/compose/foundation/text/KeyCommand;

.field public static final enum SELECT_RIGHT_CHAR:Landroidx/compose/foundation/text/KeyCommand;

.field public static final enum SELECT_RIGHT_WORD:Landroidx/compose/foundation/text/KeyCommand;

.field public static final enum SELECT_UP:Landroidx/compose/foundation/text/KeyCommand;

.field public static final enum TAB:Landroidx/compose/foundation/text/KeyCommand;

.field public static final enum UNDO:Landroidx/compose/foundation/text/KeyCommand;

.field public static final enum UP:Landroidx/compose/foundation/text/KeyCommand;


# instance fields
.field public final editsText:Z


# direct methods
.method static constructor <clinit>()V
    .locals 73

    .line 1
    new-instance v0, Landroidx/compose/foundation/text/KeyCommand;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "LEFT_CHAR"

    .line 5
    .line 6
    invoke-direct {v0, v1, v2, v1}, Landroidx/compose/foundation/text/KeyCommand;-><init>(ILjava/lang/String;Z)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Landroidx/compose/foundation/text/KeyCommand;->LEFT_CHAR:Landroidx/compose/foundation/text/KeyCommand;

    .line 10
    .line 11
    new-instance v2, Landroidx/compose/foundation/text/KeyCommand;

    .line 12
    .line 13
    const/4 v3, 0x1

    .line 14
    const-string v4, "RIGHT_CHAR"

    .line 15
    .line 16
    invoke-direct {v2, v3, v4, v1}, Landroidx/compose/foundation/text/KeyCommand;-><init>(ILjava/lang/String;Z)V

    .line 17
    .line 18
    .line 19
    sput-object v2, Landroidx/compose/foundation/text/KeyCommand;->RIGHT_CHAR:Landroidx/compose/foundation/text/KeyCommand;

    .line 20
    .line 21
    new-instance v4, Landroidx/compose/foundation/text/KeyCommand;

    .line 22
    .line 23
    const/4 v5, 0x2

    .line 24
    const-string v6, "RIGHT_WORD"

    .line 25
    .line 26
    invoke-direct {v4, v5, v6, v1}, Landroidx/compose/foundation/text/KeyCommand;-><init>(ILjava/lang/String;Z)V

    .line 27
    .line 28
    .line 29
    sput-object v4, Landroidx/compose/foundation/text/KeyCommand;->RIGHT_WORD:Landroidx/compose/foundation/text/KeyCommand;

    .line 30
    .line 31
    new-instance v6, Landroidx/compose/foundation/text/KeyCommand;

    .line 32
    .line 33
    const/4 v7, 0x3

    .line 34
    const-string v8, "LEFT_WORD"

    .line 35
    .line 36
    invoke-direct {v6, v7, v8, v1}, Landroidx/compose/foundation/text/KeyCommand;-><init>(ILjava/lang/String;Z)V

    .line 37
    .line 38
    .line 39
    sput-object v6, Landroidx/compose/foundation/text/KeyCommand;->LEFT_WORD:Landroidx/compose/foundation/text/KeyCommand;

    .line 40
    .line 41
    new-instance v8, Landroidx/compose/foundation/text/KeyCommand;

    .line 42
    .line 43
    const/4 v9, 0x4

    .line 44
    const-string v10, "NEXT_PARAGRAPH"

    .line 45
    .line 46
    invoke-direct {v8, v9, v10, v1}, Landroidx/compose/foundation/text/KeyCommand;-><init>(ILjava/lang/String;Z)V

    .line 47
    .line 48
    .line 49
    sput-object v8, Landroidx/compose/foundation/text/KeyCommand;->NEXT_PARAGRAPH:Landroidx/compose/foundation/text/KeyCommand;

    .line 50
    .line 51
    new-instance v10, Landroidx/compose/foundation/text/KeyCommand;

    .line 52
    .line 53
    const/4 v11, 0x5

    .line 54
    const-string v12, "PREV_PARAGRAPH"

    .line 55
    .line 56
    invoke-direct {v10, v11, v12, v1}, Landroidx/compose/foundation/text/KeyCommand;-><init>(ILjava/lang/String;Z)V

    .line 57
    .line 58
    .line 59
    sput-object v10, Landroidx/compose/foundation/text/KeyCommand;->PREV_PARAGRAPH:Landroidx/compose/foundation/text/KeyCommand;

    .line 60
    .line 61
    new-instance v12, Landroidx/compose/foundation/text/KeyCommand;

    .line 62
    .line 63
    const/4 v13, 0x6

    .line 64
    const-string v14, "LINE_START"

    .line 65
    .line 66
    invoke-direct {v12, v13, v14, v1}, Landroidx/compose/foundation/text/KeyCommand;-><init>(ILjava/lang/String;Z)V

    .line 67
    .line 68
    .line 69
    sput-object v12, Landroidx/compose/foundation/text/KeyCommand;->LINE_START:Landroidx/compose/foundation/text/KeyCommand;

    .line 70
    .line 71
    new-instance v14, Landroidx/compose/foundation/text/KeyCommand;

    .line 72
    .line 73
    const/4 v15, 0x7

    .line 74
    move/from16 v16, v5

    .line 75
    .line 76
    const-string v5, "LINE_END"

    .line 77
    .line 78
    invoke-direct {v14, v15, v5, v1}, Landroidx/compose/foundation/text/KeyCommand;-><init>(ILjava/lang/String;Z)V

    .line 79
    .line 80
    .line 81
    sput-object v14, Landroidx/compose/foundation/text/KeyCommand;->LINE_END:Landroidx/compose/foundation/text/KeyCommand;

    .line 82
    .line 83
    new-instance v5, Landroidx/compose/foundation/text/KeyCommand;

    .line 84
    .line 85
    move/from16 v17, v7

    .line 86
    .line 87
    const/16 v7, 0x8

    .line 88
    .line 89
    move/from16 v18, v9

    .line 90
    .line 91
    const-string v9, "LINE_LEFT"

    .line 92
    .line 93
    invoke-direct {v5, v7, v9, v1}, Landroidx/compose/foundation/text/KeyCommand;-><init>(ILjava/lang/String;Z)V

    .line 94
    .line 95
    .line 96
    sput-object v5, Landroidx/compose/foundation/text/KeyCommand;->LINE_LEFT:Landroidx/compose/foundation/text/KeyCommand;

    .line 97
    .line 98
    new-instance v9, Landroidx/compose/foundation/text/KeyCommand;

    .line 99
    .line 100
    move/from16 v19, v7

    .line 101
    .line 102
    const/16 v7, 0x9

    .line 103
    .line 104
    move/from16 v20, v11

    .line 105
    .line 106
    const-string v11, "LINE_RIGHT"

    .line 107
    .line 108
    invoke-direct {v9, v7, v11, v1}, Landroidx/compose/foundation/text/KeyCommand;-><init>(ILjava/lang/String;Z)V

    .line 109
    .line 110
    .line 111
    sput-object v9, Landroidx/compose/foundation/text/KeyCommand;->LINE_RIGHT:Landroidx/compose/foundation/text/KeyCommand;

    .line 112
    .line 113
    new-instance v11, Landroidx/compose/foundation/text/KeyCommand;

    .line 114
    .line 115
    move/from16 v21, v7

    .line 116
    .line 117
    const/16 v7, 0xa

    .line 118
    .line 119
    move/from16 v22, v13

    .line 120
    .line 121
    const-string v13, "UP"

    .line 122
    .line 123
    invoke-direct {v11, v7, v13, v1}, Landroidx/compose/foundation/text/KeyCommand;-><init>(ILjava/lang/String;Z)V

    .line 124
    .line 125
    .line 126
    sput-object v11, Landroidx/compose/foundation/text/KeyCommand;->UP:Landroidx/compose/foundation/text/KeyCommand;

    .line 127
    .line 128
    new-instance v13, Landroidx/compose/foundation/text/KeyCommand;

    .line 129
    .line 130
    move/from16 v23, v7

    .line 131
    .line 132
    const/16 v7, 0xb

    .line 133
    .line 134
    move/from16 v24, v15

    .line 135
    .line 136
    const-string v15, "DOWN"

    .line 137
    .line 138
    invoke-direct {v13, v7, v15, v1}, Landroidx/compose/foundation/text/KeyCommand;-><init>(ILjava/lang/String;Z)V

    .line 139
    .line 140
    .line 141
    sput-object v13, Landroidx/compose/foundation/text/KeyCommand;->DOWN:Landroidx/compose/foundation/text/KeyCommand;

    .line 142
    .line 143
    new-instance v15, Landroidx/compose/foundation/text/KeyCommand;

    .line 144
    .line 145
    move/from16 v25, v7

    .line 146
    .line 147
    const/16 v7, 0xc

    .line 148
    .line 149
    const-string v3, "CENTER"

    .line 150
    .line 151
    invoke-direct {v15, v7, v3, v1}, Landroidx/compose/foundation/text/KeyCommand;-><init>(ILjava/lang/String;Z)V

    .line 152
    .line 153
    .line 154
    sput-object v15, Landroidx/compose/foundation/text/KeyCommand;->CENTER:Landroidx/compose/foundation/text/KeyCommand;

    .line 155
    .line 156
    new-instance v3, Landroidx/compose/foundation/text/KeyCommand;

    .line 157
    .line 158
    move/from16 v27, v7

    .line 159
    .line 160
    const/16 v7, 0xd

    .line 161
    .line 162
    move-object/from16 v28, v0

    .line 163
    .line 164
    const-string v0, "PAGE_UP"

    .line 165
    .line 166
    invoke-direct {v3, v7, v0, v1}, Landroidx/compose/foundation/text/KeyCommand;-><init>(ILjava/lang/String;Z)V

    .line 167
    .line 168
    .line 169
    sput-object v3, Landroidx/compose/foundation/text/KeyCommand;->PAGE_UP:Landroidx/compose/foundation/text/KeyCommand;

    .line 170
    .line 171
    new-instance v0, Landroidx/compose/foundation/text/KeyCommand;

    .line 172
    .line 173
    move/from16 v29, v7

    .line 174
    .line 175
    const/16 v7, 0xe

    .line 176
    .line 177
    move-object/from16 v30, v2

    .line 178
    .line 179
    const-string v2, "PAGE_DOWN"

    .line 180
    .line 181
    invoke-direct {v0, v7, v2, v1}, Landroidx/compose/foundation/text/KeyCommand;-><init>(ILjava/lang/String;Z)V

    .line 182
    .line 183
    .line 184
    sput-object v0, Landroidx/compose/foundation/text/KeyCommand;->PAGE_DOWN:Landroidx/compose/foundation/text/KeyCommand;

    .line 185
    .line 186
    new-instance v2, Landroidx/compose/foundation/text/KeyCommand;

    .line 187
    .line 188
    move/from16 v31, v7

    .line 189
    .line 190
    const/16 v7, 0xf

    .line 191
    .line 192
    move-object/from16 v32, v0

    .line 193
    .line 194
    const-string v0, "HOME"

    .line 195
    .line 196
    invoke-direct {v2, v7, v0, v1}, Landroidx/compose/foundation/text/KeyCommand;-><init>(ILjava/lang/String;Z)V

    .line 197
    .line 198
    .line 199
    sput-object v2, Landroidx/compose/foundation/text/KeyCommand;->HOME:Landroidx/compose/foundation/text/KeyCommand;

    .line 200
    .line 201
    new-instance v0, Landroidx/compose/foundation/text/KeyCommand;

    .line 202
    .line 203
    move/from16 v33, v7

    .line 204
    .line 205
    const/16 v7, 0x10

    .line 206
    .line 207
    move-object/from16 v34, v2

    .line 208
    .line 209
    const-string v2, "END"

    .line 210
    .line 211
    invoke-direct {v0, v7, v2, v1}, Landroidx/compose/foundation/text/KeyCommand;-><init>(ILjava/lang/String;Z)V

    .line 212
    .line 213
    .line 214
    sput-object v0, Landroidx/compose/foundation/text/KeyCommand;->END:Landroidx/compose/foundation/text/KeyCommand;

    .line 215
    .line 216
    new-instance v2, Landroidx/compose/foundation/text/KeyCommand;

    .line 217
    .line 218
    move/from16 v35, v7

    .line 219
    .line 220
    const/16 v7, 0x11

    .line 221
    .line 222
    move-object/from16 v36, v0

    .line 223
    .line 224
    const-string v0, "COPY"

    .line 225
    .line 226
    invoke-direct {v2, v7, v0, v1}, Landroidx/compose/foundation/text/KeyCommand;-><init>(ILjava/lang/String;Z)V

    .line 227
    .line 228
    .line 229
    sput-object v2, Landroidx/compose/foundation/text/KeyCommand;->COPY:Landroidx/compose/foundation/text/KeyCommand;

    .line 230
    .line 231
    new-instance v0, Landroidx/compose/foundation/text/KeyCommand;

    .line 232
    .line 233
    move/from16 v37, v7

    .line 234
    .line 235
    const/16 v7, 0x12

    .line 236
    .line 237
    const-string v1, "PASTE"

    .line 238
    .line 239
    move-object/from16 v39, v2

    .line 240
    .line 241
    const/4 v2, 0x1

    .line 242
    invoke-direct {v0, v7, v1, v2}, Landroidx/compose/foundation/text/KeyCommand;-><init>(ILjava/lang/String;Z)V

    .line 243
    .line 244
    .line 245
    sput-object v0, Landroidx/compose/foundation/text/KeyCommand;->PASTE:Landroidx/compose/foundation/text/KeyCommand;

    .line 246
    .line 247
    new-instance v1, Landroidx/compose/foundation/text/KeyCommand;

    .line 248
    .line 249
    move/from16 v40, v7

    .line 250
    .line 251
    const/16 v7, 0x13

    .line 252
    .line 253
    move-object/from16 v41, v0

    .line 254
    .line 255
    const-string v0, "CUT"

    .line 256
    .line 257
    invoke-direct {v1, v7, v0, v2}, Landroidx/compose/foundation/text/KeyCommand;-><init>(ILjava/lang/String;Z)V

    .line 258
    .line 259
    .line 260
    sput-object v1, Landroidx/compose/foundation/text/KeyCommand;->CUT:Landroidx/compose/foundation/text/KeyCommand;

    .line 261
    .line 262
    new-instance v0, Landroidx/compose/foundation/text/KeyCommand;

    .line 263
    .line 264
    move/from16 v42, v7

    .line 265
    .line 266
    const/16 v7, 0x14

    .line 267
    .line 268
    move-object/from16 v43, v1

    .line 269
    .line 270
    const-string v1, "DELETE_PREV_CHAR"

    .line 271
    .line 272
    invoke-direct {v0, v7, v1, v2}, Landroidx/compose/foundation/text/KeyCommand;-><init>(ILjava/lang/String;Z)V

    .line 273
    .line 274
    .line 275
    sput-object v0, Landroidx/compose/foundation/text/KeyCommand;->DELETE_PREV_CHAR:Landroidx/compose/foundation/text/KeyCommand;

    .line 276
    .line 277
    new-instance v1, Landroidx/compose/foundation/text/KeyCommand;

    .line 278
    .line 279
    move/from16 v44, v7

    .line 280
    .line 281
    const/16 v7, 0x15

    .line 282
    .line 283
    move-object/from16 v45, v0

    .line 284
    .line 285
    const-string v0, "DELETE_NEXT_CHAR"

    .line 286
    .line 287
    invoke-direct {v1, v7, v0, v2}, Landroidx/compose/foundation/text/KeyCommand;-><init>(ILjava/lang/String;Z)V

    .line 288
    .line 289
    .line 290
    sput-object v1, Landroidx/compose/foundation/text/KeyCommand;->DELETE_NEXT_CHAR:Landroidx/compose/foundation/text/KeyCommand;

    .line 291
    .line 292
    new-instance v0, Landroidx/compose/foundation/text/KeyCommand;

    .line 293
    .line 294
    move/from16 v46, v7

    .line 295
    .line 296
    const-string v7, "DELETE_PREV_WORD"

    .line 297
    .line 298
    move-object/from16 v47, v1

    .line 299
    .line 300
    const/16 v1, 0x16

    .line 301
    .line 302
    invoke-direct {v0, v1, v7, v2}, Landroidx/compose/foundation/text/KeyCommand;-><init>(ILjava/lang/String;Z)V

    .line 303
    .line 304
    .line 305
    sput-object v0, Landroidx/compose/foundation/text/KeyCommand;->DELETE_PREV_WORD:Landroidx/compose/foundation/text/KeyCommand;

    .line 306
    .line 307
    new-instance v1, Landroidx/compose/foundation/text/KeyCommand;

    .line 308
    .line 309
    const-string v7, "DELETE_NEXT_WORD"

    .line 310
    .line 311
    move-object/from16 v48, v0

    .line 312
    .line 313
    const/16 v0, 0x17

    .line 314
    .line 315
    invoke-direct {v1, v0, v7, v2}, Landroidx/compose/foundation/text/KeyCommand;-><init>(ILjava/lang/String;Z)V

    .line 316
    .line 317
    .line 318
    sput-object v1, Landroidx/compose/foundation/text/KeyCommand;->DELETE_NEXT_WORD:Landroidx/compose/foundation/text/KeyCommand;

    .line 319
    .line 320
    new-instance v0, Landroidx/compose/foundation/text/KeyCommand;

    .line 321
    .line 322
    const-string v7, "DELETE_FROM_LINE_START"

    .line 323
    .line 324
    move-object/from16 v49, v1

    .line 325
    .line 326
    const/16 v1, 0x18

    .line 327
    .line 328
    invoke-direct {v0, v1, v7, v2}, Landroidx/compose/foundation/text/KeyCommand;-><init>(ILjava/lang/String;Z)V

    .line 329
    .line 330
    .line 331
    sput-object v0, Landroidx/compose/foundation/text/KeyCommand;->DELETE_FROM_LINE_START:Landroidx/compose/foundation/text/KeyCommand;

    .line 332
    .line 333
    new-instance v1, Landroidx/compose/foundation/text/KeyCommand;

    .line 334
    .line 335
    const-string v7, "DELETE_TO_LINE_END"

    .line 336
    .line 337
    move-object/from16 v50, v0

    .line 338
    .line 339
    const/16 v0, 0x19

    .line 340
    .line 341
    invoke-direct {v1, v0, v7, v2}, Landroidx/compose/foundation/text/KeyCommand;-><init>(ILjava/lang/String;Z)V

    .line 342
    .line 343
    .line 344
    sput-object v1, Landroidx/compose/foundation/text/KeyCommand;->DELETE_TO_LINE_END:Landroidx/compose/foundation/text/KeyCommand;

    .line 345
    .line 346
    new-instance v0, Landroidx/compose/foundation/text/KeyCommand;

    .line 347
    .line 348
    const-string v2, "SELECT_ALL"

    .line 349
    .line 350
    const/16 v7, 0x1a

    .line 351
    .line 352
    move-object/from16 v51, v1

    .line 353
    .line 354
    const/4 v1, 0x0

    .line 355
    invoke-direct {v0, v7, v2, v1}, Landroidx/compose/foundation/text/KeyCommand;-><init>(ILjava/lang/String;Z)V

    .line 356
    .line 357
    .line 358
    sput-object v0, Landroidx/compose/foundation/text/KeyCommand;->SELECT_ALL:Landroidx/compose/foundation/text/KeyCommand;

    .line 359
    .line 360
    new-instance v2, Landroidx/compose/foundation/text/KeyCommand;

    .line 361
    .line 362
    const-string v7, "SELECT_LEFT_CHAR"

    .line 363
    .line 364
    move-object/from16 v52, v0

    .line 365
    .line 366
    const/16 v0, 0x1b

    .line 367
    .line 368
    invoke-direct {v2, v0, v7, v1}, Landroidx/compose/foundation/text/KeyCommand;-><init>(ILjava/lang/String;Z)V

    .line 369
    .line 370
    .line 371
    sput-object v2, Landroidx/compose/foundation/text/KeyCommand;->SELECT_LEFT_CHAR:Landroidx/compose/foundation/text/KeyCommand;

    .line 372
    .line 373
    new-instance v0, Landroidx/compose/foundation/text/KeyCommand;

    .line 374
    .line 375
    const-string v7, "SELECT_RIGHT_CHAR"

    .line 376
    .line 377
    move-object/from16 v53, v2

    .line 378
    .line 379
    const/16 v2, 0x1c

    .line 380
    .line 381
    invoke-direct {v0, v2, v7, v1}, Landroidx/compose/foundation/text/KeyCommand;-><init>(ILjava/lang/String;Z)V

    .line 382
    .line 383
    .line 384
    sput-object v0, Landroidx/compose/foundation/text/KeyCommand;->SELECT_RIGHT_CHAR:Landroidx/compose/foundation/text/KeyCommand;

    .line 385
    .line 386
    new-instance v2, Landroidx/compose/foundation/text/KeyCommand;

    .line 387
    .line 388
    const-string v7, "SELECT_UP"

    .line 389
    .line 390
    move-object/from16 v54, v0

    .line 391
    .line 392
    const/16 v0, 0x1d

    .line 393
    .line 394
    invoke-direct {v2, v0, v7, v1}, Landroidx/compose/foundation/text/KeyCommand;-><init>(ILjava/lang/String;Z)V

    .line 395
    .line 396
    .line 397
    sput-object v2, Landroidx/compose/foundation/text/KeyCommand;->SELECT_UP:Landroidx/compose/foundation/text/KeyCommand;

    .line 398
    .line 399
    new-instance v0, Landroidx/compose/foundation/text/KeyCommand;

    .line 400
    .line 401
    const-string v7, "SELECT_DOWN"

    .line 402
    .line 403
    move-object/from16 v55, v2

    .line 404
    .line 405
    const/16 v2, 0x1e

    .line 406
    .line 407
    invoke-direct {v0, v2, v7, v1}, Landroidx/compose/foundation/text/KeyCommand;-><init>(ILjava/lang/String;Z)V

    .line 408
    .line 409
    .line 410
    sput-object v0, Landroidx/compose/foundation/text/KeyCommand;->SELECT_DOWN:Landroidx/compose/foundation/text/KeyCommand;

    .line 411
    .line 412
    new-instance v2, Landroidx/compose/foundation/text/KeyCommand;

    .line 413
    .line 414
    const-string v7, "SELECT_PAGE_UP"

    .line 415
    .line 416
    move-object/from16 v56, v0

    .line 417
    .line 418
    const/16 v0, 0x1f

    .line 419
    .line 420
    invoke-direct {v2, v0, v7, v1}, Landroidx/compose/foundation/text/KeyCommand;-><init>(ILjava/lang/String;Z)V

    .line 421
    .line 422
    .line 423
    sput-object v2, Landroidx/compose/foundation/text/KeyCommand;->SELECT_PAGE_UP:Landroidx/compose/foundation/text/KeyCommand;

    .line 424
    .line 425
    new-instance v0, Landroidx/compose/foundation/text/KeyCommand;

    .line 426
    .line 427
    const-string v7, "SELECT_PAGE_DOWN"

    .line 428
    .line 429
    move-object/from16 v57, v2

    .line 430
    .line 431
    const/16 v2, 0x20

    .line 432
    .line 433
    invoke-direct {v0, v2, v7, v1}, Landroidx/compose/foundation/text/KeyCommand;-><init>(ILjava/lang/String;Z)V

    .line 434
    .line 435
    .line 436
    sput-object v0, Landroidx/compose/foundation/text/KeyCommand;->SELECT_PAGE_DOWN:Landroidx/compose/foundation/text/KeyCommand;

    .line 437
    .line 438
    new-instance v2, Landroidx/compose/foundation/text/KeyCommand;

    .line 439
    .line 440
    const-string v7, "SELECT_HOME"

    .line 441
    .line 442
    move-object/from16 v58, v0

    .line 443
    .line 444
    const/16 v0, 0x21

    .line 445
    .line 446
    invoke-direct {v2, v0, v7, v1}, Landroidx/compose/foundation/text/KeyCommand;-><init>(ILjava/lang/String;Z)V

    .line 447
    .line 448
    .line 449
    sput-object v2, Landroidx/compose/foundation/text/KeyCommand;->SELECT_HOME:Landroidx/compose/foundation/text/KeyCommand;

    .line 450
    .line 451
    new-instance v0, Landroidx/compose/foundation/text/KeyCommand;

    .line 452
    .line 453
    const-string v7, "SELECT_END"

    .line 454
    .line 455
    move-object/from16 v59, v2

    .line 456
    .line 457
    const/16 v2, 0x22

    .line 458
    .line 459
    invoke-direct {v0, v2, v7, v1}, Landroidx/compose/foundation/text/KeyCommand;-><init>(ILjava/lang/String;Z)V

    .line 460
    .line 461
    .line 462
    sput-object v0, Landroidx/compose/foundation/text/KeyCommand;->SELECT_END:Landroidx/compose/foundation/text/KeyCommand;

    .line 463
    .line 464
    new-instance v2, Landroidx/compose/foundation/text/KeyCommand;

    .line 465
    .line 466
    const-string v7, "SELECT_LEFT_WORD"

    .line 467
    .line 468
    move-object/from16 v60, v0

    .line 469
    .line 470
    const/16 v0, 0x23

    .line 471
    .line 472
    invoke-direct {v2, v0, v7, v1}, Landroidx/compose/foundation/text/KeyCommand;-><init>(ILjava/lang/String;Z)V

    .line 473
    .line 474
    .line 475
    sput-object v2, Landroidx/compose/foundation/text/KeyCommand;->SELECT_LEFT_WORD:Landroidx/compose/foundation/text/KeyCommand;

    .line 476
    .line 477
    new-instance v0, Landroidx/compose/foundation/text/KeyCommand;

    .line 478
    .line 479
    const-string v7, "SELECT_RIGHT_WORD"

    .line 480
    .line 481
    move-object/from16 v61, v2

    .line 482
    .line 483
    const/16 v2, 0x24

    .line 484
    .line 485
    invoke-direct {v0, v2, v7, v1}, Landroidx/compose/foundation/text/KeyCommand;-><init>(ILjava/lang/String;Z)V

    .line 486
    .line 487
    .line 488
    sput-object v0, Landroidx/compose/foundation/text/KeyCommand;->SELECT_RIGHT_WORD:Landroidx/compose/foundation/text/KeyCommand;

    .line 489
    .line 490
    new-instance v2, Landroidx/compose/foundation/text/KeyCommand;

    .line 491
    .line 492
    const-string v7, "SELECT_NEXT_PARAGRAPH"

    .line 493
    .line 494
    move-object/from16 v62, v0

    .line 495
    .line 496
    const/16 v0, 0x25

    .line 497
    .line 498
    invoke-direct {v2, v0, v7, v1}, Landroidx/compose/foundation/text/KeyCommand;-><init>(ILjava/lang/String;Z)V

    .line 499
    .line 500
    .line 501
    sput-object v2, Landroidx/compose/foundation/text/KeyCommand;->SELECT_NEXT_PARAGRAPH:Landroidx/compose/foundation/text/KeyCommand;

    .line 502
    .line 503
    new-instance v0, Landroidx/compose/foundation/text/KeyCommand;

    .line 504
    .line 505
    const-string v7, "SELECT_PREV_PARAGRAPH"

    .line 506
    .line 507
    move-object/from16 v63, v2

    .line 508
    .line 509
    const/16 v2, 0x26

    .line 510
    .line 511
    invoke-direct {v0, v2, v7, v1}, Landroidx/compose/foundation/text/KeyCommand;-><init>(ILjava/lang/String;Z)V

    .line 512
    .line 513
    .line 514
    sput-object v0, Landroidx/compose/foundation/text/KeyCommand;->SELECT_PREV_PARAGRAPH:Landroidx/compose/foundation/text/KeyCommand;

    .line 515
    .line 516
    new-instance v2, Landroidx/compose/foundation/text/KeyCommand;

    .line 517
    .line 518
    const-string v7, "SELECT_LINE_START"

    .line 519
    .line 520
    move-object/from16 v64, v0

    .line 521
    .line 522
    const/16 v0, 0x27

    .line 523
    .line 524
    invoke-direct {v2, v0, v7, v1}, Landroidx/compose/foundation/text/KeyCommand;-><init>(ILjava/lang/String;Z)V

    .line 525
    .line 526
    .line 527
    sput-object v2, Landroidx/compose/foundation/text/KeyCommand;->SELECT_LINE_START:Landroidx/compose/foundation/text/KeyCommand;

    .line 528
    .line 529
    new-instance v0, Landroidx/compose/foundation/text/KeyCommand;

    .line 530
    .line 531
    const-string v7, "SELECT_LINE_END"

    .line 532
    .line 533
    move-object/from16 v65, v2

    .line 534
    .line 535
    const/16 v2, 0x28

    .line 536
    .line 537
    invoke-direct {v0, v2, v7, v1}, Landroidx/compose/foundation/text/KeyCommand;-><init>(ILjava/lang/String;Z)V

    .line 538
    .line 539
    .line 540
    sput-object v0, Landroidx/compose/foundation/text/KeyCommand;->SELECT_LINE_END:Landroidx/compose/foundation/text/KeyCommand;

    .line 541
    .line 542
    new-instance v2, Landroidx/compose/foundation/text/KeyCommand;

    .line 543
    .line 544
    const-string v7, "SELECT_LINE_LEFT"

    .line 545
    .line 546
    move-object/from16 v66, v0

    .line 547
    .line 548
    const/16 v0, 0x29

    .line 549
    .line 550
    invoke-direct {v2, v0, v7, v1}, Landroidx/compose/foundation/text/KeyCommand;-><init>(ILjava/lang/String;Z)V

    .line 551
    .line 552
    .line 553
    sput-object v2, Landroidx/compose/foundation/text/KeyCommand;->SELECT_LINE_LEFT:Landroidx/compose/foundation/text/KeyCommand;

    .line 554
    .line 555
    new-instance v0, Landroidx/compose/foundation/text/KeyCommand;

    .line 556
    .line 557
    const-string v7, "SELECT_LINE_RIGHT"

    .line 558
    .line 559
    move-object/from16 v67, v2

    .line 560
    .line 561
    const/16 v2, 0x2a

    .line 562
    .line 563
    invoke-direct {v0, v2, v7, v1}, Landroidx/compose/foundation/text/KeyCommand;-><init>(ILjava/lang/String;Z)V

    .line 564
    .line 565
    .line 566
    sput-object v0, Landroidx/compose/foundation/text/KeyCommand;->SELECT_LINE_RIGHT:Landroidx/compose/foundation/text/KeyCommand;

    .line 567
    .line 568
    new-instance v2, Landroidx/compose/foundation/text/KeyCommand;

    .line 569
    .line 570
    const-string v7, "DESELECT"

    .line 571
    .line 572
    move-object/from16 v68, v0

    .line 573
    .line 574
    const/16 v0, 0x2b

    .line 575
    .line 576
    invoke-direct {v2, v0, v7, v1}, Landroidx/compose/foundation/text/KeyCommand;-><init>(ILjava/lang/String;Z)V

    .line 577
    .line 578
    .line 579
    sput-object v2, Landroidx/compose/foundation/text/KeyCommand;->DESELECT:Landroidx/compose/foundation/text/KeyCommand;

    .line 580
    .line 581
    new-instance v0, Landroidx/compose/foundation/text/KeyCommand;

    .line 582
    .line 583
    const-string v1, "NEW_LINE"

    .line 584
    .line 585
    const/16 v7, 0x2c

    .line 586
    .line 587
    move-object/from16 v69, v2

    .line 588
    .line 589
    const/4 v2, 0x1

    .line 590
    invoke-direct {v0, v7, v1, v2}, Landroidx/compose/foundation/text/KeyCommand;-><init>(ILjava/lang/String;Z)V

    .line 591
    .line 592
    .line 593
    sput-object v0, Landroidx/compose/foundation/text/KeyCommand;->NEW_LINE:Landroidx/compose/foundation/text/KeyCommand;

    .line 594
    .line 595
    new-instance v1, Landroidx/compose/foundation/text/KeyCommand;

    .line 596
    .line 597
    const-string v7, "TAB"

    .line 598
    .line 599
    move-object/from16 v26, v0

    .line 600
    .line 601
    const/16 v0, 0x2d

    .line 602
    .line 603
    invoke-direct {v1, v0, v7, v2}, Landroidx/compose/foundation/text/KeyCommand;-><init>(ILjava/lang/String;Z)V

    .line 604
    .line 605
    .line 606
    sput-object v1, Landroidx/compose/foundation/text/KeyCommand;->TAB:Landroidx/compose/foundation/text/KeyCommand;

    .line 607
    .line 608
    new-instance v0, Landroidx/compose/foundation/text/KeyCommand;

    .line 609
    .line 610
    const-string v7, "UNDO"

    .line 611
    .line 612
    move-object/from16 v70, v1

    .line 613
    .line 614
    const/16 v1, 0x2e

    .line 615
    .line 616
    invoke-direct {v0, v1, v7, v2}, Landroidx/compose/foundation/text/KeyCommand;-><init>(ILjava/lang/String;Z)V

    .line 617
    .line 618
    .line 619
    sput-object v0, Landroidx/compose/foundation/text/KeyCommand;->UNDO:Landroidx/compose/foundation/text/KeyCommand;

    .line 620
    .line 621
    new-instance v1, Landroidx/compose/foundation/text/KeyCommand;

    .line 622
    .line 623
    const-string v7, "REDO"

    .line 624
    .line 625
    move-object/from16 v71, v0

    .line 626
    .line 627
    const/16 v0, 0x2f

    .line 628
    .line 629
    invoke-direct {v1, v0, v7, v2}, Landroidx/compose/foundation/text/KeyCommand;-><init>(ILjava/lang/String;Z)V

    .line 630
    .line 631
    .line 632
    sput-object v1, Landroidx/compose/foundation/text/KeyCommand;->REDO:Landroidx/compose/foundation/text/KeyCommand;

    .line 633
    .line 634
    new-instance v0, Landroidx/compose/foundation/text/KeyCommand;

    .line 635
    .line 636
    const-string v7, "CHARACTER_PALETTE"

    .line 637
    .line 638
    move-object/from16 v72, v1

    .line 639
    .line 640
    const/16 v1, 0x30

    .line 641
    .line 642
    invoke-direct {v0, v1, v7, v2}, Landroidx/compose/foundation/text/KeyCommand;-><init>(ILjava/lang/String;Z)V

    .line 643
    .line 644
    .line 645
    const/16 v1, 0x31

    .line 646
    .line 647
    new-array v1, v1, [Landroidx/compose/foundation/text/KeyCommand;

    .line 648
    .line 649
    const/16 v38, 0x0

    .line 650
    .line 651
    aput-object v28, v1, v38

    .line 652
    .line 653
    aput-object v30, v1, v2

    .line 654
    .line 655
    aput-object v4, v1, v16

    .line 656
    .line 657
    aput-object v6, v1, v17

    .line 658
    .line 659
    aput-object v8, v1, v18

    .line 660
    .line 661
    aput-object v10, v1, v20

    .line 662
    .line 663
    aput-object v12, v1, v22

    .line 664
    .line 665
    aput-object v14, v1, v24

    .line 666
    .line 667
    aput-object v5, v1, v19

    .line 668
    .line 669
    aput-object v9, v1, v21

    .line 670
    .line 671
    aput-object v11, v1, v23

    .line 672
    .line 673
    aput-object v13, v1, v25

    .line 674
    .line 675
    aput-object v15, v1, v27

    .line 676
    .line 677
    aput-object v3, v1, v29

    .line 678
    .line 679
    aput-object v32, v1, v31

    .line 680
    .line 681
    aput-object v34, v1, v33

    .line 682
    .line 683
    aput-object v36, v1, v35

    .line 684
    .line 685
    aput-object v39, v1, v37

    .line 686
    .line 687
    aput-object v41, v1, v40

    .line 688
    .line 689
    aput-object v43, v1, v42

    .line 690
    .line 691
    aput-object v45, v1, v44

    .line 692
    .line 693
    aput-object v47, v1, v46

    .line 694
    .line 695
    const/16 v2, 0x16

    .line 696
    .line 697
    aput-object v48, v1, v2

    .line 698
    .line 699
    const/16 v2, 0x17

    .line 700
    .line 701
    aput-object v49, v1, v2

    .line 702
    .line 703
    const/16 v2, 0x18

    .line 704
    .line 705
    aput-object v50, v1, v2

    .line 706
    .line 707
    const/16 v2, 0x19

    .line 708
    .line 709
    aput-object v51, v1, v2

    .line 710
    .line 711
    const/16 v2, 0x1a

    .line 712
    .line 713
    aput-object v52, v1, v2

    .line 714
    .line 715
    const/16 v2, 0x1b

    .line 716
    .line 717
    aput-object v53, v1, v2

    .line 718
    .line 719
    const/16 v2, 0x1c

    .line 720
    .line 721
    aput-object v54, v1, v2

    .line 722
    .line 723
    const/16 v2, 0x1d

    .line 724
    .line 725
    aput-object v55, v1, v2

    .line 726
    .line 727
    const/16 v2, 0x1e

    .line 728
    .line 729
    aput-object v56, v1, v2

    .line 730
    .line 731
    const/16 v2, 0x1f

    .line 732
    .line 733
    aput-object v57, v1, v2

    .line 734
    .line 735
    const/16 v2, 0x20

    .line 736
    .line 737
    aput-object v58, v1, v2

    .line 738
    .line 739
    const/16 v2, 0x21

    .line 740
    .line 741
    aput-object v59, v1, v2

    .line 742
    .line 743
    const/16 v2, 0x22

    .line 744
    .line 745
    aput-object v60, v1, v2

    .line 746
    .line 747
    const/16 v2, 0x23

    .line 748
    .line 749
    aput-object v61, v1, v2

    .line 750
    .line 751
    const/16 v2, 0x24

    .line 752
    .line 753
    aput-object v62, v1, v2

    .line 754
    .line 755
    const/16 v2, 0x25

    .line 756
    .line 757
    aput-object v63, v1, v2

    .line 758
    .line 759
    const/16 v2, 0x26

    .line 760
    .line 761
    aput-object v64, v1, v2

    .line 762
    .line 763
    const/16 v2, 0x27

    .line 764
    .line 765
    aput-object v65, v1, v2

    .line 766
    .line 767
    const/16 v2, 0x28

    .line 768
    .line 769
    aput-object v66, v1, v2

    .line 770
    .line 771
    const/16 v2, 0x29

    .line 772
    .line 773
    aput-object v67, v1, v2

    .line 774
    .line 775
    const/16 v2, 0x2a

    .line 776
    .line 777
    aput-object v68, v1, v2

    .line 778
    .line 779
    const/16 v2, 0x2b

    .line 780
    .line 781
    aput-object v69, v1, v2

    .line 782
    .line 783
    const/16 v2, 0x2c

    .line 784
    .line 785
    aput-object v26, v1, v2

    .line 786
    .line 787
    const/16 v2, 0x2d

    .line 788
    .line 789
    aput-object v70, v1, v2

    .line 790
    .line 791
    const/16 v2, 0x2e

    .line 792
    .line 793
    aput-object v71, v1, v2

    .line 794
    .line 795
    const/16 v2, 0x2f

    .line 796
    .line 797
    aput-object v72, v1, v2

    .line 798
    .line 799
    const/16 v2, 0x30

    .line 800
    .line 801
    aput-object v0, v1, v2

    .line 802
    .line 803
    sput-object v1, Landroidx/compose/foundation/text/KeyCommand;->$VALUES:[Landroidx/compose/foundation/text/KeyCommand;

    .line 804
    .line 805
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-boolean p3, p0, Landroidx/compose/foundation/text/KeyCommand;->editsText:Z

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/compose/foundation/text/KeyCommand;
    .locals 1

    .line 1
    const-class v0, Landroidx/compose/foundation/text/KeyCommand;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroidx/compose/foundation/text/KeyCommand;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Landroidx/compose/foundation/text/KeyCommand;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/foundation/text/KeyCommand;->$VALUES:[Landroidx/compose/foundation/text/KeyCommand;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Landroidx/compose/foundation/text/KeyCommand;

    .line 8
    .line 9
    return-object v0
.end method
