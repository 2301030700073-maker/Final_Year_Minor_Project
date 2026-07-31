.class public final Lorg/wikipedia/settings/RemoteConfigRefreshTask;
.super Lorg/wikipedia/recurring/RecurringTask;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/wikipedia/settings/RemoteConfigRefreshTask;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final getName()Ljava/lang/String;
    .locals 0

    .line 1
    iget p0, p0, Lorg/wikipedia/settings/RemoteConfigRefreshTask;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const-string p0, "generateRecommendedReadingListTask"

    .line 7
    .line 8
    return-object p0

    .line 9
    :pswitch_0
    const-string p0, "categoriesTableCleanupTask"

    .line 10
    .line 11
    return-object p0

    .line 12
    :pswitch_1
    const-string p0, "remote-config-refresher"

    .line 13
    .line 14
    return-object p0

    .line 15
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final run(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10

    .line 1
    iget v0, p0, Lorg/wikipedia/settings/RemoteConfigRefreshTask;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x2

    .line 5
    const-string v3, "call to \'resume\' before \'invoke\' with coroutine"

    .line 6
    .line 7
    const/high16 v4, -0x80000000

    .line 8
    .line 9
    const/4 v5, 0x0

    .line 10
    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 11
    .line 12
    const/4 v7, 0x1

    .line 13
    packed-switch v0, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    sget-object p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper;->INSTANCE:Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper;

    .line 17
    .line 18
    check-cast p1, Lkotlin/coroutines/jvm/internal/ContinuationImpl;

    .line 19
    .line 20
    invoke-virtual {p0, v7, p1}, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper;->generateRecommendedReadingList(ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 25
    .line 26
    if-ne p0, p1, :cond_0

    .line 27
    .line 28
    move-object v6, p0

    .line 29
    :cond_0
    return-object v6

    .line 30
    :pswitch_0
    instance-of v0, p1, Lorg/wikipedia/recurring/CategoriesTableCleanupTask$run$1;

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    move-object v0, p1

    .line 35
    check-cast v0, Lorg/wikipedia/recurring/CategoriesTableCleanupTask$run$1;

    .line 36
    .line 37
    iget v8, v0, Lorg/wikipedia/recurring/CategoriesTableCleanupTask$run$1;->label:I

    .line 38
    .line 39
    and-int v9, v8, v4

    .line 40
    .line 41
    if-eqz v9, :cond_1

    .line 42
    .line 43
    sub-int/2addr v8, v4

    .line 44
    iput v8, v0, Lorg/wikipedia/recurring/CategoriesTableCleanupTask$run$1;->label:I

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    new-instance v0, Lorg/wikipedia/recurring/CategoriesTableCleanupTask$run$1;

    .line 48
    .line 49
    check-cast p1, Lkotlin/coroutines/jvm/internal/ContinuationImpl;

    .line 50
    .line 51
    invoke-direct {v0, p0, p1}, Lorg/wikipedia/recurring/CategoriesTableCleanupTask$run$1;-><init>(Lorg/wikipedia/settings/RemoteConfigRefreshTask;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 52
    .line 53
    .line 54
    :goto_0
    iget-object p0, v0, Lorg/wikipedia/recurring/CategoriesTableCleanupTask$run$1;->result:Ljava/lang/Object;

    .line 55
    .line 56
    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 57
    .line 58
    iget v4, v0, Lorg/wikipedia/recurring/CategoriesTableCleanupTask$run$1;->label:I

    .line 59
    .line 60
    if-eqz v4, :cond_3

    .line 61
    .line 62
    if-ne v4, v7, :cond_2

    .line 63
    .line 64
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_2
    invoke-static {v3}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_3
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    invoke-static {}, Lj$/time/LocalDateTime;->now()Lj$/time/LocalDateTime;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    invoke-virtual {p0}, Lj$/time/LocalDateTime;->getYear()I

    .line 80
    .line 81
    .line 82
    move-result p0

    .line 83
    sub-int/2addr p0, v2

    .line 84
    sget-object v2, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    .line 85
    .line 86
    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    invoke-virtual {v2}, Lorg/wikipedia/database/AppDatabase;->categoryDao()Lorg/wikipedia/categories/db/CategoryDao_Impl;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    iput v7, v0, Lorg/wikipedia/recurring/CategoriesTableCleanupTask$run$1;->label:I

    .line 95
    .line 96
    iget-object v2, v2, Lorg/wikipedia/categories/db/CategoryDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 97
    .line 98
    new-instance v3, Lcoil3/request/ImageRequests_androidKt$$ExternalSyntheticLambda0;

    .line 99
    .line 100
    const/4 v4, 0x5

    .line 101
    invoke-direct {v3, p0, v4}, Lcoil3/request/ImageRequests_androidKt$$ExternalSyntheticLambda0;-><init>(II)V

    .line 102
    .line 103
    .line 104
    invoke-static {v2, v1, v7, v3, v0}, Lkotlin/ExceptionsKt;->performSuspending(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    if-ne p0, p1, :cond_4

    .line 109
    .line 110
    move-object v5, p1

    .line 111
    goto :goto_2

    .line 112
    :cond_4
    :goto_1
    const-string p0, "Successfully deleted Category data older than 2 years"

    .line 113
    .line 114
    invoke-static {p0}, Lorg/wikipedia/util/log/L;->d(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    move-object v5, v6

    .line 118
    :goto_2
    return-object v5

    .line 119
    :pswitch_1
    instance-of v0, p1, Lorg/wikipedia/settings/RemoteConfigRefreshTask$run$1;

    .line 120
    .line 121
    if-eqz v0, :cond_5

    .line 122
    .line 123
    move-object v0, p1

    .line 124
    check-cast v0, Lorg/wikipedia/settings/RemoteConfigRefreshTask$run$1;

    .line 125
    .line 126
    iget v8, v0, Lorg/wikipedia/settings/RemoteConfigRefreshTask$run$1;->label:I

    .line 127
    .line 128
    and-int v9, v8, v4

    .line 129
    .line 130
    if-eqz v9, :cond_5

    .line 131
    .line 132
    sub-int/2addr v8, v4

    .line 133
    iput v8, v0, Lorg/wikipedia/settings/RemoteConfigRefreshTask$run$1;->label:I

    .line 134
    .line 135
    goto :goto_3

    .line 136
    :cond_5
    new-instance v0, Lorg/wikipedia/settings/RemoteConfigRefreshTask$run$1;

    .line 137
    .line 138
    check-cast p1, Lkotlin/coroutines/jvm/internal/ContinuationImpl;

    .line 139
    .line 140
    invoke-direct {v0, p0, p1}, Lorg/wikipedia/settings/RemoteConfigRefreshTask$run$1;-><init>(Lorg/wikipedia/settings/RemoteConfigRefreshTask;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 141
    .line 142
    .line 143
    :goto_3
    iget-object p0, v0, Lorg/wikipedia/settings/RemoteConfigRefreshTask$run$1;->result:Ljava/lang/Object;

    .line 144
    .line 145
    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 146
    .line 147
    iget v4, v0, Lorg/wikipedia/settings/RemoteConfigRefreshTask$run$1;->label:I

    .line 148
    .line 149
    const-string v8, ""

    .line 150
    .line 151
    if-eqz v4, :cond_8

    .line 152
    .line 153
    if-eq v4, v7, :cond_7

    .line 154
    .line 155
    if-ne v4, v2, :cond_6

    .line 156
    .line 157
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 158
    .line 159
    .line 160
    goto/16 :goto_7

    .line 161
    .line 162
    :cond_6
    invoke-static {v3}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    goto/16 :goto_8

    .line 166
    .line 167
    :cond_7
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 168
    .line 169
    .line 170
    goto :goto_4

    .line 171
    :cond_8
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 172
    .line 173
    .line 174
    sget-object p0, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 175
    .line 176
    sget-object p0, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 177
    .line 178
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 179
    .line 180
    .line 181
    move-result-object p0

    .line 182
    invoke-virtual {p0}, Lorg/wikipedia/WikipediaApp;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    .line 183
    .line 184
    .line 185
    move-result-object p0

    .line 186
    invoke-static {p0}, Lorg/wikipedia/dataclient/ServiceFactory;->getRest(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/RestService;

    .line 187
    .line 188
    .line 189
    move-result-object p0

    .line 190
    iput v7, v0, Lorg/wikipedia/settings/RemoteConfigRefreshTask$run$1;->label:I

    .line 191
    .line 192
    invoke-interface {p0, v0}, Lorg/wikipedia/dataclient/RestService;->getConfiguration(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object p0

    .line 196
    if-ne p0, p1, :cond_9

    .line 197
    .line 198
    goto :goto_6

    .line 199
    :cond_9
    :goto_4
    check-cast p0, Lorg/wikipedia/settings/RemoteConfig$RemoteConfigImpl;

    .line 200
    .line 201
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 202
    .line 203
    .line 204
    sget-object v3, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 205
    .line 206
    :try_start_0
    sget-object v3, Lorg/wikipedia/json/JsonUtil;->json:Lkotlinx/serialization/json/JsonImpl;

    .line 207
    .line 208
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 209
    .line 210
    .line 211
    sget-object v4, Lorg/wikipedia/settings/RemoteConfig$RemoteConfigImpl;->Companion:Lorg/wikipedia/settings/RemoteConfig$RemoteConfigImpl$Companion;

    .line 212
    .line 213
    invoke-virtual {v4}, Lorg/wikipedia/settings/RemoteConfig$RemoteConfigImpl$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    .line 214
    .line 215
    .line 216
    move-result-object v4

    .line 217
    check-cast v4, Lkotlinx/serialization/KSerializer;

    .line 218
    .line 219
    invoke-virtual {v3, v4, p0}, Lkotlinx/serialization/json/Json;->encodeToString(Lkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    goto :goto_5

    .line 224
    :catch_0
    move-exception p0

    .line 225
    invoke-static {p0}, Lorg/wikipedia/util/log/L;->w(Ljava/lang/Throwable;)V

    .line 226
    .line 227
    .line 228
    move-object p0, v5

    .line 229
    :goto_5
    if-nez p0, :cond_a

    .line 230
    .line 231
    move-object p0, v8

    .line 232
    :cond_a
    const v3, 0x7f120672

    .line 233
    .line 234
    .line 235
    invoke-static {v3, p0}, Lorg/wikipedia/settings/PrefsIoUtil;->setString(ILjava/lang/String;)V

    .line 236
    .line 237
    .line 238
    sput-object v5, Lorg/wikipedia/settings/PrefsIoUtil;->curConfig:Lorg/wikipedia/settings/RemoteConfig$RemoteConfigImpl;

    .line 239
    .line 240
    invoke-static {}, Lokhttp3/Headers$Companion;->isLoggedIn()Z

    .line 241
    .line 242
    .line 243
    move-result p0

    .line 244
    if-eqz p0, :cond_f

    .line 245
    .line 246
    sget-object p0, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 247
    .line 248
    sget-object p0, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 249
    .line 250
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 251
    .line 252
    .line 253
    move-result-object p0

    .line 254
    invoke-virtual {p0}, Lorg/wikipedia/WikipediaApp;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    .line 255
    .line 256
    .line 257
    move-result-object p0

    .line 258
    invoke-static {p0}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    .line 259
    .line 260
    .line 261
    move-result-object p0

    .line 262
    iput v2, v0, Lorg/wikipedia/settings/RemoteConfigRefreshTask$run$1;->label:I

    .line 263
    .line 264
    invoke-interface {p0, v0}, Lorg/wikipedia/dataclient/Service;->getUserInfo(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 265
    .line 266
    .line 267
    move-result-object p0

    .line 268
    if-ne p0, p1, :cond_b

    .line 269
    .line 270
    :goto_6
    move-object v5, p1

    .line 271
    goto :goto_8

    .line 272
    :cond_b
    :goto_7
    check-cast p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    .line 273
    .line 274
    sget-object p1, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 275
    .line 276
    iget-object p0, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query:Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    .line 277
    .line 278
    if-eqz p0, :cond_e

    .line 279
    .line 280
    iget-object p0, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->userInfo:Lorg/wikipedia/dataclient/mwapi/UserInfo;

    .line 281
    .line 282
    if-eqz p0, :cond_e

    .line 283
    .line 284
    iget-object p0, p0, Lorg/wikipedia/dataclient/mwapi/UserInfo;->options:Lorg/wikipedia/dataclient/mwapi/UserInfo$Options;

    .line 285
    .line 286
    if-eqz p0, :cond_e

    .line 287
    .line 288
    iget-object p0, p0, Lorg/wikipedia/dataclient/mwapi/UserInfo$Options;->fundraisingOptIn:Lkotlinx/serialization/json/JsonElement;

    .line 289
    .line 290
    if-eqz p0, :cond_c

    .line 291
    .line 292
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object v5

    .line 296
    :cond_c
    if-nez v5, :cond_d

    .line 297
    .line 298
    move-object v5, v8

    .line 299
    :cond_d
    const-string p0, "\""

    .line 300
    .line 301
    invoke-static {v5, p0, v8}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object p0

    .line 305
    const-string p1, "1"

    .line 306
    .line 307
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 308
    .line 309
    .line 310
    move-result p0

    .line 311
    if-ne p0, v7, :cond_e

    .line 312
    .line 313
    move v1, v7

    .line 314
    :cond_e
    const p0, 0x7f1205e5

    .line 315
    .line 316
    .line 317
    invoke-static {p0, v1}, Lorg/wikipedia/settings/PrefsIoUtil;->setBoolean(IZ)V

    .line 318
    .line 319
    .line 320
    :cond_f
    move-object v5, v6

    .line 321
    :goto_8
    return-object v5

    .line 322
    nop

    .line 323
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final shouldRun(Ljava/util/Date;)Z
    .locals 4

    .line 1
    iget p0, p0, Lorg/wikipedia/settings/RemoteConfigRefreshTask;->$r8$classId:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    const/4 v1, 0x0

    .line 5
    packed-switch p0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Lorg/wikipedia/recurring/RecurringTask;->millisSinceLastRun(Ljava/util/Date;)J

    .line 9
    .line 10
    .line 11
    move-result-wide p0

    .line 12
    const-wide/32 v2, 0x5265c00

    .line 13
    .line 14
    .line 15
    cmp-long p0, p0, v2

    .line 16
    .line 17
    if-gez p0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-static {}, Lj$/time/LocalDate;->now()Lj$/time/LocalDate;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    sget-object p1, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 25
    .line 26
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getRecommendedReadingListUpdateFrequency()Lorg/wikipedia/readinglist/recommended/RecommendedReadingListUpdateFrequency;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    sget-object v2, Lorg/wikipedia/recurring/RecommendedReadingListTask$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    aget p1, v2, p1

    .line 37
    .line 38
    if-eq p1, v0, :cond_4

    .line 39
    .line 40
    const/4 v2, 0x2

    .line 41
    if-eq p1, v2, :cond_3

    .line 42
    .line 43
    const/4 v2, 0x3

    .line 44
    if-ne p1, v2, :cond_1

    .line 45
    .line 46
    invoke-virtual {p0}, Lj$/time/LocalDate;->getDayOfMonth()I

    .line 47
    .line 48
    .line 49
    move-result p0

    .line 50
    if-ne p0, v0, :cond_2

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_1
    invoke-static {}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m()V

    .line 54
    .line 55
    .line 56
    :cond_2
    :goto_0
    move v0, v1

    .line 57
    goto :goto_1

    .line 58
    :cond_3
    invoke-virtual {p0}, Lj$/time/LocalDate;->getDayOfWeek()Lj$/time/DayOfWeek;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    invoke-virtual {p0}, Lj$/time/DayOfWeek;->getValue()I

    .line 63
    .line 64
    .line 65
    move-result p0

    .line 66
    if-ne p0, v0, :cond_2

    .line 67
    .line 68
    :cond_4
    :goto_1
    return v0

    .line 69
    :pswitch_0
    invoke-static {p1}, Lorg/wikipedia/recurring/RecurringTask;->millisSinceLastRun(Ljava/util/Date;)J

    .line 70
    .line 71
    .line 72
    move-result-wide p0

    .line 73
    const-wide v2, 0x3a9456800L

    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    cmp-long p0, p0, v2

    .line 79
    .line 80
    if-ltz p0, :cond_5

    .line 81
    .line 82
    goto :goto_2

    .line 83
    :cond_5
    move v0, v1

    .line 84
    :goto_2
    return v0

    .line 85
    :pswitch_1
    invoke-static {p1}, Lorg/wikipedia/recurring/RecurringTask;->millisSinceLastRun(Ljava/util/Date;)J

    .line 86
    .line 87
    .line 88
    move-result-wide p0

    .line 89
    const-wide/32 v2, 0x1499700

    .line 90
    .line 91
    .line 92
    cmp-long p0, p0, v2

    .line 93
    .line 94
    if-ltz p0, :cond_6

    .line 95
    .line 96
    goto :goto_3

    .line 97
    :cond_6
    move v0, v1

    .line 98
    :goto_3
    return v0

    .line 99
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
