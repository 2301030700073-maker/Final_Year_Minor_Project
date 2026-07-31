.class public final Lorg/wikipedia/games/onthisday/OnThisDayGameProvider;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field public static final INSTANCE:Lorg/wikipedia/games/onthisday/OnThisDayGameProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/wikipedia/games/onthisday/OnThisDayGameProvider;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/wikipedia/games/onthisday/OnThisDayGameProvider;->INSTANCE:Lorg/wikipedia/games/onthisday/OnThisDayGameProvider;

    .line 7
    .line 8
    return-void
.end method

.method public static newIntent(Landroid/content/Context;Lorg/wikipedia/Constants$InvokeSource;Lorg/wikipedia/dataclient/WikiSite;Lj$/time/LocalDate;I)Landroid/content/Intent;
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    sget-object v0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 8
    .line 9
    const v0, 0x7f120632

    .line 10
    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-static {v0, v1}, Lorg/wikipedia/settings/PrefsIoUtil;->getString(ILjava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    const-string v0, ""

    .line 20
    .line 21
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-lez v2, :cond_1

    .line 26
    .line 27
    move-object v1, v0

    .line 28
    :cond_1
    if-eqz v1, :cond_3

    .line 29
    .line 30
    sget v0, Lorg/wikipedia/games/onthisday/OnThisDayGameActivity;->$r8$clinit:I

    .line 31
    .line 32
    :try_start_0
    sget-object v0, Lj$/time/format/DateTimeFormatter;->ISO_LOCAL_DATE:Lj$/time/format/DateTimeFormatter;

    .line 33
    .line 34
    invoke-static {v1, v0}, Lj$/time/LocalDate;->parse(Ljava/lang/CharSequence;Lj$/time/format/DateTimeFormatter;)Lj$/time/LocalDate;

    .line 35
    .line 36
    .line 37
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    goto :goto_0

    .line 39
    :catchall_0
    move-exception v0

    .line 40
    new-instance v1, Lkotlin/Result$Failure;

    .line 41
    .line 42
    invoke-direct {v1, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    .line 43
    .line 44
    .line 45
    move-object v0, v1

    .line 46
    :goto_0
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    if-nez v1, :cond_2

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_2
    invoke-static {}, Lj$/time/LocalDate;->now()Lj$/time/LocalDate;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    :goto_1
    check-cast v0, Lj$/time/LocalDate;

    .line 58
    .line 59
    if-eqz v0, :cond_3

    .line 60
    .line 61
    move-object p3, v0

    .line 62
    :cond_3
    new-instance v0, Landroid/content/Intent;

    .line 63
    .line 64
    const-class v1, Lorg/wikipedia/games/onthisday/OnThisDayGameActivity;

    .line 65
    .line 66
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 67
    .line 68
    .line 69
    const-string/jumbo p0, "wikiSite"

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    const-string p2, "invokeSource"

    .line 77
    .line 78
    invoke-virtual {p0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    const-string p1, "gameStatus"

    .line 83
    .line 84
    const/4 p2, 0x1

    .line 85
    if-ne p4, p2, :cond_4

    .line 86
    .line 87
    invoke-virtual {p0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 88
    .line 89
    .line 90
    :cond_4
    if-eqz p3, :cond_5

    .line 91
    .line 92
    invoke-virtual {p3}, Lj$/time/LocalDate;->atStartOfDay()Lj$/time/LocalDateTime;

    .line 93
    .line 94
    .line 95
    move-result-object p3

    .line 96
    sget-object v0, Lj$/time/ZoneOffset;->UTC:Lj$/time/ZoneOffset;

    .line 97
    .line 98
    invoke-interface {p3, v0}, Lj$/time/chrono/ChronoLocalDateTime;->toInstant(Lj$/time/ZoneOffset;)Lj$/time/Instant;

    .line 99
    .line 100
    .line 101
    move-result-object p3

    .line 102
    invoke-virtual {p3}, Lj$/time/Instant;->getEpochSecond()J

    .line 103
    .line 104
    .line 105
    move-result-wide v0

    .line 106
    const-string p3, "date"

    .line 107
    .line 108
    invoke-virtual {p0, p3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 109
    .line 110
    .line 111
    :cond_5
    if-ne p4, p2, :cond_6

    .line 112
    .line 113
    invoke-virtual {p0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 114
    .line 115
    .line 116
    :cond_6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 117
    .line 118
    .line 119
    return-object p0
.end method

.method public static synthetic newIntent$default(Landroid/content/Context;Lorg/wikipedia/Constants$InvokeSource;Lorg/wikipedia/dataclient/WikiSite;Lj$/time/LocalDate;II)Landroid/content/Intent;
    .locals 1

    .line 1
    and-int/lit8 v0, p5, 0x8

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 p3, 0x0

    .line 6
    :cond_0
    and-int/lit8 p5, p5, 0x10

    .line 7
    .line 8
    if-eqz p5, :cond_1

    .line 9
    .line 10
    const/4 p4, -0x1

    .line 11
    :cond_1
    invoke-static {p0, p1, p2, p3, p4}, Lorg/wikipedia/games/onthisday/OnThisDayGameProvider;->newIntent(Landroid/content/Context;Lorg/wikipedia/Constants$InvokeSource;Lorg/wikipedia/dataclient/WikiSite;Lj$/time/LocalDate;I)Landroid/content/Intent;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method


# virtual methods
.method public getGameEvents(Lorg/wikipedia/dataclient/WikiSite;Lj$/time/LocalDate;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 10

    .line 1
    instance-of v0, p3, Lorg/wikipedia/games/onthisday/OnThisDayGameProvider$getGameEvents$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p3

    .line 6
    check-cast v0, Lorg/wikipedia/games/onthisday/OnThisDayGameProvider$getGameEvents$1;

    .line 7
    .line 8
    iget v1, v0, Lorg/wikipedia/games/onthisday/OnThisDayGameProvider$getGameEvents$1;->label:I

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
    iput v1, v0, Lorg/wikipedia/games/onthisday/OnThisDayGameProvider$getGameEvents$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lorg/wikipedia/games/onthisday/OnThisDayGameProvider$getGameEvents$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p3}, Lorg/wikipedia/games/onthisday/OnThisDayGameProvider$getGameEvents$1;-><init>(Lorg/wikipedia/games/onthisday/OnThisDayGameProvider;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p0, v0, Lorg/wikipedia/games/onthisday/OnThisDayGameProvider$getGameEvents$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object p3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    .line 29
    iget v1, v0, Lorg/wikipedia/games/onthisday/OnThisDayGameProvider$getGameEvents$1;->label:I

    .line 30
    .line 31
    const/4 v2, 0x0

    .line 32
    const/4 v3, 0x1

    .line 33
    if-eqz v1, :cond_2

    .line 34
    .line 35
    if-ne v1, v3, :cond_1

    .line 36
    .line 37
    iget p1, v0, Lorg/wikipedia/games/onthisday/OnThisDayGameProvider$getGameEvents$1;->I$1:I

    .line 38
    .line 39
    iget p2, v0, Lorg/wikipedia/games/onthisday/OnThisDayGameProvider$getGameEvents$1;->I$0:I

    .line 40
    .line 41
    iget-object p3, v0, Lorg/wikipedia/games/onthisday/OnThisDayGameProvider$getGameEvents$1;->L$2:Ljava/util/ArrayList;

    .line 42
    .line 43
    iget-object v0, v0, Lorg/wikipedia/games/onthisday/OnThisDayGameProvider$getGameEvents$1;->L$1:Lj$/time/LocalDate;

    .line 44
    .line 45
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    move-object v4, p3

    .line 49
    move p3, p2

    .line 50
    move-object p2, v0

    .line 51
    goto :goto_1

    .line 52
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 53
    .line 54
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    return-object v2

    .line 58
    :cond_2
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p2}, Lj$/time/LocalDate;->getMonthValue()I

    .line 62
    .line 63
    .line 64
    move-result p0

    .line 65
    invoke-virtual {p2}, Lj$/time/LocalDate;->getDayOfMonth()I

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    new-instance v4, Ljava/util/ArrayList;

    .line 70
    .line 71
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 72
    .line 73
    .line 74
    sget-object v5, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 75
    .line 76
    invoke-static {p1}, Lorg/wikipedia/dataclient/ServiceFactory;->getRest(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/RestService;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    iput-object p2, v0, Lorg/wikipedia/games/onthisday/OnThisDayGameProvider$getGameEvents$1;->L$1:Lj$/time/LocalDate;

    .line 81
    .line 82
    iput-object v4, v0, Lorg/wikipedia/games/onthisday/OnThisDayGameProvider$getGameEvents$1;->L$2:Ljava/util/ArrayList;

    .line 83
    .line 84
    iput p0, v0, Lorg/wikipedia/games/onthisday/OnThisDayGameProvider$getGameEvents$1;->I$0:I

    .line 85
    .line 86
    iput v1, v0, Lorg/wikipedia/games/onthisday/OnThisDayGameProvider$getGameEvents$1;->I$1:I

    .line 87
    .line 88
    iput v3, v0, Lorg/wikipedia/games/onthisday/OnThisDayGameProvider$getGameEvents$1;->label:I

    .line 89
    .line 90
    invoke-interface {p1, p0, v1, v0}, Lorg/wikipedia/dataclient/RestService;->getOnThisDay(IILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    if-ne p1, p3, :cond_3

    .line 95
    .line 96
    return-object p3

    .line 97
    :cond_3
    move p3, p0

    .line 98
    move-object p0, p1

    .line 99
    move p1, v1

    .line 100
    :goto_1
    check-cast p0, Lorg/wikipedia/feed/onthisday/OnThisDay;

    .line 101
    .line 102
    iget-object p0, p0, Lorg/wikipedia/feed/onthisday/OnThisDay;->events:Ljava/util/List;

    .line 103
    .line 104
    const-string v0, ".*\\b\\d{1,4}\\b.*"

    .line 105
    .line 106
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 111
    .line 112
    .line 113
    new-instance v1, Ljava/util/ArrayList;

    .line 114
    .line 115
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 116
    .line 117
    .line 118
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 119
    .line 120
    .line 121
    move-result-object p0

    .line 122
    :cond_4
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 123
    .line 124
    .line 125
    move-result v5

    .line 126
    if-eqz v5, :cond_5

    .line 127
    .line 128
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v5

    .line 132
    move-object v6, v5

    .line 133
    check-cast v6, Lorg/wikipedia/feed/onthisday/OnThisDay$Event;

    .line 134
    .line 135
    iget v7, v6, Lorg/wikipedia/feed/onthisday/OnThisDay$Event;->year:I

    .line 136
    .line 137
    if-lez v7, :cond_4

    .line 138
    .line 139
    invoke-virtual {p2}, Lj$/time/LocalDate;->getYear()I

    .line 140
    .line 141
    .line 142
    move-result v8

    .line 143
    if-gt v7, v8, :cond_4

    .line 144
    .line 145
    iget-object v6, v6, Lorg/wikipedia/feed/onthisday/OnThisDay$Event;->text:Ljava/lang/String;

    .line 146
    .line 147
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v0, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 151
    .line 152
    .line 153
    move-result-object v6

    .line 154
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    .line 155
    .line 156
    .line 157
    move-result v6

    .line 158
    if-nez v6, :cond_4

    .line 159
    .line 160
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    goto :goto_2

    .line 164
    :cond_5
    new-instance p0, Ljava/util/HashSet;

    .line 165
    .line 166
    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 167
    .line 168
    .line 169
    new-instance p2, Ljava/util/ArrayList;

    .line 170
    .line 171
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    :cond_6
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 179
    .line 180
    .line 181
    move-result v1

    .line 182
    if-eqz v1, :cond_7

    .line 183
    .line 184
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    move-object v5, v1

    .line 189
    check-cast v5, Lorg/wikipedia/feed/onthisday/OnThisDay$Event;

    .line 190
    .line 191
    iget v5, v5, Lorg/wikipedia/feed/onthisday/OnThisDay$Event;->year:I

    .line 192
    .line 193
    new-instance v6, Ljava/lang/Integer;

    .line 194
    .line 195
    invoke-direct {v6, v5}, Ljava/lang/Integer;-><init>(I)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {p0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 199
    .line 200
    .line 201
    move-result v5

    .line 202
    if-eqz v5, :cond_6

    .line 203
    .line 204
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    goto :goto_3

    .line 208
    :cond_7
    new-instance p0, Ljava/util/ArrayList;

    .line 209
    .line 210
    invoke-direct {p0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 211
    .line 212
    .line 213
    mul-int/lit8 p3, p3, 0x64

    .line 214
    .line 215
    add-int/2addr p3, p1

    .line 216
    new-instance p1, Lkotlin/random/XorWowRandom;

    .line 217
    .line 218
    shr-int/lit8 p2, p3, 0x1f

    .line 219
    .line 220
    invoke-direct {p1, p3, p2}, Lkotlin/random/XorWowRandom;-><init>(II)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 224
    .line 225
    .line 226
    move-result p2

    .line 227
    sub-int/2addr p2, v3

    .line 228
    :goto_4
    const/4 p3, 0x0

    .line 229
    if-lez p2, :cond_8

    .line 230
    .line 231
    add-int/lit8 v0, p2, 0x1

    .line 232
    .line 233
    invoke-virtual {p1, p3, v0}, Lkotlin/random/Random;->nextInt(II)I

    .line 234
    .line 235
    .line 236
    move-result p3

    .line 237
    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    move-result-object v0

    .line 241
    invoke-virtual {p0, p2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object v0

    .line 245
    invoke-virtual {p0, p3, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 246
    .line 247
    .line 248
    add-int/lit8 p2, p2, -0x1

    .line 249
    .line 250
    goto :goto_4

    .line 251
    :cond_8
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    .line 252
    .line 253
    .line 254
    move-result-object p1

    .line 255
    sget-object p2, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 256
    .line 257
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getOtdGameQuestionsPerDay()I

    .line 258
    .line 259
    .line 260
    move-result p2

    .line 261
    move v0, p3

    .line 262
    :goto_5
    if-ge v0, p2, :cond_12

    .line 263
    .line 264
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 265
    .line 266
    .line 267
    move-result v1

    .line 268
    if-nez v1, :cond_9

    .line 269
    .line 270
    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 271
    .line 272
    .line 273
    move-result-object v1

    .line 274
    :goto_6
    check-cast v1, Lorg/wikipedia/feed/onthisday/OnThisDay$Event;

    .line 275
    .line 276
    goto :goto_7

    .line 277
    :cond_9
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 278
    .line 279
    .line 280
    move-result v1

    .line 281
    rem-int v1, v0, v1

    .line 282
    .line 283
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 284
    .line 285
    .line 286
    move-result-object v1

    .line 287
    goto :goto_6

    .line 288
    :goto_7
    iget v3, v1, Lorg/wikipedia/feed/onthisday/OnThisDay$Event;->year:I

    .line 289
    .line 290
    int-to-double v5, v3

    .line 291
    const-wide v7, 0x3fc860029f16b11cL    # 0.19043

    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    mul-double/2addr v5, v7

    .line 297
    const-wide v7, 0x4078600000000000L    # 390.0

    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    sub-double/2addr v7, v5

    .line 303
    double-to-int v5, v7

    .line 304
    const/4 v6, 0x5

    .line 305
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    .line 306
    .line 307
    .line 308
    move-result v5

    .line 309
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 310
    .line 311
    .line 312
    move-result-object v6

    .line 313
    :cond_a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 314
    .line 315
    .line 316
    move-result v7

    .line 317
    if-eqz v7, :cond_b

    .line 318
    .line 319
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 320
    .line 321
    .line 322
    move-result-object v7

    .line 323
    move-object v8, v7

    .line 324
    check-cast v8, Lorg/wikipedia/feed/onthisday/OnThisDay$Event;

    .line 325
    .line 326
    iget v8, v8, Lorg/wikipedia/feed/onthisday/OnThisDay$Event;->year:I

    .line 327
    .line 328
    sub-int v8, v3, v8

    .line 329
    .line 330
    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    .line 331
    .line 332
    .line 333
    move-result v8

    .line 334
    if-gt v8, v5, :cond_a

    .line 335
    .line 336
    goto :goto_8

    .line 337
    :cond_b
    move-object v7, v2

    .line 338
    :goto_8
    if-nez v7, :cond_d

    .line 339
    .line 340
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 341
    .line 342
    .line 343
    move-result-object v5

    .line 344
    const v6, 0x7fffffff

    .line 345
    .line 346
    .line 347
    :cond_c
    :goto_9
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 348
    .line 349
    .line 350
    move-result v8

    .line 351
    if-eqz v8, :cond_d

    .line 352
    .line 353
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 354
    .line 355
    .line 356
    move-result-object v8

    .line 357
    check-cast v8, Lorg/wikipedia/feed/onthisday/OnThisDay$Event;

    .line 358
    .line 359
    iget v9, v8, Lorg/wikipedia/feed/onthisday/OnThisDay$Event;->year:I

    .line 360
    .line 361
    sub-int v9, v3, v9

    .line 362
    .line 363
    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    .line 364
    .line 365
    .line 366
    move-result v9

    .line 367
    if-ge v9, v6, :cond_c

    .line 368
    .line 369
    move-object v7, v8

    .line 370
    move v6, v9

    .line 371
    goto :goto_9

    .line 372
    :cond_d
    if-nez v7, :cond_10

    .line 373
    .line 374
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 375
    .line 376
    .line 377
    move-result-object v5

    .line 378
    :cond_e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 379
    .line 380
    .line 381
    move-result v6

    .line 382
    if-eqz v6, :cond_f

    .line 383
    .line 384
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 385
    .line 386
    .line 387
    move-result-object v6

    .line 388
    move-object v7, v6

    .line 389
    check-cast v7, Lorg/wikipedia/feed/onthisday/OnThisDay$Event;

    .line 390
    .line 391
    iget v7, v7, Lorg/wikipedia/feed/onthisday/OnThisDay$Event;->year:I

    .line 392
    .line 393
    if-eq v7, v3, :cond_e

    .line 394
    .line 395
    move-object v7, v6

    .line 396
    goto :goto_a

    .line 397
    :cond_f
    move-object v7, v2

    .line 398
    :cond_10
    :goto_a
    move-object v3, v7

    .line 399
    check-cast v7, Lorg/wikipedia/feed/onthisday/OnThisDay$Event;

    .line 400
    .line 401
    if-eqz v7, :cond_11

    .line 402
    .line 403
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 404
    .line 405
    .line 406
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 407
    .line 408
    .line 409
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 410
    .line 411
    .line 412
    :cond_11
    add-int/lit8 v0, v0, 0x1

    .line 413
    .line 414
    goto/16 :goto_5

    .line 415
    .line 416
    :cond_12
    return-object v4
.end method

.method public getGameState(Lorg/wikipedia/dataclient/WikiSite;Lj$/time/LocalDate;ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p4

    .line 6
    .line 7
    instance-of v3, v2, Lorg/wikipedia/games/onthisday/OnThisDayGameProvider$getGameState$1;

    .line 8
    .line 9
    if-eqz v3, :cond_0

    .line 10
    .line 11
    move-object v3, v2

    .line 12
    check-cast v3, Lorg/wikipedia/games/onthisday/OnThisDayGameProvider$getGameState$1;

    .line 13
    .line 14
    iget v4, v3, Lorg/wikipedia/games/onthisday/OnThisDayGameProvider$getGameState$1;->label:I

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
    iput v4, v3, Lorg/wikipedia/games/onthisday/OnThisDayGameProvider$getGameState$1;->label:I

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    new-instance v3, Lorg/wikipedia/games/onthisday/OnThisDayGameProvider$getGameState$1;

    .line 27
    .line 28
    invoke-direct {v3, v0, v2}, Lorg/wikipedia/games/onthisday/OnThisDayGameProvider$getGameState$1;-><init>(Lorg/wikipedia/games/onthisday/OnThisDayGameProvider;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 29
    .line 30
    .line 31
    :goto_0
    iget-object v2, v3, Lorg/wikipedia/games/onthisday/OnThisDayGameProvider$getGameState$1;->result:Ljava/lang/Object;

    .line 32
    .line 33
    sget-object v4, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 34
    .line 35
    iget v5, v3, Lorg/wikipedia/games/onthisday/OnThisDayGameProvider$getGameState$1;->label:I

    .line 36
    .line 37
    const/4 v6, 0x0

    .line 38
    const/4 v7, 0x0

    .line 39
    const/4 v8, 0x2

    .line 40
    const/4 v9, 0x1

    .line 41
    if-eqz v5, :cond_3

    .line 42
    .line 43
    if-eq v5, v9, :cond_2

    .line 44
    .line 45
    if-ne v5, v8, :cond_1

    .line 46
    .line 47
    iget-object v0, v3, Lorg/wikipedia/games/onthisday/OnThisDayGameProvider$getGameState$1;->L$2:Lorg/wikipedia/games/db/DailyGameHistory;

    .line 48
    .line 49
    iget-object v1, v3, Lorg/wikipedia/games/onthisday/OnThisDayGameProvider$getGameState$1;->L$0:Lorg/wikipedia/dataclient/WikiSite;

    .line 50
    .line 51
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    goto/16 :goto_3

    .line 55
    .line 56
    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 57
    .line 58
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    return-object v6

    .line 62
    :cond_2
    iget v1, v3, Lorg/wikipedia/games/onthisday/OnThisDayGameProvider$getGameState$1;->I$1:I

    .line 63
    .line 64
    iget v5, v3, Lorg/wikipedia/games/onthisday/OnThisDayGameProvider$getGameState$1;->I$0:I

    .line 65
    .line 66
    iget-boolean v10, v3, Lorg/wikipedia/games/onthisday/OnThisDayGameProvider$getGameState$1;->Z$0:Z

    .line 67
    .line 68
    iget-object v11, v3, Lorg/wikipedia/games/onthisday/OnThisDayGameProvider$getGameState$1;->L$1:Lj$/time/LocalDate;

    .line 69
    .line 70
    iget-object v12, v3, Lorg/wikipedia/games/onthisday/OnThisDayGameProvider$getGameState$1;->L$0:Lorg/wikipedia/dataclient/WikiSite;

    .line 71
    .line 72
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_3
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual/range {p2 .. p2}, Lj$/time/LocalDate;->getMonthValue()I

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    invoke-virtual/range {p2 .. p2}, Lj$/time/LocalDate;->getDayOfMonth()I

    .line 84
    .line 85
    .line 86
    move-result v5

    .line 87
    sget-object v10, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    .line 88
    .line 89
    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    .line 90
    .line 91
    .line 92
    move-result-object v10

    .line 93
    invoke-virtual {v10}, Lorg/wikipedia/database/AppDatabase;->dailyGameHistoryDao()Lorg/wikipedia/games/db/DailyGameHistoryDao_Impl;

    .line 94
    .line 95
    .line 96
    move-result-object v10

    .line 97
    sget-object v11, Lorg/wikipedia/games/WikiGames;->WHICH_CAME_FIRST:Lorg/wikipedia/games/WikiGames;

    .line 98
    .line 99
    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    .line 100
    .line 101
    .line 102
    move-result v14

    .line 103
    iget-object v11, v1, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 104
    .line 105
    invoke-virtual/range {p2 .. p2}, Lj$/time/LocalDate;->getYear()I

    .line 106
    .line 107
    .line 108
    move-result v15

    .line 109
    iput-object v1, v3, Lorg/wikipedia/games/onthisday/OnThisDayGameProvider$getGameState$1;->L$0:Lorg/wikipedia/dataclient/WikiSite;

    .line 110
    .line 111
    move-object/from16 v12, p2

    .line 112
    .line 113
    iput-object v12, v3, Lorg/wikipedia/games/onthisday/OnThisDayGameProvider$getGameState$1;->L$1:Lj$/time/LocalDate;

    .line 114
    .line 115
    move/from16 v13, p3

    .line 116
    .line 117
    iput-boolean v13, v3, Lorg/wikipedia/games/onthisday/OnThisDayGameProvider$getGameState$1;->Z$0:Z

    .line 118
    .line 119
    iput v2, v3, Lorg/wikipedia/games/onthisday/OnThisDayGameProvider$getGameState$1;->I$0:I

    .line 120
    .line 121
    iput v5, v3, Lorg/wikipedia/games/onthisday/OnThisDayGameProvider$getGameState$1;->I$1:I

    .line 122
    .line 123
    iput v9, v3, Lorg/wikipedia/games/onthisday/OnThisDayGameProvider$getGameState$1;->label:I

    .line 124
    .line 125
    iget-object v10, v10, Lorg/wikipedia/games/db/DailyGameHistoryDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 126
    .line 127
    new-instance v13, Lorg/wikipedia/games/db/DailyGameHistoryDao_Impl$$ExternalSyntheticLambda1;

    .line 128
    .line 129
    const/16 v18, 0x0

    .line 130
    .line 131
    move/from16 v16, v2

    .line 132
    .line 133
    move/from16 v17, v5

    .line 134
    .line 135
    move-object/from16 v19, v11

    .line 136
    .line 137
    invoke-direct/range {v13 .. v19}, Lorg/wikipedia/games/db/DailyGameHistoryDao_Impl$$ExternalSyntheticLambda1;-><init>(IIIIILjava/lang/String;)V

    .line 138
    .line 139
    .line 140
    invoke-static {v10, v9, v7, v13, v3}, Lkotlin/ExceptionsKt;->performSuspending(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    if-ne v2, v4, :cond_4

    .line 145
    .line 146
    goto :goto_2

    .line 147
    :cond_4
    move/from16 v10, p3

    .line 148
    .line 149
    move-object v11, v12

    .line 150
    move/from16 v5, v16

    .line 151
    .line 152
    move-object v12, v1

    .line 153
    move/from16 v1, v17

    .line 154
    .line 155
    :goto_1
    check-cast v2, Lorg/wikipedia/games/db/DailyGameHistory;

    .line 156
    .line 157
    if-eqz v10, :cond_5

    .line 158
    .line 159
    sget-object v0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 160
    .line 161
    goto :goto_4

    .line 162
    :cond_5
    iput-object v12, v3, Lorg/wikipedia/games/onthisday/OnThisDayGameProvider$getGameState$1;->L$0:Lorg/wikipedia/dataclient/WikiSite;

    .line 163
    .line 164
    iput-object v6, v3, Lorg/wikipedia/games/onthisday/OnThisDayGameProvider$getGameState$1;->L$1:Lj$/time/LocalDate;

    .line 165
    .line 166
    iput-object v2, v3, Lorg/wikipedia/games/onthisday/OnThisDayGameProvider$getGameState$1;->L$2:Lorg/wikipedia/games/db/DailyGameHistory;

    .line 167
    .line 168
    iput-boolean v10, v3, Lorg/wikipedia/games/onthisday/OnThisDayGameProvider$getGameState$1;->Z$0:Z

    .line 169
    .line 170
    iput v5, v3, Lorg/wikipedia/games/onthisday/OnThisDayGameProvider$getGameState$1;->I$0:I

    .line 171
    .line 172
    iput v1, v3, Lorg/wikipedia/games/onthisday/OnThisDayGameProvider$getGameState$1;->I$1:I

    .line 173
    .line 174
    iput v8, v3, Lorg/wikipedia/games/onthisday/OnThisDayGameProvider$getGameState$1;->label:I

    .line 175
    .line 176
    invoke-virtual {v0, v12, v11, v3}, Lorg/wikipedia/games/onthisday/OnThisDayGameProvider;->getGameEvents(Lorg/wikipedia/dataclient/WikiSite;Lj$/time/LocalDate;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    if-ne v0, v4, :cond_6

    .line 181
    .line 182
    :goto_2
    return-object v4

    .line 183
    :cond_6
    move-object v1, v2

    .line 184
    move-object v2, v0

    .line 185
    move-object v0, v1

    .line 186
    move-object v1, v12

    .line 187
    :goto_3
    check-cast v2, Ljava/util/List;

    .line 188
    .line 189
    move-object v12, v2

    .line 190
    move-object v2, v0

    .line 191
    move-object v0, v12

    .line 192
    move-object v12, v1

    .line 193
    :goto_4
    if-nez v2, :cond_7

    .line 194
    .line 195
    goto :goto_5

    .line 196
    :cond_7
    iget v1, v2, Lorg/wikipedia/games/db/DailyGameHistory;->status:I

    .line 197
    .line 198
    iget v7, v2, Lorg/wikipedia/games/db/DailyGameHistory;->currentQuestionIndex:I

    .line 199
    .line 200
    if-ne v1, v9, :cond_8

    .line 201
    .line 202
    add-int/lit8 v7, v7, -0x1

    .line 203
    .line 204
    :cond_8
    :goto_5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 205
    .line 206
    .line 207
    mul-int/2addr v7, v8

    .line 208
    add-int/lit8 v1, v7, 0x1

    .line 209
    .line 210
    if-ltz v7, :cond_a

    .line 211
    .line 212
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 213
    .line 214
    .line 215
    move-result v3

    .line 216
    if-lt v1, v3, :cond_9

    .line 217
    .line 218
    goto :goto_6

    .line 219
    :cond_9
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    move-result-object v3

    .line 223
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    new-instance v1, Lkotlin/Pair;

    .line 228
    .line 229
    invoke-direct {v1, v3, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 230
    .line 231
    .line 232
    goto :goto_7

    .line 233
    :cond_a
    :goto_6
    new-instance v0, Lorg/wikipedia/feed/onthisday/OnThisDay$Event;

    .line 234
    .line 235
    invoke-direct {v0}, Lorg/wikipedia/feed/onthisday/OnThisDay$Event;-><init>()V

    .line 236
    .line 237
    .line 238
    new-instance v1, Lorg/wikipedia/feed/onthisday/OnThisDay$Event;

    .line 239
    .line 240
    invoke-direct {v1}, Lorg/wikipedia/feed/onthisday/OnThisDay$Event;-><init>()V

    .line 241
    .line 242
    .line 243
    new-instance v3, Lkotlin/Pair;

    .line 244
    .line 245
    invoke-direct {v3, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 246
    .line 247
    .line 248
    move-object v1, v3

    .line 249
    :goto_7
    iget-object v0, v1, Lkotlin/Pair;->first:Ljava/lang/Object;

    .line 250
    .line 251
    move-object v7, v0

    .line 252
    check-cast v7, Lorg/wikipedia/feed/onthisday/OnThisDay$Event;

    .line 253
    .line 254
    iget-object v0, v1, Lkotlin/Pair;->second:Ljava/lang/Object;

    .line 255
    .line 256
    move-object v8, v0

    .line 257
    check-cast v8, Lorg/wikipedia/feed/onthisday/OnThisDay$Event;

    .line 258
    .line 259
    if-eqz v2, :cond_c

    .line 260
    .line 261
    iget v0, v2, Lorg/wikipedia/games/db/DailyGameHistory;->status:I

    .line 262
    .line 263
    if-ne v0, v9, :cond_b

    .line 264
    .line 265
    new-instance v3, Lorg/wikipedia/feed/wikigames/OnThisDayCardGameState$Completed;

    .line 266
    .line 267
    iget-object v4, v12, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 268
    .line 269
    iget v5, v2, Lorg/wikipedia/games/db/DailyGameHistory;->score:I

    .line 270
    .line 271
    sget-object v0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 272
    .line 273
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getOtdGameQuestionsPerDay()I

    .line 274
    .line 275
    .line 276
    move-result v6

    .line 277
    invoke-direct/range {v3 .. v8}, Lorg/wikipedia/feed/wikigames/OnThisDayCardGameState$Completed;-><init>(Ljava/lang/String;IILorg/wikipedia/feed/onthisday/OnThisDay$Event;Lorg/wikipedia/feed/onthisday/OnThisDay$Event;)V

    .line 278
    .line 279
    .line 280
    return-object v3

    .line 281
    :cond_b
    if-nez v0, :cond_c

    .line 282
    .line 283
    new-instance v0, Lorg/wikipedia/feed/wikigames/OnThisDayCardGameState$InProgress;

    .line 284
    .line 285
    iget-object v1, v12, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 286
    .line 287
    iget v2, v2, Lorg/wikipedia/games/db/DailyGameHistory;->currentQuestionIndex:I

    .line 288
    .line 289
    invoke-direct {v0, v1, v2, v7, v8}, Lorg/wikipedia/feed/wikigames/OnThisDayCardGameState$InProgress;-><init>(Ljava/lang/String;ILorg/wikipedia/feed/onthisday/OnThisDay$Event;Lorg/wikipedia/feed/onthisday/OnThisDay$Event;)V

    .line 290
    .line 291
    .line 292
    return-object v0

    .line 293
    :cond_c
    new-instance v0, Lorg/wikipedia/feed/wikigames/OnThisDayCardGameState$Preview;

    .line 294
    .line 295
    iget-object v1, v12, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 296
    .line 297
    invoke-direct {v0, v1, v7, v8}, Lorg/wikipedia/feed/wikigames/OnThisDayCardGameState$Preview;-><init>(Ljava/lang/String;Lorg/wikipedia/feed/onthisday/OnThisDay$Event;Lorg/wikipedia/feed/onthisday/OnThisDay$Event;)V

    .line 298
    .line 299
    .line 300
    return-object v0
.end method
