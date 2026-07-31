.class public abstract Lcom/fsck/k9/preferences/FolderSettingsDescriptions;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final SETTINGS:Ljava/util/Map;

.field public static final UPGRADERS:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/google/zxing/BinaryBitmap;

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    new-instance v4, Lcom/fsck/k9/preferences/Settings$EnumSetting;

    .line 14
    .line 15
    sget-object v5, Lcom/fsck/k9/preferences/legacy/FolderClass;->NO_CLASS:Lcom/fsck/k9/preferences/legacy/FolderClass;

    .line 16
    .line 17
    const-class v6, Lcom/fsck/k9/preferences/legacy/FolderClass;

    .line 18
    .line 19
    invoke-direct {v4, v6, v5}, Lcom/fsck/k9/preferences/Settings$EnumSetting;-><init>(Ljava/lang/Class;Ljava/lang/Enum;)V

    .line 20
    .line 21
    .line 22
    const/16 v5, 0x8

    .line 23
    .line 24
    invoke-direct {v1, v5, v3, v4}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    new-instance v4, Lcom/google/zxing/BinaryBitmap;

    .line 28
    .line 29
    const/16 v7, 0x64

    .line 30
    .line 31
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    move-result-object v7

    .line 35
    const/4 v8, 0x0

    .line 36
    invoke-direct {v4, v5, v7, v8}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    const/4 v9, 0x2

    .line 40
    new-array v10, v9, [Lcom/google/zxing/BinaryBitmap;

    .line 41
    .line 42
    const/4 v11, 0x0

    .line 43
    aput-object v1, v10, v11

    .line 44
    .line 45
    aput-object v4, v10, v2

    .line 46
    .line 47
    invoke-static {v10}, Landroidx/sqlite/SQLite;->versions([Lcom/google/zxing/BinaryBitmap;)Ljava/util/TreeMap;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    const-string v4, "displayMode"

    .line 52
    .line 53
    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    new-instance v1, Lcom/google/zxing/BinaryBitmap;

    .line 57
    .line 58
    const/16 v4, 0x22

    .line 59
    .line 60
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    new-instance v10, Lcom/fsck/k9/preferences/Settings$EnumSetting;

    .line 65
    .line 66
    sget-object v12, Lcom/fsck/k9/preferences/legacy/FolderClass;->INHERITED:Lcom/fsck/k9/preferences/legacy/FolderClass;

    .line 67
    .line 68
    invoke-direct {v10, v6, v12}, Lcom/fsck/k9/preferences/Settings$EnumSetting;-><init>(Ljava/lang/Class;Ljava/lang/Enum;)V

    .line 69
    .line 70
    .line 71
    invoke-direct {v1, v5, v4, v10}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    new-instance v4, Lcom/google/zxing/BinaryBitmap;

    .line 75
    .line 76
    const/16 v10, 0x60

    .line 77
    .line 78
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 79
    .line 80
    .line 81
    move-result-object v10

    .line 82
    invoke-direct {v4, v5, v10, v8}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    new-array v13, v9, [Lcom/google/zxing/BinaryBitmap;

    .line 86
    .line 87
    aput-object v1, v13, v11

    .line 88
    .line 89
    aput-object v4, v13, v2

    .line 90
    .line 91
    invoke-static {v13}, Landroidx/sqlite/SQLite;->versions([Lcom/google/zxing/BinaryBitmap;)Ljava/util/TreeMap;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    const-string v4, "notifyMode"

    .line 96
    .line 97
    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    new-instance v1, Lcom/google/zxing/BinaryBitmap;

    .line 101
    .line 102
    new-instance v4, Lcom/fsck/k9/preferences/Settings$EnumSetting;

    .line 103
    .line 104
    invoke-direct {v4, v6, v12}, Lcom/fsck/k9/preferences/Settings$EnumSetting;-><init>(Ljava/lang/Class;Ljava/lang/Enum;)V

    .line 105
    .line 106
    .line 107
    invoke-direct {v1, v5, v3, v4}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 108
    .line 109
    .line 110
    new-instance v4, Lcom/google/zxing/BinaryBitmap;

    .line 111
    .line 112
    const/16 v13, 0x63

    .line 113
    .line 114
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 115
    .line 116
    .line 117
    move-result-object v13

    .line 118
    invoke-direct {v4, v5, v13, v8}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    new-array v14, v9, [Lcom/google/zxing/BinaryBitmap;

    .line 122
    .line 123
    aput-object v1, v14, v11

    .line 124
    .line 125
    aput-object v4, v14, v2

    .line 126
    .line 127
    invoke-static {v14}, Landroidx/sqlite/SQLite;->versions([Lcom/google/zxing/BinaryBitmap;)Ljava/util/TreeMap;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    const-string v4, "syncMode"

    .line 132
    .line 133
    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    new-instance v1, Lcom/google/zxing/BinaryBitmap;

    .line 137
    .line 138
    new-instance v4, Lcom/fsck/k9/preferences/Settings$EnumSetting;

    .line 139
    .line 140
    invoke-direct {v4, v6, v12}, Lcom/fsck/k9/preferences/Settings$EnumSetting;-><init>(Ljava/lang/Class;Ljava/lang/Enum;)V

    .line 141
    .line 142
    .line 143
    invoke-direct {v1, v5, v3, v4}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 144
    .line 145
    .line 146
    new-instance v4, Lcom/google/zxing/BinaryBitmap;

    .line 147
    .line 148
    const/16 v12, 0x42

    .line 149
    .line 150
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 151
    .line 152
    .line 153
    move-result-object v12

    .line 154
    new-instance v14, Lcom/fsck/k9/preferences/Settings$EnumSetting;

    .line 155
    .line 156
    sget-object v15, Lcom/fsck/k9/preferences/legacy/FolderClass;->SECOND_CLASS:Lcom/fsck/k9/preferences/legacy/FolderClass;

    .line 157
    .line 158
    invoke-direct {v14, v6, v15}, Lcom/fsck/k9/preferences/Settings$EnumSetting;-><init>(Ljava/lang/Class;Ljava/lang/Enum;)V

    .line 159
    .line 160
    .line 161
    invoke-direct {v4, v5, v12, v14}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 162
    .line 163
    .line 164
    new-instance v6, Lcom/google/zxing/BinaryBitmap;

    .line 165
    .line 166
    const/16 v12, 0x62

    .line 167
    .line 168
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 169
    .line 170
    .line 171
    move-result-object v12

    .line 172
    invoke-direct {v6, v5, v12, v8}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 173
    .line 174
    .line 175
    const/4 v8, 0x3

    .line 176
    new-array v8, v8, [Lcom/google/zxing/BinaryBitmap;

    .line 177
    .line 178
    aput-object v1, v8, v11

    .line 179
    .line 180
    aput-object v4, v8, v2

    .line 181
    .line 182
    aput-object v6, v8, v9

    .line 183
    .line 184
    invoke-static {v8}, Landroidx/sqlite/SQLite;->versions([Lcom/google/zxing/BinaryBitmap;)Ljava/util/TreeMap;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    const-string v4, "pushMode"

    .line 189
    .line 190
    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    new-instance v1, Lcom/google/zxing/BinaryBitmap;

    .line 194
    .line 195
    new-instance v4, Lcom/fsck/k9/preferences/Settings$ColorSetting;

    .line 196
    .line 197
    invoke-direct {v4, v11}, Lcom/fsck/k9/preferences/Settings$ColorSetting;-><init>(Z)V

    .line 198
    .line 199
    .line 200
    invoke-direct {v1, v5, v3, v4}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 201
    .line 202
    .line 203
    new-array v4, v2, [Lcom/google/zxing/BinaryBitmap;

    .line 204
    .line 205
    aput-object v1, v4, v11

    .line 206
    .line 207
    invoke-static {v4}, Landroidx/sqlite/SQLite;->versions([Lcom/google/zxing/BinaryBitmap;)Ljava/util/TreeMap;

    .line 208
    .line 209
    .line 210
    move-result-object v1

    .line 211
    const-string v4, "inTopGroup"

    .line 212
    .line 213
    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    new-instance v1, Lcom/google/zxing/BinaryBitmap;

    .line 217
    .line 218
    new-instance v4, Lcom/fsck/k9/preferences/Settings$ColorSetting;

    .line 219
    .line 220
    invoke-direct {v4, v11}, Lcom/fsck/k9/preferences/Settings$ColorSetting;-><init>(Z)V

    .line 221
    .line 222
    .line 223
    invoke-direct {v1, v5, v3, v4}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 224
    .line 225
    .line 226
    new-array v3, v2, [Lcom/google/zxing/BinaryBitmap;

    .line 227
    .line 228
    aput-object v1, v3, v11

    .line 229
    .line 230
    invoke-static {v3}, Landroidx/sqlite/SQLite;->versions([Lcom/google/zxing/BinaryBitmap;)Ljava/util/TreeMap;

    .line 231
    .line 232
    .line 233
    move-result-object v1

    .line 234
    const-string v3, "integrate"

    .line 235
    .line 236
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    new-instance v1, Lcom/google/zxing/BinaryBitmap;

    .line 240
    .line 241
    new-instance v3, Lcom/fsck/k9/preferences/Settings$ColorSetting;

    .line 242
    .line 243
    invoke-direct {v3, v11}, Lcom/fsck/k9/preferences/Settings$ColorSetting;-><init>(Z)V

    .line 244
    .line 245
    .line 246
    invoke-direct {v1, v5, v10, v3}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 247
    .line 248
    .line 249
    new-array v3, v2, [Lcom/google/zxing/BinaryBitmap;

    .line 250
    .line 251
    aput-object v1, v3, v11

    .line 252
    .line 253
    invoke-static {v3}, Landroidx/sqlite/SQLite;->versions([Lcom/google/zxing/BinaryBitmap;)Ljava/util/TreeMap;

    .line 254
    .line 255
    .line 256
    move-result-object v1

    .line 257
    const-string v3, "notificationsEnabled"

    .line 258
    .line 259
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    .line 261
    .line 262
    new-instance v1, Lcom/google/zxing/BinaryBitmap;

    .line 263
    .line 264
    new-instance v3, Lcom/fsck/k9/preferences/Settings$ColorSetting;

    .line 265
    .line 266
    invoke-direct {v3, v11}, Lcom/fsck/k9/preferences/Settings$ColorSetting;-><init>(Z)V

    .line 267
    .line 268
    .line 269
    invoke-direct {v1, v5, v12, v3}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 270
    .line 271
    .line 272
    new-array v3, v2, [Lcom/google/zxing/BinaryBitmap;

    .line 273
    .line 274
    aput-object v1, v3, v11

    .line 275
    .line 276
    invoke-static {v3}, Landroidx/sqlite/SQLite;->versions([Lcom/google/zxing/BinaryBitmap;)Ljava/util/TreeMap;

    .line 277
    .line 278
    .line 279
    move-result-object v1

    .line 280
    const-string v3, "pushEnabled"

    .line 281
    .line 282
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    .line 284
    .line 285
    new-instance v1, Lcom/google/zxing/BinaryBitmap;

    .line 286
    .line 287
    new-instance v3, Lcom/fsck/k9/preferences/Settings$ColorSetting;

    .line 288
    .line 289
    invoke-direct {v3, v11}, Lcom/fsck/k9/preferences/Settings$ColorSetting;-><init>(Z)V

    .line 290
    .line 291
    .line 292
    invoke-direct {v1, v5, v13, v3}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 293
    .line 294
    .line 295
    new-array v3, v2, [Lcom/google/zxing/BinaryBitmap;

    .line 296
    .line 297
    aput-object v1, v3, v11

    .line 298
    .line 299
    invoke-static {v3}, Landroidx/sqlite/SQLite;->versions([Lcom/google/zxing/BinaryBitmap;)Ljava/util/TreeMap;

    .line 300
    .line 301
    .line 302
    move-result-object v1

    .line 303
    const-string v3, "syncEnabled"

    .line 304
    .line 305
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    .line 307
    .line 308
    new-instance v1, Lcom/google/zxing/BinaryBitmap;

    .line 309
    .line 310
    new-instance v3, Lcom/fsck/k9/preferences/Settings$ColorSetting;

    .line 311
    .line 312
    invoke-direct {v3, v2}, Lcom/fsck/k9/preferences/Settings$ColorSetting;-><init>(Z)V

    .line 313
    .line 314
    .line 315
    invoke-direct {v1, v5, v7, v3}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 316
    .line 317
    .line 318
    new-array v2, v2, [Lcom/google/zxing/BinaryBitmap;

    .line 319
    .line 320
    aput-object v1, v2, v11

    .line 321
    .line 322
    invoke-static {v2}, Landroidx/sqlite/SQLite;->versions([Lcom/google/zxing/BinaryBitmap;)Ljava/util/TreeMap;

    .line 323
    .line 324
    .line 325
    move-result-object v1

    .line 326
    const-string/jumbo v2, "visible"

    .line 327
    .line 328
    .line 329
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    .line 331
    .line 332
    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 333
    .line 334
    .line 335
    move-result-object v0

    .line 336
    sput-object v0, Lcom/fsck/k9/preferences/FolderSettingsDescriptions;->SETTINGS:Ljava/util/Map;

    .line 337
    .line 338
    new-instance v0, Ljava/util/HashMap;

    .line 339
    .line 340
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 341
    .line 342
    .line 343
    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 344
    .line 345
    .line 346
    move-result-object v0

    .line 347
    sput-object v0, Lcom/fsck/k9/preferences/FolderSettingsDescriptions;->UPGRADERS:Ljava/util/Map;

    .line 348
    .line 349
    return-void
.end method
