.class public final Lorg/wikipedia/readinglist/ReadingListsExportImportHelper$importLists$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $activity:Landroidx/appcompat/app/AppCompatActivity;

.field public final synthetic $jsonString:Ljava/lang/String;

.field public I$0:I

.field public L$1:Ljava/util/List;

.field public L$2:Ljava/util/Iterator;

.field public L$3:Lorg/wikipedia/readinglist/ReadingListsExportImportHelper$ExportableReadingList;

.field public L$6:Ljava/util/Iterator;

.field public label:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroidx/appcompat/app/AppCompatActivity;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/wikipedia/readinglist/ReadingListsExportImportHelper$importLists$2;->$jsonString:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lorg/wikipedia/readinglist/ReadingListsExportImportHelper$importLists$2;->$activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    .line 1
    new-instance p1, Lorg/wikipedia/readinglist/ReadingListsExportImportHelper$importLists$2;

    .line 2
    .line 3
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListsExportImportHelper$importLists$2;->$jsonString:Ljava/lang/String;

    .line 4
    .line 5
    iget-object p0, p0, Lorg/wikipedia/readinglist/ReadingListsExportImportHelper$importLists$2;->$activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 6
    .line 7
    invoke-direct {p1, v0, p0, p2}, Lorg/wikipedia/readinglist/ReadingListsExportImportHelper$importLists$2;-><init>(Ljava/lang/String;Landroidx/appcompat/app/AppCompatActivity;Lkotlin/coroutines/Continuation;)V

    .line 8
    .line 9
    .line 10
    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 2
    .line 3
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/readinglist/ReadingListsExportImportHelper$importLists$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lorg/wikipedia/readinglist/ReadingListsExportImportHelper$importLists$2;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lorg/wikipedia/readinglist/ReadingListsExportImportHelper$importLists$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 4
    .line 5
    iget v0, v1, Lorg/wikipedia/readinglist/ReadingListsExportImportHelper$importLists$2;->label:I

    .line 6
    .line 7
    iget-object v3, v1, Lorg/wikipedia/readinglist/ReadingListsExportImportHelper$importLists$2;->$activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    const/4 v5, 0x4

    .line 11
    const/4 v6, 0x3

    .line 12
    const/4 v7, 0x2

    .line 13
    const/4 v8, 0x1

    .line 14
    const/4 v9, 0x0

    .line 15
    if-eqz v0, :cond_4

    .line 16
    .line 17
    if-eq v0, v8, :cond_3

    .line 18
    .line 19
    if-eq v0, v7, :cond_2

    .line 20
    .line 21
    if-eq v0, v6, :cond_1

    .line 22
    .line 23
    if-ne v0, v5, :cond_0

    .line 24
    .line 25
    iget-object v0, v1, Lorg/wikipedia/readinglist/ReadingListsExportImportHelper$importLists$2;->L$3:Lorg/wikipedia/readinglist/ReadingListsExportImportHelper$ExportableReadingList;

    .line 26
    .line 27
    iget-object v10, v1, Lorg/wikipedia/readinglist/ReadingListsExportImportHelper$importLists$2;->L$2:Ljava/util/Iterator;

    .line 28
    .line 29
    iget-object v11, v1, Lorg/wikipedia/readinglist/ReadingListsExportImportHelper$importLists$2;->L$1:Ljava/util/List;

    .line 30
    .line 31
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    goto/16 :goto_a

    .line 35
    .line 36
    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 37
    .line 38
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    return-object v9

    .line 42
    :cond_1
    iget-object v0, v1, Lorg/wikipedia/readinglist/ReadingListsExportImportHelper$importLists$2;->L$3:Lorg/wikipedia/readinglist/ReadingListsExportImportHelper$ExportableReadingList;

    .line 43
    .line 44
    iget-object v10, v1, Lorg/wikipedia/readinglist/ReadingListsExportImportHelper$importLists$2;->L$2:Ljava/util/Iterator;

    .line 45
    .line 46
    iget-object v11, v1, Lorg/wikipedia/readinglist/ReadingListsExportImportHelper$importLists$2;->L$1:Ljava/util/List;

    .line 47
    .line 48
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    move-object/from16 v8, p1

    .line 52
    .line 53
    goto/16 :goto_8

    .line 54
    .line 55
    :cond_2
    iget v0, v1, Lorg/wikipedia/readinglist/ReadingListsExportImportHelper$importLists$2;->I$0:I

    .line 56
    .line 57
    iget-object v10, v1, Lorg/wikipedia/readinglist/ReadingListsExportImportHelper$importLists$2;->L$6:Ljava/util/Iterator;

    .line 58
    .line 59
    iget-object v11, v1, Lorg/wikipedia/readinglist/ReadingListsExportImportHelper$importLists$2;->L$3:Lorg/wikipedia/readinglist/ReadingListsExportImportHelper$ExportableReadingList;

    .line 60
    .line 61
    iget-object v12, v1, Lorg/wikipedia/readinglist/ReadingListsExportImportHelper$importLists$2;->L$2:Ljava/util/Iterator;

    .line 62
    .line 63
    iget-object v13, v1, Lorg/wikipedia/readinglist/ReadingListsExportImportHelper$importLists$2;->L$1:Ljava/util/List;

    .line 64
    .line 65
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    move-object v8, v12

    .line 69
    move-object v12, v13

    .line 70
    goto/16 :goto_5

    .line 71
    .line 72
    :cond_3
    iget-object v0, v1, Lorg/wikipedia/readinglist/ReadingListsExportImportHelper$importLists$2;->L$3:Lorg/wikipedia/readinglist/ReadingListsExportImportHelper$ExportableReadingList;

    .line 73
    .line 74
    iget-object v10, v1, Lorg/wikipedia/readinglist/ReadingListsExportImportHelper$importLists$2;->L$2:Ljava/util/Iterator;

    .line 75
    .line 76
    iget-object v11, v1, Lorg/wikipedia/readinglist/ReadingListsExportImportHelper$importLists$2;->L$1:Ljava/util/List;

    .line 77
    .line 78
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    move-object/from16 v12, p1

    .line 82
    .line 83
    goto :goto_3

    .line 84
    :cond_4
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    sget-object v0, Lorg/wikipedia/json/JsonUtil;->json:Lkotlinx/serialization/json/JsonImpl;

    .line 88
    .line 89
    iget-object v0, v1, Lorg/wikipedia/readinglist/ReadingListsExportImportHelper$importLists$2;->$jsonString:Ljava/lang/String;

    .line 90
    .line 91
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 92
    .line 93
    .line 94
    move-result v10

    .line 95
    if-nez v10, :cond_5

    .line 96
    .line 97
    :goto_0
    move-object v0, v9

    .line 98
    goto :goto_1

    .line 99
    :cond_5
    :try_start_0
    sget-object v10, Lorg/wikipedia/json/JsonUtil;->json:Lkotlinx/serialization/json/JsonImpl;

    .line 100
    .line 101
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 102
    .line 103
    .line 104
    sget-object v11, Lorg/wikipedia/readinglist/ReadingListsExportImportHelper$ExportableContents;->Companion:Lorg/wikipedia/readinglist/ReadingListsExportImportHelper$ExportableContents$Companion;

    .line 105
    .line 106
    invoke-virtual {v11}, Lorg/wikipedia/readinglist/ReadingListsExportImportHelper$ExportableContents$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    .line 107
    .line 108
    .line 109
    move-result-object v11

    .line 110
    invoke-static {v11}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 111
    .line 112
    .line 113
    move-result-object v11

    .line 114
    check-cast v11, Lkotlinx/serialization/KSerializer;

    .line 115
    .line 116
    invoke-virtual {v10, v0, v11}, Lkotlinx/serialization/json/Json;->decodeFromString(Ljava/lang/String;Lkotlinx/serialization/KSerializer;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    goto :goto_1

    .line 121
    :catch_0
    move-exception v0

    .line 122
    invoke-static {v0}, Lorg/wikipedia/util/log/L;->w(Ljava/lang/Throwable;)V

    .line 123
    .line 124
    .line 125
    goto :goto_0

    .line 126
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 127
    .line 128
    .line 129
    check-cast v0, Lorg/wikipedia/readinglist/ReadingListsExportImportHelper$ExportableContents;

    .line 130
    .line 131
    iget-object v0, v0, Lorg/wikipedia/readinglist/ReadingListsExportImportHelper$ExportableContents;->readingListsV1:Ljava/util/List;

    .line 132
    .line 133
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 134
    .line 135
    .line 136
    move-result-object v10

    .line 137
    move-object v11, v0

    .line 138
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    if-eqz v0, :cond_10

    .line 143
    .line 144
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    check-cast v0, Lorg/wikipedia/readinglist/ReadingListsExportImportHelper$ExportableReadingList;

    .line 149
    .line 150
    sget-object v12, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    .line 151
    .line 152
    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    .line 153
    .line 154
    .line 155
    move-result-object v12

    .line 156
    invoke-virtual {v12}, Lorg/wikipedia/database/AppDatabase;->readingListDao()Lorg/wikipedia/readinglist/db/ReadingListDao_Impl;

    .line 157
    .line 158
    .line 159
    move-result-object v12

    .line 160
    iput-object v11, v1, Lorg/wikipedia/readinglist/ReadingListsExportImportHelper$importLists$2;->L$1:Ljava/util/List;

    .line 161
    .line 162
    iput-object v10, v1, Lorg/wikipedia/readinglist/ReadingListsExportImportHelper$importLists$2;->L$2:Ljava/util/Iterator;

    .line 163
    .line 164
    iput-object v0, v1, Lorg/wikipedia/readinglist/ReadingListsExportImportHelper$importLists$2;->L$3:Lorg/wikipedia/readinglist/ReadingListsExportImportHelper$ExportableReadingList;

    .line 165
    .line 166
    iput-object v9, v1, Lorg/wikipedia/readinglist/ReadingListsExportImportHelper$importLists$2;->L$6:Ljava/util/Iterator;

    .line 167
    .line 168
    iput v8, v1, Lorg/wikipedia/readinglist/ReadingListsExportImportHelper$importLists$2;->label:I

    .line 169
    .line 170
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 171
    .line 172
    .line 173
    invoke-static {v12, v1}, Lorg/wikipedia/dataclient/Service$-CC;->getAllLists$suspendImpl(Lorg/wikipedia/readinglist/db/ReadingListDao_Impl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/io/Serializable;

    .line 174
    .line 175
    .line 176
    move-result-object v12

    .line 177
    if-ne v12, v2, :cond_6

    .line 178
    .line 179
    goto/16 :goto_9

    .line 180
    .line 181
    :cond_6
    :goto_3
    check-cast v12, Ljava/util/List;

    .line 182
    .line 183
    if-eqz v12, :cond_7

    .line 184
    .line 185
    invoke-interface {v12}, Ljava/util/Collection;->isEmpty()Z

    .line 186
    .line 187
    .line 188
    move-result v13

    .line 189
    if-eqz v13, :cond_7

    .line 190
    .line 191
    goto/16 :goto_7

    .line 192
    .line 193
    :cond_7
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 194
    .line 195
    .line 196
    move-result-object v13

    .line 197
    :cond_8
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    .line 198
    .line 199
    .line 200
    move-result v14

    .line 201
    if-eqz v14, :cond_d

    .line 202
    .line 203
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object v14

    .line 207
    check-cast v14, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 208
    .line 209
    invoke-virtual {v14}, Lorg/wikipedia/readinglist/database/ReadingList;->getTitle()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v14

    .line 213
    iget-object v15, v0, Lorg/wikipedia/readinglist/ReadingListsExportImportHelper$ExportableReadingList;->name:Ljava/lang/String;

    .line 214
    .line 215
    invoke-virtual {v14, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 216
    .line 217
    .line 218
    move-result v14

    .line 219
    if-eqz v14, :cond_8

    .line 220
    .line 221
    new-instance v13, Ljava/util/ArrayList;

    .line 222
    .line 223
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 224
    .line 225
    .line 226
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 227
    .line 228
    .line 229
    move-result-object v12

    .line 230
    :goto_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 231
    .line 232
    .line 233
    move-result v14

    .line 234
    if-eqz v14, :cond_a

    .line 235
    .line 236
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    move-result-object v14

    .line 240
    move-object v15, v14

    .line 241
    check-cast v15, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 242
    .line 243
    invoke-virtual {v15}, Lorg/wikipedia/readinglist/database/ReadingList;->getTitle()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v15

    .line 247
    iget-object v8, v0, Lorg/wikipedia/readinglist/ReadingListsExportImportHelper$ExportableReadingList;->name:Ljava/lang/String;

    .line 248
    .line 249
    invoke-virtual {v15, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 250
    .line 251
    .line 252
    move-result v8

    .line 253
    if-eqz v8, :cond_9

    .line 254
    .line 255
    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 256
    .line 257
    .line 258
    :cond_9
    const/4 v8, 0x1

    .line 259
    goto :goto_4

    .line 260
    :cond_a
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 261
    .line 262
    .line 263
    move-result-object v8

    .line 264
    move-object v12, v10

    .line 265
    move-object v10, v8

    .line 266
    move-object v8, v12

    .line 267
    move-object v12, v11

    .line 268
    move-object v11, v0

    .line 269
    move v0, v4

    .line 270
    :cond_b
    :goto_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 271
    .line 272
    .line 273
    move-result v13

    .line 274
    if-eqz v13, :cond_c

    .line 275
    .line 276
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 277
    .line 278
    .line 279
    move-result-object v13

    .line 280
    check-cast v13, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 281
    .line 282
    iput-object v12, v1, Lorg/wikipedia/readinglist/ReadingListsExportImportHelper$importLists$2;->L$1:Ljava/util/List;

    .line 283
    .line 284
    iput-object v8, v1, Lorg/wikipedia/readinglist/ReadingListsExportImportHelper$importLists$2;->L$2:Ljava/util/Iterator;

    .line 285
    .line 286
    iput-object v11, v1, Lorg/wikipedia/readinglist/ReadingListsExportImportHelper$importLists$2;->L$3:Lorg/wikipedia/readinglist/ReadingListsExportImportHelper$ExportableReadingList;

    .line 287
    .line 288
    iput-object v10, v1, Lorg/wikipedia/readinglist/ReadingListsExportImportHelper$importLists$2;->L$6:Ljava/util/Iterator;

    .line 289
    .line 290
    iput v0, v1, Lorg/wikipedia/readinglist/ReadingListsExportImportHelper$importLists$2;->I$0:I

    .line 291
    .line 292
    iput v7, v1, Lorg/wikipedia/readinglist/ReadingListsExportImportHelper$importLists$2;->label:I

    .line 293
    .line 294
    invoke-static {v11, v13, v1}, Lorg/wikipedia/readinglist/ReadingListsReceiveHelper;->addTitlesToList(Lorg/wikipedia/readinglist/ReadingListsExportImportHelper$ExportableReadingList;Lorg/wikipedia/readinglist/database/ReadingList;Lorg/wikipedia/readinglist/ReadingListsExportImportHelper$importLists$2;)Ljava/lang/Object;

    .line 295
    .line 296
    .line 297
    move-result-object v13

    .line 298
    if-ne v13, v2, :cond_b

    .line 299
    .line 300
    goto :goto_9

    .line 301
    :cond_c
    move-object v10, v8

    .line 302
    move-object v11, v12

    .line 303
    :goto_6
    const/4 v8, 0x1

    .line 304
    goto/16 :goto_2

    .line 305
    .line 306
    :cond_d
    :goto_7
    sget-object v8, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    .line 307
    .line 308
    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    .line 309
    .line 310
    .line 311
    move-result-object v8

    .line 312
    invoke-virtual {v8}, Lorg/wikipedia/database/AppDatabase;->readingListDao()Lorg/wikipedia/readinglist/db/ReadingListDao_Impl;

    .line 313
    .line 314
    .line 315
    move-result-object v8

    .line 316
    iget-object v12, v0, Lorg/wikipedia/readinglist/ReadingListsExportImportHelper$ExportableReadingList;->name:Ljava/lang/String;

    .line 317
    .line 318
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 319
    .line 320
    .line 321
    iget-object v13, v0, Lorg/wikipedia/readinglist/ReadingListsExportImportHelper$ExportableReadingList;->description:Ljava/lang/String;

    .line 322
    .line 323
    iput-object v11, v1, Lorg/wikipedia/readinglist/ReadingListsExportImportHelper$importLists$2;->L$1:Ljava/util/List;

    .line 324
    .line 325
    iput-object v10, v1, Lorg/wikipedia/readinglist/ReadingListsExportImportHelper$importLists$2;->L$2:Ljava/util/Iterator;

    .line 326
    .line 327
    iput-object v0, v1, Lorg/wikipedia/readinglist/ReadingListsExportImportHelper$importLists$2;->L$3:Lorg/wikipedia/readinglist/ReadingListsExportImportHelper$ExportableReadingList;

    .line 328
    .line 329
    iput v6, v1, Lorg/wikipedia/readinglist/ReadingListsExportImportHelper$importLists$2;->label:I

    .line 330
    .line 331
    invoke-virtual {v8, v12, v13, v1}, Lorg/wikipedia/readinglist/db/ReadingListDao_Impl;->createList(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/SuspendLambda;)Ljava/io/Serializable;

    .line 332
    .line 333
    .line 334
    move-result-object v8

    .line 335
    if-ne v8, v2, :cond_e

    .line 336
    .line 337
    goto :goto_9

    .line 338
    :cond_e
    :goto_8
    check-cast v8, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 339
    .line 340
    iput-object v11, v1, Lorg/wikipedia/readinglist/ReadingListsExportImportHelper$importLists$2;->L$1:Ljava/util/List;

    .line 341
    .line 342
    iput-object v10, v1, Lorg/wikipedia/readinglist/ReadingListsExportImportHelper$importLists$2;->L$2:Ljava/util/Iterator;

    .line 343
    .line 344
    iput-object v0, v1, Lorg/wikipedia/readinglist/ReadingListsExportImportHelper$importLists$2;->L$3:Lorg/wikipedia/readinglist/ReadingListsExportImportHelper$ExportableReadingList;

    .line 345
    .line 346
    iput v5, v1, Lorg/wikipedia/readinglist/ReadingListsExportImportHelper$importLists$2;->label:I

    .line 347
    .line 348
    invoke-static {v0, v8, v1}, Lorg/wikipedia/readinglist/ReadingListsReceiveHelper;->addTitlesToList(Lorg/wikipedia/readinglist/ReadingListsExportImportHelper$ExportableReadingList;Lorg/wikipedia/readinglist/database/ReadingList;Lorg/wikipedia/readinglist/ReadingListsExportImportHelper$importLists$2;)Ljava/lang/Object;

    .line 349
    .line 350
    .line 351
    move-result-object v8

    .line 352
    if-ne v8, v2, :cond_f

    .line 353
    .line 354
    :goto_9
    return-object v2

    .line 355
    :cond_f
    :goto_a
    iget-object v0, v0, Lorg/wikipedia/readinglist/ReadingListsExportImportHelper$ExportableReadingList;->pages:Ljava/util/List;

    .line 356
    .line 357
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 358
    .line 359
    .line 360
    move-result v0

    .line 361
    sget-object v8, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->INSTANCE:Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;

    .line 362
    .line 363
    new-instance v8, Lorg/wikipedia/analytics/eventplatform/BreadCrumbLogEvent;

    .line 364
    .line 365
    invoke-static {v3, v9}, Lorg/wikipedia/analytics/eventplatform/WikiGamesEvent;->getReadableScreenName(Landroid/content/Context;Landroidx/fragment/app/Fragment;)Ljava/lang/String;

    .line 366
    .line 367
    .line 368
    move-result-object v12

    .line 369
    const-string v13, "ReadingList.ListItemCount:"

    .line 370
    .line 371
    const-string v14, ".import_finished"

    .line 372
    .line 373
    invoke-static {v0, v13, v14}, Landroidx/compose/animation/core/Animation$-CC;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 374
    .line 375
    .line 376
    move-result-object v0

    .line 377
    invoke-direct {v8, v12, v0}, Lorg/wikipedia/analytics/eventplatform/BreadCrumbLogEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    .line 379
    .line 380
    invoke-static {v8}, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->submit(Lorg/wikipedia/analytics/eventplatform/Event;)V

    .line 381
    .line 382
    .line 383
    goto :goto_6

    .line 384
    :cond_10
    invoke-virtual {v3}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 385
    .line 386
    .line 387
    move-result-object v0

    .line 388
    const v1, 0x7f100027

    .line 389
    .line 390
    .line 391
    invoke-interface {v11}, Ljava/util/List;->size()I

    .line 392
    .line 393
    .line 394
    move-result v2

    .line 395
    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    .line 396
    .line 397
    .line 398
    move-result-object v0

    .line 399
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 400
    .line 401
    .line 402
    invoke-static {v3, v0, v4}, Lorg/wikipedia/util/ShareUtil;->showMessage(Landroid/app/Activity;Ljava/lang/CharSequence;I)V

    .line 403
    .line 404
    .line 405
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 406
    .line 407
    return-object v0
.end method
