.class public abstract Lcom/fsck/k9/preferences/GeneralSettingsDescriptions;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final SETTINGS:Ljava/util/Map;

.field public static final UPGRADERS:Ljava/util/Map;

.field public static final generalSettingManager:Lnet/thunderbird/core/preference/GeneralSettingsManager;


# direct methods
.method static constructor <clinit>()V
    .locals 20

    .line 1
    const-class v0, Lapp/k9mail/feature/telemetry/noop/NoOpTelemetryManager;

    .line 2
    .line 3
    invoke-static {v0}, Lkotlin/io/CloseableKt;->get$default(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lapp/k9mail/feature/telemetry/noop/NoOpTelemetryManager;

    .line 8
    .line 9
    const-class v0, Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 10
    .line 11
    invoke-static {v0}, Lkotlin/io/CloseableKt;->get$default(Ljava/lang/Class;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 16
    .line 17
    sput-object v0, Lcom/fsck/k9/preferences/GeneralSettingsDescriptions;->generalSettingManager:Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 18
    .line 19
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 20
    .line 21
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 22
    .line 23
    .line 24
    new-instance v1, Lcom/google/zxing/BinaryBitmap;

    .line 25
    .line 26
    const/4 v2, 0x1

    .line 27
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    new-instance v4, Lcom/fsck/k9/preferences/Settings$ColorSetting;

    .line 32
    .line 33
    invoke-direct {v4, v2}, Lcom/fsck/k9/preferences/Settings$ColorSetting;-><init>(Z)V

    .line 34
    .line 35
    .line 36
    const/16 v5, 0x8

    .line 37
    .line 38
    invoke-direct {v1, v5, v3, v4}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    new-instance v4, Lcom/google/zxing/BinaryBitmap;

    .line 42
    .line 43
    const/16 v6, 0x6f

    .line 44
    .line 45
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    .line 47
    .line 48
    move-result-object v6

    .line 49
    new-instance v7, Lcom/fsck/k9/preferences/Settings$EnumSetting;

    .line 50
    .line 51
    const-class v8, Lnet/thunderbird/core/preference/AnimationPreference;

    .line 52
    .line 53
    sget-object v9, Lnet/thunderbird/core/preference/AnimationPreference;->FOLLOW_SYSTEM:Lnet/thunderbird/core/preference/AnimationPreference;

    .line 54
    .line 55
    invoke-direct {v7, v8, v9}, Lcom/fsck/k9/preferences/Settings$EnumSetting;-><init>(Ljava/lang/Class;Ljava/lang/Enum;)V

    .line 56
    .line 57
    .line 58
    invoke-direct {v4, v5, v6, v7}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    const/4 v7, 0x2

    .line 62
    new-array v8, v7, [Lcom/google/zxing/BinaryBitmap;

    .line 63
    .line 64
    const/4 v9, 0x0

    .line 65
    aput-object v1, v8, v9

    .line 66
    .line 67
    aput-object v4, v8, v2

    .line 68
    .line 69
    invoke-static {v8}, Landroidx/sqlite/SQLite;->versions([Lcom/google/zxing/BinaryBitmap;)Ljava/util/TreeMap;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    const-string v4, "animations"

    .line 74
    .line 75
    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    new-instance v1, Lcom/google/zxing/BinaryBitmap;

    .line 79
    .line 80
    new-instance v4, Lcom/fsck/k9/preferences/Settings$EnumSetting;

    .line 81
    .line 82
    sget-object v8, Lnet/thunderbird/core/preference/BackgroundOps;->WHEN_CHECKED_AUTO_SYNC:Lnet/thunderbird/core/preference/BackgroundOps;

    .line 83
    .line 84
    const-class v10, Lnet/thunderbird/core/preference/BackgroundOps;

    .line 85
    .line 86
    invoke-direct {v4, v10, v8}, Lcom/fsck/k9/preferences/Settings$EnumSetting;-><init>(Ljava/lang/Class;Ljava/lang/Enum;)V

    .line 87
    .line 88
    .line 89
    invoke-direct {v1, v5, v3, v4}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    new-instance v4, Lcom/google/zxing/BinaryBitmap;

    .line 93
    .line 94
    const/16 v8, 0x53

    .line 95
    .line 96
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 97
    .line 98
    .line 99
    move-result-object v8

    .line 100
    new-instance v11, Lcom/fsck/k9/preferences/Settings$EnumSetting;

    .line 101
    .line 102
    sget-object v12, Lnet/thunderbird/core/preference/network/NetworkSettingsKt;->NETWORK_SETTINGS_DEFAULT_BACKGROUND_OPS:Lnet/thunderbird/core/preference/BackgroundOps;

    .line 103
    .line 104
    invoke-direct {v11, v10, v12}, Lcom/fsck/k9/preferences/Settings$EnumSetting;-><init>(Ljava/lang/Class;Ljava/lang/Enum;)V

    .line 105
    .line 106
    .line 107
    invoke-direct {v4, v5, v8, v11}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 108
    .line 109
    .line 110
    new-array v10, v7, [Lcom/google/zxing/BinaryBitmap;

    .line 111
    .line 112
    aput-object v1, v10, v9

    .line 113
    .line 114
    aput-object v4, v10, v2

    .line 115
    .line 116
    invoke-static {v10}, Landroidx/sqlite/SQLite;->versions([Lcom/google/zxing/BinaryBitmap;)Ljava/util/TreeMap;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    const-string v4, "backgroundOperations"

    .line 121
    .line 122
    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    new-instance v1, Lcom/google/zxing/BinaryBitmap;

    .line 126
    .line 127
    new-instance v4, Lcom/fsck/k9/preferences/Settings$ColorSetting;

    .line 128
    .line 129
    invoke-direct {v4, v2}, Lcom/fsck/k9/preferences/Settings$ColorSetting;-><init>(Z)V

    .line 130
    .line 131
    .line 132
    invoke-direct {v1, v5, v3, v4}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 133
    .line 134
    .line 135
    new-array v4, v2, [Lcom/google/zxing/BinaryBitmap;

    .line 136
    .line 137
    aput-object v1, v4, v9

    .line 138
    .line 139
    invoke-static {v4}, Landroidx/sqlite/SQLite;->versions([Lcom/google/zxing/BinaryBitmap;)Ljava/util/TreeMap;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    const-string v4, "changeRegisteredNameColor"

    .line 144
    .line 145
    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    new-instance v1, Lcom/google/zxing/BinaryBitmap;

    .line 149
    .line 150
    new-instance v4, Lcom/fsck/k9/preferences/Settings$ColorSetting;

    .line 151
    .line 152
    invoke-direct {v4, v9}, Lcom/fsck/k9/preferences/Settings$ColorSetting;-><init>(Z)V

    .line 153
    .line 154
    .line 155
    invoke-direct {v1, v5, v3, v4}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 156
    .line 157
    .line 158
    new-array v4, v2, [Lcom/google/zxing/BinaryBitmap;

    .line 159
    .line 160
    aput-object v1, v4, v9

    .line 161
    .line 162
    invoke-static {v4}, Landroidx/sqlite/SQLite;->versions([Lcom/google/zxing/BinaryBitmap;)Ljava/util/TreeMap;

    .line 163
    .line 164
    .line 165
    move-result-object v1

    .line 166
    const-string v4, "confirmDelete"

    .line 167
    .line 168
    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    new-instance v1, Lcom/google/zxing/BinaryBitmap;

    .line 172
    .line 173
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 174
    .line 175
    .line 176
    move-result-object v4

    .line 177
    new-instance v10, Lcom/fsck/k9/preferences/Settings$ColorSetting;

    .line 178
    .line 179
    invoke-direct {v10, v9}, Lcom/fsck/k9/preferences/Settings$ColorSetting;-><init>(Z)V

    .line 180
    .line 181
    .line 182
    invoke-direct {v1, v5, v4, v10}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 183
    .line 184
    .line 185
    new-array v4, v2, [Lcom/google/zxing/BinaryBitmap;

    .line 186
    .line 187
    aput-object v1, v4, v9

    .line 188
    .line 189
    invoke-static {v4}, Landroidx/sqlite/SQLite;->versions([Lcom/google/zxing/BinaryBitmap;)Ljava/util/TreeMap;

    .line 190
    .line 191
    .line 192
    move-result-object v1

    .line 193
    const-string v4, "confirmDeleteStarred"

    .line 194
    .line 195
    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    new-instance v1, Lcom/google/zxing/BinaryBitmap;

    .line 199
    .line 200
    new-instance v4, Lcom/fsck/k9/preferences/Settings$ColorSetting;

    .line 201
    .line 202
    invoke-direct {v4, v9}, Lcom/fsck/k9/preferences/Settings$ColorSetting;-><init>(Z)V

    .line 203
    .line 204
    .line 205
    invoke-direct {v1, v5, v3, v4}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 206
    .line 207
    .line 208
    new-array v4, v2, [Lcom/google/zxing/BinaryBitmap;

    .line 209
    .line 210
    aput-object v1, v4, v9

    .line 211
    .line 212
    invoke-static {v4}, Landroidx/sqlite/SQLite;->versions([Lcom/google/zxing/BinaryBitmap;)Ljava/util/TreeMap;

    .line 213
    .line 214
    .line 215
    move-result-object v1

    .line 216
    const-string v4, "confirmSpam"

    .line 217
    .line 218
    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    new-instance v1, Lcom/google/zxing/BinaryBitmap;

    .line 222
    .line 223
    const/16 v4, 0x2c

    .line 224
    .line 225
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 226
    .line 227
    .line 228
    move-result-object v4

    .line 229
    new-instance v10, Lcom/fsck/k9/preferences/Settings$ColorSetting;

    .line 230
    .line 231
    invoke-direct {v10, v2}, Lcom/fsck/k9/preferences/Settings$ColorSetting;-><init>(Z)V

    .line 232
    .line 233
    .line 234
    invoke-direct {v1, v5, v4, v10}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 235
    .line 236
    .line 237
    new-array v4, v2, [Lcom/google/zxing/BinaryBitmap;

    .line 238
    .line 239
    aput-object v1, v4, v9

    .line 240
    .line 241
    invoke-static {v4}, Landroidx/sqlite/SQLite;->versions([Lcom/google/zxing/BinaryBitmap;)Ljava/util/TreeMap;

    .line 242
    .line 243
    .line 244
    move-result-object v1

    .line 245
    const-string v4, "confirmMarkAllRead"

    .line 246
    .line 247
    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    .line 249
    .line 250
    new-instance v1, Lcom/google/zxing/BinaryBitmap;

    .line 251
    .line 252
    new-instance v4, Lcom/fsck/k9/preferences/Settings$ColorSetting;

    .line 253
    .line 254
    invoke-direct {v4, v9}, Lcom/fsck/k9/preferences/Settings$ColorSetting;-><init>(Z)V

    .line 255
    .line 256
    .line 257
    invoke-direct {v1, v5, v3, v4}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 258
    .line 259
    .line 260
    new-array v4, v2, [Lcom/google/zxing/BinaryBitmap;

    .line 261
    .line 262
    aput-object v1, v4, v9

    .line 263
    .line 264
    invoke-static {v4}, Landroidx/sqlite/SQLite;->versions([Lcom/google/zxing/BinaryBitmap;)Ljava/util/TreeMap;

    .line 265
    .line 266
    .line 267
    move-result-object v1

    .line 268
    const-string v4, "enableDebugLogging"

    .line 269
    .line 270
    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    .line 272
    .line 273
    new-instance v1, Lcom/google/zxing/BinaryBitmap;

    .line 274
    .line 275
    const/16 v4, 0x67

    .line 276
    .line 277
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 278
    .line 279
    .line 280
    move-result-object v4

    .line 281
    new-instance v10, Lcom/fsck/k9/preferences/Settings$ColorSetting;

    .line 282
    .line 283
    invoke-direct {v10, v9}, Lcom/fsck/k9/preferences/Settings$ColorSetting;-><init>(Z)V

    .line 284
    .line 285
    .line 286
    invoke-direct {v1, v5, v4, v10}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 287
    .line 288
    .line 289
    new-array v4, v2, [Lcom/google/zxing/BinaryBitmap;

    .line 290
    .line 291
    aput-object v1, v4, v9

    .line 292
    .line 293
    invoke-static {v4}, Landroidx/sqlite/SQLite;->versions([Lcom/google/zxing/BinaryBitmap;)Ljava/util/TreeMap;

    .line 294
    .line 295
    .line 296
    move-result-object v1

    .line 297
    const-string v4, "enableSyncDebugLogging"

    .line 298
    .line 299
    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    .line 301
    .line 302
    new-instance v1, Lcom/google/zxing/BinaryBitmap;

    .line 303
    .line 304
    new-instance v4, Lcom/fsck/k9/preferences/Settings$ColorSetting;

    .line 305
    .line 306
    invoke-direct {v4, v9}, Lcom/fsck/k9/preferences/Settings$ColorSetting;-><init>(Z)V

    .line 307
    .line 308
    .line 309
    invoke-direct {v1, v5, v3, v4}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 310
    .line 311
    .line 312
    new-array v4, v2, [Lcom/google/zxing/BinaryBitmap;

    .line 313
    .line 314
    aput-object v1, v4, v9

    .line 315
    .line 316
    invoke-static {v4}, Landroidx/sqlite/SQLite;->versions([Lcom/google/zxing/BinaryBitmap;)Ljava/util/TreeMap;

    .line 317
    .line 318
    .line 319
    move-result-object v1

    .line 320
    const-string v4, "enableSensitiveLogging"

    .line 321
    .line 322
    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    .line 324
    .line 325
    new-instance v1, Lcom/google/zxing/BinaryBitmap;

    .line 326
    .line 327
    const/4 v4, 0x5

    .line 328
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 329
    .line 330
    .line 331
    move-result-object v10

    .line 332
    new-instance v11, Lcom/fsck/k9/preferences/Settings$FontSizeSetting;

    .line 333
    .line 334
    invoke-direct {v11, v9}, Lcom/fsck/k9/preferences/Settings$FontSizeSetting;-><init>(I)V

    .line 335
    .line 336
    .line 337
    invoke-direct {v1, v5, v10, v11}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 338
    .line 339
    .line 340
    new-array v10, v2, [Lcom/google/zxing/BinaryBitmap;

    .line 341
    .line 342
    aput-object v1, v10, v9

    .line 343
    .line 344
    invoke-static {v10}, Landroidx/sqlite/SQLite;->versions([Lcom/google/zxing/BinaryBitmap;)Ljava/util/TreeMap;

    .line 345
    .line 346
    .line 347
    move-result-object v1

    .line 348
    const-string v10, "fontSizeMessageComposeInput"

    .line 349
    .line 350
    invoke-interface {v0, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    .line 352
    .line 353
    new-instance v1, Lcom/google/zxing/BinaryBitmap;

    .line 354
    .line 355
    new-instance v10, Lcom/fsck/k9/preferences/Settings$FontSizeSetting;

    .line 356
    .line 357
    invoke-direct {v10, v9}, Lcom/fsck/k9/preferences/Settings$FontSizeSetting;-><init>(I)V

    .line 358
    .line 359
    .line 360
    invoke-direct {v1, v5, v3, v10}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 361
    .line 362
    .line 363
    new-array v10, v2, [Lcom/google/zxing/BinaryBitmap;

    .line 364
    .line 365
    aput-object v1, v10, v9

    .line 366
    .line 367
    invoke-static {v10}, Landroidx/sqlite/SQLite;->versions([Lcom/google/zxing/BinaryBitmap;)Ljava/util/TreeMap;

    .line 368
    .line 369
    .line 370
    move-result-object v1

    .line 371
    const-string v10, "fontSizeMessageListDate"

    .line 372
    .line 373
    invoke-interface {v0, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    .line 375
    .line 376
    new-instance v1, Lcom/google/zxing/BinaryBitmap;

    .line 377
    .line 378
    new-instance v10, Lcom/fsck/k9/preferences/Settings$FontSizeSetting;

    .line 379
    .line 380
    invoke-direct {v10, v9}, Lcom/fsck/k9/preferences/Settings$FontSizeSetting;-><init>(I)V

    .line 381
    .line 382
    .line 383
    invoke-direct {v1, v5, v3, v10}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 384
    .line 385
    .line 386
    new-array v10, v2, [Lcom/google/zxing/BinaryBitmap;

    .line 387
    .line 388
    aput-object v1, v10, v9

    .line 389
    .line 390
    invoke-static {v10}, Landroidx/sqlite/SQLite;->versions([Lcom/google/zxing/BinaryBitmap;)Ljava/util/TreeMap;

    .line 391
    .line 392
    .line 393
    move-result-object v1

    .line 394
    const-string v10, "fontSizeMessageListPreview"

    .line 395
    .line 396
    invoke-interface {v0, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    .line 398
    .line 399
    new-instance v1, Lcom/google/zxing/BinaryBitmap;

    .line 400
    .line 401
    new-instance v10, Lcom/fsck/k9/preferences/Settings$FontSizeSetting;

    .line 402
    .line 403
    invoke-direct {v10, v9}, Lcom/fsck/k9/preferences/Settings$FontSizeSetting;-><init>(I)V

    .line 404
    .line 405
    .line 406
    invoke-direct {v1, v5, v3, v10}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 407
    .line 408
    .line 409
    new-array v10, v2, [Lcom/google/zxing/BinaryBitmap;

    .line 410
    .line 411
    aput-object v1, v10, v9

    .line 412
    .line 413
    invoke-static {v10}, Landroidx/sqlite/SQLite;->versions([Lcom/google/zxing/BinaryBitmap;)Ljava/util/TreeMap;

    .line 414
    .line 415
    .line 416
    move-result-object v1

    .line 417
    const-string v10, "fontSizeMessageListSender"

    .line 418
    .line 419
    invoke-interface {v0, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    .line 421
    .line 422
    new-instance v1, Lcom/google/zxing/BinaryBitmap;

    .line 423
    .line 424
    new-instance v10, Lcom/fsck/k9/preferences/Settings$FontSizeSetting;

    .line 425
    .line 426
    invoke-direct {v10, v9}, Lcom/fsck/k9/preferences/Settings$FontSizeSetting;-><init>(I)V

    .line 427
    .line 428
    .line 429
    invoke-direct {v1, v5, v3, v10}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 430
    .line 431
    .line 432
    new-array v10, v2, [Lcom/google/zxing/BinaryBitmap;

    .line 433
    .line 434
    aput-object v1, v10, v9

    .line 435
    .line 436
    invoke-static {v10}, Landroidx/sqlite/SQLite;->versions([Lcom/google/zxing/BinaryBitmap;)Ljava/util/TreeMap;

    .line 437
    .line 438
    .line 439
    move-result-object v1

    .line 440
    const-string v10, "fontSizeMessageListSubject"

    .line 441
    .line 442
    invoke-interface {v0, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    .line 444
    .line 445
    new-instance v1, Lcom/google/zxing/BinaryBitmap;

    .line 446
    .line 447
    new-instance v10, Lcom/fsck/k9/preferences/Settings$FontSizeSetting;

    .line 448
    .line 449
    invoke-direct {v10, v9}, Lcom/fsck/k9/preferences/Settings$FontSizeSetting;-><init>(I)V

    .line 450
    .line 451
    .line 452
    invoke-direct {v1, v5, v3, v10}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 453
    .line 454
    .line 455
    new-array v10, v2, [Lcom/google/zxing/BinaryBitmap;

    .line 456
    .line 457
    aput-object v1, v10, v9

    .line 458
    .line 459
    invoke-static {v10}, Landroidx/sqlite/SQLite;->versions([Lcom/google/zxing/BinaryBitmap;)Ljava/util/TreeMap;

    .line 460
    .line 461
    .line 462
    move-result-object v1

    .line 463
    const-string v10, "fontSizeMessageViewAdditionalHeaders"

    .line 464
    .line 465
    invoke-interface {v0, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    .line 467
    .line 468
    new-instance v1, Lcom/google/zxing/BinaryBitmap;

    .line 469
    .line 470
    new-instance v10, Lcom/fsck/k9/preferences/Settings$FontSizeSetting;

    .line 471
    .line 472
    invoke-direct {v10, v9}, Lcom/fsck/k9/preferences/Settings$FontSizeSetting;-><init>(I)V

    .line 473
    .line 474
    .line 475
    invoke-direct {v1, v5, v3, v10}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 476
    .line 477
    .line 478
    new-array v10, v2, [Lcom/google/zxing/BinaryBitmap;

    .line 479
    .line 480
    aput-object v1, v10, v9

    .line 481
    .line 482
    invoke-static {v10}, Landroidx/sqlite/SQLite;->versions([Lcom/google/zxing/BinaryBitmap;)Ljava/util/TreeMap;

    .line 483
    .line 484
    .line 485
    move-result-object v1

    .line 486
    const-string v10, "fontSizeMessageViewCC"

    .line 487
    .line 488
    invoke-interface {v0, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    .line 490
    .line 491
    new-instance v1, Lcom/google/zxing/BinaryBitmap;

    .line 492
    .line 493
    new-instance v10, Lcom/fsck/k9/preferences/Settings$FontSizeSetting;

    .line 494
    .line 495
    invoke-direct {v10, v4}, Lcom/fsck/k9/preferences/Settings$FontSizeSetting;-><init>(I)V

    .line 496
    .line 497
    .line 498
    invoke-direct {v1, v5, v3, v10}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 499
    .line 500
    .line 501
    new-instance v10, Lcom/google/zxing/BinaryBitmap;

    .line 502
    .line 503
    const/16 v11, 0x1f

    .line 504
    .line 505
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 506
    .line 507
    .line 508
    move-result-object v11

    .line 509
    const/4 v12, 0x0

    .line 510
    invoke-direct {v10, v5, v11, v12}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 511
    .line 512
    .line 513
    new-array v13, v7, [Lcom/google/zxing/BinaryBitmap;

    .line 514
    .line 515
    aput-object v1, v13, v9

    .line 516
    .line 517
    aput-object v10, v13, v2

    .line 518
    .line 519
    invoke-static {v13}, Landroidx/sqlite/SQLite;->versions([Lcom/google/zxing/BinaryBitmap;)Ljava/util/TreeMap;

    .line 520
    .line 521
    .line 522
    move-result-object v1

    .line 523
    const-string v10, "fontSizeMessageViewContent"

    .line 524
    .line 525
    invoke-interface {v0, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 526
    .line 527
    .line 528
    new-instance v1, Lcom/google/zxing/BinaryBitmap;

    .line 529
    .line 530
    new-instance v10, Lcom/fsck/k9/preferences/Settings$FontSizeSetting;

    .line 531
    .line 532
    invoke-direct {v10, v9}, Lcom/fsck/k9/preferences/Settings$FontSizeSetting;-><init>(I)V

    .line 533
    .line 534
    .line 535
    invoke-direct {v1, v5, v3, v10}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 536
    .line 537
    .line 538
    new-array v10, v2, [Lcom/google/zxing/BinaryBitmap;

    .line 539
    .line 540
    aput-object v1, v10, v9

    .line 541
    .line 542
    invoke-static {v10}, Landroidx/sqlite/SQLite;->versions([Lcom/google/zxing/BinaryBitmap;)Ljava/util/TreeMap;

    .line 543
    .line 544
    .line 545
    move-result-object v1

    .line 546
    const-string v10, "fontSizeMessageViewDate"

    .line 547
    .line 548
    invoke-interface {v0, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 549
    .line 550
    .line 551
    new-instance v1, Lcom/google/zxing/BinaryBitmap;

    .line 552
    .line 553
    new-instance v10, Lcom/fsck/k9/preferences/Settings$FontSizeSetting;

    .line 554
    .line 555
    invoke-direct {v10, v9}, Lcom/fsck/k9/preferences/Settings$FontSizeSetting;-><init>(I)V

    .line 556
    .line 557
    .line 558
    invoke-direct {v1, v5, v3, v10}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 559
    .line 560
    .line 561
    new-array v10, v2, [Lcom/google/zxing/BinaryBitmap;

    .line 562
    .line 563
    aput-object v1, v10, v9

    .line 564
    .line 565
    invoke-static {v10}, Landroidx/sqlite/SQLite;->versions([Lcom/google/zxing/BinaryBitmap;)Ljava/util/TreeMap;

    .line 566
    .line 567
    .line 568
    move-result-object v1

    .line 569
    const-string v10, "fontSizeMessageViewSender"

    .line 570
    .line 571
    invoke-interface {v0, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 572
    .line 573
    .line 574
    new-instance v1, Lcom/google/zxing/BinaryBitmap;

    .line 575
    .line 576
    new-instance v10, Lcom/fsck/k9/preferences/Settings$FontSizeSetting;

    .line 577
    .line 578
    invoke-direct {v10, v9}, Lcom/fsck/k9/preferences/Settings$FontSizeSetting;-><init>(I)V

    .line 579
    .line 580
    .line 581
    invoke-direct {v1, v5, v3, v10}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 582
    .line 583
    .line 584
    new-array v10, v2, [Lcom/google/zxing/BinaryBitmap;

    .line 585
    .line 586
    aput-object v1, v10, v9

    .line 587
    .line 588
    invoke-static {v10}, Landroidx/sqlite/SQLite;->versions([Lcom/google/zxing/BinaryBitmap;)Ljava/util/TreeMap;

    .line 589
    .line 590
    .line 591
    move-result-object v1

    .line 592
    const-string v10, "fontSizeMessageViewSubject"

    .line 593
    .line 594
    invoke-interface {v0, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 595
    .line 596
    .line 597
    new-instance v1, Lcom/google/zxing/BinaryBitmap;

    .line 598
    .line 599
    new-instance v10, Lcom/fsck/k9/preferences/Settings$FontSizeSetting;

    .line 600
    .line 601
    invoke-direct {v10, v9}, Lcom/fsck/k9/preferences/Settings$FontSizeSetting;-><init>(I)V

    .line 602
    .line 603
    .line 604
    invoke-direct {v1, v5, v3, v10}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 605
    .line 606
    .line 607
    new-array v10, v2, [Lcom/google/zxing/BinaryBitmap;

    .line 608
    .line 609
    aput-object v1, v10, v9

    .line 610
    .line 611
    invoke-static {v10}, Landroidx/sqlite/SQLite;->versions([Lcom/google/zxing/BinaryBitmap;)Ljava/util/TreeMap;

    .line 612
    .line 613
    .line 614
    move-result-object v1

    .line 615
    const-string v10, "fontSizeMessageViewTime"

    .line 616
    .line 617
    invoke-interface {v0, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 618
    .line 619
    .line 620
    new-instance v1, Lcom/google/zxing/BinaryBitmap;

    .line 621
    .line 622
    new-instance v10, Lcom/fsck/k9/preferences/Settings$FontSizeSetting;

    .line 623
    .line 624
    invoke-direct {v10, v9}, Lcom/fsck/k9/preferences/Settings$FontSizeSetting;-><init>(I)V

    .line 625
    .line 626
    .line 627
    invoke-direct {v1, v5, v3, v10}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 628
    .line 629
    .line 630
    new-array v10, v2, [Lcom/google/zxing/BinaryBitmap;

    .line 631
    .line 632
    aput-object v1, v10, v9

    .line 633
    .line 634
    invoke-static {v10}, Landroidx/sqlite/SQLite;->versions([Lcom/google/zxing/BinaryBitmap;)Ljava/util/TreeMap;

    .line 635
    .line 636
    .line 637
    move-result-object v1

    .line 638
    const-string v10, "fontSizeMessageViewTo"

    .line 639
    .line 640
    invoke-interface {v0, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 641
    .line 642
    .line 643
    new-instance v1, Lcom/google/zxing/BinaryBitmap;

    .line 644
    .line 645
    new-instance v10, Lcom/fsck/k9/preferences/Settings$ColorSetting;

    .line 646
    .line 647
    invoke-direct {v10, v9}, Lcom/fsck/k9/preferences/Settings$ColorSetting;-><init>(Z)V

    .line 648
    .line 649
    .line 650
    invoke-direct {v1, v5, v3, v10}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 651
    .line 652
    .line 653
    new-instance v10, Lcom/google/zxing/BinaryBitmap;

    .line 654
    .line 655
    const/16 v13, 0x45

    .line 656
    .line 657
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 658
    .line 659
    .line 660
    move-result-object v13

    .line 661
    invoke-direct {v10, v5, v13, v12}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 662
    .line 663
    .line 664
    new-array v14, v7, [Lcom/google/zxing/BinaryBitmap;

    .line 665
    .line 666
    aput-object v1, v14, v9

    .line 667
    .line 668
    aput-object v10, v14, v2

    .line 669
    .line 670
    invoke-static {v14}, Landroidx/sqlite/SQLite;->versions([Lcom/google/zxing/BinaryBitmap;)Ljava/util/TreeMap;

    .line 671
    .line 672
    .line 673
    move-result-object v1

    .line 674
    const-string v10, "hideSpecialAccounts"

    .line 675
    .line 676
    invoke-interface {v0, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 677
    .line 678
    .line 679
    new-instance v1, Lcom/google/zxing/BinaryBitmap;

    .line 680
    .line 681
    new-instance v10, Lcom/fsck/k9/preferences/Settings$FontSizeSetting;

    .line 682
    .line 683
    const/4 v14, 0x4

    .line 684
    invoke-direct {v10, v14}, Lcom/fsck/k9/preferences/Settings$FontSizeSetting;-><init>(I)V

    .line 685
    .line 686
    .line 687
    invoke-direct {v1, v5, v3, v10}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 688
    .line 689
    .line 690
    new-array v10, v2, [Lcom/google/zxing/BinaryBitmap;

    .line 691
    .line 692
    aput-object v1, v10, v9

    .line 693
    .line 694
    invoke-static {v10}, Landroidx/sqlite/SQLite;->versions([Lcom/google/zxing/BinaryBitmap;)Ljava/util/TreeMap;

    .line 695
    .line 696
    .line 697
    move-result-object v1

    .line 698
    const-string v10, "language"

    .line 699
    .line 700
    invoke-interface {v0, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 701
    .line 702
    .line 703
    new-instance v1, Lcom/google/zxing/BinaryBitmap;

    .line 704
    .line 705
    new-instance v10, Lcom/fsck/k9/preferences/Settings$IntegerRangeSetting;

    .line 706
    .line 707
    const/4 v15, 0x6

    .line 708
    invoke-direct {v10, v9, v15, v7}, Lcom/fsck/k9/preferences/Settings$IntegerRangeSetting;-><init>(III)V

    .line 709
    .line 710
    .line 711
    invoke-direct {v1, v5, v3, v10}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 712
    .line 713
    .line 714
    new-array v10, v2, [Lcom/google/zxing/BinaryBitmap;

    .line 715
    .line 716
    aput-object v1, v10, v9

    .line 717
    .line 718
    invoke-static {v10}, Landroidx/sqlite/SQLite;->versions([Lcom/google/zxing/BinaryBitmap;)Ljava/util/TreeMap;

    .line 719
    .line 720
    .line 721
    move-result-object v1

    .line 722
    const-string v10, "messageListPreviewLines"

    .line 723
    .line 724
    invoke-interface {v0, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 725
    .line 726
    .line 727
    new-instance v1, Lcom/google/zxing/BinaryBitmap;

    .line 728
    .line 729
    new-instance v10, Lcom/fsck/k9/preferences/Settings$ColorSetting;

    .line 730
    .line 731
    invoke-direct {v10, v2}, Lcom/fsck/k9/preferences/Settings$ColorSetting;-><init>(Z)V

    .line 732
    .line 733
    .line 734
    invoke-direct {v1, v5, v3, v10}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 735
    .line 736
    .line 737
    new-array v10, v2, [Lcom/google/zxing/BinaryBitmap;

    .line 738
    .line 739
    aput-object v1, v10, v9

    .line 740
    .line 741
    invoke-static {v10}, Landroidx/sqlite/SQLite;->versions([Lcom/google/zxing/BinaryBitmap;)Ljava/util/TreeMap;

    .line 742
    .line 743
    .line 744
    move-result-object v1

    .line 745
    const-string v10, "messageListStars"

    .line 746
    .line 747
    invoke-interface {v0, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 748
    .line 749
    .line 750
    new-instance v1, Lcom/google/zxing/BinaryBitmap;

    .line 751
    .line 752
    new-instance v10, Lcom/fsck/k9/preferences/Settings$ColorSetting;

    .line 753
    .line 754
    invoke-direct {v10, v9}, Lcom/fsck/k9/preferences/Settings$ColorSetting;-><init>(Z)V

    .line 755
    .line 756
    .line 757
    invoke-direct {v1, v5, v3, v10}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 758
    .line 759
    .line 760
    new-array v10, v2, [Lcom/google/zxing/BinaryBitmap;

    .line 761
    .line 762
    aput-object v1, v10, v9

    .line 763
    .line 764
    invoke-static {v10}, Landroidx/sqlite/SQLite;->versions([Lcom/google/zxing/BinaryBitmap;)Ljava/util/TreeMap;

    .line 765
    .line 766
    .line 767
    move-result-object v1

    .line 768
    const-string v10, "messageViewFixedWidthFont"

    .line 769
    .line 770
    invoke-interface {v0, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 771
    .line 772
    .line 773
    new-instance v1, Lcom/google/zxing/BinaryBitmap;

    .line 774
    .line 775
    new-instance v10, Lcom/fsck/k9/preferences/Settings$ColorSetting;

    .line 776
    .line 777
    invoke-direct {v10, v9}, Lcom/fsck/k9/preferences/Settings$ColorSetting;-><init>(Z)V

    .line 778
    .line 779
    .line 780
    invoke-direct {v1, v5, v3, v10}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 781
    .line 782
    .line 783
    new-instance v10, Lcom/google/zxing/BinaryBitmap;

    .line 784
    .line 785
    const/16 v15, 0x59

    .line 786
    .line 787
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 788
    .line 789
    .line 790
    move-result-object v15

    .line 791
    invoke-direct {v10, v5, v15, v12}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 792
    .line 793
    .line 794
    new-array v14, v7, [Lcom/google/zxing/BinaryBitmap;

    .line 795
    .line 796
    aput-object v1, v14, v9

    .line 797
    .line 798
    aput-object v10, v14, v2

    .line 799
    .line 800
    invoke-static {v14}, Landroidx/sqlite/SQLite;->versions([Lcom/google/zxing/BinaryBitmap;)Ljava/util/TreeMap;

    .line 801
    .line 802
    .line 803
    move-result-object v1

    .line 804
    const-string v10, "messageViewReturnToList"

    .line 805
    .line 806
    invoke-interface {v0, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 807
    .line 808
    .line 809
    new-instance v1, Lcom/google/zxing/BinaryBitmap;

    .line 810
    .line 811
    new-instance v10, Lcom/fsck/k9/preferences/Settings$ColorSetting;

    .line 812
    .line 813
    invoke-direct {v10, v9}, Lcom/fsck/k9/preferences/Settings$ColorSetting;-><init>(Z)V

    .line 814
    .line 815
    .line 816
    invoke-direct {v1, v5, v3, v10}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 817
    .line 818
    .line 819
    new-instance v10, Lcom/google/zxing/BinaryBitmap;

    .line 820
    .line 821
    invoke-direct {v10, v5, v15, v12}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 822
    .line 823
    .line 824
    new-array v14, v7, [Lcom/google/zxing/BinaryBitmap;

    .line 825
    .line 826
    aput-object v1, v14, v9

    .line 827
    .line 828
    aput-object v10, v14, v2

    .line 829
    .line 830
    invoke-static {v14}, Landroidx/sqlite/SQLite;->versions([Lcom/google/zxing/BinaryBitmap;)Ljava/util/TreeMap;

    .line 831
    .line 832
    .line 833
    move-result-object v1

    .line 834
    const-string v10, "messageViewShowNext"

    .line 835
    .line 836
    invoke-interface {v0, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 837
    .line 838
    .line 839
    new-instance v1, Lcom/google/zxing/BinaryBitmap;

    .line 840
    .line 841
    new-instance v10, Lcom/fsck/k9/preferences/Settings$ColorSetting;

    .line 842
    .line 843
    invoke-direct {v10, v9}, Lcom/fsck/k9/preferences/Settings$ColorSetting;-><init>(Z)V

    .line 844
    .line 845
    .line 846
    invoke-direct {v1, v5, v3, v10}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 847
    .line 848
    .line 849
    new-array v10, v2, [Lcom/google/zxing/BinaryBitmap;

    .line 850
    .line 851
    aput-object v1, v10, v9

    .line 852
    .line 853
    invoke-static {v10}, Landroidx/sqlite/SQLite;->versions([Lcom/google/zxing/BinaryBitmap;)Ljava/util/TreeMap;

    .line 854
    .line 855
    .line 856
    move-result-object v1

    .line 857
    const-string v10, "quietTimeEnabled"

    .line 858
    .line 859
    invoke-interface {v0, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 860
    .line 861
    .line 862
    new-instance v1, Lcom/google/zxing/BinaryBitmap;

    .line 863
    .line 864
    new-instance v10, Lcom/fsck/k9/preferences/Settings$ColorSetting;

    .line 865
    .line 866
    const-string v14, "7:00"

    .line 867
    .line 868
    invoke-direct {v10, v4, v14}, Lcom/fsck/k9/preferences/Settings$ColorSetting;-><init>(ILjava/lang/Object;)V

    .line 869
    .line 870
    .line 871
    invoke-direct {v1, v5, v3, v10}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 872
    .line 873
    .line 874
    new-array v10, v2, [Lcom/google/zxing/BinaryBitmap;

    .line 875
    .line 876
    aput-object v1, v10, v9

    .line 877
    .line 878
    invoke-static {v10}, Landroidx/sqlite/SQLite;->versions([Lcom/google/zxing/BinaryBitmap;)Ljava/util/TreeMap;

    .line 879
    .line 880
    .line 881
    move-result-object v1

    .line 882
    const-string v10, "quietTimeEnds"

    .line 883
    .line 884
    invoke-interface {v0, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 885
    .line 886
    .line 887
    new-instance v1, Lcom/google/zxing/BinaryBitmap;

    .line 888
    .line 889
    new-instance v10, Lcom/fsck/k9/preferences/Settings$ColorSetting;

    .line 890
    .line 891
    const-string v14, "21:00"

    .line 892
    .line 893
    invoke-direct {v10, v4, v14}, Lcom/fsck/k9/preferences/Settings$ColorSetting;-><init>(ILjava/lang/Object;)V

    .line 894
    .line 895
    .line 896
    invoke-direct {v1, v5, v3, v10}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 897
    .line 898
    .line 899
    new-array v4, v2, [Lcom/google/zxing/BinaryBitmap;

    .line 900
    .line 901
    aput-object v1, v4, v9

    .line 902
    .line 903
    invoke-static {v4}, Landroidx/sqlite/SQLite;->versions([Lcom/google/zxing/BinaryBitmap;)Ljava/util/TreeMap;

    .line 904
    .line 905
    .line 906
    move-result-object v1

    .line 907
    const-string v4, "quietTimeStarts"

    .line 908
    .line 909
    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 910
    .line 911
    .line 912
    new-instance v1, Lcom/google/zxing/BinaryBitmap;

    .line 913
    .line 914
    new-instance v4, Lcom/fsck/k9/preferences/Settings$ColorSetting;

    .line 915
    .line 916
    const v10, -0xffff71

    .line 917
    .line 918
    .line 919
    invoke-direct {v4, v10}, Lcom/fsck/k9/preferences/Settings$ColorSetting;-><init>(I)V

    .line 920
    .line 921
    .line 922
    invoke-direct {v1, v5, v3, v4}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 923
    .line 924
    .line 925
    new-instance v4, Lcom/google/zxing/BinaryBitmap;

    .line 926
    .line 927
    const/16 v10, 0x4f

    .line 928
    .line 929
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 930
    .line 931
    .line 932
    move-result-object v10

    .line 933
    new-instance v14, Lcom/fsck/k9/preferences/Settings$ColorSetting;

    .line 934
    .line 935
    const v12, -0xef6c0b

    .line 936
    .line 937
    .line 938
    invoke-direct {v14, v12}, Lcom/fsck/k9/preferences/Settings$ColorSetting;-><init>(I)V

    .line 939
    .line 940
    .line 941
    invoke-direct {v4, v5, v10, v14}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 942
    .line 943
    .line 944
    new-array v12, v7, [Lcom/google/zxing/BinaryBitmap;

    .line 945
    .line 946
    aput-object v1, v12, v9

    .line 947
    .line 948
    aput-object v4, v12, v2

    .line 949
    .line 950
    invoke-static {v12}, Landroidx/sqlite/SQLite;->versions([Lcom/google/zxing/BinaryBitmap;)Ljava/util/TreeMap;

    .line 951
    .line 952
    .line 953
    move-result-object v1

    .line 954
    const-string v4, "registeredNameColor"

    .line 955
    .line 956
    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 957
    .line 958
    .line 959
    new-instance v1, Lcom/google/zxing/BinaryBitmap;

    .line 960
    .line 961
    new-instance v4, Lcom/fsck/k9/preferences/Settings$ColorSetting;

    .line 962
    .line 963
    invoke-direct {v4, v9}, Lcom/fsck/k9/preferences/Settings$ColorSetting;-><init>(Z)V

    .line 964
    .line 965
    .line 966
    invoke-direct {v1, v5, v3, v4}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 967
    .line 968
    .line 969
    new-array v4, v2, [Lcom/google/zxing/BinaryBitmap;

    .line 970
    .line 971
    aput-object v1, v4, v9

    .line 972
    .line 973
    invoke-static {v4}, Landroidx/sqlite/SQLite;->versions([Lcom/google/zxing/BinaryBitmap;)Ljava/util/TreeMap;

    .line 974
    .line 975
    .line 976
    move-result-object v1

    .line 977
    const-string v4, "showContactName"

    .line 978
    .line 979
    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 980
    .line 981
    .line 982
    new-instance v1, Lcom/google/zxing/BinaryBitmap;

    .line 983
    .line 984
    new-instance v4, Lcom/fsck/k9/preferences/Settings$ColorSetting;

    .line 985
    .line 986
    invoke-direct {v4, v2}, Lcom/fsck/k9/preferences/Settings$ColorSetting;-><init>(Z)V

    .line 987
    .line 988
    .line 989
    invoke-direct {v1, v5, v3, v4}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 990
    .line 991
    .line 992
    new-array v4, v2, [Lcom/google/zxing/BinaryBitmap;

    .line 993
    .line 994
    aput-object v1, v4, v9

    .line 995
    .line 996
    invoke-static {v4}, Landroidx/sqlite/SQLite;->versions([Lcom/google/zxing/BinaryBitmap;)Ljava/util/TreeMap;

    .line 997
    .line 998
    .line 999
    move-result-object v1

    .line 1000
    const-string v4, "showCorrespondentNames"

    .line 1001
    .line 1002
    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1003
    .line 1004
    .line 1005
    new-instance v1, Lcom/google/zxing/BinaryBitmap;

    .line 1006
    .line 1007
    new-instance v4, Lcom/fsck/k9/preferences/Settings$ColorSetting;

    .line 1008
    .line 1009
    invoke-direct {v4, v2}, Lcom/fsck/k9/preferences/Settings$ColorSetting;-><init>(Z)V

    .line 1010
    .line 1011
    .line 1012
    invoke-direct {v1, v5, v13, v4}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1013
    .line 1014
    .line 1015
    new-instance v4, Lcom/google/zxing/BinaryBitmap;

    .line 1016
    .line 1017
    const/16 v12, 0x65

    .line 1018
    .line 1019
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1020
    .line 1021
    .line 1022
    move-result-object v12

    .line 1023
    new-instance v14, Lcom/fsck/k9/preferences/Settings$ColorSetting;

    .line 1024
    .line 1025
    invoke-direct {v14, v9}, Lcom/fsck/k9/preferences/Settings$ColorSetting;-><init>(Z)V

    .line 1026
    .line 1027
    .line 1028
    invoke-direct {v4, v5, v12, v14}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1029
    .line 1030
    .line 1031
    new-array v12, v7, [Lcom/google/zxing/BinaryBitmap;

    .line 1032
    .line 1033
    aput-object v1, v12, v9

    .line 1034
    .line 1035
    aput-object v4, v12, v2

    .line 1036
    .line 1037
    invoke-static {v12}, Landroidx/sqlite/SQLite;->versions([Lcom/google/zxing/BinaryBitmap;)Ljava/util/TreeMap;

    .line 1038
    .line 1039
    .line 1040
    move-result-object v1

    .line 1041
    const-string v4, "showUnifiedInbox"

    .line 1042
    .line 1043
    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1044
    .line 1045
    .line 1046
    new-instance v1, Lcom/google/zxing/BinaryBitmap;

    .line 1047
    .line 1048
    const/16 v4, 0x66

    .line 1049
    .line 1050
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1051
    .line 1052
    .line 1053
    move-result-object v4

    .line 1054
    new-instance v12, Lcom/fsck/k9/preferences/Settings$ColorSetting;

    .line 1055
    .line 1056
    invoke-direct {v12, v2}, Lcom/fsck/k9/preferences/Settings$ColorSetting;-><init>(Z)V

    .line 1057
    .line 1058
    .line 1059
    invoke-direct {v1, v5, v4, v12}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1060
    .line 1061
    .line 1062
    new-array v4, v2, [Lcom/google/zxing/BinaryBitmap;

    .line 1063
    .line 1064
    aput-object v1, v4, v9

    .line 1065
    .line 1066
    invoke-static {v4}, Landroidx/sqlite/SQLite;->versions([Lcom/google/zxing/BinaryBitmap;)Ljava/util/TreeMap;

    .line 1067
    .line 1068
    .line 1069
    move-result-object v1

    .line 1070
    const-string v4, "isShowAccountSelector"

    .line 1071
    .line 1072
    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1073
    .line 1074
    .line 1075
    new-instance v1, Lcom/google/zxing/BinaryBitmap;

    .line 1076
    .line 1077
    const/16 v4, 0xa

    .line 1078
    .line 1079
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1080
    .line 1081
    .line 1082
    move-result-object v12

    .line 1083
    new-instance v14, Lcom/fsck/k9/preferences/Settings$EnumSetting;

    .line 1084
    .line 1085
    sget-object v17, Lnet/thunderbird/core/android/account/AccountDefaultsProvider;->Companion:Lnet/thunderbird/core/android/account/AccountDefaultsProvider$Companion;

    .line 1086
    .line 1087
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1088
    .line 1089
    .line 1090
    sget-object v4, Lnet/thunderbird/core/android/account/AccountDefaultsProvider$Companion;->DEFAULT_SORT_TYPE:Lnet/thunderbird/core/android/account/SortType;

    .line 1091
    .line 1092
    const-class v7, Lnet/thunderbird/core/android/account/SortType;

    .line 1093
    .line 1094
    invoke-direct {v14, v7, v4}, Lcom/fsck/k9/preferences/Settings$EnumSetting;-><init>(Ljava/lang/Class;Ljava/lang/Enum;)V

    .line 1095
    .line 1096
    .line 1097
    invoke-direct {v1, v5, v12, v14}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1098
    .line 1099
    .line 1100
    new-array v4, v2, [Lcom/google/zxing/BinaryBitmap;

    .line 1101
    .line 1102
    aput-object v1, v4, v9

    .line 1103
    .line 1104
    invoke-static {v4}, Landroidx/sqlite/SQLite;->versions([Lcom/google/zxing/BinaryBitmap;)Ljava/util/TreeMap;

    .line 1105
    .line 1106
    .line 1107
    move-result-object v1

    .line 1108
    const-string v4, "sortTypeEnum"

    .line 1109
    .line 1110
    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1111
    .line 1112
    .line 1113
    new-instance v1, Lcom/google/zxing/BinaryBitmap;

    .line 1114
    .line 1115
    new-instance v4, Lcom/fsck/k9/preferences/Settings$ColorSetting;

    .line 1116
    .line 1117
    invoke-direct {v4, v9}, Lcom/fsck/k9/preferences/Settings$ColorSetting;-><init>(Z)V

    .line 1118
    .line 1119
    .line 1120
    invoke-direct {v1, v5, v12, v4}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1121
    .line 1122
    .line 1123
    new-array v4, v2, [Lcom/google/zxing/BinaryBitmap;

    .line 1124
    .line 1125
    aput-object v1, v4, v9

    .line 1126
    .line 1127
    invoke-static {v4}, Landroidx/sqlite/SQLite;->versions([Lcom/google/zxing/BinaryBitmap;)Ljava/util/TreeMap;

    .line 1128
    .line 1129
    .line 1130
    move-result-object v1

    .line 1131
    const-string v4, "sortAscending"

    .line 1132
    .line 1133
    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1134
    .line 1135
    .line 1136
    new-instance v1, Lcom/google/zxing/BinaryBitmap;

    .line 1137
    .line 1138
    new-instance v4, Lcom/fsck/k9/preferences/Settings$ColorSetting;

    .line 1139
    .line 1140
    sget-object v7, Lnet/thunderbird/core/preference/AppTheme;->LIGHT:Lnet/thunderbird/core/preference/AppTheme;

    .line 1141
    .line 1142
    const/4 v12, 0x2

    .line 1143
    invoke-direct {v4, v12, v7}, Lcom/fsck/k9/preferences/Settings$ColorSetting;-><init>(ILjava/lang/Object;)V

    .line 1144
    .line 1145
    .line 1146
    invoke-direct {v1, v5, v3, v4}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1147
    .line 1148
    .line 1149
    new-instance v4, Lcom/google/zxing/BinaryBitmap;

    .line 1150
    .line 1151
    const/16 v14, 0x3a

    .line 1152
    .line 1153
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1154
    .line 1155
    .line 1156
    move-result-object v14

    .line 1157
    move/from16 v18, v2

    .line 1158
    .line 1159
    new-instance v2, Lcom/fsck/k9/preferences/Settings$ColorSetting;

    .line 1160
    .line 1161
    move/from16 v19, v9

    .line 1162
    .line 1163
    sget-object v9, Lnet/thunderbird/core/preference/display/coreSettings/DisplayCoreSettingsKt;->DISPLAY_SETTINGS_DEFAULT_APP_THEME:Lnet/thunderbird/core/preference/AppTheme;

    .line 1164
    .line 1165
    const/4 v12, 0x4

    .line 1166
    invoke-direct {v2, v12, v9}, Lcom/fsck/k9/preferences/Settings$ColorSetting;-><init>(ILjava/lang/Object;)V

    .line 1167
    .line 1168
    .line 1169
    invoke-direct {v4, v5, v14, v2}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1170
    .line 1171
    .line 1172
    const/4 v12, 0x2

    .line 1173
    new-array v2, v12, [Lcom/google/zxing/BinaryBitmap;

    .line 1174
    .line 1175
    aput-object v1, v2, v19

    .line 1176
    .line 1177
    aput-object v4, v2, v18

    .line 1178
    .line 1179
    invoke-static {v2}, Landroidx/sqlite/SQLite;->versions([Lcom/google/zxing/BinaryBitmap;)Ljava/util/TreeMap;

    .line 1180
    .line 1181
    .line 1182
    move-result-object v1

    .line 1183
    const-string v2, "theme"

    .line 1184
    .line 1185
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1186
    .line 1187
    .line 1188
    new-instance v1, Lcom/google/zxing/BinaryBitmap;

    .line 1189
    .line 1190
    const/16 v2, 0x10

    .line 1191
    .line 1192
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1193
    .line 1194
    .line 1195
    move-result-object v2

    .line 1196
    new-instance v4, Lcom/fsck/k9/preferences/Settings$ColorSetting;

    .line 1197
    .line 1198
    invoke-direct {v4, v12, v7}, Lcom/fsck/k9/preferences/Settings$ColorSetting;-><init>(ILjava/lang/Object;)V

    .line 1199
    .line 1200
    .line 1201
    invoke-direct {v1, v5, v2, v4}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1202
    .line 1203
    .line 1204
    new-instance v2, Lcom/google/zxing/BinaryBitmap;

    .line 1205
    .line 1206
    const/16 v4, 0x18

    .line 1207
    .line 1208
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1209
    .line 1210
    .line 1211
    move-result-object v4

    .line 1212
    new-instance v7, Lcom/fsck/k9/preferences/Settings$ColorSetting;

    .line 1213
    .line 1214
    sget-object v9, Lnet/thunderbird/core/preference/display/coreSettings/DisplayCoreSettingsKt;->DISPLAY_SETTINGS_DEFAULT_MESSAGE_VIEW_THEME:Lnet/thunderbird/core/preference/SubTheme;

    .line 1215
    .line 1216
    const/4 v12, 0x3

    .line 1217
    invoke-direct {v7, v12, v9}, Lcom/fsck/k9/preferences/Settings$ColorSetting;-><init>(ILjava/lang/Object;)V

    .line 1218
    .line 1219
    .line 1220
    invoke-direct {v2, v5, v4, v7}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1221
    .line 1222
    .line 1223
    const/4 v7, 0x2

    .line 1224
    new-array v9, v7, [Lcom/google/zxing/BinaryBitmap;

    .line 1225
    .line 1226
    aput-object v1, v9, v19

    .line 1227
    .line 1228
    aput-object v2, v9, v18

    .line 1229
    .line 1230
    invoke-static {v9}, Landroidx/sqlite/SQLite;->versions([Lcom/google/zxing/BinaryBitmap;)Ljava/util/TreeMap;

    .line 1231
    .line 1232
    .line 1233
    move-result-object v1

    .line 1234
    const-string v2, "messageViewTheme"

    .line 1235
    .line 1236
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1237
    .line 1238
    .line 1239
    new-instance v1, Lcom/google/zxing/BinaryBitmap;

    .line 1240
    .line 1241
    new-instance v2, Lcom/fsck/k9/preferences/Settings$ColorSetting;

    .line 1242
    .line 1243
    move/from16 v7, v19

    .line 1244
    .line 1245
    invoke-direct {v2, v7}, Lcom/fsck/k9/preferences/Settings$ColorSetting;-><init>(Z)V

    .line 1246
    .line 1247
    .line 1248
    invoke-direct {v1, v5, v3, v2}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1249
    .line 1250
    .line 1251
    move/from16 v2, v18

    .line 1252
    .line 1253
    new-array v3, v2, [Lcom/google/zxing/BinaryBitmap;

    .line 1254
    .line 1255
    aput-object v1, v3, v7

    .line 1256
    .line 1257
    invoke-static {v3}, Landroidx/sqlite/SQLite;->versions([Lcom/google/zxing/BinaryBitmap;)Ljava/util/TreeMap;

    .line 1258
    .line 1259
    .line 1260
    move-result-object v1

    .line 1261
    const-string/jumbo v3, "useVolumeKeysForNavigation"

    .line 1262
    .line 1263
    .line 1264
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1265
    .line 1266
    .line 1267
    new-instance v1, Lcom/google/zxing/BinaryBitmap;

    .line 1268
    .line 1269
    const/16 v3, 0x13

    .line 1270
    .line 1271
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1272
    .line 1273
    .line 1274
    move-result-object v3

    .line 1275
    new-instance v7, Lcom/fsck/k9/preferences/Settings$ColorSetting;

    .line 1276
    .line 1277
    invoke-direct {v7, v2}, Lcom/fsck/k9/preferences/Settings$ColorSetting;-><init>(Z)V

    .line 1278
    .line 1279
    .line 1280
    invoke-direct {v1, v5, v3, v7}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1281
    .line 1282
    .line 1283
    new-instance v3, Lcom/google/zxing/BinaryBitmap;

    .line 1284
    .line 1285
    const/16 v7, 0x3b

    .line 1286
    .line 1287
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1288
    .line 1289
    .line 1290
    move-result-object v7

    .line 1291
    new-instance v9, Lcom/fsck/k9/preferences/Settings$ColorSetting;

    .line 1292
    .line 1293
    const/4 v12, 0x0

    .line 1294
    invoke-direct {v9, v12}, Lcom/fsck/k9/preferences/Settings$ColorSetting;-><init>(Z)V

    .line 1295
    .line 1296
    .line 1297
    invoke-direct {v3, v5, v7, v9}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1298
    .line 1299
    .line 1300
    const/4 v7, 0x2

    .line 1301
    new-array v9, v7, [Lcom/google/zxing/BinaryBitmap;

    .line 1302
    .line 1303
    aput-object v1, v9, v12

    .line 1304
    .line 1305
    aput-object v3, v9, v2

    .line 1306
    .line 1307
    invoke-static {v9}, Landroidx/sqlite/SQLite;->versions([Lcom/google/zxing/BinaryBitmap;)Ljava/util/TreeMap;

    .line 1308
    .line 1309
    .line 1310
    move-result-object v1

    .line 1311
    const-string/jumbo v3, "useBackgroundAsUnreadIndicator"

    .line 1312
    .line 1313
    .line 1314
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1315
    .line 1316
    .line 1317
    new-instance v1, Lcom/google/zxing/BinaryBitmap;

    .line 1318
    .line 1319
    const/16 v3, 0x14

    .line 1320
    .line 1321
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1322
    .line 1323
    .line 1324
    move-result-object v3

    .line 1325
    new-instance v7, Lcom/fsck/k9/preferences/Settings$ColorSetting;

    .line 1326
    .line 1327
    invoke-direct {v7, v2}, Lcom/fsck/k9/preferences/Settings$ColorSetting;-><init>(Z)V

    .line 1328
    .line 1329
    .line 1330
    invoke-direct {v1, v5, v3, v7}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1331
    .line 1332
    .line 1333
    new-array v3, v2, [Lcom/google/zxing/BinaryBitmap;

    .line 1334
    .line 1335
    const/16 v19, 0x0

    .line 1336
    .line 1337
    aput-object v1, v3, v19

    .line 1338
    .line 1339
    invoke-static {v3}, Landroidx/sqlite/SQLite;->versions([Lcom/google/zxing/BinaryBitmap;)Ljava/util/TreeMap;

    .line 1340
    .line 1341
    .line 1342
    move-result-object v1

    .line 1343
    const-string v2, "threadedView"

    .line 1344
    .line 1345
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1346
    .line 1347
    .line 1348
    new-instance v1, Lcom/google/zxing/BinaryBitmap;

    .line 1349
    .line 1350
    const/16 v2, 0x17

    .line 1351
    .line 1352
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1353
    .line 1354
    .line 1355
    move-result-object v2

    .line 1356
    new-instance v3, Lcom/fsck/k9/preferences/Settings$EnumSetting;

    .line 1357
    .line 1358
    const-class v7, Lnet/thunderbird/core/preference/SplitViewMode;

    .line 1359
    .line 1360
    sget-object v9, Lnet/thunderbird/core/preference/SplitViewMode;->NEVER:Lnet/thunderbird/core/preference/SplitViewMode;

    .line 1361
    .line 1362
    invoke-direct {v3, v7, v9}, Lcom/fsck/k9/preferences/Settings$EnumSetting;-><init>(Ljava/lang/Class;Ljava/lang/Enum;)V

    .line 1363
    .line 1364
    .line 1365
    invoke-direct {v1, v5, v2, v3}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1366
    .line 1367
    .line 1368
    const/4 v2, 0x1

    .line 1369
    new-array v3, v2, [Lcom/google/zxing/BinaryBitmap;

    .line 1370
    .line 1371
    const/4 v7, 0x0

    .line 1372
    aput-object v1, v3, v7

    .line 1373
    .line 1374
    invoke-static {v3}, Landroidx/sqlite/SQLite;->versions([Lcom/google/zxing/BinaryBitmap;)Ljava/util/TreeMap;

    .line 1375
    .line 1376
    .line 1377
    move-result-object v1

    .line 1378
    const-string v3, "splitViewMode"

    .line 1379
    .line 1380
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1381
    .line 1382
    .line 1383
    new-instance v1, Lcom/google/zxing/BinaryBitmap;

    .line 1384
    .line 1385
    new-instance v3, Lcom/fsck/k9/preferences/Settings$ColorSetting;

    .line 1386
    .line 1387
    sget-object v9, Lnet/thunderbird/core/preference/display/coreSettings/DisplayCoreSettingsKt;->DISPLAY_SETTINGS_DEFAULT_MESSAGE_COMPOSE_THEME:Lnet/thunderbird/core/preference/SubTheme;

    .line 1388
    .line 1389
    const/4 v12, 0x3

    .line 1390
    invoke-direct {v3, v12, v9}, Lcom/fsck/k9/preferences/Settings$ColorSetting;-><init>(ILjava/lang/Object;)V

    .line 1391
    .line 1392
    .line 1393
    invoke-direct {v1, v5, v4, v3}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1394
    .line 1395
    .line 1396
    new-array v3, v2, [Lcom/google/zxing/BinaryBitmap;

    .line 1397
    .line 1398
    aput-object v1, v3, v7

    .line 1399
    .line 1400
    invoke-static {v3}, Landroidx/sqlite/SQLite;->versions([Lcom/google/zxing/BinaryBitmap;)Ljava/util/TreeMap;

    .line 1401
    .line 1402
    .line 1403
    move-result-object v1

    .line 1404
    const-string v3, "messageComposeTheme"

    .line 1405
    .line 1406
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1407
    .line 1408
    .line 1409
    new-instance v1, Lcom/google/zxing/BinaryBitmap;

    .line 1410
    .line 1411
    new-instance v3, Lcom/fsck/k9/preferences/Settings$ColorSetting;

    .line 1412
    .line 1413
    invoke-direct {v3, v2}, Lcom/fsck/k9/preferences/Settings$ColorSetting;-><init>(Z)V

    .line 1414
    .line 1415
    .line 1416
    invoke-direct {v1, v5, v4, v3}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1417
    .line 1418
    .line 1419
    new-array v3, v2, [Lcom/google/zxing/BinaryBitmap;

    .line 1420
    .line 1421
    aput-object v1, v3, v7

    .line 1422
    .line 1423
    invoke-static {v3}, Landroidx/sqlite/SQLite;->versions([Lcom/google/zxing/BinaryBitmap;)Ljava/util/TreeMap;

    .line 1424
    .line 1425
    .line 1426
    move-result-object v1

    .line 1427
    const-string v3, "fixedMessageViewTheme"

    .line 1428
    .line 1429
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1430
    .line 1431
    .line 1432
    new-instance v1, Lcom/google/zxing/BinaryBitmap;

    .line 1433
    .line 1434
    const/16 v3, 0x19

    .line 1435
    .line 1436
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1437
    .line 1438
    .line 1439
    move-result-object v3

    .line 1440
    new-instance v9, Lcom/fsck/k9/preferences/Settings$ColorSetting;

    .line 1441
    .line 1442
    invoke-direct {v9, v2}, Lcom/fsck/k9/preferences/Settings$ColorSetting;-><init>(Z)V

    .line 1443
    .line 1444
    .line 1445
    invoke-direct {v1, v5, v3, v9}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1446
    .line 1447
    .line 1448
    new-array v3, v2, [Lcom/google/zxing/BinaryBitmap;

    .line 1449
    .line 1450
    aput-object v1, v3, v7

    .line 1451
    .line 1452
    invoke-static {v3}, Landroidx/sqlite/SQLite;->versions([Lcom/google/zxing/BinaryBitmap;)Ljava/util/TreeMap;

    .line 1453
    .line 1454
    .line 1455
    move-result-object v1

    .line 1456
    const-string v3, "showContactPicture"

    .line 1457
    .line 1458
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1459
    .line 1460
    .line 1461
    new-instance v1, Lcom/google/zxing/BinaryBitmap;

    .line 1462
    .line 1463
    const/16 v3, 0x1c

    .line 1464
    .line 1465
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1466
    .line 1467
    .line 1468
    move-result-object v3

    .line 1469
    new-instance v9, Lcom/fsck/k9/preferences/Settings$ColorSetting;

    .line 1470
    .line 1471
    invoke-direct {v9, v2}, Lcom/fsck/k9/preferences/Settings$ColorSetting;-><init>(Z)V

    .line 1472
    .line 1473
    .line 1474
    invoke-direct {v1, v5, v3, v9}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1475
    .line 1476
    .line 1477
    new-array v3, v2, [Lcom/google/zxing/BinaryBitmap;

    .line 1478
    .line 1479
    aput-object v1, v3, v7

    .line 1480
    .line 1481
    invoke-static {v3}, Landroidx/sqlite/SQLite;->versions([Lcom/google/zxing/BinaryBitmap;)Ljava/util/TreeMap;

    .line 1482
    .line 1483
    .line 1484
    move-result-object v1

    .line 1485
    const-string v3, "autofitWidth"

    .line 1486
    .line 1487
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1488
    .line 1489
    .line 1490
    new-instance v1, Lcom/google/zxing/BinaryBitmap;

    .line 1491
    .line 1492
    const/16 v3, 0x1d

    .line 1493
    .line 1494
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1495
    .line 1496
    .line 1497
    move-result-object v3

    .line 1498
    new-instance v9, Lcom/fsck/k9/preferences/Settings$ColorSetting;

    .line 1499
    .line 1500
    invoke-direct {v9, v2}, Lcom/fsck/k9/preferences/Settings$ColorSetting;-><init>(Z)V

    .line 1501
    .line 1502
    .line 1503
    invoke-direct {v1, v5, v3, v9}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1504
    .line 1505
    .line 1506
    new-array v3, v2, [Lcom/google/zxing/BinaryBitmap;

    .line 1507
    .line 1508
    aput-object v1, v3, v7

    .line 1509
    .line 1510
    invoke-static {v3}, Landroidx/sqlite/SQLite;->versions([Lcom/google/zxing/BinaryBitmap;)Ljava/util/TreeMap;

    .line 1511
    .line 1512
    .line 1513
    move-result-object v1

    .line 1514
    const-string v3, "colorizeMissingContactPictures"

    .line 1515
    .line 1516
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1517
    .line 1518
    .line 1519
    new-instance v1, Lcom/google/zxing/BinaryBitmap;

    .line 1520
    .line 1521
    const/16 v3, 0x1e

    .line 1522
    .line 1523
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1524
    .line 1525
    .line 1526
    move-result-object v3

    .line 1527
    new-instance v9, Lcom/fsck/k9/preferences/Settings$ColorSetting;

    .line 1528
    .line 1529
    invoke-direct {v9, v2}, Lcom/fsck/k9/preferences/Settings$ColorSetting;-><init>(Z)V

    .line 1530
    .line 1531
    .line 1532
    invoke-direct {v1, v5, v3, v9}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1533
    .line 1534
    .line 1535
    new-array v9, v2, [Lcom/google/zxing/BinaryBitmap;

    .line 1536
    .line 1537
    aput-object v1, v9, v7

    .line 1538
    .line 1539
    invoke-static {v9}, Landroidx/sqlite/SQLite;->versions([Lcom/google/zxing/BinaryBitmap;)Ljava/util/TreeMap;

    .line 1540
    .line 1541
    .line 1542
    move-result-object v1

    .line 1543
    const-string v9, "messageViewDeleteActionVisible"

    .line 1544
    .line 1545
    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1546
    .line 1547
    .line 1548
    new-instance v1, Lcom/google/zxing/BinaryBitmap;

    .line 1549
    .line 1550
    new-instance v9, Lcom/fsck/k9/preferences/Settings$ColorSetting;

    .line 1551
    .line 1552
    invoke-direct {v9, v7}, Lcom/fsck/k9/preferences/Settings$ColorSetting;-><init>(Z)V

    .line 1553
    .line 1554
    .line 1555
    invoke-direct {v1, v5, v3, v9}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1556
    .line 1557
    .line 1558
    new-array v9, v2, [Lcom/google/zxing/BinaryBitmap;

    .line 1559
    .line 1560
    aput-object v1, v9, v7

    .line 1561
    .line 1562
    invoke-static {v9}, Landroidx/sqlite/SQLite;->versions([Lcom/google/zxing/BinaryBitmap;)Ljava/util/TreeMap;

    .line 1563
    .line 1564
    .line 1565
    move-result-object v1

    .line 1566
    const-string v9, "messageViewArchiveActionVisible"

    .line 1567
    .line 1568
    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1569
    .line 1570
    .line 1571
    new-instance v1, Lcom/google/zxing/BinaryBitmap;

    .line 1572
    .line 1573
    new-instance v9, Lcom/fsck/k9/preferences/Settings$ColorSetting;

    .line 1574
    .line 1575
    invoke-direct {v9, v7}, Lcom/fsck/k9/preferences/Settings$ColorSetting;-><init>(Z)V

    .line 1576
    .line 1577
    .line 1578
    invoke-direct {v1, v5, v3, v9}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1579
    .line 1580
    .line 1581
    new-array v9, v2, [Lcom/google/zxing/BinaryBitmap;

    .line 1582
    .line 1583
    aput-object v1, v9, v7

    .line 1584
    .line 1585
    invoke-static {v9}, Landroidx/sqlite/SQLite;->versions([Lcom/google/zxing/BinaryBitmap;)Ljava/util/TreeMap;

    .line 1586
    .line 1587
    .line 1588
    move-result-object v1

    .line 1589
    const-string v9, "messageViewMoveActionVisible"

    .line 1590
    .line 1591
    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1592
    .line 1593
    .line 1594
    new-instance v1, Lcom/google/zxing/BinaryBitmap;

    .line 1595
    .line 1596
    new-instance v9, Lcom/fsck/k9/preferences/Settings$ColorSetting;

    .line 1597
    .line 1598
    invoke-direct {v9, v7}, Lcom/fsck/k9/preferences/Settings$ColorSetting;-><init>(Z)V

    .line 1599
    .line 1600
    .line 1601
    invoke-direct {v1, v5, v3, v9}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1602
    .line 1603
    .line 1604
    new-array v9, v2, [Lcom/google/zxing/BinaryBitmap;

    .line 1605
    .line 1606
    aput-object v1, v9, v7

    .line 1607
    .line 1608
    invoke-static {v9}, Landroidx/sqlite/SQLite;->versions([Lcom/google/zxing/BinaryBitmap;)Ljava/util/TreeMap;

    .line 1609
    .line 1610
    .line 1611
    move-result-object v1

    .line 1612
    const-string v9, "messageViewCopyActionVisible"

    .line 1613
    .line 1614
    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1615
    .line 1616
    .line 1617
    new-instance v1, Lcom/google/zxing/BinaryBitmap;

    .line 1618
    .line 1619
    new-instance v9, Lcom/fsck/k9/preferences/Settings$ColorSetting;

    .line 1620
    .line 1621
    invoke-direct {v9, v7}, Lcom/fsck/k9/preferences/Settings$ColorSetting;-><init>(Z)V

    .line 1622
    .line 1623
    .line 1624
    invoke-direct {v1, v5, v3, v9}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1625
    .line 1626
    .line 1627
    new-array v3, v2, [Lcom/google/zxing/BinaryBitmap;

    .line 1628
    .line 1629
    aput-object v1, v3, v7

    .line 1630
    .line 1631
    invoke-static {v3}, Landroidx/sqlite/SQLite;->versions([Lcom/google/zxing/BinaryBitmap;)Ljava/util/TreeMap;

    .line 1632
    .line 1633
    .line 1634
    move-result-object v1

    .line 1635
    const-string v2, "messageViewSpamActionVisible"

    .line 1636
    .line 1637
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1638
    .line 1639
    .line 1640
    new-instance v1, Lcom/google/zxing/BinaryBitmap;

    .line 1641
    .line 1642
    new-instance v2, Lcom/fsck/k9/preferences/Settings$IntegerRangeSetting;

    .line 1643
    .line 1644
    const/16 v3, 0xfa

    .line 1645
    .line 1646
    const/16 v7, 0x64

    .line 1647
    .line 1648
    const/16 v9, 0x28

    .line 1649
    .line 1650
    invoke-direct {v2, v9, v3, v7}, Lcom/fsck/k9/preferences/Settings$IntegerRangeSetting;-><init>(III)V

    .line 1651
    .line 1652
    .line 1653
    invoke-direct {v1, v5, v11, v2}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1654
    .line 1655
    .line 1656
    const/4 v2, 0x1

    .line 1657
    new-array v3, v2, [Lcom/google/zxing/BinaryBitmap;

    .line 1658
    .line 1659
    const/4 v7, 0x0

    .line 1660
    aput-object v1, v3, v7

    .line 1661
    .line 1662
    invoke-static {v3}, Landroidx/sqlite/SQLite;->versions([Lcom/google/zxing/BinaryBitmap;)Ljava/util/TreeMap;

    .line 1663
    .line 1664
    .line 1665
    move-result-object v1

    .line 1666
    const-string v3, "fontSizeMessageViewContentPercent"

    .line 1667
    .line 1668
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1669
    .line 1670
    .line 1671
    new-instance v1, Lcom/google/zxing/BinaryBitmap;

    .line 1672
    .line 1673
    const/16 v3, 0x20

    .line 1674
    .line 1675
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1676
    .line 1677
    .line 1678
    move-result-object v3

    .line 1679
    new-instance v12, Lcom/fsck/k9/preferences/Settings$ColorSetting;

    .line 1680
    .line 1681
    invoke-direct {v12, v7}, Lcom/fsck/k9/preferences/Settings$ColorSetting;-><init>(Z)V

    .line 1682
    .line 1683
    .line 1684
    invoke-direct {v1, v5, v3, v12}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1685
    .line 1686
    .line 1687
    new-array v12, v2, [Lcom/google/zxing/BinaryBitmap;

    .line 1688
    .line 1689
    aput-object v1, v12, v7

    .line 1690
    .line 1691
    invoke-static {v12}, Landroidx/sqlite/SQLite;->versions([Lcom/google/zxing/BinaryBitmap;)Ljava/util/TreeMap;

    .line 1692
    .line 1693
    .line 1694
    move-result-object v1

    .line 1695
    const-string v12, "hideUserAgent"

    .line 1696
    .line 1697
    invoke-interface {v0, v12, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1698
    .line 1699
    .line 1700
    new-instance v1, Lcom/google/zxing/BinaryBitmap;

    .line 1701
    .line 1702
    new-instance v12, Lcom/fsck/k9/preferences/Settings$ColorSetting;

    .line 1703
    .line 1704
    invoke-direct {v12, v7}, Lcom/fsck/k9/preferences/Settings$ColorSetting;-><init>(Z)V

    .line 1705
    .line 1706
    .line 1707
    invoke-direct {v1, v5, v3, v12}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1708
    .line 1709
    .line 1710
    new-array v3, v2, [Lcom/google/zxing/BinaryBitmap;

    .line 1711
    .line 1712
    aput-object v1, v3, v7

    .line 1713
    .line 1714
    invoke-static {v3}, Landroidx/sqlite/SQLite;->versions([Lcom/google/zxing/BinaryBitmap;)Ljava/util/TreeMap;

    .line 1715
    .line 1716
    .line 1717
    move-result-object v1

    .line 1718
    const-string v2, "hideTimeZone"

    .line 1719
    .line 1720
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1721
    .line 1722
    .line 1723
    new-instance v1, Lcom/google/zxing/BinaryBitmap;

    .line 1724
    .line 1725
    const/16 v2, 0x25

    .line 1726
    .line 1727
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1728
    .line 1729
    .line 1730
    move-result-object v2

    .line 1731
    new-instance v3, Lcom/fsck/k9/preferences/Settings$EnumSetting;

    .line 1732
    .line 1733
    const-class v7, Lnet/thunderbird/core/preference/LockScreenNotificationVisibility;

    .line 1734
    .line 1735
    sget-object v12, Lnet/thunderbird/core/preference/LockScreenNotificationVisibility;->MESSAGE_COUNT:Lnet/thunderbird/core/preference/LockScreenNotificationVisibility;

    .line 1736
    .line 1737
    invoke-direct {v3, v7, v12}, Lcom/fsck/k9/preferences/Settings$EnumSetting;-><init>(Ljava/lang/Class;Ljava/lang/Enum;)V

    .line 1738
    .line 1739
    .line 1740
    invoke-direct {v1, v5, v2, v3}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1741
    .line 1742
    .line 1743
    const/4 v2, 0x1

    .line 1744
    new-array v3, v2, [Lcom/google/zxing/BinaryBitmap;

    .line 1745
    .line 1746
    const/4 v7, 0x0

    .line 1747
    aput-object v1, v3, v7

    .line 1748
    .line 1749
    invoke-static {v3}, Landroidx/sqlite/SQLite;->versions([Lcom/google/zxing/BinaryBitmap;)Ljava/util/TreeMap;

    .line 1750
    .line 1751
    .line 1752
    move-result-object v1

    .line 1753
    const-string v3, "lockScreenNotificationVisibility"

    .line 1754
    .line 1755
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1756
    .line 1757
    .line 1758
    new-instance v1, Lcom/google/zxing/BinaryBitmap;

    .line 1759
    .line 1760
    const/16 v3, 0x26

    .line 1761
    .line 1762
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1763
    .line 1764
    .line 1765
    move-result-object v3

    .line 1766
    new-instance v12, Lcom/fsck/k9/preferences/Settings$ColorSetting;

    .line 1767
    .line 1768
    invoke-direct {v12, v2}, Lcom/fsck/k9/preferences/Settings$ColorSetting;-><init>(Z)V

    .line 1769
    .line 1770
    .line 1771
    invoke-direct {v1, v5, v3, v12}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1772
    .line 1773
    .line 1774
    new-array v12, v2, [Lcom/google/zxing/BinaryBitmap;

    .line 1775
    .line 1776
    aput-object v1, v12, v7

    .line 1777
    .line 1778
    invoke-static {v12}, Landroidx/sqlite/SQLite;->versions([Lcom/google/zxing/BinaryBitmap;)Ljava/util/TreeMap;

    .line 1779
    .line 1780
    .line 1781
    move-result-object v1

    .line 1782
    const-string v12, "confirmDeleteFromNotification"

    .line 1783
    .line 1784
    invoke-interface {v0, v12, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1785
    .line 1786
    .line 1787
    new-instance v1, Lcom/google/zxing/BinaryBitmap;

    .line 1788
    .line 1789
    new-instance v12, Lcom/fsck/k9/preferences/Settings$ColorSetting;

    .line 1790
    .line 1791
    invoke-direct {v12, v7}, Lcom/fsck/k9/preferences/Settings$ColorSetting;-><init>(Z)V

    .line 1792
    .line 1793
    .line 1794
    invoke-direct {v1, v5, v3, v12}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1795
    .line 1796
    .line 1797
    new-array v12, v2, [Lcom/google/zxing/BinaryBitmap;

    .line 1798
    .line 1799
    aput-object v1, v12, v7

    .line 1800
    .line 1801
    invoke-static {v12}, Landroidx/sqlite/SQLite;->versions([Lcom/google/zxing/BinaryBitmap;)Ljava/util/TreeMap;

    .line 1802
    .line 1803
    .line 1804
    move-result-object v1

    .line 1805
    const-string v2, "messageListSenderAboveSubject"

    .line 1806
    .line 1807
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1808
    .line 1809
    .line 1810
    new-instance v1, Lcom/google/zxing/BinaryBitmap;

    .line 1811
    .line 1812
    new-instance v2, Lcom/fsck/k9/preferences/Settings$EnumSetting;

    .line 1813
    .line 1814
    sget-object v7, Lnet/thunderbird/core/preference/NotificationQuickDelete;->NEVER:Lnet/thunderbird/core/preference/NotificationQuickDelete;

    .line 1815
    .line 1816
    const-class v12, Lnet/thunderbird/core/preference/NotificationQuickDelete;

    .line 1817
    .line 1818
    invoke-direct {v2, v12, v7}, Lcom/fsck/k9/preferences/Settings$EnumSetting;-><init>(Ljava/lang/Class;Ljava/lang/Enum;)V

    .line 1819
    .line 1820
    .line 1821
    invoke-direct {v1, v5, v3, v2}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1822
    .line 1823
    .line 1824
    new-instance v2, Lcom/google/zxing/BinaryBitmap;

    .line 1825
    .line 1826
    const/16 v3, 0x43

    .line 1827
    .line 1828
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1829
    .line 1830
    .line 1831
    move-result-object v3

    .line 1832
    new-instance v7, Lcom/fsck/k9/preferences/Settings$EnumSetting;

    .line 1833
    .line 1834
    move/from16 v16, v9

    .line 1835
    .line 1836
    sget-object v9, Lnet/thunderbird/core/preference/NotificationQuickDelete;->ALWAYS:Lnet/thunderbird/core/preference/NotificationQuickDelete;

    .line 1837
    .line 1838
    invoke-direct {v7, v12, v9}, Lcom/fsck/k9/preferences/Settings$EnumSetting;-><init>(Ljava/lang/Class;Ljava/lang/Enum;)V

    .line 1839
    .line 1840
    .line 1841
    invoke-direct {v2, v5, v3, v7}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1842
    .line 1843
    .line 1844
    const/4 v7, 0x2

    .line 1845
    new-array v3, v7, [Lcom/google/zxing/BinaryBitmap;

    .line 1846
    .line 1847
    const/16 v19, 0x0

    .line 1848
    .line 1849
    aput-object v1, v3, v19

    .line 1850
    .line 1851
    const/4 v1, 0x1

    .line 1852
    aput-object v2, v3, v1

    .line 1853
    .line 1854
    invoke-static {v3}, Landroidx/sqlite/SQLite;->versions([Lcom/google/zxing/BinaryBitmap;)Ljava/util/TreeMap;

    .line 1855
    .line 1856
    .line 1857
    move-result-object v2

    .line 1858
    const-string v3, "notificationQuickDelete"

    .line 1859
    .line 1860
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1861
    .line 1862
    .line 1863
    new-instance v2, Lcom/google/zxing/BinaryBitmap;

    .line 1864
    .line 1865
    const/16 v3, 0x27

    .line 1866
    .line 1867
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1868
    .line 1869
    .line 1870
    move-result-object v3

    .line 1871
    new-instance v7, Lcom/fsck/k9/preferences/Settings$ColorSetting;

    .line 1872
    .line 1873
    invoke-direct {v7, v1}, Lcom/fsck/k9/preferences/Settings$ColorSetting;-><init>(Z)V

    .line 1874
    .line 1875
    .line 1876
    invoke-direct {v2, v5, v3, v7}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1877
    .line 1878
    .line 1879
    new-array v3, v1, [Lcom/google/zxing/BinaryBitmap;

    .line 1880
    .line 1881
    const/4 v7, 0x0

    .line 1882
    aput-object v2, v3, v7

    .line 1883
    .line 1884
    invoke-static {v3}, Landroidx/sqlite/SQLite;->versions([Lcom/google/zxing/BinaryBitmap;)Ljava/util/TreeMap;

    .line 1885
    .line 1886
    .line 1887
    move-result-object v2

    .line 1888
    const-string v3, "notificationDuringQuietTimeEnabled"

    .line 1889
    .line 1890
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1891
    .line 1892
    .line 1893
    new-instance v2, Lcom/google/zxing/BinaryBitmap;

    .line 1894
    .line 1895
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1896
    .line 1897
    .line 1898
    move-result-object v3

    .line 1899
    new-instance v9, Lcom/fsck/k9/preferences/Settings$ColorSetting;

    .line 1900
    .line 1901
    invoke-direct {v9, v1}, Lcom/fsck/k9/preferences/Settings$ColorSetting;-><init>(Z)V

    .line 1902
    .line 1903
    .line 1904
    invoke-direct {v2, v5, v3, v9}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1905
    .line 1906
    .line 1907
    new-array v3, v1, [Lcom/google/zxing/BinaryBitmap;

    .line 1908
    .line 1909
    aput-object v2, v3, v7

    .line 1910
    .line 1911
    invoke-static {v3}, Landroidx/sqlite/SQLite;->versions([Lcom/google/zxing/BinaryBitmap;)Ljava/util/TreeMap;

    .line 1912
    .line 1913
    .line 1914
    move-result-object v1

    .line 1915
    const-string v2, "confirmDiscardMessage"

    .line 1916
    .line 1917
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1918
    .line 1919
    .line 1920
    new-instance v1, Lcom/google/zxing/BinaryBitmap;

    .line 1921
    .line 1922
    const/16 v2, 0x2b

    .line 1923
    .line 1924
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1925
    .line 1926
    .line 1927
    move-result-object v2

    .line 1928
    new-instance v3, Lcom/fsck/k9/preferences/Settings$IntegerRangeSetting;

    .line 1929
    .line 1930
    const v9, 0x7fffffff

    .line 1931
    .line 1932
    .line 1933
    invoke-direct {v3, v7, v9, v7}, Lcom/fsck/k9/preferences/Settings$IntegerRangeSetting;-><init>(III)V

    .line 1934
    .line 1935
    .line 1936
    invoke-direct {v1, v5, v2, v3}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1937
    .line 1938
    .line 1939
    const/4 v2, 0x1

    .line 1940
    new-array v3, v2, [Lcom/google/zxing/BinaryBitmap;

    .line 1941
    .line 1942
    aput-object v1, v3, v7

    .line 1943
    .line 1944
    invoke-static {v3}, Landroidx/sqlite/SQLite;->versions([Lcom/google/zxing/BinaryBitmap;)Ljava/util/TreeMap;

    .line 1945
    .line 1946
    .line 1947
    move-result-object v1

    .line 1948
    const-string v3, "pgpInlineDialogCounter"

    .line 1949
    .line 1950
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1951
    .line 1952
    .line 1953
    new-instance v1, Lcom/google/zxing/BinaryBitmap;

    .line 1954
    .line 1955
    const/16 v3, 0x2d

    .line 1956
    .line 1957
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1958
    .line 1959
    .line 1960
    move-result-object v3

    .line 1961
    new-instance v12, Lcom/fsck/k9/preferences/Settings$IntegerRangeSetting;

    .line 1962
    .line 1963
    invoke-direct {v12, v7, v9, v7}, Lcom/fsck/k9/preferences/Settings$IntegerRangeSetting;-><init>(III)V

    .line 1964
    .line 1965
    .line 1966
    invoke-direct {v1, v5, v3, v12}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1967
    .line 1968
    .line 1969
    new-array v3, v2, [Lcom/google/zxing/BinaryBitmap;

    .line 1970
    .line 1971
    aput-object v1, v3, v7

    .line 1972
    .line 1973
    invoke-static {v3}, Landroidx/sqlite/SQLite;->versions([Lcom/google/zxing/BinaryBitmap;)Ljava/util/TreeMap;

    .line 1974
    .line 1975
    .line 1976
    move-result-object v1

    .line 1977
    const-string v3, "pgpSignOnlyDialogCounter"

    .line 1978
    .line 1979
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1980
    .line 1981
    .line 1982
    new-instance v1, Lcom/google/zxing/BinaryBitmap;

    .line 1983
    .line 1984
    const/16 v3, 0x30

    .line 1985
    .line 1986
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1987
    .line 1988
    .line 1989
    move-result-object v3

    .line 1990
    new-instance v9, Lcom/fsck/k9/preferences/Settings$FontSizeSetting;

    .line 1991
    .line 1992
    invoke-direct {v9, v7}, Lcom/fsck/k9/preferences/Settings$FontSizeSetting;-><init>(I)V

    .line 1993
    .line 1994
    .line 1995
    invoke-direct {v1, v5, v3, v9}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1996
    .line 1997
    .line 1998
    new-array v3, v2, [Lcom/google/zxing/BinaryBitmap;

    .line 1999
    .line 2000
    aput-object v1, v3, v7

    .line 2001
    .line 2002
    invoke-static {v3}, Landroidx/sqlite/SQLite;->versions([Lcom/google/zxing/BinaryBitmap;)Ljava/util/TreeMap;

    .line 2003
    .line 2004
    .line 2005
    move-result-object v1

    .line 2006
    const-string v2, "fontSizeMessageViewBCC"

    .line 2007
    .line 2008
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2009
    .line 2010
    .line 2011
    new-instance v1, Lcom/google/zxing/BinaryBitmap;

    .line 2012
    .line 2013
    const/16 v2, 0x31

    .line 2014
    .line 2015
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2016
    .line 2017
    .line 2018
    move-result-object v2

    .line 2019
    new-instance v3, Lcom/fsck/k9/preferences/Settings$ColorSetting;

    .line 2020
    .line 2021
    invoke-direct {v3, v7}, Lcom/fsck/k9/preferences/Settings$ColorSetting;-><init>(Z)V

    .line 2022
    .line 2023
    .line 2024
    invoke-direct {v1, v5, v2, v3}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 2025
    .line 2026
    .line 2027
    new-instance v2, Lcom/google/zxing/BinaryBitmap;

    .line 2028
    .line 2029
    const/16 v3, 0x38

    .line 2030
    .line 2031
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2032
    .line 2033
    .line 2034
    move-result-object v3

    .line 2035
    const/4 v9, 0x0

    .line 2036
    invoke-direct {v2, v5, v3, v9}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 2037
    .line 2038
    .line 2039
    const/4 v12, 0x2

    .line 2040
    new-array v3, v12, [Lcom/google/zxing/BinaryBitmap;

    .line 2041
    .line 2042
    aput-object v1, v3, v7

    .line 2043
    .line 2044
    const/4 v1, 0x1

    .line 2045
    aput-object v2, v3, v1

    .line 2046
    .line 2047
    invoke-static {v3}, Landroidx/sqlite/SQLite;->versions([Lcom/google/zxing/BinaryBitmap;)Ljava/util/TreeMap;

    .line 2048
    .line 2049
    .line 2050
    move-result-object v2

    .line 2051
    const-string v3, "hideHostnameWhenConnecting"

    .line 2052
    .line 2053
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2054
    .line 2055
    .line 2056
    new-instance v2, Lcom/google/zxing/BinaryBitmap;

    .line 2057
    .line 2058
    const/16 v3, 0x49

    .line 2059
    .line 2060
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2061
    .line 2062
    .line 2063
    move-result-object v3

    .line 2064
    new-instance v7, Lcom/fsck/k9/preferences/Settings$ColorSetting;

    .line 2065
    .line 2066
    invoke-direct {v7, v1}, Lcom/fsck/k9/preferences/Settings$ColorSetting;-><init>(Z)V

    .line 2067
    .line 2068
    .line 2069
    invoke-direct {v2, v5, v3, v7}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 2070
    .line 2071
    .line 2072
    new-array v3, v1, [Lcom/google/zxing/BinaryBitmap;

    .line 2073
    .line 2074
    const/4 v7, 0x0

    .line 2075
    aput-object v2, v3, v7

    .line 2076
    .line 2077
    invoke-static {v3}, Landroidx/sqlite/SQLite;->versions([Lcom/google/zxing/BinaryBitmap;)Ljava/util/TreeMap;

    .line 2078
    .line 2079
    .line 2080
    move-result-object v2

    .line 2081
    const-string v3, "showRecentChanges"

    .line 2082
    .line 2083
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2084
    .line 2085
    .line 2086
    new-instance v2, Lcom/google/zxing/BinaryBitmap;

    .line 2087
    .line 2088
    const/16 v3, 0x4b

    .line 2089
    .line 2090
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2091
    .line 2092
    .line 2093
    move-result-object v3

    .line 2094
    new-instance v9, Lcom/fsck/k9/preferences/Settings$ColorSetting;

    .line 2095
    .line 2096
    invoke-direct {v9, v7}, Lcom/fsck/k9/preferences/Settings$ColorSetting;-><init>(Z)V

    .line 2097
    .line 2098
    .line 2099
    invoke-direct {v2, v5, v3, v9}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 2100
    .line 2101
    .line 2102
    new-array v3, v1, [Lcom/google/zxing/BinaryBitmap;

    .line 2103
    .line 2104
    aput-object v2, v3, v7

    .line 2105
    .line 2106
    invoke-static {v3}, Landroidx/sqlite/SQLite;->versions([Lcom/google/zxing/BinaryBitmap;)Ljava/util/TreeMap;

    .line 2107
    .line 2108
    .line 2109
    move-result-object v2

    .line 2110
    const-string v3, "showStarredCount"

    .line 2111
    .line 2112
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2113
    .line 2114
    .line 2115
    new-instance v2, Lcom/google/zxing/BinaryBitmap;

    .line 2116
    .line 2117
    new-instance v3, Lcom/fsck/k9/preferences/Settings$EnumSetting;

    .line 2118
    .line 2119
    sget-object v9, Lnet/thunderbird/core/common/action/SwipeAction;->ToggleSelection:Lnet/thunderbird/core/common/action/SwipeAction;

    .line 2120
    .line 2121
    const-class v12, Lnet/thunderbird/core/common/action/SwipeAction;

    .line 2122
    .line 2123
    invoke-direct {v3, v12, v9}, Lcom/fsck/k9/preferences/Settings$EnumSetting;-><init>(Ljava/lang/Class;Ljava/lang/Enum;)V

    .line 2124
    .line 2125
    .line 2126
    invoke-direct {v2, v5, v8, v3}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 2127
    .line 2128
    .line 2129
    new-array v3, v1, [Lcom/google/zxing/BinaryBitmap;

    .line 2130
    .line 2131
    aput-object v2, v3, v7

    .line 2132
    .line 2133
    invoke-static {v3}, Landroidx/sqlite/SQLite;->versions([Lcom/google/zxing/BinaryBitmap;)Ljava/util/TreeMap;

    .line 2134
    .line 2135
    .line 2136
    move-result-object v2

    .line 2137
    const-string v3, "swipeRightAction"

    .line 2138
    .line 2139
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2140
    .line 2141
    .line 2142
    new-instance v2, Lcom/google/zxing/BinaryBitmap;

    .line 2143
    .line 2144
    new-instance v3, Lcom/fsck/k9/preferences/Settings$EnumSetting;

    .line 2145
    .line 2146
    sget-object v9, Lnet/thunderbird/core/common/action/SwipeAction;->ToggleRead:Lnet/thunderbird/core/common/action/SwipeAction;

    .line 2147
    .line 2148
    invoke-direct {v3, v12, v9}, Lcom/fsck/k9/preferences/Settings$EnumSetting;-><init>(Ljava/lang/Class;Ljava/lang/Enum;)V

    .line 2149
    .line 2150
    .line 2151
    invoke-direct {v2, v5, v8, v3}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 2152
    .line 2153
    .line 2154
    new-array v3, v1, [Lcom/google/zxing/BinaryBitmap;

    .line 2155
    .line 2156
    aput-object v2, v3, v7

    .line 2157
    .line 2158
    invoke-static {v3}, Landroidx/sqlite/SQLite;->versions([Lcom/google/zxing/BinaryBitmap;)Ljava/util/TreeMap;

    .line 2159
    .line 2160
    .line 2161
    move-result-object v2

    .line 2162
    const-string v3, "swipeLeftAction"

    .line 2163
    .line 2164
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2165
    .line 2166
    .line 2167
    new-instance v2, Lcom/google/zxing/BinaryBitmap;

    .line 2168
    .line 2169
    const/16 v3, 0x55

    .line 2170
    .line 2171
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2172
    .line 2173
    .line 2174
    move-result-object v3

    .line 2175
    new-instance v8, Lcom/fsck/k9/preferences/Settings$ColorSetting;

    .line 2176
    .line 2177
    invoke-direct {v8, v1}, Lcom/fsck/k9/preferences/Settings$ColorSetting;-><init>(Z)V

    .line 2178
    .line 2179
    .line 2180
    invoke-direct {v2, v5, v3, v8}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 2181
    .line 2182
    .line 2183
    new-array v3, v1, [Lcom/google/zxing/BinaryBitmap;

    .line 2184
    .line 2185
    aput-object v2, v3, v7

    .line 2186
    .line 2187
    invoke-static {v3}, Landroidx/sqlite/SQLite;->versions([Lcom/google/zxing/BinaryBitmap;)Ljava/util/TreeMap;

    .line 2188
    .line 2189
    .line 2190
    move-result-object v1

    .line 2191
    const-string v2, "showComposeButtonOnMessageList"

    .line 2192
    .line 2193
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2194
    .line 2195
    .line 2196
    new-instance v1, Lcom/google/zxing/BinaryBitmap;

    .line 2197
    .line 2198
    const/16 v2, 0x56

    .line 2199
    .line 2200
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2201
    .line 2202
    .line 2203
    move-result-object v2

    .line 2204
    new-instance v3, Lcom/fsck/k9/preferences/Settings$EnumSetting;

    .line 2205
    .line 2206
    const-class v7, Lnet/thunderbird/core/preference/display/visualSettings/message/list/UiDensity;

    .line 2207
    .line 2208
    sget-object v8, Lnet/thunderbird/core/preference/display/visualSettings/message/list/UiDensity;->Default:Lnet/thunderbird/core/preference/display/visualSettings/message/list/UiDensity;

    .line 2209
    .line 2210
    invoke-direct {v3, v7, v8}, Lcom/fsck/k9/preferences/Settings$EnumSetting;-><init>(Ljava/lang/Class;Ljava/lang/Enum;)V

    .line 2211
    .line 2212
    .line 2213
    invoke-direct {v1, v5, v2, v3}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 2214
    .line 2215
    .line 2216
    const/4 v2, 0x1

    .line 2217
    new-array v3, v2, [Lcom/google/zxing/BinaryBitmap;

    .line 2218
    .line 2219
    const/4 v7, 0x0

    .line 2220
    aput-object v1, v3, v7

    .line 2221
    .line 2222
    invoke-static {v3}, Landroidx/sqlite/SQLite;->versions([Lcom/google/zxing/BinaryBitmap;)Ljava/util/TreeMap;

    .line 2223
    .line 2224
    .line 2225
    move-result-object v1

    .line 2226
    const-string v3, "messageListDensity"

    .line 2227
    .line 2228
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2229
    .line 2230
    .line 2231
    new-instance v1, Lcom/google/zxing/BinaryBitmap;

    .line 2232
    .line 2233
    const/16 v3, 0x57

    .line 2234
    .line 2235
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2236
    .line 2237
    .line 2238
    move-result-object v3

    .line 2239
    new-instance v8, Lcom/fsck/k9/preferences/Settings$FontSizeSetting;

    .line 2240
    .line 2241
    invoke-direct {v8, v7}, Lcom/fsck/k9/preferences/Settings$FontSizeSetting;-><init>(I)V

    .line 2242
    .line 2243
    .line 2244
    invoke-direct {v1, v5, v3, v8}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 2245
    .line 2246
    .line 2247
    new-array v3, v2, [Lcom/google/zxing/BinaryBitmap;

    .line 2248
    .line 2249
    aput-object v1, v3, v7

    .line 2250
    .line 2251
    invoke-static {v3}, Landroidx/sqlite/SQLite;->versions([Lcom/google/zxing/BinaryBitmap;)Ljava/util/TreeMap;

    .line 2252
    .line 2253
    .line 2254
    move-result-object v1

    .line 2255
    const-string v3, "fontSizeMessageViewAccountName"

    .line 2256
    .line 2257
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2258
    .line 2259
    .line 2260
    new-instance v1, Lcom/google/zxing/BinaryBitmap;

    .line 2261
    .line 2262
    new-instance v3, Lcom/fsck/k9/preferences/Settings$EnumSetting;

    .line 2263
    .line 2264
    const-class v8, Lnet/thunderbird/core/preference/interaction/PostRemoveNavigation;

    .line 2265
    .line 2266
    sget-object v9, Lnet/thunderbird/core/preference/interaction/PostRemoveNavigation;->ReturnToMessageList:Lnet/thunderbird/core/preference/interaction/PostRemoveNavigation;

    .line 2267
    .line 2268
    invoke-direct {v3, v8, v9}, Lcom/fsck/k9/preferences/Settings$EnumSetting;-><init>(Ljava/lang/Class;Ljava/lang/Enum;)V

    .line 2269
    .line 2270
    .line 2271
    invoke-direct {v1, v5, v15, v3}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 2272
    .line 2273
    .line 2274
    new-array v3, v2, [Lcom/google/zxing/BinaryBitmap;

    .line 2275
    .line 2276
    aput-object v1, v3, v7

    .line 2277
    .line 2278
    invoke-static {v3}, Landroidx/sqlite/SQLite;->versions([Lcom/google/zxing/BinaryBitmap;)Ljava/util/TreeMap;

    .line 2279
    .line 2280
    .line 2281
    move-result-object v1

    .line 2282
    const-string v2, "messageViewPostDeleteAction"

    .line 2283
    .line 2284
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2285
    .line 2286
    .line 2287
    new-instance v1, Lcom/google/zxing/BinaryBitmap;

    .line 2288
    .line 2289
    const/16 v2, 0x5a

    .line 2290
    .line 2291
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2292
    .line 2293
    .line 2294
    move-result-object v2

    .line 2295
    new-instance v3, Lcom/fsck/k9/preferences/Settings$EnumSetting;

    .line 2296
    .line 2297
    const-class v7, Lnet/thunderbird/core/preference/interaction/PostMarkAsUnreadNavigation;

    .line 2298
    .line 2299
    sget-object v8, Lnet/thunderbird/core/preference/interaction/PostMarkAsUnreadNavigation;->ReturnToMessageList:Lnet/thunderbird/core/preference/interaction/PostMarkAsUnreadNavigation;

    .line 2300
    .line 2301
    invoke-direct {v3, v7, v8}, Lcom/fsck/k9/preferences/Settings$EnumSetting;-><init>(Ljava/lang/Class;Ljava/lang/Enum;)V

    .line 2302
    .line 2303
    .line 2304
    invoke-direct {v1, v5, v2, v3}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 2305
    .line 2306
    .line 2307
    const/4 v2, 0x1

    .line 2308
    new-array v3, v2, [Lcom/google/zxing/BinaryBitmap;

    .line 2309
    .line 2310
    const/4 v7, 0x0

    .line 2311
    aput-object v1, v3, v7

    .line 2312
    .line 2313
    invoke-static {v3}, Landroidx/sqlite/SQLite;->versions([Lcom/google/zxing/BinaryBitmap;)Ljava/util/TreeMap;

    .line 2314
    .line 2315
    .line 2316
    move-result-object v1

    .line 2317
    const-string v3, "messageViewPostMarkAsUnreadAction"

    .line 2318
    .line 2319
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2320
    .line 2321
    .line 2322
    new-instance v1, Lcom/google/zxing/BinaryBitmap;

    .line 2323
    .line 2324
    const/16 v3, 0x69

    .line 2325
    .line 2326
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2327
    .line 2328
    .line 2329
    move-result-object v3

    .line 2330
    new-instance v8, Lcom/fsck/k9/preferences/Settings$ColorSetting;

    .line 2331
    .line 2332
    invoke-direct {v8, v2}, Lcom/fsck/k9/preferences/Settings$ColorSetting;-><init>(Z)V

    .line 2333
    .line 2334
    .line 2335
    invoke-direct {v1, v5, v3, v8}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 2336
    .line 2337
    .line 2338
    new-array v3, v2, [Lcom/google/zxing/BinaryBitmap;

    .line 2339
    .line 2340
    aput-object v1, v3, v7

    .line 2341
    .line 2342
    invoke-static {v3}, Landroidx/sqlite/SQLite;->versions([Lcom/google/zxing/BinaryBitmap;)Ljava/util/TreeMap;

    .line 2343
    .line 2344
    .line 2345
    move-result-object v1

    .line 2346
    const-string v3, "shouldShowSetupArchiveFolderDialog"

    .line 2347
    .line 2348
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2349
    .line 2350
    .line 2351
    new-instance v1, Lcom/google/zxing/BinaryBitmap;

    .line 2352
    .line 2353
    const/16 v3, 0x6c

    .line 2354
    .line 2355
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2356
    .line 2357
    .line 2358
    move-result-object v3

    .line 2359
    new-instance v8, Lcom/fsck/k9/preferences/Settings$ColorSetting;

    .line 2360
    .line 2361
    invoke-direct {v8, v7}, Lcom/fsck/k9/preferences/Settings$ColorSetting;-><init>(Z)V

    .line 2362
    .line 2363
    .line 2364
    invoke-direct {v1, v5, v3, v8}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 2365
    .line 2366
    .line 2367
    new-array v3, v2, [Lcom/google/zxing/BinaryBitmap;

    .line 2368
    .line 2369
    aput-object v1, v3, v7

    .line 2370
    .line 2371
    invoke-static {v3}, Landroidx/sqlite/SQLite;->versions([Lcom/google/zxing/BinaryBitmap;)Ljava/util/TreeMap;

    .line 2372
    .line 2373
    .line 2374
    move-result-object v1

    .line 2375
    const-string v2, "drawerExpandAllFolder"

    .line 2376
    .line 2377
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2378
    .line 2379
    .line 2380
    new-instance v1, Lcom/google/zxing/BinaryBitmap;

    .line 2381
    .line 2382
    const/16 v2, 0x6d

    .line 2383
    .line 2384
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2385
    .line 2386
    .line 2387
    move-result-object v2

    .line 2388
    new-instance v3, Lcom/fsck/k9/preferences/Settings$EnumSetting;

    .line 2389
    .line 2390
    const-class v7, Lnet/thunderbird/core/preference/BodyContentType;

    .line 2391
    .line 2392
    sget-object v8, Lnet/thunderbird/core/preference/BodyContentType;->TEXT_HTML:Lnet/thunderbird/core/preference/BodyContentType;

    .line 2393
    .line 2394
    invoke-direct {v3, v7, v8}, Lcom/fsck/k9/preferences/Settings$EnumSetting;-><init>(Ljava/lang/Class;Ljava/lang/Enum;)V

    .line 2395
    .line 2396
    .line 2397
    invoke-direct {v1, v5, v2, v3}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 2398
    .line 2399
    .line 2400
    const/4 v2, 0x1

    .line 2401
    new-array v3, v2, [Lcom/google/zxing/BinaryBitmap;

    .line 2402
    .line 2403
    const/16 v19, 0x0

    .line 2404
    .line 2405
    aput-object v1, v3, v19

    .line 2406
    .line 2407
    invoke-static {v3}, Landroidx/sqlite/SQLite;->versions([Lcom/google/zxing/BinaryBitmap;)Ljava/util/TreeMap;

    .line 2408
    .line 2409
    .line 2410
    move-result-object v1

    .line 2411
    const-string v2, "messageViewBodyContentType"

    .line 2412
    .line 2413
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2414
    .line 2415
    .line 2416
    new-instance v1, Lcom/google/zxing/BinaryBitmap;

    .line 2417
    .line 2418
    const/16 v2, 0x6e

    .line 2419
    .line 2420
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2421
    .line 2422
    .line 2423
    move-result-object v2

    .line 2424
    new-instance v3, Lcom/fsck/k9/preferences/Settings$EnumSetting;

    .line 2425
    .line 2426
    const-class v7, Lnet/thunderbird/core/preference/display/visualSettings/message/list/MessageListDateTimeFormat;

    .line 2427
    .line 2428
    sget-object v8, Lnet/thunderbird/core/preference/display/visualSettings/message/list/MessageListDateTimeFormat;->Contextual:Lnet/thunderbird/core/preference/display/visualSettings/message/list/MessageListDateTimeFormat;

    .line 2429
    .line 2430
    invoke-direct {v3, v7, v8}, Lcom/fsck/k9/preferences/Settings$EnumSetting;-><init>(Ljava/lang/Class;Ljava/lang/Enum;)V

    .line 2431
    .line 2432
    .line 2433
    invoke-direct {v1, v5, v2, v3}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 2434
    .line 2435
    .line 2436
    const/4 v2, 0x1

    .line 2437
    new-array v2, v2, [Lcom/google/zxing/BinaryBitmap;

    .line 2438
    .line 2439
    const/16 v19, 0x0

    .line 2440
    .line 2441
    aput-object v1, v2, v19

    .line 2442
    .line 2443
    invoke-static {v2}, Landroidx/sqlite/SQLite;->versions([Lcom/google/zxing/BinaryBitmap;)Ljava/util/TreeMap;

    .line 2444
    .line 2445
    .line 2446
    move-result-object v1

    .line 2447
    const-string v2, "messageListDateTimeFormat"

    .line 2448
    .line 2449
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2450
    .line 2451
    .line 2452
    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 2453
    .line 2454
    .line 2455
    move-result-object v0

    .line 2456
    sput-object v0, Lcom/fsck/k9/preferences/GeneralSettingsDescriptions;->SETTINGS:Ljava/util/Map;

    .line 2457
    .line 2458
    new-instance v0, Ljava/util/HashMap;

    .line 2459
    .line 2460
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2461
    .line 2462
    .line 2463
    new-instance v1, Lcom/fsck/k9/preferences/upgrader/ServerSettingsUpgraderTo92;

    .line 2464
    .line 2465
    invoke-direct {v1, v5}, Lcom/fsck/k9/preferences/upgrader/ServerSettingsUpgraderTo92;-><init>(I)V

    .line 2466
    .line 2467
    .line 2468
    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2469
    .line 2470
    .line 2471
    new-instance v1, Lcom/fsck/k9/preferences/upgrader/ServerSettingsUpgraderTo92;

    .line 2472
    .line 2473
    const/16 v2, 0x9

    .line 2474
    .line 2475
    invoke-direct {v1, v2}, Lcom/fsck/k9/preferences/upgrader/ServerSettingsUpgraderTo92;-><init>(I)V

    .line 2476
    .line 2477
    .line 2478
    invoke-virtual {v0, v11, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2479
    .line 2480
    .line 2481
    new-instance v1, Lcom/fsck/k9/preferences/upgrader/ServerSettingsUpgraderTo92;

    .line 2482
    .line 2483
    const/16 v2, 0xa

    .line 2484
    .line 2485
    invoke-direct {v1, v2}, Lcom/fsck/k9/preferences/upgrader/ServerSettingsUpgraderTo92;-><init>(I)V

    .line 2486
    .line 2487
    .line 2488
    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2489
    .line 2490
    .line 2491
    new-instance v1, Lcom/fsck/k9/preferences/upgrader/ServerSettingsUpgraderTo92;

    .line 2492
    .line 2493
    const/16 v2, 0xb

    .line 2494
    .line 2495
    invoke-direct {v1, v2}, Lcom/fsck/k9/preferences/upgrader/ServerSettingsUpgraderTo92;-><init>(I)V

    .line 2496
    .line 2497
    .line 2498
    invoke-virtual {v0, v13, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2499
    .line 2500
    .line 2501
    new-instance v1, Lcom/fsck/k9/preferences/upgrader/ServerSettingsUpgraderTo92;

    .line 2502
    .line 2503
    const/16 v2, 0xc

    .line 2504
    .line 2505
    invoke-direct {v1, v2}, Lcom/fsck/k9/preferences/upgrader/ServerSettingsUpgraderTo92;-><init>(I)V

    .line 2506
    .line 2507
    .line 2508
    invoke-virtual {v0, v10, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2509
    .line 2510
    .line 2511
    new-instance v1, Lcom/fsck/k9/preferences/upgrader/ServerSettingsUpgraderTo92;

    .line 2512
    .line 2513
    const/16 v2, 0xd

    .line 2514
    .line 2515
    invoke-direct {v1, v2}, Lcom/fsck/k9/preferences/upgrader/ServerSettingsUpgraderTo92;-><init>(I)V

    .line 2516
    .line 2517
    .line 2518
    invoke-virtual {v0, v15, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2519
    .line 2520
    .line 2521
    new-instance v1, Lcom/fsck/k9/preferences/upgrader/ServerSettingsUpgraderTo92;

    .line 2522
    .line 2523
    const/4 v2, 0x7

    .line 2524
    invoke-direct {v1, v2}, Lcom/fsck/k9/preferences/upgrader/ServerSettingsUpgraderTo92;-><init>(I)V

    .line 2525
    .line 2526
    .line 2527
    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2528
    .line 2529
    .line 2530
    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 2531
    .line 2532
    .line 2533
    move-result-object v0

    .line 2534
    sput-object v0, Lcom/fsck/k9/preferences/GeneralSettingsDescriptions;->UPGRADERS:Ljava/util/Map;

    .line 2535
    .line 2536
    return-void
.end method
