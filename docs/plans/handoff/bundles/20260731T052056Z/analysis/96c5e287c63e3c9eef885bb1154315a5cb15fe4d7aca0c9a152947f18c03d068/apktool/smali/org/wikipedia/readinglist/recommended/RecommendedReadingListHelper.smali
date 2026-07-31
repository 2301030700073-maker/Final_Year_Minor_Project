.class public final Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field public static final INSTANCE:Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper;->INSTANCE:Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper;

    .line 7
    .line 8
    return-void
.end method

.method public static newIntent$default(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-class v1, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListOnboardingActivity;

    .line 4
    .line 5
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 6
    .line 7
    .line 8
    const-string p0, "startFromSourceSelection"

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 12
    .line 13
    .line 14
    const-string p0, "fromSettings"

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 18
    .line 19
    .line 20
    return-object v0
.end method


# virtual methods
.method public generateRecommendedReadingList(ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 32

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    instance-of v2, v1, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$generateRecommendedReadingList$1;

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    move-object v2, v1

    .line 10
    check-cast v2, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$generateRecommendedReadingList$1;

    .line 11
    .line 12
    iget v3, v2, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$generateRecommendedReadingList$1;->label:I

    .line 13
    .line 14
    const/high16 v4, -0x80000000

    .line 15
    .line 16
    and-int v5, v3, v4

    .line 17
    .line 18
    if-eqz v5, :cond_0

    .line 19
    .line 20
    sub-int/2addr v3, v4

    .line 21
    iput v3, v2, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$generateRecommendedReadingList$1;->label:I

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance v2, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$generateRecommendedReadingList$1;

    .line 25
    .line 26
    invoke-direct {v2, v0, v1}, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$generateRecommendedReadingList$1;-><init>(Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    iget-object v1, v2, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$generateRecommendedReadingList$1;->result:Ljava/lang/Object;

    .line 30
    .line 31
    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 32
    .line 33
    iget v4, v2, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$generateRecommendedReadingList$1;->label:I

    .line 34
    .line 35
    const/4 v7, 0x3

    .line 36
    sget-object v8, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 37
    .line 38
    const/4 v9, 0x2

    .line 39
    const/4 v13, 0x0

    .line 40
    packed-switch v4, :pswitch_data_0

    .line 41
    .line 42
    .line 43
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 44
    .line 45
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    return-object v13

    .line 49
    :pswitch_0
    iget-object v0, v2, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$generateRecommendedReadingList$1;->L$9:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast v0, Ljava/util/List;

    .line 52
    .line 53
    iget-object v3, v2, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$generateRecommendedReadingList$1;->L$7:Ljava/util/Iterator;

    .line 54
    .line 55
    check-cast v3, Ljava/util/List;

    .line 56
    .line 57
    iget-object v2, v2, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$generateRecommendedReadingList$1;->L$6:Ljava/util/List;

    .line 58
    .line 59
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    goto/16 :goto_21

    .line 63
    .line 64
    :pswitch_1
    iget v0, v2, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$generateRecommendedReadingList$1;->I$1:I

    .line 65
    .line 66
    iget v4, v2, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$generateRecommendedReadingList$1;->I$0:I

    .line 67
    .line 68
    iget-boolean v5, v2, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$generateRecommendedReadingList$1;->Z$0:Z

    .line 69
    .line 70
    iget-object v6, v2, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$generateRecommendedReadingList$1;->L$6:Ljava/util/List;

    .line 71
    .line 72
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    move-object v7, v3

    .line 76
    move-object v3, v6

    .line 77
    move-object/from16 v17, v8

    .line 78
    .line 79
    goto/16 :goto_1d

    .line 80
    .line 81
    :pswitch_2
    iget v0, v2, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$generateRecommendedReadingList$1;->I$5:I

    .line 82
    .line 83
    iget v4, v2, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$generateRecommendedReadingList$1;->I$4:I

    .line 84
    .line 85
    iget v7, v2, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$generateRecommendedReadingList$1;->I$3:I

    .line 86
    .line 87
    iget v9, v2, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$generateRecommendedReadingList$1;->I$2:I

    .line 88
    .line 89
    iget v14, v2, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$generateRecommendedReadingList$1;->I$1:I

    .line 90
    .line 91
    iget v15, v2, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$generateRecommendedReadingList$1;->I$0:I

    .line 92
    .line 93
    move-object/from16 p2, v13

    .line 94
    .line 95
    iget-boolean v13, v2, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$generateRecommendedReadingList$1;->Z$0:Z

    .line 96
    .line 97
    iget-object v5, v2, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$generateRecommendedReadingList$1;->L$15:Lorg/wikipedia/readinglist/database/RecommendedPage;

    .line 98
    .line 99
    iget-object v10, v2, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$generateRecommendedReadingList$1;->L$12:Ljava/util/Iterator;

    .line 100
    .line 101
    iget-object v6, v2, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$generateRecommendedReadingList$1;->L$9:Ljava/lang/Object;

    .line 102
    .line 103
    check-cast v6, Lorg/wikipedia/readinglist/recommended/SourceWithOffset;

    .line 104
    .line 105
    iget-object v6, v2, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$generateRecommendedReadingList$1;->L$7:Ljava/util/Iterator;

    .line 106
    .line 107
    iget-object v12, v2, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$generateRecommendedReadingList$1;->L$5:Ljava/util/List;

    .line 108
    .line 109
    iget-object v11, v2, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$generateRecommendedReadingList$1;->L$4:Lkotlin/jvm/internal/Ref$IntRef;

    .line 110
    .line 111
    move/from16 p0, v0

    .line 112
    .line 113
    iget-object v0, v2, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$generateRecommendedReadingList$1;->L$3:Ljava/util/List;

    .line 114
    .line 115
    move-object/from16 p1, v0

    .line 116
    .line 117
    iget-object v0, v2, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$generateRecommendedReadingList$1;->L$2:Ljava/util/List;

    .line 118
    .line 119
    move-object/from16 v17, v0

    .line 120
    .line 121
    iget-object v0, v2, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$generateRecommendedReadingList$1;->L$0:Ljava/util/List;

    .line 122
    .line 123
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    move-object v1, v6

    .line 127
    move-object v6, v0

    .line 128
    move v0, v13

    .line 129
    move-object v13, v1

    .line 130
    move v1, v14

    .line 131
    move v14, v4

    .line 132
    move v4, v15

    .line 133
    move-object v15, v11

    .line 134
    move-object v11, v10

    .line 135
    move v10, v9

    .line 136
    move-object v9, v12

    .line 137
    move v12, v1

    .line 138
    move-object/from16 v1, v17

    .line 139
    .line 140
    move-object/from16 v17, v8

    .line 141
    .line 142
    move-object v8, v1

    .line 143
    move/from16 v1, p0

    .line 144
    .line 145
    move/from16 v19, v7

    .line 146
    .line 147
    move-object v7, v3

    .line 148
    move-object v3, v2

    .line 149
    move-object/from16 v2, p1

    .line 150
    .line 151
    goto/16 :goto_1b

    .line 152
    .line 153
    :pswitch_3
    move-object/from16 p2, v13

    .line 154
    .line 155
    iget v0, v2, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$generateRecommendedReadingList$1;->I$4:I

    .line 156
    .line 157
    iget v4, v2, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$generateRecommendedReadingList$1;->I$3:I

    .line 158
    .line 159
    iget v5, v2, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$generateRecommendedReadingList$1;->I$2:I

    .line 160
    .line 161
    iget v6, v2, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$generateRecommendedReadingList$1;->I$1:I

    .line 162
    .line 163
    iget v7, v2, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$generateRecommendedReadingList$1;->I$0:I

    .line 164
    .line 165
    iget-boolean v9, v2, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$generateRecommendedReadingList$1;->Z$0:Z

    .line 166
    .line 167
    iget-object v10, v2, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$generateRecommendedReadingList$1;->L$11:Ljava/util/List;

    .line 168
    .line 169
    iget-object v11, v2, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$generateRecommendedReadingList$1;->L$10:Ljava/util/List;

    .line 170
    .line 171
    iget-object v12, v2, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$generateRecommendedReadingList$1;->L$9:Ljava/lang/Object;

    .line 172
    .line 173
    check-cast v12, Lorg/wikipedia/readinglist/recommended/SourceWithOffset;

    .line 174
    .line 175
    iget-object v13, v2, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$generateRecommendedReadingList$1;->L$7:Ljava/util/Iterator;

    .line 176
    .line 177
    iget-object v14, v2, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$generateRecommendedReadingList$1;->L$5:Ljava/util/List;

    .line 178
    .line 179
    iget-object v15, v2, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$generateRecommendedReadingList$1;->L$4:Lkotlin/jvm/internal/Ref$IntRef;

    .line 180
    .line 181
    move/from16 v17, v0

    .line 182
    .line 183
    iget-object v0, v2, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$generateRecommendedReadingList$1;->L$3:Ljava/util/List;

    .line 184
    .line 185
    move-object/from16 p0, v0

    .line 186
    .line 187
    iget-object v0, v2, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$generateRecommendedReadingList$1;->L$2:Ljava/util/List;

    .line 188
    .line 189
    move-object/from16 p1, v0

    .line 190
    .line 191
    iget-object v0, v2, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$generateRecommendedReadingList$1;->L$0:Ljava/util/List;

    .line 192
    .line 193
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 194
    .line 195
    .line 196
    move-object/from16 v18, v2

    .line 197
    .line 198
    move-object/from16 v2, p0

    .line 199
    .line 200
    move/from16 p0, v17

    .line 201
    .line 202
    move-object/from16 v17, v8

    .line 203
    .line 204
    move v8, v4

    .line 205
    move-object/from16 v4, v18

    .line 206
    .line 207
    move-object/from16 v18, v1

    .line 208
    .line 209
    move-object v1, v0

    .line 210
    move-object v0, v15

    .line 211
    move-object v15, v12

    .line 212
    move-object v12, v11

    .line 213
    move-object v11, v10

    .line 214
    move v10, v9

    .line 215
    move v9, v7

    .line 216
    move-object v7, v3

    .line 217
    move-object/from16 v3, v18

    .line 218
    .line 219
    move-object/from16 v18, v13

    .line 220
    .line 221
    move v13, v6

    .line 222
    move-object/from16 v6, p1

    .line 223
    .line 224
    goto/16 :goto_13

    .line 225
    .line 226
    :pswitch_4
    move-object/from16 p2, v13

    .line 227
    .line 228
    iget v0, v2, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$generateRecommendedReadingList$1;->I$0:I

    .line 229
    .line 230
    iget-boolean v4, v2, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$generateRecommendedReadingList$1;->Z$0:Z

    .line 231
    .line 232
    iget-object v5, v2, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$generateRecommendedReadingList$1;->L$0:Ljava/util/List;

    .line 233
    .line 234
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 235
    .line 236
    .line 237
    goto/16 :goto_6

    .line 238
    .line 239
    :pswitch_5
    move-object/from16 p2, v13

    .line 240
    .line 241
    iget v0, v2, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$generateRecommendedReadingList$1;->I$0:I

    .line 242
    .line 243
    iget-boolean v4, v2, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$generateRecommendedReadingList$1;->Z$0:Z

    .line 244
    .line 245
    iget-object v5, v2, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$generateRecommendedReadingList$1;->L$0:Ljava/util/List;

    .line 246
    .line 247
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 248
    .line 249
    .line 250
    goto/16 :goto_8

    .line 251
    .line 252
    :pswitch_6
    move-object/from16 p2, v13

    .line 253
    .line 254
    iget v0, v2, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$generateRecommendedReadingList$1;->I$0:I

    .line 255
    .line 256
    iget-boolean v4, v2, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$generateRecommendedReadingList$1;->Z$0:Z

    .line 257
    .line 258
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 259
    .line 260
    .line 261
    goto/16 :goto_5

    .line 262
    .line 263
    :pswitch_7
    move-object/from16 p2, v13

    .line 264
    .line 265
    iget v0, v2, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$generateRecommendedReadingList$1;->I$0:I

    .line 266
    .line 267
    iget-boolean v4, v2, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$generateRecommendedReadingList$1;->Z$0:Z

    .line 268
    .line 269
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 270
    .line 271
    .line 272
    const/4 v10, 0x0

    .line 273
    goto :goto_4

    .line 274
    :pswitch_8
    move-object/from16 p2, v13

    .line 275
    .line 276
    iget-boolean v0, v2, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$generateRecommendedReadingList$1;->Z$0:Z

    .line 277
    .line 278
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 279
    .line 280
    .line 281
    goto :goto_2

    .line 282
    :pswitch_9
    move-object/from16 p2, v13

    .line 283
    .line 284
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 285
    .line 286
    .line 287
    move/from16 v1, p1

    .line 288
    .line 289
    iput-boolean v1, v2, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$generateRecommendedReadingList$1;->Z$0:Z

    .line 290
    .line 291
    const/4 v4, 0x1

    .line 292
    iput v4, v2, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$generateRecommendedReadingList$1;->label:I

    .line 293
    .line 294
    invoke-virtual {v0, v2}, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper;->readyToGenerateList(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 295
    .line 296
    .line 297
    move-result-object v0

    .line 298
    if-ne v0, v3, :cond_1

    .line 299
    .line 300
    :goto_1
    move-object v7, v3

    .line 301
    goto/16 :goto_20

    .line 302
    .line 303
    :cond_1
    move/from16 v31, v1

    .line 304
    .line 305
    move-object v1, v0

    .line 306
    move/from16 v0, v31

    .line 307
    .line 308
    :goto_2
    check-cast v1, Ljava/lang/Boolean;

    .line 309
    .line 310
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 311
    .line 312
    .line 313
    move-result v1

    .line 314
    if-nez v1, :cond_2

    .line 315
    .line 316
    goto/16 :goto_b

    .line 317
    .line 318
    :cond_2
    sget-object v1, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 319
    .line 320
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getRecommendedReadingListArticlesNumber()I

    .line 321
    .line 322
    .line 323
    move-result v1

    .line 324
    if-eqz v0, :cond_5

    .line 325
    .line 326
    sget-object v4, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    .line 327
    .line 328
    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    .line 329
    .line 330
    .line 331
    move-result-object v4

    .line 332
    invoke-virtual {v4}, Lorg/wikipedia/database/AppDatabase;->recommendedPageDao()Lorg/wikipedia/readinglist/db/RecommendedPageDao_Impl;

    .line 333
    .line 334
    .line 335
    move-result-object v4

    .line 336
    iput-boolean v0, v2, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$generateRecommendedReadingList$1;->Z$0:Z

    .line 337
    .line 338
    iput v1, v2, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$generateRecommendedReadingList$1;->I$0:I

    .line 339
    .line 340
    iput v9, v2, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$generateRecommendedReadingList$1;->label:I

    .line 341
    .line 342
    iget-object v4, v4, Lorg/wikipedia/readinglist/db/RecommendedPageDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 343
    .line 344
    new-instance v5, Lorg/wikipedia/talk/TalkTopicsViewModel$$ExternalSyntheticLambda0;

    .line 345
    .line 346
    const/16 v6, 0xc

    .line 347
    .line 348
    invoke-direct {v5, v6}, Lorg/wikipedia/talk/TalkTopicsViewModel$$ExternalSyntheticLambda0;-><init>(I)V

    .line 349
    .line 350
    .line 351
    const/4 v6, 0x1

    .line 352
    const/4 v10, 0x0

    .line 353
    invoke-static {v4, v10, v6, v5, v2}, Lkotlin/ExceptionsKt;->performSuspending(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 354
    .line 355
    .line 356
    move-result-object v4

    .line 357
    if-ne v4, v3, :cond_3

    .line 358
    .line 359
    goto :goto_3

    .line 360
    :cond_3
    move-object v4, v8

    .line 361
    :goto_3
    if-ne v4, v3, :cond_4

    .line 362
    .line 363
    goto :goto_1

    .line 364
    :cond_4
    move v4, v0

    .line 365
    move v0, v1

    .line 366
    :goto_4
    sget-object v1, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 367
    .line 368
    const v1, 0x7f12066e

    .line 369
    .line 370
    .line 371
    invoke-static {v1, v10}, Lorg/wikipedia/settings/PrefsIoUtil;->setBoolean(IZ)V

    .line 372
    .line 373
    .line 374
    move v1, v0

    .line 375
    move v0, v4

    .line 376
    :cond_5
    sget-object v4, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    .line 377
    .line 378
    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    .line 379
    .line 380
    .line 381
    move-result-object v4

    .line 382
    invoke-virtual {v4}, Lorg/wikipedia/database/AppDatabase;->recommendedPageDao()Lorg/wikipedia/readinglist/db/RecommendedPageDao_Impl;

    .line 383
    .line 384
    .line 385
    move-result-object v4

    .line 386
    iput-boolean v0, v2, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$generateRecommendedReadingList$1;->Z$0:Z

    .line 387
    .line 388
    iput v1, v2, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$generateRecommendedReadingList$1;->I$0:I

    .line 389
    .line 390
    iput v7, v2, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$generateRecommendedReadingList$1;->label:I

    .line 391
    .line 392
    iget-object v5, v4, Lorg/wikipedia/readinglist/db/RecommendedPageDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 393
    .line 394
    new-instance v6, Lorg/wikipedia/talk/TalkTopicsViewModel$$ExternalSyntheticLambda0;

    .line 395
    .line 396
    const/16 v10, 0xd

    .line 397
    .line 398
    invoke-direct {v6, v10, v4}, Lorg/wikipedia/talk/TalkTopicsViewModel$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 399
    .line 400
    .line 401
    const/4 v4, 0x1

    .line 402
    const/4 v10, 0x0

    .line 403
    invoke-static {v5, v4, v10, v6, v2}, Lkotlin/ExceptionsKt;->performSuspending(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 404
    .line 405
    .line 406
    move-result-object v5

    .line 407
    if-ne v5, v3, :cond_6

    .line 408
    .line 409
    goto :goto_1

    .line 410
    :cond_6
    move v4, v0

    .line 411
    move v0, v1

    .line 412
    move-object v1, v5

    .line 413
    :goto_5
    move-object v5, v1

    .line 414
    check-cast v5, Ljava/util/List;

    .line 415
    .line 416
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 417
    .line 418
    .line 419
    move-result v1

    .line 420
    if-lt v1, v0, :cond_7

    .line 421
    .line 422
    invoke-static {v5, v0}, Lkotlin/collections/CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    .line 423
    .line 424
    .line 425
    move-result-object v0

    .line 426
    return-object v0

    .line 427
    :cond_7
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 428
    .line 429
    .line 430
    move-result v1

    .line 431
    sub-int/2addr v0, v1

    .line 432
    sget-object v1, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 433
    .line 434
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getRecommendedReadingListSource()Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSource;

    .line 435
    .line 436
    .line 437
    move-result-object v1

    .line 438
    sget-object v6, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 439
    .line 440
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 441
    .line 442
    .line 443
    move-result v1

    .line 444
    aget v1, v6, v1

    .line 445
    .line 446
    const/4 v6, 0x1

    .line 447
    if-eq v1, v6, :cond_c

    .line 448
    .line 449
    if-eq v1, v9, :cond_a

    .line 450
    .line 451
    if-ne v1, v7, :cond_9

    .line 452
    .line 453
    sget-object v1, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    .line 454
    .line 455
    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    .line 456
    .line 457
    .line 458
    move-result-object v1

    .line 459
    invoke-virtual {v1}, Lorg/wikipedia/database/AppDatabase;->historyEntryDao()Lorg/wikipedia/history/db/HistoryEntryDao_Impl;

    .line 460
    .line 461
    .line 462
    move-result-object v1

    .line 463
    iput-object v5, v2, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$generateRecommendedReadingList$1;->L$0:Ljava/util/List;

    .line 464
    .line 465
    iput-boolean v4, v2, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$generateRecommendedReadingList$1;->Z$0:Z

    .line 466
    .line 467
    iput v0, v2, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$generateRecommendedReadingList$1;->I$0:I

    .line 468
    .line 469
    const/4 v6, 0x5

    .line 470
    iput v6, v2, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$generateRecommendedReadingList$1;->label:I

    .line 471
    .line 472
    iget-object v6, v1, Lorg/wikipedia/history/db/HistoryEntryDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 473
    .line 474
    new-instance v7, Lcoil3/request/ImageRequests_androidKt$$ExternalSyntheticLambda0;

    .line 475
    .line 476
    const/4 v9, 0x6

    .line 477
    invoke-direct {v7, v0, v9, v1}, Lcoil3/request/ImageRequests_androidKt$$ExternalSyntheticLambda0;-><init>(IILjava/lang/Object;)V

    .line 478
    .line 479
    .line 480
    const/4 v1, 0x1

    .line 481
    const/4 v10, 0x0

    .line 482
    invoke-static {v6, v1, v10, v7, v2}, Lkotlin/ExceptionsKt;->performSuspending(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 483
    .line 484
    .line 485
    move-result-object v6

    .line 486
    if-ne v6, v3, :cond_8

    .line 487
    .line 488
    goto/16 :goto_1

    .line 489
    .line 490
    :cond_8
    move-object v1, v6

    .line 491
    :goto_6
    check-cast v1, Ljava/lang/Iterable;

    .line 492
    .line 493
    new-instance v6, Ljava/util/ArrayList;

    .line 494
    .line 495
    const/16 v7, 0xa

    .line 496
    .line 497
    invoke-static {v1, v7}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 498
    .line 499
    .line 500
    move-result v9

    .line 501
    invoke-direct {v6, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 502
    .line 503
    .line 504
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 505
    .line 506
    .line 507
    move-result-object v1

    .line 508
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 509
    .line 510
    .line 511
    move-result v7

    .line 512
    if-eqz v7, :cond_d

    .line 513
    .line 514
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 515
    .line 516
    .line 517
    move-result-object v7

    .line 518
    check-cast v7, Lorg/wikipedia/history/HistoryEntry;

    .line 519
    .line 520
    invoke-virtual {v7}, Lorg/wikipedia/history/HistoryEntry;->getTitle()Lorg/wikipedia/page/PageTitle;

    .line 521
    .line 522
    .line 523
    move-result-object v7

    .line 524
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 525
    .line 526
    .line 527
    goto :goto_7

    .line 528
    :cond_9
    invoke-static {}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m()V

    .line 529
    .line 530
    .line 531
    return-object p2

    .line 532
    :cond_a
    sget-object v1, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    .line 533
    .line 534
    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    .line 535
    .line 536
    .line 537
    move-result-object v1

    .line 538
    invoke-virtual {v1}, Lorg/wikipedia/database/AppDatabase;->readingListPageDao()Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;

    .line 539
    .line 540
    .line 541
    move-result-object v1

    .line 542
    iput-object v5, v2, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$generateRecommendedReadingList$1;->L$0:Ljava/util/List;

    .line 543
    .line 544
    iput-boolean v4, v2, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$generateRecommendedReadingList$1;->Z$0:Z

    .line 545
    .line 546
    iput v0, v2, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$generateRecommendedReadingList$1;->I$0:I

    .line 547
    .line 548
    const/4 v6, 0x4

    .line 549
    iput v6, v2, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$generateRecommendedReadingList$1;->label:I

    .line 550
    .line 551
    iget-object v6, v1, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 552
    .line 553
    new-instance v7, Lcoil3/request/ImageRequests_androidKt$$ExternalSyntheticLambda0;

    .line 554
    .line 555
    const/4 v9, 0x7

    .line 556
    invoke-direct {v7, v0, v9, v1}, Lcoil3/request/ImageRequests_androidKt$$ExternalSyntheticLambda0;-><init>(IILjava/lang/Object;)V

    .line 557
    .line 558
    .line 559
    const/4 v1, 0x1

    .line 560
    const/4 v10, 0x0

    .line 561
    invoke-static {v6, v1, v10, v7, v2}, Lkotlin/ExceptionsKt;->performSuspending(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 562
    .line 563
    .line 564
    move-result-object v6

    .line 565
    if-ne v6, v3, :cond_b

    .line 566
    .line 567
    goto/16 :goto_1

    .line 568
    .line 569
    :cond_b
    move-object v1, v6

    .line 570
    :goto_8
    check-cast v1, Ljava/lang/Iterable;

    .line 571
    .line 572
    new-instance v6, Ljava/util/ArrayList;

    .line 573
    .line 574
    const/16 v7, 0xa

    .line 575
    .line 576
    invoke-static {v1, v7}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 577
    .line 578
    .line 579
    move-result v9

    .line 580
    invoke-direct {v6, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 581
    .line 582
    .line 583
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 584
    .line 585
    .line 586
    move-result-object v1

    .line 587
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 588
    .line 589
    .line 590
    move-result v7

    .line 591
    if-eqz v7, :cond_d

    .line 592
    .line 593
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 594
    .line 595
    .line 596
    move-result-object v7

    .line 597
    check-cast v7, Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 598
    .line 599
    new-instance v9, Lorg/wikipedia/page/PageTitle;

    .line 600
    .line 601
    iget-object v10, v7, Lorg/wikipedia/readinglist/database/ReadingListPage;->apiTitle:Ljava/lang/String;

    .line 602
    .line 603
    iget-object v11, v7, Lorg/wikipedia/readinglist/database/ReadingListPage;->wiki:Lorg/wikipedia/dataclient/WikiSite;

    .line 604
    .line 605
    move-object/from16 v12, p2

    .line 606
    .line 607
    invoke-direct {v9, v10, v11, v12}, Lorg/wikipedia/page/PageTitle;-><init>(Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;)V

    .line 608
    .line 609
    .line 610
    iget-object v10, v7, Lorg/wikipedia/readinglist/database/ReadingListPage;->namespace:Lorg/wikipedia/page/Namespace;

    .line 611
    .line 612
    invoke-virtual {v10}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 613
    .line 614
    .line 615
    move-result-object v10

    .line 616
    invoke-virtual {v9, v10}, Lorg/wikipedia/page/PageTitle;->setNamespace(Ljava/lang/String;)V

    .line 617
    .line 618
    .line 619
    iget-object v10, v7, Lorg/wikipedia/readinglist/database/ReadingListPage;->displayTitle:Ljava/lang/String;

    .line 620
    .line 621
    invoke-virtual {v9, v10}, Lorg/wikipedia/page/PageTitle;->setDisplayText(Ljava/lang/String;)V

    .line 622
    .line 623
    .line 624
    iget-object v10, v7, Lorg/wikipedia/readinglist/database/ReadingListPage;->description:Ljava/lang/String;

    .line 625
    .line 626
    iput-object v10, v9, Lorg/wikipedia/page/PageTitle;->description:Ljava/lang/String;

    .line 627
    .line 628
    iget-object v7, v7, Lorg/wikipedia/readinglist/database/ReadingListPage;->thumbUrl:Ljava/lang/String;

    .line 629
    .line 630
    iput-object v7, v9, Lorg/wikipedia/page/PageTitle;->thumbUrl:Ljava/lang/String;

    .line 631
    .line 632
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 633
    .line 634
    .line 635
    const/16 p2, 0x0

    .line 636
    .line 637
    goto :goto_9

    .line 638
    :cond_c
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getRecommendedReadingListInterests()Ljava/util/List;

    .line 639
    .line 640
    .line 641
    move-result-object v1

    .line 642
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/lang/Iterable;)Ljava/util/List;

    .line 643
    .line 644
    .line 645
    move-result-object v1

    .line 646
    invoke-static {v1}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 647
    .line 648
    .line 649
    invoke-static {v1, v0}, Lkotlin/collections/CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    .line 650
    .line 651
    .line 652
    move-result-object v6

    .line 653
    :cond_d
    new-instance v1, Ljava/util/HashSet;

    .line 654
    .line 655
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 656
    .line 657
    .line 658
    new-instance v7, Ljava/util/ArrayList;

    .line 659
    .line 660
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 661
    .line 662
    .line 663
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 664
    .line 665
    .line 666
    move-result-object v6

    .line 667
    :cond_e
    :goto_a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 668
    .line 669
    .line 670
    move-result v9

    .line 671
    if-eqz v9, :cond_f

    .line 672
    .line 673
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 674
    .line 675
    .line 676
    move-result-object v9

    .line 677
    move-object v10, v9

    .line 678
    check-cast v10, Lorg/wikipedia/page/PageTitle;

    .line 679
    .line 680
    invoke-virtual {v10}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    .line 681
    .line 682
    .line 683
    move-result-object v10

    .line 684
    invoke-virtual {v1, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 685
    .line 686
    .line 687
    move-result v10

    .line 688
    if-eqz v10, :cond_e

    .line 689
    .line 690
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 691
    .line 692
    .line 693
    goto :goto_a

    .line 694
    :cond_f
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    .line 695
    .line 696
    .line 697
    move-result v1

    .line 698
    if-eqz v1, :cond_10

    .line 699
    .line 700
    :goto_b
    sget-object v0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 701
    .line 702
    return-object v0

    .line 703
    :cond_10
    sget-object v1, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 704
    .line 705
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getRecommendedReadingListSourceTitlesWithOffset()Ljava/util/List;

    .line 706
    .line 707
    .line 708
    move-result-object v1

    .line 709
    new-instance v6, Ljava/util/ArrayList;

    .line 710
    .line 711
    invoke-direct {v6, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 712
    .line 713
    .line 714
    new-instance v1, Ljava/util/ArrayList;

    .line 715
    .line 716
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 717
    .line 718
    .line 719
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 720
    .line 721
    .line 722
    move-result-object v7

    .line 723
    :goto_c
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 724
    .line 725
    .line 726
    move-result v9

    .line 727
    if-eqz v9, :cond_15

    .line 728
    .line 729
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 730
    .line 731
    .line 732
    move-result-object v9

    .line 733
    check-cast v9, Lorg/wikipedia/page/PageTitle;

    .line 734
    .line 735
    sget-object v10, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 736
    .line 737
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getRecommendedReadingListSourceTitlesWithOffset()Ljava/util/List;

    .line 738
    .line 739
    .line 740
    move-result-object v10

    .line 741
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 742
    .line 743
    .line 744
    move-result-object v10

    .line 745
    :cond_11
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 746
    .line 747
    .line 748
    move-result v11

    .line 749
    if-eqz v11, :cond_12

    .line 750
    .line 751
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 752
    .line 753
    .line 754
    move-result-object v11

    .line 755
    move-object v12, v11

    .line 756
    check-cast v12, Lorg/wikipedia/readinglist/recommended/SourceWithOffset;

    .line 757
    .line 758
    iget-object v12, v12, Lorg/wikipedia/readinglist/recommended/SourceWithOffset;->title:Ljava/lang/String;

    .line 759
    .line 760
    invoke-virtual {v9}, Lorg/wikipedia/page/PageTitle;->getText()Ljava/lang/String;

    .line 761
    .line 762
    .line 763
    move-result-object v13

    .line 764
    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 765
    .line 766
    .line 767
    move-result v12

    .line 768
    if-eqz v12, :cond_11

    .line 769
    .line 770
    goto :goto_d

    .line 771
    :cond_12
    const/4 v11, 0x0

    .line 772
    :goto_d
    check-cast v11, Lorg/wikipedia/readinglist/recommended/SourceWithOffset;

    .line 773
    .line 774
    if-eqz v11, :cond_13

    .line 775
    .line 776
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 777
    .line 778
    .line 779
    :cond_13
    new-instance v10, Lorg/wikipedia/readinglist/recommended/SourceWithOffset;

    .line 780
    .line 781
    invoke-virtual {v9}, Lorg/wikipedia/page/PageTitle;->getText()Ljava/lang/String;

    .line 782
    .line 783
    .line 784
    move-result-object v12

    .line 785
    iget-object v9, v9, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 786
    .line 787
    iget-object v9, v9, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 788
    .line 789
    if-eqz v11, :cond_14

    .line 790
    .line 791
    iget v11, v11, Lorg/wikipedia/readinglist/recommended/SourceWithOffset;->offset:I

    .line 792
    .line 793
    goto :goto_e

    .line 794
    :cond_14
    const/4 v11, 0x0

    .line 795
    :goto_e
    invoke-direct {v10, v12, v9, v11}, Lorg/wikipedia/readinglist/recommended/SourceWithOffset;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 796
    .line 797
    .line 798
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 799
    .line 800
    .line 801
    goto :goto_c

    .line 802
    :cond_15
    new-instance v7, Lkotlin/jvm/internal/Ref$IntRef;

    .line 803
    .line 804
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 805
    .line 806
    .line 807
    const/4 v9, 0x1

    .line 808
    iput v9, v7, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 809
    .line 810
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 811
    .line 812
    .line 813
    move-result v9

    .line 814
    if-ge v9, v0, :cond_16

    .line 815
    .line 816
    int-to-double v9, v0

    .line 817
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 818
    .line 819
    .line 820
    move-result v11

    .line 821
    int-to-double v11, v11

    .line 822
    div-double/2addr v9, v11

    .line 823
    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    .line 824
    .line 825
    .line 826
    move-result-wide v9

    .line 827
    double-to-int v9, v9

    .line 828
    iput v9, v7, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 829
    .line 830
    :cond_16
    new-instance v9, Ljava/util/ArrayList;

    .line 831
    .line 832
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 833
    .line 834
    .line 835
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 836
    .line 837
    .line 838
    move-result-object v10

    .line 839
    move v11, v4

    .line 840
    move v4, v0

    .line 841
    move v0, v11

    .line 842
    const/4 v11, 0x0

    .line 843
    :goto_f
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 844
    .line 845
    .line 846
    move-result v12

    .line 847
    if-eqz v12, :cond_1f

    .line 848
    .line 849
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 850
    .line 851
    .line 852
    move-result-object v12

    .line 853
    check-cast v12, Lorg/wikipedia/readinglist/recommended/SourceWithOffset;

    .line 854
    .line 855
    new-instance v13, Ljava/util/ArrayList;

    .line 856
    .line 857
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 858
    .line 859
    .line 860
    iget v14, v12, Lorg/wikipedia/readinglist/recommended/SourceWithOffset;->offset:I

    .line 861
    .line 862
    move-object v15, v13

    .line 863
    move-object v13, v10

    .line 864
    move-object v10, v15

    .line 865
    move-object v15, v7

    .line 866
    move-object/from16 v17, v8

    .line 867
    .line 868
    const/4 v8, 0x0

    .line 869
    move v7, v4

    .line 870
    move-object v4, v9

    .line 871
    move v9, v0

    .line 872
    move-object v0, v5

    .line 873
    const/4 v5, 0x0

    .line 874
    :goto_10
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    .line 875
    .line 876
    .line 877
    move-result v18

    .line 878
    if-nez v18, :cond_18

    .line 879
    .line 880
    move-object/from16 v18, v3

    .line 881
    .line 882
    invoke-interface {v10}, Ljava/util/List;->size()I

    .line 883
    .line 884
    .line 885
    move-result v3

    .line 886
    move/from16 p0, v14

    .line 887
    .line 888
    iget v14, v15, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 889
    .line 890
    if-ge v3, v14, :cond_17

    .line 891
    .line 892
    :goto_11
    const/16 v3, 0xa

    .line 893
    .line 894
    goto :goto_12

    .line 895
    :cond_17
    move/from16 v14, p0

    .line 896
    .line 897
    move/from16 p0, v7

    .line 898
    .line 899
    move-object/from16 v7, v18

    .line 900
    .line 901
    goto/16 :goto_17

    .line 902
    .line 903
    :cond_18
    move-object/from16 v18, v3

    .line 904
    .line 905
    move/from16 p0, v14

    .line 906
    .line 907
    goto :goto_11

    .line 908
    :goto_12
    if-ge v8, v3, :cond_17

    .line 909
    .line 910
    iget v3, v15, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 911
    .line 912
    iput-object v0, v2, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$generateRecommendedReadingList$1;->L$0:Ljava/util/List;

    .line 913
    .line 914
    iput-object v6, v2, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$generateRecommendedReadingList$1;->L$2:Ljava/util/List;

    .line 915
    .line 916
    iput-object v1, v2, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$generateRecommendedReadingList$1;->L$3:Ljava/util/List;

    .line 917
    .line 918
    iput-object v15, v2, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$generateRecommendedReadingList$1;->L$4:Lkotlin/jvm/internal/Ref$IntRef;

    .line 919
    .line 920
    iput-object v4, v2, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$generateRecommendedReadingList$1;->L$5:Ljava/util/List;

    .line 921
    .line 922
    const/4 v14, 0x0

    .line 923
    iput-object v14, v2, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$generateRecommendedReadingList$1;->L$6:Ljava/util/List;

    .line 924
    .line 925
    iput-object v13, v2, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$generateRecommendedReadingList$1;->L$7:Ljava/util/Iterator;

    .line 926
    .line 927
    iput-object v12, v2, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$generateRecommendedReadingList$1;->L$9:Ljava/lang/Object;

    .line 928
    .line 929
    iput-object v10, v2, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$generateRecommendedReadingList$1;->L$10:Ljava/util/List;

    .line 930
    .line 931
    iput-object v10, v2, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$generateRecommendedReadingList$1;->L$11:Ljava/util/List;

    .line 932
    .line 933
    iput-object v14, v2, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$generateRecommendedReadingList$1;->L$12:Ljava/util/Iterator;

    .line 934
    .line 935
    iput-object v14, v2, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$generateRecommendedReadingList$1;->L$15:Lorg/wikipedia/readinglist/database/RecommendedPage;

    .line 936
    .line 937
    iput-boolean v9, v2, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$generateRecommendedReadingList$1;->Z$0:Z

    .line 938
    .line 939
    iput v7, v2, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$generateRecommendedReadingList$1;->I$0:I

    .line 940
    .line 941
    iput v11, v2, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$generateRecommendedReadingList$1;->I$1:I

    .line 942
    .line 943
    iput v5, v2, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$generateRecommendedReadingList$1;->I$2:I

    .line 944
    .line 945
    iput v8, v2, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$generateRecommendedReadingList$1;->I$3:I

    .line 946
    .line 947
    move/from16 v14, p0

    .line 948
    .line 949
    iput v14, v2, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$generateRecommendedReadingList$1;->I$4:I

    .line 950
    .line 951
    move/from16 p0, v7

    .line 952
    .line 953
    const/4 v7, 0x6

    .line 954
    iput v7, v2, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$generateRecommendedReadingList$1;->label:I

    .line 955
    .line 956
    sget-object v7, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper;->INSTANCE:Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper;

    .line 957
    .line 958
    invoke-virtual {v7, v12, v14, v3, v2}, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper;->getRecommendedPage(Lorg/wikipedia/readinglist/recommended/SourceWithOffset;IILkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 959
    .line 960
    .line 961
    move-result-object v3

    .line 962
    move-object/from16 v7, v18

    .line 963
    .line 964
    if-ne v3, v7, :cond_19

    .line 965
    .line 966
    goto/16 :goto_20

    .line 967
    .line 968
    :cond_19
    move-object/from16 v18, v13

    .line 969
    .line 970
    move v13, v11

    .line 971
    move-object v11, v10

    .line 972
    move v10, v9

    .line 973
    move/from16 v9, p0

    .line 974
    .line 975
    move/from16 p0, v14

    .line 976
    .line 977
    move-object v14, v4

    .line 978
    move-object v4, v2

    .line 979
    move-object v2, v1

    .line 980
    move-object v1, v0

    .line 981
    move-object v0, v15

    .line 982
    move-object v15, v12

    .line 983
    move-object v12, v11

    .line 984
    :goto_13
    check-cast v3, Ljava/util/Collection;

    .line 985
    .line 986
    invoke-interface {v11, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 987
    .line 988
    .line 989
    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    .line 990
    .line 991
    .line 992
    move-result v3

    .line 993
    if-nez v3, :cond_1b

    .line 994
    .line 995
    invoke-interface {v12}, Ljava/util/List;->size()I

    .line 996
    .line 997
    .line 998
    move-result v3

    .line 999
    iget v11, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 1000
    .line 1001
    if-ge v3, v11, :cond_1a

    .line 1002
    .line 1003
    goto :goto_15

    .line 1004
    :cond_1a
    move/from16 v3, p0

    .line 1005
    .line 1006
    :goto_14
    const/16 v16, 0x1

    .line 1007
    .line 1008
    goto :goto_16

    .line 1009
    :cond_1b
    :goto_15
    add-int/lit8 v3, p0, 0x32

    .line 1010
    .line 1011
    goto :goto_14

    .line 1012
    :goto_16
    add-int/lit8 v8, v8, 0x1

    .line 1013
    .line 1014
    move-object v11, v15

    .line 1015
    move-object v15, v0

    .line 1016
    move-object v0, v1

    .line 1017
    move-object v1, v2

    .line 1018
    move-object v2, v4

    .line 1019
    move-object v4, v14

    .line 1020
    move v14, v3

    .line 1021
    move-object v3, v7

    .line 1022
    move v7, v9

    .line 1023
    move v9, v10

    .line 1024
    move-object v10, v12

    .line 1025
    move-object v12, v11

    .line 1026
    move v11, v13

    .line 1027
    move-object/from16 v13, v18

    .line 1028
    .line 1029
    goto/16 :goto_10

    .line 1030
    .line 1031
    :goto_17
    iput v14, v12, Lorg/wikipedia/readinglist/recommended/SourceWithOffset;->offset:I

    .line 1032
    .line 1033
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 1034
    .line 1035
    .line 1036
    move-result-object v3

    .line 1037
    move v10, v5

    .line 1038
    move v12, v11

    .line 1039
    move-object v5, v0

    .line 1040
    move-object v11, v3

    .line 1041
    move v0, v9

    .line 1042
    move-object v3, v2

    .line 1043
    move-object v9, v4

    .line 1044
    move/from16 v4, p0

    .line 1045
    .line 1046
    move-object v2, v1

    .line 1047
    const/4 v1, 0x0

    .line 1048
    :goto_18
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 1049
    .line 1050
    .line 1051
    move-result v18

    .line 1052
    if-eqz v18, :cond_1e

    .line 1053
    .line 1054
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1055
    .line 1056
    .line 1057
    move-result-object v18

    .line 1058
    move-object/from16 p0, v7

    .line 1059
    .line 1060
    move-object/from16 v7, v18

    .line 1061
    .line 1062
    check-cast v7, Lorg/wikipedia/page/PageTitle;

    .line 1063
    .line 1064
    new-instance v18, Lorg/wikipedia/readinglist/database/RecommendedPage;

    .line 1065
    .line 1066
    move/from16 p1, v1

    .line 1067
    .line 1068
    iget-object v1, v7, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 1069
    .line 1070
    move/from16 v30, v14

    .line 1071
    .line 1072
    iget-object v14, v1, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 1073
    .line 1074
    invoke-virtual {v7}, Lorg/wikipedia/page/PageTitle;->namespace()Lorg/wikipedia/page/Namespace;

    .line 1075
    .line 1076
    .line 1077
    move-result-object v22

    .line 1078
    invoke-virtual {v7}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    .line 1079
    .line 1080
    .line 1081
    move-result-object v24

    .line 1082
    invoke-virtual {v7}, Lorg/wikipedia/page/PageTitle;->getDisplayText()Ljava/lang/String;

    .line 1083
    .line 1084
    .line 1085
    move-result-object v25

    .line 1086
    move-object/from16 v20, v1

    .line 1087
    .line 1088
    iget-object v1, v7, Lorg/wikipedia/page/PageTitle;->description:Ljava/lang/String;

    .line 1089
    .line 1090
    move-object/from16 v26, v1

    .line 1091
    .line 1092
    iget-object v1, v7, Lorg/wikipedia/page/PageTitle;->thumbUrl:Ljava/lang/String;

    .line 1093
    .line 1094
    iget-object v7, v7, Lorg/wikipedia/page/PageTitle;->extract:Ljava/lang/String;

    .line 1095
    .line 1096
    new-instance v23, Ljava/util/Date;

    .line 1097
    .line 1098
    invoke-direct/range {v23 .. v23}, Ljava/util/Date;-><init>()V

    .line 1099
    .line 1100
    .line 1101
    const/16 v28, 0x0

    .line 1102
    .line 1103
    const/16 v19, 0x0

    .line 1104
    .line 1105
    move-object/from16 v27, v1

    .line 1106
    .line 1107
    move-object/from16 v29, v7

    .line 1108
    .line 1109
    move-object/from16 v21, v14

    .line 1110
    .line 1111
    invoke-direct/range {v18 .. v29}, Lorg/wikipedia/readinglist/database/RecommendedPage;-><init>(ILorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;Lorg/wikipedia/page/Namespace;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 1112
    .line 1113
    .line 1114
    move-object/from16 v1, v18

    .line 1115
    .line 1116
    sget-object v7, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    .line 1117
    .line 1118
    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    .line 1119
    .line 1120
    .line 1121
    move-result-object v7

    .line 1122
    invoke-virtual {v7}, Lorg/wikipedia/database/AppDatabase;->recommendedPageDao()Lorg/wikipedia/readinglist/db/RecommendedPageDao_Impl;

    .line 1123
    .line 1124
    .line 1125
    move-result-object v7

    .line 1126
    iput-object v5, v3, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$generateRecommendedReadingList$1;->L$0:Ljava/util/List;

    .line 1127
    .line 1128
    iput-object v6, v3, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$generateRecommendedReadingList$1;->L$2:Ljava/util/List;

    .line 1129
    .line 1130
    iput-object v2, v3, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$generateRecommendedReadingList$1;->L$3:Ljava/util/List;

    .line 1131
    .line 1132
    iput-object v15, v3, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$generateRecommendedReadingList$1;->L$4:Lkotlin/jvm/internal/Ref$IntRef;

    .line 1133
    .line 1134
    iput-object v9, v3, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$generateRecommendedReadingList$1;->L$5:Ljava/util/List;

    .line 1135
    .line 1136
    const/4 v14, 0x0

    .line 1137
    iput-object v14, v3, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$generateRecommendedReadingList$1;->L$6:Ljava/util/List;

    .line 1138
    .line 1139
    iput-object v13, v3, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$generateRecommendedReadingList$1;->L$7:Ljava/util/Iterator;

    .line 1140
    .line 1141
    iput-object v14, v3, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$generateRecommendedReadingList$1;->L$9:Ljava/lang/Object;

    .line 1142
    .line 1143
    iput-object v14, v3, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$generateRecommendedReadingList$1;->L$10:Ljava/util/List;

    .line 1144
    .line 1145
    iput-object v14, v3, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$generateRecommendedReadingList$1;->L$11:Ljava/util/List;

    .line 1146
    .line 1147
    iput-object v11, v3, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$generateRecommendedReadingList$1;->L$12:Ljava/util/Iterator;

    .line 1148
    .line 1149
    iput-object v1, v3, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$generateRecommendedReadingList$1;->L$15:Lorg/wikipedia/readinglist/database/RecommendedPage;

    .line 1150
    .line 1151
    iput-boolean v0, v3, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$generateRecommendedReadingList$1;->Z$0:Z

    .line 1152
    .line 1153
    iput v4, v3, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$generateRecommendedReadingList$1;->I$0:I

    .line 1154
    .line 1155
    iput v12, v3, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$generateRecommendedReadingList$1;->I$1:I

    .line 1156
    .line 1157
    iput v10, v3, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$generateRecommendedReadingList$1;->I$2:I

    .line 1158
    .line 1159
    iput v8, v3, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$generateRecommendedReadingList$1;->I$3:I

    .line 1160
    .line 1161
    move/from16 v14, v30

    .line 1162
    .line 1163
    iput v14, v3, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$generateRecommendedReadingList$1;->I$4:I

    .line 1164
    .line 1165
    move/from16 v18, v0

    .line 1166
    .line 1167
    move/from16 v0, p1

    .line 1168
    .line 1169
    iput v0, v3, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$generateRecommendedReadingList$1;->I$5:I

    .line 1170
    .line 1171
    move/from16 v19, v8

    .line 1172
    .line 1173
    const/4 v8, 0x7

    .line 1174
    iput v8, v3, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$generateRecommendedReadingList$1;->label:I

    .line 1175
    .line 1176
    iget-object v8, v7, Lorg/wikipedia/readinglist/db/RecommendedPageDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 1177
    .line 1178
    new-instance v0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda8;

    .line 1179
    .line 1180
    move-object/from16 v20, v2

    .line 1181
    .line 1182
    const/16 v2, 0x1d

    .line 1183
    .line 1184
    invoke-direct {v0, v2, v7, v1}, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda8;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1185
    .line 1186
    .line 1187
    const/4 v2, 0x1

    .line 1188
    const/4 v7, 0x0

    .line 1189
    invoke-static {v8, v7, v2, v0, v3}, Lkotlin/ExceptionsKt;->performSuspending(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 1190
    .line 1191
    .line 1192
    move-result-object v0

    .line 1193
    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1194
    .line 1195
    if-ne v0, v2, :cond_1c

    .line 1196
    .line 1197
    :goto_19
    move-object/from16 v7, p0

    .line 1198
    .line 1199
    goto :goto_1a

    .line 1200
    :cond_1c
    move-object/from16 v0, v17

    .line 1201
    .line 1202
    goto :goto_19

    .line 1203
    :goto_1a
    if-ne v0, v7, :cond_1d

    .line 1204
    .line 1205
    goto/16 :goto_20

    .line 1206
    .line 1207
    :cond_1d
    move-object v8, v6

    .line 1208
    move/from16 v0, v18

    .line 1209
    .line 1210
    move-object/from16 v2, v20

    .line 1211
    .line 1212
    move-object v6, v5

    .line 1213
    move-object v5, v1

    .line 1214
    move/from16 v1, p1

    .line 1215
    .line 1216
    :goto_1b
    invoke-interface {v9, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1217
    .line 1218
    .line 1219
    move-object v5, v6

    .line 1220
    move-object v6, v8

    .line 1221
    move/from16 v8, v19

    .line 1222
    .line 1223
    goto/16 :goto_18

    .line 1224
    .line 1225
    :cond_1e
    move/from16 v18, v0

    .line 1226
    .line 1227
    move-object/from16 v20, v2

    .line 1228
    .line 1229
    move-object v2, v3

    .line 1230
    move-object v3, v7

    .line 1231
    move v11, v12

    .line 1232
    move-object v10, v13

    .line 1233
    move-object v7, v15

    .line 1234
    move-object/from16 v8, v17

    .line 1235
    .line 1236
    move-object/from16 v1, v20

    .line 1237
    .line 1238
    goto/16 :goto_f

    .line 1239
    .line 1240
    :cond_1f
    move-object v7, v3

    .line 1241
    move-object/from16 v17, v8

    .line 1242
    .line 1243
    sget-object v3, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 1244
    .line 1245
    invoke-static {v6, v1}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    .line 1246
    .line 1247
    .line 1248
    move-result-object v1

    .line 1249
    invoke-static {v1}, Lorg/wikipedia/settings/Prefs;->setRecommendedReadingListSourceTitlesWithOffset(Ljava/util/List;)V

    .line 1250
    .line 1251
    .line 1252
    invoke-static {v9, v5}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    .line 1253
    .line 1254
    .line 1255
    move-result-object v1

    .line 1256
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toMutableSet(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 1257
    .line 1258
    .line 1259
    move-result-object v1

    .line 1260
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    .line 1261
    .line 1262
    .line 1263
    move-result-object v1

    .line 1264
    new-instance v3, Ljava/util/ArrayList;

    .line 1265
    .line 1266
    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1267
    .line 1268
    .line 1269
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 1270
    .line 1271
    .line 1272
    move-result v1

    .line 1273
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getRecommendedReadingListArticlesNumber()I

    .line 1274
    .line 1275
    .line 1276
    move-result v5

    .line 1277
    if-ge v1, v5, :cond_25

    .line 1278
    .line 1279
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getRecommendedReadingListArticlesNumber()I

    .line 1280
    .line 1281
    .line 1282
    move-result v1

    .line 1283
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 1284
    .line 1285
    .line 1286
    move-result v5

    .line 1287
    sub-int v12, v1, v5

    .line 1288
    .line 1289
    sget-object v1, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    .line 1290
    .line 1291
    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    .line 1292
    .line 1293
    .line 1294
    move-result-object v1

    .line 1295
    invoke-virtual {v1}, Lorg/wikipedia/database/AppDatabase;->recommendedPageDao()Lorg/wikipedia/readinglist/db/RecommendedPageDao_Impl;

    .line 1296
    .line 1297
    .line 1298
    move-result-object v13

    .line 1299
    new-instance v10, Ljava/util/ArrayList;

    .line 1300
    .line 1301
    const/16 v1, 0xa

    .line 1302
    .line 1303
    invoke-static {v3, v1}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 1304
    .line 1305
    .line 1306
    move-result v5

    .line 1307
    invoke-direct {v10, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 1308
    .line 1309
    .line 1310
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1311
    .line 1312
    .line 1313
    move-result-object v1

    .line 1314
    :goto_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 1315
    .line 1316
    .line 1317
    move-result v5

    .line 1318
    if-eqz v5, :cond_20

    .line 1319
    .line 1320
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1321
    .line 1322
    .line 1323
    move-result-object v5

    .line 1324
    check-cast v5, Lorg/wikipedia/readinglist/database/RecommendedPage;

    .line 1325
    .line 1326
    iget-object v5, v5, Lorg/wikipedia/readinglist/database/RecommendedPage;->apiTitle:Ljava/lang/String;

    .line 1327
    .line 1328
    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1329
    .line 1330
    .line 1331
    goto :goto_1c

    .line 1332
    :cond_20
    const/4 v14, 0x0

    .line 1333
    iput-object v14, v2, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$generateRecommendedReadingList$1;->L$0:Ljava/util/List;

    .line 1334
    .line 1335
    iput-object v14, v2, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$generateRecommendedReadingList$1;->L$2:Ljava/util/List;

    .line 1336
    .line 1337
    iput-object v14, v2, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$generateRecommendedReadingList$1;->L$3:Ljava/util/List;

    .line 1338
    .line 1339
    iput-object v14, v2, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$generateRecommendedReadingList$1;->L$4:Lkotlin/jvm/internal/Ref$IntRef;

    .line 1340
    .line 1341
    iput-object v14, v2, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$generateRecommendedReadingList$1;->L$5:Ljava/util/List;

    .line 1342
    .line 1343
    iput-object v3, v2, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$generateRecommendedReadingList$1;->L$6:Ljava/util/List;

    .line 1344
    .line 1345
    iput-object v14, v2, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$generateRecommendedReadingList$1;->L$7:Ljava/util/Iterator;

    .line 1346
    .line 1347
    iput-object v14, v2, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$generateRecommendedReadingList$1;->L$9:Ljava/lang/Object;

    .line 1348
    .line 1349
    iput-object v14, v2, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$generateRecommendedReadingList$1;->L$10:Ljava/util/List;

    .line 1350
    .line 1351
    iput-object v14, v2, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$generateRecommendedReadingList$1;->L$11:Ljava/util/List;

    .line 1352
    .line 1353
    iput-object v14, v2, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$generateRecommendedReadingList$1;->L$12:Ljava/util/Iterator;

    .line 1354
    .line 1355
    iput-object v14, v2, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$generateRecommendedReadingList$1;->L$15:Lorg/wikipedia/readinglist/database/RecommendedPage;

    .line 1356
    .line 1357
    iput-boolean v0, v2, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$generateRecommendedReadingList$1;->Z$0:Z

    .line 1358
    .line 1359
    iput v4, v2, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$generateRecommendedReadingList$1;->I$0:I

    .line 1360
    .line 1361
    iput v12, v2, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$generateRecommendedReadingList$1;->I$1:I

    .line 1362
    .line 1363
    const/16 v1, 0x8

    .line 1364
    .line 1365
    iput v1, v2, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$generateRecommendedReadingList$1;->label:I

    .line 1366
    .line 1367
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1368
    .line 1369
    .line 1370
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1371
    .line 1372
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1373
    .line 1374
    .line 1375
    const-string v5, "SELECT * FROM RecommendedPage WHERE status = 1 AND apiTitle NOT IN ("

    .line 1376
    .line 1377
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1378
    .line 1379
    .line 1380
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 1381
    .line 1382
    .line 1383
    move-result v11

    .line 1384
    invoke-static {v11, v1}, Landroidx/room/Room;->appendPlaceholders(ILjava/lang/StringBuilder;)V

    .line 1385
    .line 1386
    .line 1387
    const-string v5, ") ORDER BY RANDOM() LIMIT "

    .line 1388
    .line 1389
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1390
    .line 1391
    .line 1392
    const-string v5, "?"

    .line 1393
    .line 1394
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1395
    .line 1396
    .line 1397
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1398
    .line 1399
    .line 1400
    move-result-object v9

    .line 1401
    iget-object v1, v13, Lorg/wikipedia/readinglist/db/RecommendedPageDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 1402
    .line 1403
    new-instance v8, Lorg/wikipedia/readinglist/db/RecommendedPageDao_Impl$$ExternalSyntheticLambda5;

    .line 1404
    .line 1405
    invoke-direct/range {v8 .. v13}, Lorg/wikipedia/readinglist/db/RecommendedPageDao_Impl$$ExternalSyntheticLambda5;-><init>(Ljava/lang/String;Ljava/util/ArrayList;IILorg/wikipedia/readinglist/db/RecommendedPageDao_Impl;)V

    .line 1406
    .line 1407
    .line 1408
    const/4 v6, 0x1

    .line 1409
    const/4 v10, 0x0

    .line 1410
    invoke-static {v1, v6, v10, v8, v2}, Lkotlin/ExceptionsKt;->performSuspending(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 1411
    .line 1412
    .line 1413
    move-result-object v1

    .line 1414
    if-ne v1, v7, :cond_21

    .line 1415
    .line 1416
    goto :goto_20

    .line 1417
    :cond_21
    move v5, v0

    .line 1418
    move v0, v12

    .line 1419
    :goto_1d
    check-cast v1, Ljava/util/List;

    .line 1420
    .line 1421
    new-instance v6, Ljava/util/ArrayList;

    .line 1422
    .line 1423
    const/16 v8, 0xa

    .line 1424
    .line 1425
    invoke-static {v1, v8}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 1426
    .line 1427
    .line 1428
    move-result v8

    .line 1429
    invoke-direct {v6, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 1430
    .line 1431
    .line 1432
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 1433
    .line 1434
    .line 1435
    move-result-object v1

    .line 1436
    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 1437
    .line 1438
    .line 1439
    move-result v8

    .line 1440
    if-eqz v8, :cond_22

    .line 1441
    .line 1442
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1443
    .line 1444
    .line 1445
    move-result-object v8

    .line 1446
    check-cast v8, Lorg/wikipedia/readinglist/database/RecommendedPage;

    .line 1447
    .line 1448
    const/4 v10, 0x0

    .line 1449
    iput v10, v8, Lorg/wikipedia/readinglist/database/RecommendedPage;->status:I

    .line 1450
    .line 1451
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1452
    .line 1453
    .line 1454
    goto :goto_1e

    .line 1455
    :cond_22
    sget-object v1, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    .line 1456
    .line 1457
    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    .line 1458
    .line 1459
    .line 1460
    move-result-object v1

    .line 1461
    invoke-virtual {v1}, Lorg/wikipedia/database/AppDatabase;->recommendedPageDao()Lorg/wikipedia/readinglist/db/RecommendedPageDao_Impl;

    .line 1462
    .line 1463
    .line 1464
    move-result-object v1

    .line 1465
    const/4 v14, 0x0

    .line 1466
    iput-object v14, v2, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$generateRecommendedReadingList$1;->L$0:Ljava/util/List;

    .line 1467
    .line 1468
    iput-object v14, v2, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$generateRecommendedReadingList$1;->L$2:Ljava/util/List;

    .line 1469
    .line 1470
    iput-object v14, v2, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$generateRecommendedReadingList$1;->L$3:Ljava/util/List;

    .line 1471
    .line 1472
    iput-object v14, v2, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$generateRecommendedReadingList$1;->L$4:Lkotlin/jvm/internal/Ref$IntRef;

    .line 1473
    .line 1474
    iput-object v14, v2, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$generateRecommendedReadingList$1;->L$5:Ljava/util/List;

    .line 1475
    .line 1476
    iput-object v3, v2, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$generateRecommendedReadingList$1;->L$6:Ljava/util/List;

    .line 1477
    .line 1478
    iput-object v14, v2, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$generateRecommendedReadingList$1;->L$7:Ljava/util/Iterator;

    .line 1479
    .line 1480
    iput-object v6, v2, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$generateRecommendedReadingList$1;->L$9:Ljava/lang/Object;

    .line 1481
    .line 1482
    iput-boolean v5, v2, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$generateRecommendedReadingList$1;->Z$0:Z

    .line 1483
    .line 1484
    iput v4, v2, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$generateRecommendedReadingList$1;->I$0:I

    .line 1485
    .line 1486
    iput v0, v2, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$generateRecommendedReadingList$1;->I$1:I

    .line 1487
    .line 1488
    const/4 v10, 0x0

    .line 1489
    iput v10, v2, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$generateRecommendedReadingList$1;->I$2:I

    .line 1490
    .line 1491
    const/16 v0, 0x9

    .line 1492
    .line 1493
    iput v0, v2, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$generateRecommendedReadingList$1;->label:I

    .line 1494
    .line 1495
    iget-object v0, v1, Lorg/wikipedia/readinglist/db/RecommendedPageDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 1496
    .line 1497
    new-instance v4, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda8;

    .line 1498
    .line 1499
    const/16 v5, 0x1c

    .line 1500
    .line 1501
    invoke-direct {v4, v5, v1, v6}, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda8;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1502
    .line 1503
    .line 1504
    const/4 v1, 0x1

    .line 1505
    invoke-static {v0, v10, v1, v4, v2}, Lkotlin/ExceptionsKt;->performSuspending(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 1506
    .line 1507
    .line 1508
    move-result-object v0

    .line 1509
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1510
    .line 1511
    if-ne v0, v1, :cond_23

    .line 1512
    .line 1513
    move-object v8, v0

    .line 1514
    goto :goto_1f

    .line 1515
    :cond_23
    move-object/from16 v8, v17

    .line 1516
    .line 1517
    :goto_1f
    if-ne v8, v7, :cond_24

    .line 1518
    .line 1519
    :goto_20
    return-object v7

    .line 1520
    :cond_24
    move-object v2, v3

    .line 1521
    move-object v0, v6

    .line 1522
    :goto_21
    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1523
    .line 1524
    .line 1525
    move-object v3, v2

    .line 1526
    :cond_25
    sget-object v0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 1527
    .line 1528
    const v0, 0x7f12066a

    .line 1529
    .line 1530
    .line 1531
    const/4 v1, 0x1

    .line 1532
    invoke-static {v0, v1}, Lorg/wikipedia/settings/PrefsIoUtil;->setBoolean(IZ)V

    .line 1533
    .line 1534
    .line 1535
    new-instance v0, Lorg/wikipedia/events/NewRecommendedReadingListEvent;

    .line 1536
    .line 1537
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 1538
    .line 1539
    .line 1540
    invoke-static {v0}, Lorg/wikipedia/concurrency/FlowEventBus;->post(Ljava/lang/Object;)V

    .line 1541
    .line 1542
    .line 1543
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/lang/Iterable;)Ljava/util/List;

    .line 1544
    .line 1545
    .line 1546
    move-result-object v0

    .line 1547
    invoke-static {v0}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 1548
    .line 1549
    .line 1550
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getRecommendedReadingListArticlesNumber()I

    .line 1551
    .line 1552
    .line 1553
    move-result v1

    .line 1554
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    .line 1555
    .line 1556
    .line 1557
    move-result-object v0

    .line 1558
    return-object v0

    .line 1559
    :pswitch_data_0
    .packed-switch 0x0
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

.method public getRecommendedPage(Lorg/wikipedia/readinglist/recommended/SourceWithOffset;IILkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p4

    .line 6
    .line 7
    instance-of v3, v2, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$getRecommendedPage$1;

    .line 8
    .line 9
    if-eqz v3, :cond_0

    .line 10
    .line 11
    move-object v3, v2

    .line 12
    check-cast v3, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$getRecommendedPage$1;

    .line 13
    .line 14
    iget v4, v3, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$getRecommendedPage$1;->label:I

    .line 15
    .line 16
    const/high16 v5, -0x80000000

    .line 17
    .line 18
    and-int v6, v4, v5

    .line 19
    .line 20
    if-eqz v6, :cond_0

    .line 21
    .line 22
    sub-int/2addr v4, v5

    .line 23
    iput v4, v3, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$getRecommendedPage$1;->label:I

    .line 24
    .line 25
    :goto_0
    move-object v11, v3

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    new-instance v3, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$getRecommendedPage$1;

    .line 28
    .line 29
    move-object/from16 v4, p0

    .line 30
    .line 31
    invoke-direct {v3, v4, v2}, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$getRecommendedPage$1;-><init>(Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :goto_1
    iget-object v2, v11, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$getRecommendedPage$1;->result:Ljava/lang/Object;

    .line 36
    .line 37
    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 38
    .line 39
    iget v4, v11, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$getRecommendedPage$1;->label:I

    .line 40
    .line 41
    const/4 v13, 0x2

    .line 42
    const/4 v14, 0x1

    .line 43
    const/4 v15, 0x0

    .line 44
    const/4 v5, 0x0

    .line 45
    if-eqz v4, :cond_3

    .line 46
    .line 47
    if-eq v4, v14, :cond_2

    .line 48
    .line 49
    if-ne v4, v13, :cond_1

    .line 50
    .line 51
    iget v0, v11, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$getRecommendedPage$1;->I$3:I

    .line 52
    .line 53
    iget v1, v11, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$getRecommendedPage$1;->I$2:I

    .line 54
    .line 55
    iget v4, v11, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$getRecommendedPage$1;->I$1:I

    .line 56
    .line 57
    iget v5, v11, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$getRecommendedPage$1;->I$0:I

    .line 58
    .line 59
    iget-object v6, v11, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$getRecommendedPage$1;->L$7:Ljava/lang/Object;

    .line 60
    .line 61
    iget-object v7, v11, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$getRecommendedPage$1;->L$6:Ljava/util/Iterator;

    .line 62
    .line 63
    iget-object v8, v11, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$getRecommendedPage$1;->L$5:Ljava/util/Collection;

    .line 64
    .line 65
    check-cast v8, Ljava/util/Collection;

    .line 66
    .line 67
    iget-object v9, v11, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$getRecommendedPage$1;->L$1:Lorg/wikipedia/dataclient/WikiSite;

    .line 68
    .line 69
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    goto/16 :goto_7

    .line 73
    .line 74
    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 75
    .line 76
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    return-object v5

    .line 80
    :cond_2
    iget v0, v11, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$getRecommendedPage$1;->I$1:I

    .line 81
    .line 82
    iget v1, v11, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$getRecommendedPage$1;->I$0:I

    .line 83
    .line 84
    iget-object v4, v11, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$getRecommendedPage$1;->L$1:Lorg/wikipedia/dataclient/WikiSite;

    .line 85
    .line 86
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    move-object/from16 v16, v2

    .line 90
    .line 91
    move v2, v0

    .line 92
    move-object v0, v5

    .line 93
    move-object v5, v4

    .line 94
    move-object/from16 v4, v16

    .line 95
    .line 96
    goto :goto_2

    .line 97
    :cond_3
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    sget-object v2, Lorg/wikipedia/dataclient/WikiSite;->Companion:Lorg/wikipedia/dataclient/WikiSite$Companion;

    .line 101
    .line 102
    iget-object v4, v0, Lorg/wikipedia/readinglist/recommended/SourceWithOffset;->language:Ljava/lang/String;

    .line 103
    .line 104
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 105
    .line 106
    .line 107
    invoke-static {v4}, Lorg/wikipedia/dataclient/WikiSite$Companion;->forLanguageCode(Ljava/lang/String;)Lorg/wikipedia/dataclient/WikiSite;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    sget-object v4, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 112
    .line 113
    invoke-static {v2}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    .line 114
    .line 115
    .line 116
    move-result-object v4

    .line 117
    iget-object v0, v0, Lorg/wikipedia/readinglist/recommended/SourceWithOffset;->title:Ljava/lang/String;

    .line 118
    .line 119
    const-string v6, "morelike:"

    .line 120
    .line 121
    invoke-static {v6, v0}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    new-instance v8, Ljava/lang/Integer;

    .line 126
    .line 127
    invoke-direct {v8, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 128
    .line 129
    .line 130
    iput-object v2, v11, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$getRecommendedPage$1;->L$1:Lorg/wikipedia/dataclient/WikiSite;

    .line 131
    .line 132
    iput v1, v11, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$getRecommendedPage$1;->I$0:I

    .line 133
    .line 134
    move/from16 v6, p3

    .line 135
    .line 136
    iput v6, v11, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$getRecommendedPage$1;->I$1:I

    .line 137
    .line 138
    iput v14, v11, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$getRecommendedPage$1;->label:I

    .line 139
    .line 140
    const/16 v6, 0x32

    .line 141
    .line 142
    const/16 v7, 0x32

    .line 143
    .line 144
    const/4 v9, 0x0

    .line 145
    const/4 v10, 0x0

    .line 146
    const/16 v12, 0x30

    .line 147
    .line 148
    move-object/from16 v16, v5

    .line 149
    .line 150
    move-object v5, v0

    .line 151
    move-object/from16 v0, v16

    .line 152
    .line 153
    invoke-static/range {v4 .. v12}, Lorg/wikipedia/dataclient/Service$-CC;->searchMoreLike$default(Lorg/wikipedia/dataclient/Service;Ljava/lang/String;IILjava/lang/Integer;IILkotlin/coroutines/jvm/internal/ContinuationImpl;I)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v4

    .line 157
    if-ne v4, v3, :cond_4

    .line 158
    .line 159
    goto/16 :goto_6

    .line 160
    .line 161
    :cond_4
    move-object v5, v2

    .line 162
    move/from16 v2, p3

    .line 163
    .line 164
    :goto_2
    check-cast v4, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    .line 165
    .line 166
    iget-object v4, v4, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query:Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    .line 167
    .line 168
    if-eqz v4, :cond_5

    .line 169
    .line 170
    iget-object v4, v4, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->pages:Ljava/util/List;

    .line 171
    .line 172
    goto :goto_3

    .line 173
    :cond_5
    move-object v4, v0

    .line 174
    :goto_3
    if-nez v4, :cond_6

    .line 175
    .line 176
    sget-object v4, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 177
    .line 178
    :cond_6
    new-instance v6, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$getRecommendedPage$$inlined$sortedBy$1;

    .line 179
    .line 180
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 181
    .line 182
    .line 183
    invoke-static {v4, v6}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 184
    .line 185
    .line 186
    move-result-object v4

    .line 187
    new-instance v6, Ljava/util/ArrayList;

    .line 188
    .line 189
    const/16 v7, 0xa

    .line 190
    .line 191
    invoke-static {v4, v7}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 192
    .line 193
    .line 194
    move-result v7

    .line 195
    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 196
    .line 197
    .line 198
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 199
    .line 200
    .line 201
    move-result-object v4

    .line 202
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 203
    .line 204
    .line 205
    move-result v7

    .line 206
    if-eqz v7, :cond_7

    .line 207
    .line 208
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object v7

    .line 212
    check-cast v7, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    .line 213
    .line 214
    new-instance v8, Lorg/wikipedia/page/PageTitle;

    .line 215
    .line 216
    iget-object v9, v7, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->title:Ljava/lang/String;

    .line 217
    .line 218
    invoke-direct {v8, v9, v5, v0}, Lorg/wikipedia/page/PageTitle;-><init>(Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    iget-object v9, v5, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 222
    .line 223
    invoke-virtual {v7, v9}, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->displayTitle(Ljava/lang/String;)Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v9

    .line 227
    invoke-virtual {v8, v9}, Lorg/wikipedia/page/PageTitle;->setDisplayText(Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    iget-object v9, v7, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->description:Ljava/lang/String;

    .line 231
    .line 232
    iput-object v9, v8, Lorg/wikipedia/page/PageTitle;->description:Ljava/lang/String;

    .line 233
    .line 234
    invoke-virtual {v7}, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->thumbUrl()Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v9

    .line 238
    iput-object v9, v8, Lorg/wikipedia/page/PageTitle;->thumbUrl:Ljava/lang/String;

    .line 239
    .line 240
    iget-object v7, v7, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->extract:Ljava/lang/String;

    .line 241
    .line 242
    iput-object v7, v8, Lorg/wikipedia/page/PageTitle;->extract:Ljava/lang/String;

    .line 243
    .line 244
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 245
    .line 246
    .line 247
    goto :goto_4

    .line 248
    :cond_7
    new-instance v0, Ljava/util/ArrayList;

    .line 249
    .line 250
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 251
    .line 252
    .line 253
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 254
    .line 255
    .line 256
    move-result-object v4

    .line 257
    move-object v8, v0

    .line 258
    move-object v7, v4

    .line 259
    move-object v9, v5

    .line 260
    move v0, v15

    .line 261
    move v5, v1

    .line 262
    move v4, v2

    .line 263
    move v1, v0

    .line 264
    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 265
    .line 266
    .line 267
    move-result v2

    .line 268
    if-eqz v2, :cond_a

    .line 269
    .line 270
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 271
    .line 272
    .line 273
    move-result-object v6

    .line 274
    move-object v2, v6

    .line 275
    check-cast v2, Lorg/wikipedia/page/PageTitle;

    .line 276
    .line 277
    sget-object v10, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    .line 278
    .line 279
    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    .line 280
    .line 281
    .line 282
    move-result-object v10

    .line 283
    invoke-virtual {v10}, Lorg/wikipedia/database/AppDatabase;->recommendedPageDao()Lorg/wikipedia/readinglist/db/RecommendedPageDao_Impl;

    .line 284
    .line 285
    .line 286
    move-result-object v10

    .line 287
    invoke-virtual {v2}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v2

    .line 291
    iput-object v9, v11, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$getRecommendedPage$1;->L$1:Lorg/wikipedia/dataclient/WikiSite;

    .line 292
    .line 293
    move-object v12, v8

    .line 294
    check-cast v12, Ljava/util/Collection;

    .line 295
    .line 296
    iput-object v12, v11, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$getRecommendedPage$1;->L$5:Ljava/util/Collection;

    .line 297
    .line 298
    iput-object v7, v11, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$getRecommendedPage$1;->L$6:Ljava/util/Iterator;

    .line 299
    .line 300
    iput-object v6, v11, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$getRecommendedPage$1;->L$7:Ljava/lang/Object;

    .line 301
    .line 302
    iput v5, v11, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$getRecommendedPage$1;->I$0:I

    .line 303
    .line 304
    iput v4, v11, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$getRecommendedPage$1;->I$1:I

    .line 305
    .line 306
    iput v1, v11, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$getRecommendedPage$1;->I$2:I

    .line 307
    .line 308
    iput v0, v11, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$getRecommendedPage$1;->I$3:I

    .line 309
    .line 310
    iput v13, v11, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$getRecommendedPage$1;->label:I

    .line 311
    .line 312
    iget-object v12, v10, Lorg/wikipedia/readinglist/db/RecommendedPageDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 313
    .line 314
    new-instance v13, Lorg/wikipedia/util/SingleLiveData$$ExternalSyntheticLambda0;

    .line 315
    .line 316
    invoke-direct {v13, v2, v10, v9, v14}, Lorg/wikipedia/util/SingleLiveData$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 317
    .line 318
    .line 319
    invoke-static {v12, v14, v15, v13, v11}, Lkotlin/ExceptionsKt;->performSuspending(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 320
    .line 321
    .line 322
    move-result-object v2

    .line 323
    if-ne v2, v3, :cond_8

    .line 324
    .line 325
    :goto_6
    return-object v3

    .line 326
    :cond_8
    :goto_7
    check-cast v2, Ljava/lang/Number;

    .line 327
    .line 328
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 329
    .line 330
    .line 331
    move-result v2

    .line 332
    if-nez v2, :cond_9

    .line 333
    .line 334
    invoke-interface {v8, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 335
    .line 336
    .line 337
    :cond_9
    const/4 v13, 0x2

    .line 338
    goto :goto_5

    .line 339
    :cond_a
    check-cast v8, Ljava/util/List;

    .line 340
    .line 341
    invoke-static {v8, v4}, Lkotlin/collections/CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    .line 342
    .line 343
    .line 344
    move-result-object v0

    .line 345
    return-object v0
.end method

.method public readyToGenerateList(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 6

    .line 1
    instance-of v0, p1, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$readyToGenerateList$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$readyToGenerateList$1;

    .line 7
    .line 8
    iget v1, v0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$readyToGenerateList$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$readyToGenerateList$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$readyToGenerateList$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$readyToGenerateList$1;-><init>(Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p0, v0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$readyToGenerateList$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    .line 29
    iget v1, v0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$readyToGenerateList$1;->label:I

    .line 30
    .line 31
    const/4 v2, 0x0

    .line 32
    const/4 v3, 0x2

    .line 33
    const/4 v4, 0x1

    .line 34
    if-eqz v1, :cond_3

    .line 35
    .line 36
    if-eq v1, v4, :cond_2

    .line 37
    .line 38
    if-ne v1, v3, :cond_1

    .line 39
    .line 40
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 45
    .line 46
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    return-object v2

    .line 50
    :cond_2
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    goto :goto_3

    .line 54
    :cond_3
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    sget-object p0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 58
    .line 59
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->isRecommendedReadingListEnabled()Z

    .line 60
    .line 61
    .line 62
    move-result p0

    .line 63
    if-eqz p0, :cond_b

    .line 64
    .line 65
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getRecommendedReadingListArticlesNumber()I

    .line 66
    .line 67
    .line 68
    move-result p0

    .line 69
    if-gtz p0, :cond_4

    .line 70
    .line 71
    goto/16 :goto_4

    .line 72
    .line 73
    :cond_4
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getRecommendedReadingListSource()Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSource;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    sget-object v1, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 78
    .line 79
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 80
    .line 81
    .line 82
    move-result p0

    .line 83
    aget p0, v1, p0

    .line 84
    .line 85
    if-eq p0, v4, :cond_9

    .line 86
    .line 87
    const/4 v1, 0x0

    .line 88
    if-eq p0, v3, :cond_7

    .line 89
    .line 90
    const/4 v5, 0x3

    .line 91
    if-ne p0, v5, :cond_6

    .line 92
    .line 93
    sget-object p0, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    .line 94
    .line 95
    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    invoke-virtual {p0}, Lorg/wikipedia/database/AppDatabase;->historyEntryDao()Lorg/wikipedia/history/db/HistoryEntryDao_Impl;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    iput v3, v0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$readyToGenerateList$1;->label:I

    .line 104
    .line 105
    iget-object v2, p0, Lorg/wikipedia/history/db/HistoryEntryDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 106
    .line 107
    new-instance v3, Lcoil3/request/ImageRequests_androidKt$$ExternalSyntheticLambda0;

    .line 108
    .line 109
    const/4 v5, 0x6

    .line 110
    invoke-direct {v3, v4, v5, p0}, Lcoil3/request/ImageRequests_androidKt$$ExternalSyntheticLambda0;-><init>(IILjava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    invoke-static {v2, v4, v1, v3, v0}, Lkotlin/ExceptionsKt;->performSuspending(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    if-ne p0, p1, :cond_5

    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_5
    :goto_1
    check-cast p0, Ljava/util/List;

    .line 121
    .line 122
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 123
    .line 124
    .line 125
    move-result p0

    .line 126
    if-eqz p0, :cond_a

    .line 127
    .line 128
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 129
    .line 130
    return-object p0

    .line 131
    :cond_6
    invoke-static {}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m()V

    .line 132
    .line 133
    .line 134
    return-object v2

    .line 135
    :cond_7
    sget-object p0, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    .line 136
    .line 137
    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    .line 138
    .line 139
    .line 140
    move-result-object p0

    .line 141
    invoke-virtual {p0}, Lorg/wikipedia/database/AppDatabase;->readingListPageDao()Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;

    .line 142
    .line 143
    .line 144
    move-result-object p0

    .line 145
    iput v4, v0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$readyToGenerateList$1;->label:I

    .line 146
    .line 147
    iget-object v2, p0, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 148
    .line 149
    new-instance v3, Lcoil3/request/ImageRequests_androidKt$$ExternalSyntheticLambda0;

    .line 150
    .line 151
    const/4 v5, 0x7

    .line 152
    invoke-direct {v3, v4, v5, p0}, Lcoil3/request/ImageRequests_androidKt$$ExternalSyntheticLambda0;-><init>(IILjava/lang/Object;)V

    .line 153
    .line 154
    .line 155
    invoke-static {v2, v4, v1, v3, v0}, Lkotlin/ExceptionsKt;->performSuspending(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object p0

    .line 159
    if-ne p0, p1, :cond_8

    .line 160
    .line 161
    :goto_2
    return-object p1

    .line 162
    :cond_8
    :goto_3
    check-cast p0, Ljava/util/List;

    .line 163
    .line 164
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 165
    .line 166
    .line 167
    move-result p0

    .line 168
    if-eqz p0, :cond_a

    .line 169
    .line 170
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 171
    .line 172
    return-object p0

    .line 173
    :cond_9
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getRecommendedReadingListInterests()Ljava/util/List;

    .line 174
    .line 175
    .line 176
    move-result-object p0

    .line 177
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 178
    .line 179
    .line 180
    move-result p0

    .line 181
    if-eqz p0, :cond_a

    .line 182
    .line 183
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 184
    .line 185
    return-object p0

    .line 186
    :cond_a
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 187
    .line 188
    return-object p0

    .line 189
    :cond_b
    :goto_4
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 190
    .line 191
    return-object p0
.end method
