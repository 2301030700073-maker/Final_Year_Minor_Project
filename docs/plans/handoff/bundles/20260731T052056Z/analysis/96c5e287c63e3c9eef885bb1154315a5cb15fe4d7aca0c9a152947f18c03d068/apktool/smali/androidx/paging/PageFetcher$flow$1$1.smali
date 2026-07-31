.class public final Landroidx/paging/PageFetcher$flow$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public synthetic L$0:Ljava/lang/Object;

.field public label:I


# direct methods
.method public synthetic constructor <init>(IILkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput p2, p0, Landroidx/paging/PageFetcher$flow$1$1;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    .line 1
    iget p0, p0, Landroidx/paging/PageFetcher$flow$1$1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance p0, Landroidx/paging/PageFetcher$flow$1$1;

    .line 7
    .line 8
    const/4 v0, 0x2

    .line 9
    const/4 v1, 0x4

    .line 10
    invoke-direct {p0, v0, v1, p2}, Landroidx/paging/PageFetcher$flow$1$1;-><init>(IILkotlin/coroutines/Continuation;)V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Landroidx/paging/PageFetcher$flow$1$1;->L$0:Ljava/lang/Object;

    .line 14
    .line 15
    return-object p0

    .line 16
    :pswitch_0
    new-instance p0, Landroidx/paging/PageFetcher$flow$1$1;

    .line 17
    .line 18
    const/4 v0, 0x2

    .line 19
    const/4 v1, 0x3

    .line 20
    invoke-direct {p0, v0, v1, p2}, Landroidx/paging/PageFetcher$flow$1$1;-><init>(IILkotlin/coroutines/Continuation;)V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Landroidx/paging/PageFetcher$flow$1$1;->L$0:Ljava/lang/Object;

    .line 24
    .line 25
    return-object p0

    .line 26
    :pswitch_1
    new-instance p0, Landroidx/paging/PageFetcher$flow$1$1;

    .line 27
    .line 28
    const/4 v0, 0x2

    .line 29
    const/4 v1, 0x2

    .line 30
    invoke-direct {p0, v0, v1, p2}, Landroidx/paging/PageFetcher$flow$1$1;-><init>(IILkotlin/coroutines/Continuation;)V

    .line 31
    .line 32
    .line 33
    iput-object p1, p0, Landroidx/paging/PageFetcher$flow$1$1;->L$0:Ljava/lang/Object;

    .line 34
    .line 35
    return-object p0

    .line 36
    :pswitch_2
    new-instance p0, Landroidx/paging/PageFetcher$flow$1$1;

    .line 37
    .line 38
    const/4 v0, 0x2

    .line 39
    const/4 v1, 0x1

    .line 40
    invoke-direct {p0, v0, v1, p2}, Landroidx/paging/PageFetcher$flow$1$1;-><init>(IILkotlin/coroutines/Continuation;)V

    .line 41
    .line 42
    .line 43
    iput-object p1, p0, Landroidx/paging/PageFetcher$flow$1$1;->L$0:Ljava/lang/Object;

    .line 44
    .line 45
    return-object p0

    .line 46
    :pswitch_3
    new-instance p0, Landroidx/paging/PageFetcher$flow$1$1;

    .line 47
    .line 48
    const/4 v0, 0x2

    .line 49
    const/4 v1, 0x0

    .line 50
    invoke-direct {p0, v0, v1, p2}, Landroidx/paging/PageFetcher$flow$1$1;-><init>(IILkotlin/coroutines/Continuation;)V

    .line 51
    .line 52
    .line 53
    iput-object p1, p0, Landroidx/paging/PageFetcher$flow$1$1;->L$0:Ljava/lang/Object;

    .line 54
    .line 55
    return-object p0

    .line 56
    nop

    .line 57
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Landroidx/paging/PageFetcher$flow$1$1;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p1, Lkotlinx/coroutines/channels/ProducerCoroutine;

    .line 9
    .line 10
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 11
    .line 12
    invoke-virtual {p0, p1, p2}, Landroidx/paging/PageFetcher$flow$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Landroidx/paging/PageFetcher$flow$1$1;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Landroidx/paging/PageFetcher$flow$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :pswitch_0
    check-cast p1, Lkotlinx/coroutines/channels/ProducerCoroutine;

    .line 24
    .line 25
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 26
    .line 27
    invoke-virtual {p0, p1, p2}, Landroidx/paging/PageFetcher$flow$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    check-cast p0, Landroidx/paging/PageFetcher$flow$1$1;

    .line 32
    .line 33
    invoke-virtual {p0, v1}, Landroidx/paging/PageFetcher$flow$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0

    .line 38
    :pswitch_1
    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    .line 39
    .line 40
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 41
    .line 42
    invoke-virtual {p0, p1, p2}, Landroidx/paging/PageFetcher$flow$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    check-cast p0, Landroidx/paging/PageFetcher$flow$1$1;

    .line 47
    .line 48
    invoke-virtual {p0, v1}, Landroidx/paging/PageFetcher$flow$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    return-object p0

    .line 53
    :pswitch_2
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 54
    .line 55
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 56
    .line 57
    invoke-virtual {p0, p1, p2}, Landroidx/paging/PageFetcher$flow$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    check-cast p0, Landroidx/paging/PageFetcher$flow$1$1;

    .line 62
    .line 63
    invoke-virtual {p0, v1}, Landroidx/paging/PageFetcher$flow$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    return-object p0

    .line 68
    :pswitch_3
    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    .line 69
    .line 70
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 71
    .line 72
    invoke-virtual {p0, p1, p2}, Landroidx/paging/PageFetcher$flow$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    check-cast p0, Landroidx/paging/PageFetcher$flow$1$1;

    .line 77
    .line 78
    invoke-virtual {p0, v1}, Landroidx/paging/PageFetcher$flow$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    return-object p0

    .line 83
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    iget v0, p0, Landroidx/paging/PageFetcher$flow$1$1;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 5
    .line 6
    const-string v3, "call to \'resume\' before \'invoke\' with coroutine"

    .line 7
    .line 8
    const/4 v4, 0x1

    .line 9
    const/4 v5, 0x0

    .line 10
    packed-switch v0, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Landroidx/paging/PageFetcher$flow$1$1;->L$0:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v0, Lkotlinx/coroutines/channels/ProducerCoroutine;

    .line 16
    .line 17
    sget-object v6, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 18
    .line 19
    iget v7, p0, Landroidx/paging/PageFetcher$flow$1$1;->label:I

    .line 20
    .line 21
    if-eqz v7, :cond_1

    .line 22
    .line 23
    if-ne v7, v4, :cond_0

    .line 24
    .line 25
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-static {v3}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    move-object v2, v5

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    sget-object p1, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 38
    .line 39
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-static {p1}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferencesName(Landroid/content/Context;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    invoke-virtual {p1, v3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    new-instance v1, Lorg/wikipedia/settings/Prefs$preferenceKeyChangeFlow$1$$ExternalSyntheticLambda0;

    .line 52
    .line 53
    invoke-direct {v1, v0}, Lorg/wikipedia/settings/Prefs$preferenceKeyChangeFlow$1$$ExternalSyntheticLambda0;-><init>(Lkotlinx/coroutines/channels/ProducerCoroutine;)V

    .line 54
    .line 55
    .line 56
    invoke-interface {p1, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 57
    .line 58
    .line 59
    new-instance v3, Lorg/wikipedia/settings/AboutActivityKt$$ExternalSyntheticLambda11;

    .line 60
    .line 61
    const/4 v7, 0x7

    .line 62
    invoke-direct {v3, v7, p1, v1}, Lorg/wikipedia/settings/AboutActivityKt$$ExternalSyntheticLambda11;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    iput-object v5, p0, Landroidx/paging/PageFetcher$flow$1$1;->L$0:Ljava/lang/Object;

    .line 66
    .line 67
    iput v4, p0, Landroidx/paging/PageFetcher$flow$1$1;->label:I

    .line 68
    .line 69
    invoke-static {v0, v3, p0}, Landroidx/work/OperationKt;->awaitClose(Lkotlinx/coroutines/channels/ProducerCoroutine;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    if-ne p0, v6, :cond_2

    .line 74
    .line 75
    move-object v2, v6

    .line 76
    :cond_2
    :goto_0
    return-object v2

    .line 77
    :pswitch_0
    iget-object v0, p0, Landroidx/paging/PageFetcher$flow$1$1;->L$0:Ljava/lang/Object;

    .line 78
    .line 79
    check-cast v0, Lkotlinx/coroutines/channels/ProducerCoroutine;

    .line 80
    .line 81
    sget-object v6, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 82
    .line 83
    iget v7, p0, Landroidx/paging/PageFetcher$flow$1$1;->label:I

    .line 84
    .line 85
    if-eqz v7, :cond_4

    .line 86
    .line 87
    if-ne v7, v4, :cond_3

    .line 88
    .line 89
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    goto :goto_2

    .line 93
    :cond_3
    invoke-static {v3}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    move-object v2, v5

    .line 97
    goto :goto_2

    .line 98
    :cond_4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    sget-object p1, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 102
    .line 103
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    const v3, 0x7f120640

    .line 108
    .line 109
    .line 110
    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 115
    .line 116
    .line 117
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 118
    .line 119
    .line 120
    move-result-object v3

    .line 121
    invoke-static {v3}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferencesName(Landroid/content/Context;)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v7

    .line 125
    invoke-virtual {v3, v7, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    sget-object v3, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 130
    .line 131
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getPlacesLastLocationAndZoomLevel()Lkotlin/Pair;

    .line 132
    .line 133
    .line 134
    move-result-object v3

    .line 135
    if-eqz v3, :cond_5

    .line 136
    .line 137
    iget-object v3, v3, Lkotlin/Pair;->first:Ljava/lang/Object;

    .line 138
    .line 139
    check-cast v3, Landroid/location/Location;

    .line 140
    .line 141
    goto :goto_1

    .line 142
    :cond_5
    move-object v3, v5

    .line 143
    :goto_1
    invoke-virtual {v0, v3}, Lkotlinx/coroutines/channels/ProducerCoroutine;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    new-instance v3, Lorg/wikipedia/settings/Prefs$placesLastLocationFlow$1$$ExternalSyntheticLambda0;

    .line 147
    .line 148
    invoke-direct {v3, p1, v0}, Lorg/wikipedia/settings/Prefs$placesLastLocationFlow$1$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Lkotlinx/coroutines/channels/ProducerCoroutine;)V

    .line 149
    .line 150
    .line 151
    invoke-interface {v1, v3}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 152
    .line 153
    .line 154
    new-instance p1, Lorg/wikipedia/settings/AboutActivityKt$$ExternalSyntheticLambda11;

    .line 155
    .line 156
    const/4 v7, 0x6

    .line 157
    invoke-direct {p1, v7, v1, v3}, Lorg/wikipedia/settings/AboutActivityKt$$ExternalSyntheticLambda11;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 158
    .line 159
    .line 160
    iput-object v5, p0, Landroidx/paging/PageFetcher$flow$1$1;->L$0:Ljava/lang/Object;

    .line 161
    .line 162
    iput v4, p0, Landroidx/paging/PageFetcher$flow$1$1;->label:I

    .line 163
    .line 164
    invoke-static {v0, p1, p0}, Landroidx/work/OperationKt;->awaitClose(Lkotlinx/coroutines/channels/ProducerCoroutine;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object p0

    .line 168
    if-ne p0, v6, :cond_6

    .line 169
    .line 170
    move-object v2, v6

    .line 171
    :cond_6
    :goto_2
    return-object v2

    .line 172
    :pswitch_1
    iget-object v0, p0, Landroidx/paging/PageFetcher$flow$1$1;->L$0:Ljava/lang/Object;

    .line 173
    .line 174
    check-cast v0, Lkotlinx/coroutines/flow/FlowCollector;

    .line 175
    .line 176
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 177
    .line 178
    iget v6, p0, Landroidx/paging/PageFetcher$flow$1$1;->label:I

    .line 179
    .line 180
    if-eqz v6, :cond_8

    .line 181
    .line 182
    if-ne v6, v4, :cond_7

    .line 183
    .line 184
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 185
    .line 186
    .line 187
    goto :goto_3

    .line 188
    :cond_7
    invoke-static {v3}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    move-object v2, v5

    .line 192
    goto :goto_3

    .line 193
    :cond_8
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 194
    .line 195
    .line 196
    iput-object v5, p0, Landroidx/paging/PageFetcher$flow$1$1;->L$0:Ljava/lang/Object;

    .line 197
    .line 198
    iput v4, p0, Landroidx/paging/PageFetcher$flow$1$1;->label:I

    .line 199
    .line 200
    const-string p1, ""

    .line 201
    .line 202
    invoke-interface {v0, p1, p0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    move-result-object p0

    .line 206
    if-ne p0, v1, :cond_9

    .line 207
    .line 208
    move-object v2, v1

    .line 209
    :cond_9
    :goto_3
    return-object v2

    .line 210
    :pswitch_2
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 211
    .line 212
    iget v1, p0, Landroidx/paging/PageFetcher$flow$1$1;->label:I

    .line 213
    .line 214
    if-eqz v1, :cond_b

    .line 215
    .line 216
    if-ne v1, v4, :cond_a

    .line 217
    .line 218
    iget-object v1, p0, Landroidx/paging/PageFetcher$flow$1$1;->L$0:Ljava/lang/Object;

    .line 219
    .line 220
    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    .line 221
    .line 222
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 223
    .line 224
    .line 225
    goto :goto_4

    .line 226
    :cond_a
    invoke-static {v3}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    move-object v2, v5

    .line 230
    goto :goto_5

    .line 231
    :cond_b
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 232
    .line 233
    .line 234
    iget-object p1, p0, Landroidx/paging/PageFetcher$flow$1$1;->L$0:Ljava/lang/Object;

    .line 235
    .line 236
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 237
    .line 238
    move-object v1, p1

    .line 239
    :cond_c
    :goto_4
    invoke-interface {v1}, Lkotlinx/coroutines/CoroutineScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    .line 240
    .line 241
    .line 242
    move-result-object p1

    .line 243
    invoke-static {p1}, Lkotlinx/coroutines/AwaitKt;->isActive(Lkotlin/coroutines/CoroutineContext;)Z

    .line 244
    .line 245
    .line 246
    move-result p1

    .line 247
    if-eqz p1, :cond_d

    .line 248
    .line 249
    new-instance p1, Landroidx/compose/foundation/BorderKt$$ExternalSyntheticLambda1;

    .line 250
    .line 251
    const/16 v3, 0x1d

    .line 252
    .line 253
    invoke-direct {p1, v3}, Landroidx/compose/foundation/BorderKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 254
    .line 255
    .line 256
    iput-object v1, p0, Landroidx/paging/PageFetcher$flow$1$1;->L$0:Ljava/lang/Object;

    .line 257
    .line 258
    iput v4, p0, Landroidx/paging/PageFetcher$flow$1$1;->label:I

    .line 259
    .line 260
    iget-object v3, p0, Lkotlin/coroutines/jvm/internal/ContinuationImpl;->_context:Lkotlin/coroutines/CoroutineContext;

    .line 261
    .line 262
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 263
    .line 264
    .line 265
    invoke-static {v3}, Landroidx/compose/runtime/Updater;->getMonotonicFrameClock(Lkotlin/coroutines/CoroutineContext;)Landroidx/compose/runtime/MonotonicFrameClock;

    .line 266
    .line 267
    .line 268
    move-result-object v3

    .line 269
    invoke-interface {v3, p1, p0}, Landroidx/compose/runtime/MonotonicFrameClock;->withFrameNanos(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 270
    .line 271
    .line 272
    move-result-object p1

    .line 273
    if-ne p1, v0, :cond_c

    .line 274
    .line 275
    move-object v2, v0

    .line 276
    :cond_d
    :goto_5
    return-object v2

    .line 277
    :pswitch_3
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 278
    .line 279
    iget v6, p0, Landroidx/paging/PageFetcher$flow$1$1;->label:I

    .line 280
    .line 281
    const/4 v7, 0x2

    .line 282
    if-eqz v6, :cond_10

    .line 283
    .line 284
    if-eq v6, v4, :cond_f

    .line 285
    .line 286
    if-ne v6, v7, :cond_e

    .line 287
    .line 288
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 289
    .line 290
    .line 291
    goto :goto_7

    .line 292
    :cond_e
    invoke-static {v3}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    move-object v2, v5

    .line 296
    goto :goto_7

    .line 297
    :cond_f
    iget-object v3, p0, Landroidx/paging/PageFetcher$flow$1$1;->L$0:Ljava/lang/Object;

    .line 298
    .line 299
    check-cast v3, Lkotlinx/coroutines/flow/FlowCollector;

    .line 300
    .line 301
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 302
    .line 303
    .line 304
    check-cast p1, Landroidx/paging/RemoteMediator$InitializeAction;

    .line 305
    .line 306
    goto :goto_6

    .line 307
    :cond_10
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 308
    .line 309
    .line 310
    iget-object p1, p0, Landroidx/paging/PageFetcher$flow$1$1;->L$0:Ljava/lang/Object;

    .line 311
    .line 312
    move-object v3, p1

    .line 313
    check-cast v3, Lkotlinx/coroutines/flow/FlowCollector;

    .line 314
    .line 315
    move-object p1, v5

    .line 316
    :goto_6
    sget-object v6, Landroidx/paging/RemoteMediator$InitializeAction;->LAUNCH_INITIAL_REFRESH:Landroidx/paging/RemoteMediator$InitializeAction;

    .line 317
    .line 318
    if-ne p1, v6, :cond_11

    .line 319
    .line 320
    move v1, v4

    .line 321
    :cond_11
    sget-object p1, Landroidx/paging/PageFetcher$RefreshType$All;->INSTANCE$2:Landroidx/paging/PageFetcher$RefreshType$All;

    .line 322
    .line 323
    new-instance v4, Landroidx/paging/PageFetcher$LoadRequest$Refresh;

    .line 324
    .line 325
    invoke-direct {v4, v1, p1}, Landroidx/paging/PageFetcher$LoadRequest$Refresh;-><init>(ZLandroidx/paging/FlowExtKt;)V

    .line 326
    .line 327
    .line 328
    iput-object v5, p0, Landroidx/paging/PageFetcher$flow$1$1;->L$0:Ljava/lang/Object;

    .line 329
    .line 330
    iput v7, p0, Landroidx/paging/PageFetcher$flow$1$1;->label:I

    .line 331
    .line 332
    invoke-interface {v3, v4, p0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 333
    .line 334
    .line 335
    move-result-object p0

    .line 336
    if-ne p0, v0, :cond_12

    .line 337
    .line 338
    move-object v2, v0

    .line 339
    :cond_12
    :goto_7
    return-object v2

    .line 340
    nop

    .line 341
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
