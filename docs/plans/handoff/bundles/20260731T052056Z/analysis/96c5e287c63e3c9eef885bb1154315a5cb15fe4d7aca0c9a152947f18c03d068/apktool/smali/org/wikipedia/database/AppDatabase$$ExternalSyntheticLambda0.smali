.class public final synthetic Lorg/wikipedia/database/AppDatabase$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/wikipedia/database/AppDatabase$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 35

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v0, v0, Lorg/wikipedia/database/AppDatabase$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 4
    .line 5
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    new-instance v0, Lkotlinx/serialization/internal/HashSetSerializer;

    .line 12
    .line 13
    sget-object v1, Lorg/wikipedia/dataclient/mwapi/MwServiceError$$serializer;->INSTANCE:Lorg/wikipedia/dataclient/mwapi/MwServiceError$$serializer;

    .line 14
    .line 15
    invoke-direct {v0, v1, v2}, Lkotlinx/serialization/internal/HashSetSerializer;-><init>(Lkotlinx/serialization/KSerializer;I)V

    .line 16
    .line 17
    .line 18
    return-object v0

    .line 19
    :pswitch_0
    new-instance v0, Lkotlinx/serialization/internal/HashSetSerializer;

    .line 20
    .line 21
    sget-object v1, Lorg/wikipedia/dataclient/mwapi/MwServiceError$$serializer;->INSTANCE:Lorg/wikipedia/dataclient/mwapi/MwServiceError$$serializer;

    .line 22
    .line 23
    invoke-direct {v0, v1, v2}, Lkotlinx/serialization/internal/HashSetSerializer;-><init>(Lkotlinx/serialization/KSerializer;I)V

    .line 24
    .line 25
    .line 26
    return-object v0

    .line 27
    :pswitch_1
    new-instance v0, Lkotlinx/serialization/internal/HashMapSerializer;

    .line 28
    .line 29
    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 30
    .line 31
    sget-object v3, Lorg/wikipedia/dataclient/mwapi/MwAuthManagerInfo$Field$$serializer;->INSTANCE:Lorg/wikipedia/dataclient/mwapi/MwAuthManagerInfo$Field$$serializer;

    .line 32
    .line 33
    invoke-direct {v0, v1, v3, v2}, Lkotlinx/serialization/internal/HashMapSerializer;-><init>(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;I)V

    .line 34
    .line 35
    .line 36
    return-object v0

    .line 37
    :pswitch_2
    new-instance v0, Lkotlinx/serialization/internal/HashMapSerializer;

    .line 38
    .line 39
    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 40
    .line 41
    invoke-direct {v0, v1, v1, v2}, Lkotlinx/serialization/internal/HashMapSerializer;-><init>(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;I)V

    .line 42
    .line 43
    .line 44
    return-object v0

    .line 45
    :pswitch_3
    new-instance v0, Lkotlinx/serialization/internal/HashSetSerializer;

    .line 46
    .line 47
    sget-object v1, Lorg/wikipedia/dataclient/mwapi/MwAuthManagerInfo$Request$$serializer;->INSTANCE:Lorg/wikipedia/dataclient/mwapi/MwAuthManagerInfo$Request$$serializer;

    .line 48
    .line 49
    invoke-direct {v0, v1, v2}, Lkotlinx/serialization/internal/HashSetSerializer;-><init>(Lkotlinx/serialization/KSerializer;I)V

    .line 50
    .line 51
    .line 52
    return-object v0

    .line 53
    :pswitch_4
    new-instance v0, Lkotlinx/serialization/internal/HashSetSerializer;

    .line 54
    .line 55
    sget-object v1, Lorg/wikipedia/dataclient/mwapi/MwServiceError$$serializer;->INSTANCE:Lorg/wikipedia/dataclient/mwapi/MwServiceError$$serializer;

    .line 56
    .line 57
    invoke-direct {v0, v1, v2}, Lkotlinx/serialization/internal/HashSetSerializer;-><init>(Lkotlinx/serialization/KSerializer;I)V

    .line 58
    .line 59
    .line 60
    return-object v0

    .line 61
    :pswitch_5
    new-instance v0, Lkotlinx/serialization/internal/HashSetSerializer;

    .line 62
    .line 63
    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 64
    .line 65
    invoke-direct {v0, v1, v2}, Lkotlinx/serialization/internal/HashSetSerializer;-><init>(Lkotlinx/serialization/KSerializer;I)V

    .line 66
    .line 67
    .line 68
    return-object v0

    .line 69
    :pswitch_6
    new-instance v0, Lkotlinx/serialization/internal/HashMapSerializer;

    .line 70
    .line 71
    sget-object v1, Lorg/wikipedia/page/PageTitle$$serializer;->INSTANCE:Lorg/wikipedia/page/PageTitle$$serializer;

    .line 72
    .line 73
    sget-object v3, Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact$ArticleViews$$serializer;->INSTANCE:Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact$ArticleViews$$serializer;

    .line 74
    .line 75
    invoke-direct {v0, v1, v3, v2}, Lkotlinx/serialization/internal/HashMapSerializer;-><init>(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;I)V

    .line 76
    .line 77
    .line 78
    return-object v0

    .line 79
    :pswitch_7
    new-instance v0, Lkotlinx/serialization/internal/HashSetSerializer;

    .line 80
    .line 81
    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 82
    .line 83
    invoke-direct {v0, v1, v2}, Lkotlinx/serialization/internal/HashSetSerializer;-><init>(Lkotlinx/serialization/KSerializer;I)V

    .line 84
    .line 85
    .line 86
    return-object v0

    .line 87
    :pswitch_8
    new-instance v0, Lkotlinx/serialization/internal/HashSetSerializer;

    .line 88
    .line 89
    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 90
    .line 91
    invoke-direct {v0, v1, v2}, Lkotlinx/serialization/internal/HashSetSerializer;-><init>(Lkotlinx/serialization/KSerializer;I)V

    .line 92
    .line 93
    .line 94
    return-object v0

    .line 95
    :pswitch_9
    new-instance v0, Lkotlinx/serialization/internal/HashSetSerializer;

    .line 96
    .line 97
    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 98
    .line 99
    invoke-direct {v0, v1, v2}, Lkotlinx/serialization/internal/HashSetSerializer;-><init>(Lkotlinx/serialization/KSerializer;I)V

    .line 100
    .line 101
    .line 102
    return-object v0

    .line 103
    :pswitch_a
    new-instance v0, Lkotlinx/serialization/internal/HashSetSerializer;

    .line 104
    .line 105
    sget-object v1, Lorg/wikipedia/dataclient/growthtasks/GrowthImageSuggestion$ImageItem$$serializer;->INSTANCE:Lorg/wikipedia/dataclient/growthtasks/GrowthImageSuggestion$ImageItem$$serializer;

    .line 106
    .line 107
    invoke-direct {v0, v1, v2}, Lkotlinx/serialization/internal/HashSetSerializer;-><init>(Lkotlinx/serialization/KSerializer;I)V

    .line 108
    .line 109
    .line 110
    return-object v0

    .line 111
    :pswitch_b
    new-instance v0, Lkotlinx/serialization/internal/HashSetSerializer;

    .line 112
    .line 113
    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 114
    .line 115
    invoke-direct {v0, v1, v2}, Lkotlinx/serialization/internal/HashSetSerializer;-><init>(Lkotlinx/serialization/KSerializer;I)V

    .line 116
    .line 117
    .line 118
    return-object v0

    .line 119
    :pswitch_c
    new-instance v0, Lkotlinx/serialization/internal/HashSetSerializer;

    .line 120
    .line 121
    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 122
    .line 123
    invoke-direct {v0, v1, v2}, Lkotlinx/serialization/internal/HashSetSerializer;-><init>(Lkotlinx/serialization/KSerializer;I)V

    .line 124
    .line 125
    .line 126
    return-object v0

    .line 127
    :pswitch_d
    new-instance v0, Lkotlinx/serialization/internal/HashMapSerializer;

    .line 128
    .line 129
    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 130
    .line 131
    sget-object v3, Lkotlinx/serialization/internal/FloatSerializer;->INSTANCE:Lkotlinx/serialization/internal/FloatSerializer;

    .line 132
    .line 133
    invoke-direct {v0, v1, v3, v2}, Lkotlinx/serialization/internal/HashMapSerializer;-><init>(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;I)V

    .line 134
    .line 135
    .line 136
    return-object v0

    .line 137
    :pswitch_e
    new-instance v0, Lkotlinx/serialization/internal/HashMapSerializer;

    .line 138
    .line 139
    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 140
    .line 141
    new-instance v3, Lkotlinx/serialization/internal/HashSetSerializer;

    .line 142
    .line 143
    sget-object v4, Lkotlinx/serialization/internal/FloatSerializer;->INSTANCE:Lkotlinx/serialization/internal/FloatSerializer;

    .line 144
    .line 145
    invoke-direct {v3, v4, v2}, Lkotlinx/serialization/internal/HashSetSerializer;-><init>(Lkotlinx/serialization/KSerializer;I)V

    .line 146
    .line 147
    .line 148
    invoke-direct {v0, v1, v3, v2}, Lkotlinx/serialization/internal/HashMapSerializer;-><init>(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;I)V

    .line 149
    .line 150
    .line 151
    return-object v0

    .line 152
    :pswitch_f
    new-instance v0, Lkotlinx/serialization/internal/HashMapSerializer;

    .line 153
    .line 154
    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 155
    .line 156
    sget-object v3, Lkotlinx/serialization/internal/FloatSerializer;->INSTANCE:Lkotlinx/serialization/internal/FloatSerializer;

    .line 157
    .line 158
    invoke-direct {v0, v1, v3, v2}, Lkotlinx/serialization/internal/HashMapSerializer;-><init>(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;I)V

    .line 159
    .line 160
    .line 161
    return-object v0

    .line 162
    :pswitch_10
    new-instance v0, Lkotlinx/serialization/internal/HashMapSerializer;

    .line 163
    .line 164
    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 165
    .line 166
    sget-object v3, Lkotlinx/serialization/internal/FloatSerializer;->INSTANCE:Lkotlinx/serialization/internal/FloatSerializer;

    .line 167
    .line 168
    invoke-direct {v0, v1, v3, v2}, Lkotlinx/serialization/internal/HashMapSerializer;-><init>(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;I)V

    .line 169
    .line 170
    .line 171
    return-object v0

    .line 172
    :pswitch_11
    new-instance v0, Lkotlinx/serialization/internal/ReferenceArraySerializer;

    .line 173
    .line 174
    const-class v1, Lorg/wikipedia/dataclient/donate/Campaign$Action;

    .line 175
    .line 176
    sget-object v2, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    .line 177
    .line 178
    invoke-virtual {v2, v1}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    sget-object v2, Lorg/wikipedia/dataclient/donate/Campaign$Action$$serializer;->INSTANCE:Lorg/wikipedia/dataclient/donate/Campaign$Action$$serializer;

    .line 183
    .line 184
    invoke-direct {v0, v1, v2}, Lkotlinx/serialization/internal/ReferenceArraySerializer;-><init>(Lkotlin/reflect/KClass;Lkotlinx/serialization/KSerializer;)V

    .line 185
    .line 186
    .line 187
    return-object v0

    .line 188
    :pswitch_12
    new-instance v0, Lkotlinx/serialization/internal/HashMapSerializer;

    .line 189
    .line 190
    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 191
    .line 192
    new-instance v3, Lkotlinx/serialization/internal/HashSetSerializer;

    .line 193
    .line 194
    sget-object v4, Lorg/wikipedia/dataclient/donate/Campaign$Assets$$serializer;->INSTANCE:Lorg/wikipedia/dataclient/donate/Campaign$Assets$$serializer;

    .line 195
    .line 196
    invoke-direct {v3, v4, v2}, Lkotlinx/serialization/internal/HashSetSerializer;-><init>(Lkotlinx/serialization/KSerializer;I)V

    .line 197
    .line 198
    .line 199
    invoke-direct {v0, v1, v3, v2}, Lkotlinx/serialization/internal/HashMapSerializer;-><init>(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;I)V

    .line 200
    .line 201
    .line 202
    return-object v0

    .line 203
    :pswitch_13
    new-instance v0, Lkotlinx/serialization/internal/HashSetSerializer;

    .line 204
    .line 205
    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 206
    .line 207
    invoke-direct {v0, v1, v2}, Lkotlinx/serialization/internal/HashSetSerializer;-><init>(Lkotlinx/serialization/KSerializer;I)V

    .line 208
    .line 209
    .line 210
    return-object v0

    .line 211
    :pswitch_14
    new-instance v0, Lkotlinx/serialization/internal/HashMapSerializer;

    .line 212
    .line 213
    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 214
    .line 215
    sget-object v3, Lorg/wikipedia/dataclient/donate/Campaign$PlatformParams$$serializer;->INSTANCE:Lorg/wikipedia/dataclient/donate/Campaign$PlatformParams$$serializer;

    .line 216
    .line 217
    invoke-direct {v0, v1, v3, v2}, Lkotlinx/serialization/internal/HashMapSerializer;-><init>(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;I)V

    .line 218
    .line 219
    .line 220
    return-object v0

    .line 221
    :pswitch_15
    new-instance v0, Lkotlinx/serialization/internal/HashSetSerializer;

    .line 222
    .line 223
    sget-object v1, Lorg/wikipedia/dataclient/discussiontools/ThreadItem$$serializer;->INSTANCE:Lorg/wikipedia/dataclient/discussiontools/ThreadItem$$serializer;

    .line 224
    .line 225
    invoke-direct {v0, v1, v2}, Lkotlinx/serialization/internal/HashSetSerializer;-><init>(Lkotlinx/serialization/KSerializer;I)V

    .line 226
    .line 227
    .line 228
    return-object v0

    .line 229
    :pswitch_16
    new-instance v0, Lkotlinx/serialization/internal/HashMapSerializer;

    .line 230
    .line 231
    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 232
    .line 233
    sget-object v3, Lkotlinx/serialization/internal/IntSerializer;->INSTANCE:Lkotlinx/serialization/internal/IntSerializer;

    .line 234
    .line 235
    invoke-direct {v0, v1, v3, v2}, Lkotlinx/serialization/internal/HashMapSerializer;-><init>(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;I)V

    .line 236
    .line 237
    .line 238
    return-object v0

    .line 239
    :pswitch_17
    new-instance v0, Lkotlinx/serialization/internal/HashSetSerializer;

    .line 240
    .line 241
    sget-object v1, Lorg/wikipedia/dataclient/discussiontools/ThreadItem$$serializer;->INSTANCE:Lorg/wikipedia/dataclient/discussiontools/ThreadItem$$serializer;

    .line 242
    .line 243
    invoke-direct {v0, v1, v2}, Lkotlinx/serialization/internal/HashSetSerializer;-><init>(Lkotlinx/serialization/KSerializer;I)V

    .line 244
    .line 245
    .line 246
    return-object v0

    .line 247
    :pswitch_18
    new-instance v0, Lkotlinx/serialization/internal/HashSetSerializer;

    .line 248
    .line 249
    sget-object v1, Lorg/wikipedia/dataclient/mwapi/MwServiceError$$serializer;->INSTANCE:Lorg/wikipedia/dataclient/mwapi/MwServiceError$$serializer;

    .line 250
    .line 251
    invoke-direct {v0, v1, v2}, Lkotlinx/serialization/internal/HashSetSerializer;-><init>(Lkotlinx/serialization/KSerializer;I)V

    .line 252
    .line 253
    .line 254
    return-object v0

    .line 255
    :pswitch_19
    new-instance v3, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 256
    .line 257
    sget-wide v5, Landroidx/compose/ui/graphics/Color;->Unspecified:J

    .line 258
    .line 259
    const/4 v4, 0x0

    .line 260
    move-wide v7, v5

    .line 261
    move-wide v9, v5

    .line 262
    move-wide v11, v5

    .line 263
    move-wide v13, v5

    .line 264
    move-wide v15, v5

    .line 265
    move-wide/from16 v17, v5

    .line 266
    .line 267
    move-wide/from16 v19, v5

    .line 268
    .line 269
    move-wide/from16 v21, v5

    .line 270
    .line 271
    move-wide/from16 v23, v5

    .line 272
    .line 273
    move-wide/from16 v25, v5

    .line 274
    .line 275
    move-wide/from16 v27, v5

    .line 276
    .line 277
    move-wide/from16 v29, v5

    .line 278
    .line 279
    move-wide/from16 v31, v5

    .line 280
    .line 281
    move-wide/from16 v33, v5

    .line 282
    .line 283
    invoke-direct/range {v3 .. v34}, Lorg/wikipedia/compose/theme/WikipediaColor;-><init>(ZJJJJJJJJJJJJJJJ)V

    .line 284
    .line 285
    .line 286
    return-object v3

    .line 287
    :pswitch_1a
    return-object v1

    .line 288
    :pswitch_1b
    sget-object v0, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    .line 289
    .line 290
    sget-object v0, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 291
    .line 292
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 293
    .line 294
    .line 295
    move-result-object v0

    .line 296
    const-class v1, Lorg/wikipedia/database/AppDatabase;

    .line 297
    .line 298
    const-string/jumbo v3, "wikipedia.db"

    .line 299
    .line 300
    .line 301
    invoke-static {v0, v1, v3}, Landroidx/room/Room;->databaseBuilder(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroidx/room/RoomDatabase$Builder;

    .line 302
    .line 303
    .line 304
    move-result-object v0

    .line 305
    const/16 v1, 0x10

    .line 306
    .line 307
    new-array v1, v1, [Landroidx/room/migration/Migration;

    .line 308
    .line 309
    sget-object v3, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    .line 310
    .line 311
    const/4 v4, 0x0

    .line 312
    aput-object v3, v1, v4

    .line 313
    .line 314
    sget-object v3, Lorg/wikipedia/database/AppDatabase;->MIGRATION_20_21:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    .line 315
    .line 316
    aput-object v3, v1, v2

    .line 317
    .line 318
    sget-object v3, Lorg/wikipedia/database/AppDatabase;->MIGRATION_21_22:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    .line 319
    .line 320
    const/4 v5, 0x2

    .line 321
    aput-object v3, v1, v5

    .line 322
    .line 323
    sget-object v3, Lorg/wikipedia/database/AppDatabase;->MIGRATION_22_23:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    .line 324
    .line 325
    const/4 v5, 0x3

    .line 326
    aput-object v3, v1, v5

    .line 327
    .line 328
    sget-object v3, Lorg/wikipedia/database/AppDatabase;->MIGRATION_23_24:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    .line 329
    .line 330
    const/4 v5, 0x4

    .line 331
    aput-object v3, v1, v5

    .line 332
    .line 333
    sget-object v3, Lorg/wikipedia/database/AppDatabase;->MIGRATION_24_25:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    .line 334
    .line 335
    const/4 v5, 0x5

    .line 336
    aput-object v3, v1, v5

    .line 337
    .line 338
    sget-object v3, Lorg/wikipedia/database/AppDatabase;->MIGRATION_25_26:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    .line 339
    .line 340
    const/4 v5, 0x6

    .line 341
    aput-object v3, v1, v5

    .line 342
    .line 343
    sget-object v3, Lorg/wikipedia/database/AppDatabase;->MIGRATION_26_27:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    .line 344
    .line 345
    const/4 v5, 0x7

    .line 346
    aput-object v3, v1, v5

    .line 347
    .line 348
    sget-object v3, Lorg/wikipedia/database/AppDatabase;->MIGRATION_26_28:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    .line 349
    .line 350
    const/16 v5, 0x8

    .line 351
    .line 352
    aput-object v3, v1, v5

    .line 353
    .line 354
    sget-object v3, Lorg/wikipedia/database/AppDatabase;->MIGRATION_27_28:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    .line 355
    .line 356
    const/16 v5, 0x9

    .line 357
    .line 358
    aput-object v3, v1, v5

    .line 359
    .line 360
    sget-object v3, Lorg/wikipedia/database/AppDatabase;->MIGRATION_28_29:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    .line 361
    .line 362
    const/16 v5, 0xa

    .line 363
    .line 364
    aput-object v3, v1, v5

    .line 365
    .line 366
    sget-object v3, Lorg/wikipedia/database/AppDatabase;->MIGRATION_29_30:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    .line 367
    .line 368
    const/16 v5, 0xb

    .line 369
    .line 370
    aput-object v3, v1, v5

    .line 371
    .line 372
    sget-object v3, Lorg/wikipedia/database/AppDatabase;->MIGRATION_30_31:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    .line 373
    .line 374
    const/16 v5, 0xc

    .line 375
    .line 376
    aput-object v3, v1, v5

    .line 377
    .line 378
    sget-object v3, Lorg/wikipedia/database/AppDatabase;->MIGRATION_31_32:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    .line 379
    .line 380
    const/16 v5, 0xd

    .line 381
    .line 382
    aput-object v3, v1, v5

    .line 383
    .line 384
    sget-object v3, Lorg/wikipedia/database/AppDatabase;->MIGRATION_32_33:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    .line 385
    .line 386
    const/16 v5, 0xe

    .line 387
    .line 388
    aput-object v3, v1, v5

    .line 389
    .line 390
    sget-object v3, Lorg/wikipedia/database/AppDatabase;->MIGRATION_33_34:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    .line 391
    .line 392
    const/16 v5, 0xf

    .line 393
    .line 394
    aput-object v3, v1, v5

    .line 395
    .line 396
    invoke-virtual {v0, v1}, Landroidx/room/RoomDatabase$Builder;->addMigrations([Landroidx/room/migration/Migration;)V

    .line 397
    .line 398
    .line 399
    iput-boolean v4, v0, Landroidx/room/RoomDatabase$Builder;->requireMigration:Z

    .line 400
    .line 401
    iput-boolean v2, v0, Landroidx/room/RoomDatabase$Builder;->allowDestructiveMigrationOnDowngrade:Z

    .line 402
    .line 403
    iput-boolean v4, v0, Landroidx/room/RoomDatabase$Builder;->allowDestructiveMigrationForAllTables:Z

    .line 404
    .line 405
    invoke-virtual {v0}, Landroidx/room/RoomDatabase$Builder;->build()Landroidx/room/RoomDatabase;

    .line 406
    .line 407
    .line 408
    move-result-object v0

    .line 409
    check-cast v0, Lorg/wikipedia/database/AppDatabase;

    .line 410
    .line 411
    return-object v0

    .line 412
    nop

    .line 413
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_1a
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
