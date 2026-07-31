.class public final Lorg/wikipedia/feed/HomeViewModel$placesModule$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic $r8$classId:I

.field public synthetic L$0:Lkotlinx/coroutines/flow/FlowCollector;

.field public L$1:Lkotlinx/coroutines/flow/FlowCollector;

.field public label:I

.field public final synthetic this$0:Lorg/wikipedia/feed/HomeViewModel;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/feed/HomeViewModel;Lkotlin/coroutines/Continuation;I)V
    .locals 0

    .line 1
    iput p3, p0, Lorg/wikipedia/feed/HomeViewModel$placesModule$2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/feed/HomeViewModel$placesModule$2;->this$0:Lorg/wikipedia/feed/HomeViewModel;

    .line 4
    .line 5
    const/4 p1, 0x3

    .line 6
    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lorg/wikipedia/feed/HomeViewModel$placesModule$2;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    iget-object p0, p0, Lorg/wikipedia/feed/HomeViewModel$placesModule$2;->this$0:Lorg/wikipedia/feed/HomeViewModel;

    .line 6
    .line 7
    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    .line 8
    .line 9
    check-cast p2, Lkotlin/Unit;

    .line 10
    .line 11
    check-cast p3, Lkotlin/coroutines/Continuation;

    .line 12
    .line 13
    packed-switch v0, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    new-instance p2, Lorg/wikipedia/feed/HomeViewModel$placesModule$2;

    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    invoke-direct {p2, p0, p3, v0}, Lorg/wikipedia/feed/HomeViewModel$placesModule$2;-><init>(Lorg/wikipedia/feed/HomeViewModel;Lkotlin/coroutines/Continuation;I)V

    .line 20
    .line 21
    .line 22
    iput-object p1, p2, Lorg/wikipedia/feed/HomeViewModel$placesModule$2;->L$0:Lkotlinx/coroutines/flow/FlowCollector;

    .line 23
    .line 24
    invoke-virtual {p2, v1}, Lorg/wikipedia/feed/HomeViewModel$placesModule$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    return-object p0

    .line 29
    :pswitch_0
    new-instance p2, Lorg/wikipedia/feed/HomeViewModel$placesModule$2;

    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    invoke-direct {p2, p0, p3, v0}, Lorg/wikipedia/feed/HomeViewModel$placesModule$2;-><init>(Lorg/wikipedia/feed/HomeViewModel;Lkotlin/coroutines/Continuation;I)V

    .line 33
    .line 34
    .line 35
    iput-object p1, p2, Lorg/wikipedia/feed/HomeViewModel$placesModule$2;->L$0:Lkotlinx/coroutines/flow/FlowCollector;

    .line 36
    .line 37
    invoke-virtual {p2, v1}, Lorg/wikipedia/feed/HomeViewModel$placesModule$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    return-object p0

    .line 42
    nop

    .line 43
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lorg/wikipedia/feed/HomeViewModel$placesModule$2;->$r8$classId:I

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 6
    .line 7
    iget-object v3, v0, Lorg/wikipedia/feed/HomeViewModel$placesModule$2;->this$0:Lorg/wikipedia/feed/HomeViewModel;

    .line 8
    .line 9
    const-string v4, "call to \'resume\' before \'invoke\' with coroutine"

    .line 10
    .line 11
    const/4 v5, 0x1

    .line 12
    const/4 v6, 0x2

    .line 13
    const/4 v7, 0x3

    .line 14
    const/4 v8, 0x0

    .line 15
    packed-switch v1, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    iget-object v1, v0, Lorg/wikipedia/feed/HomeViewModel$placesModule$2;->L$0:Lkotlinx/coroutines/flow/FlowCollector;

    .line 19
    .line 20
    sget-object v9, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 21
    .line 22
    iget v10, v0, Lorg/wikipedia/feed/HomeViewModel$placesModule$2;->label:I

    .line 23
    .line 24
    if-eqz v10, :cond_3

    .line 25
    .line 26
    if-eq v10, v5, :cond_2

    .line 27
    .line 28
    if-eq v10, v6, :cond_1

    .line 29
    .line 30
    if-ne v10, v7, :cond_0

    .line 31
    .line 32
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    goto :goto_3

    .line 36
    :cond_0
    invoke-static {v4}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    move-object v2, v8

    .line 40
    goto :goto_3

    .line 41
    :cond_1
    iget-object v1, v0, Lorg/wikipedia/feed/HomeViewModel$placesModule$2;->L$1:Lkotlinx/coroutines/flow/FlowCollector;

    .line 42
    .line 43
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    move-object/from16 v3, p1

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    sget-object v4, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 57
    .line 58
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->isRecommendedReadingListEnabled()Z

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    if-eqz v4, :cond_4

    .line 63
    .line 64
    new-instance v4, Lorg/wikipedia/feed/ForYouModule$Discover;

    .line 65
    .line 66
    sget-object v10, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 67
    .line 68
    const/16 v11, 0x20

    .line 69
    .line 70
    invoke-direct {v4, v10, v5, v8, v11}, Lorg/wikipedia/feed/ForYouModule$Discover;-><init>(Ljava/util/List;ZLorg/wikipedia/readinglist/recommended/RecommendedReadingListUpdateFrequency;I)V

    .line 71
    .line 72
    .line 73
    iput-object v1, v0, Lorg/wikipedia/feed/HomeViewModel$placesModule$2;->L$0:Lkotlinx/coroutines/flow/FlowCollector;

    .line 74
    .line 75
    iput v5, v0, Lorg/wikipedia/feed/HomeViewModel$placesModule$2;->label:I

    .line 76
    .line 77
    invoke-interface {v1, v4, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    if-ne v4, v9, :cond_4

    .line 82
    .line 83
    goto :goto_2

    .line 84
    :cond_4
    :goto_0
    iput-object v8, v0, Lorg/wikipedia/feed/HomeViewModel$placesModule$2;->L$0:Lkotlinx/coroutines/flow/FlowCollector;

    .line 85
    .line 86
    iput-object v1, v0, Lorg/wikipedia/feed/HomeViewModel$placesModule$2;->L$1:Lkotlinx/coroutines/flow/FlowCollector;

    .line 87
    .line 88
    iput v6, v0, Lorg/wikipedia/feed/HomeViewModel$placesModule$2;->label:I

    .line 89
    .line 90
    invoke-virtual {v3, v0}, Lorg/wikipedia/feed/HomeViewModel;->buildDiscoverModule(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    if-ne v3, v9, :cond_5

    .line 95
    .line 96
    goto :goto_2

    .line 97
    :cond_5
    :goto_1
    iput-object v8, v0, Lorg/wikipedia/feed/HomeViewModel$placesModule$2;->L$0:Lkotlinx/coroutines/flow/FlowCollector;

    .line 98
    .line 99
    iput-object v8, v0, Lorg/wikipedia/feed/HomeViewModel$placesModule$2;->L$1:Lkotlinx/coroutines/flow/FlowCollector;

    .line 100
    .line 101
    iput v7, v0, Lorg/wikipedia/feed/HomeViewModel$placesModule$2;->label:I

    .line 102
    .line 103
    invoke-interface {v1, v3, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    if-ne v0, v9, :cond_6

    .line 108
    .line 109
    :goto_2
    move-object v2, v9

    .line 110
    :cond_6
    :goto_3
    return-object v2

    .line 111
    :pswitch_0
    iget-object v1, v0, Lorg/wikipedia/feed/HomeViewModel$placesModule$2;->L$0:Lkotlinx/coroutines/flow/FlowCollector;

    .line 112
    .line 113
    sget-object v9, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 114
    .line 115
    iget v10, v0, Lorg/wikipedia/feed/HomeViewModel$placesModule$2;->label:I

    .line 116
    .line 117
    if-eqz v10, :cond_a

    .line 118
    .line 119
    if-eq v10, v5, :cond_9

    .line 120
    .line 121
    if-eq v10, v6, :cond_8

    .line 122
    .line 123
    if-ne v10, v7, :cond_7

    .line 124
    .line 125
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 126
    .line 127
    .line 128
    goto :goto_7

    .line 129
    :cond_7
    invoke-static {v4}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    move-object v2, v8

    .line 133
    goto :goto_7

    .line 134
    :cond_8
    iget-object v1, v0, Lorg/wikipedia/feed/HomeViewModel$placesModule$2;->L$1:Lkotlinx/coroutines/flow/FlowCollector;

    .line 135
    .line 136
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 137
    .line 138
    .line 139
    move-object/from16 v3, p1

    .line 140
    .line 141
    goto :goto_5

    .line 142
    :cond_9
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 143
    .line 144
    .line 145
    goto :goto_4

    .line 146
    :cond_a
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 147
    .line 148
    .line 149
    sget-object v4, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 150
    .line 151
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 152
    .line 153
    .line 154
    move-result-object v4

    .line 155
    const-string v10, "android.permission.ACCESS_FINE_LOCATION"

    .line 156
    .line 157
    invoke-static {v4, v10}, Lorg/wikipedia/util/FileUtil;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 158
    .line 159
    .line 160
    move-result v10

    .line 161
    if-eqz v10, :cond_b

    .line 162
    .line 163
    const-string v10, "android.permission.ACCESS_COARSE_LOCATION"

    .line 164
    .line 165
    invoke-static {v4, v10}, Lorg/wikipedia/util/FileUtil;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 166
    .line 167
    .line 168
    move-result v4

    .line 169
    if-nez v4, :cond_c

    .line 170
    .line 171
    :cond_b
    new-instance v10, Lorg/wikipedia/feed/ForYouModule$PlacesOfInterest;

    .line 172
    .line 173
    const/4 v14, 0x1

    .line 174
    const/4 v15, 0x1

    .line 175
    const/4 v11, 0x0

    .line 176
    const/4 v12, 0x0

    .line 177
    sget-object v13, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 178
    .line 179
    invoke-direct/range {v10 .. v15}, Lorg/wikipedia/feed/ForYouModule$PlacesOfInterest;-><init>(IILjava/util/List;ZZ)V

    .line 180
    .line 181
    .line 182
    iput-object v1, v0, Lorg/wikipedia/feed/HomeViewModel$placesModule$2;->L$0:Lkotlinx/coroutines/flow/FlowCollector;

    .line 183
    .line 184
    iput v5, v0, Lorg/wikipedia/feed/HomeViewModel$placesModule$2;->label:I

    .line 185
    .line 186
    invoke-interface {v1, v10, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v4

    .line 190
    if-ne v4, v9, :cond_c

    .line 191
    .line 192
    goto :goto_6

    .line 193
    :cond_c
    :goto_4
    iput-object v8, v0, Lorg/wikipedia/feed/HomeViewModel$placesModule$2;->L$0:Lkotlinx/coroutines/flow/FlowCollector;

    .line 194
    .line 195
    iput-object v1, v0, Lorg/wikipedia/feed/HomeViewModel$placesModule$2;->L$1:Lkotlinx/coroutines/flow/FlowCollector;

    .line 196
    .line 197
    iput v6, v0, Lorg/wikipedia/feed/HomeViewModel$placesModule$2;->label:I

    .line 198
    .line 199
    invoke-virtual {v3, v0}, Lorg/wikipedia/feed/HomeViewModel;->buildPlacesModule(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object v3

    .line 203
    if-ne v3, v9, :cond_d

    .line 204
    .line 205
    goto :goto_6

    .line 206
    :cond_d
    :goto_5
    iput-object v8, v0, Lorg/wikipedia/feed/HomeViewModel$placesModule$2;->L$0:Lkotlinx/coroutines/flow/FlowCollector;

    .line 207
    .line 208
    iput-object v8, v0, Lorg/wikipedia/feed/HomeViewModel$placesModule$2;->L$1:Lkotlinx/coroutines/flow/FlowCollector;

    .line 209
    .line 210
    iput v7, v0, Lorg/wikipedia/feed/HomeViewModel$placesModule$2;->label:I

    .line 211
    .line 212
    invoke-interface {v1, v3, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    move-result-object v0

    .line 216
    if-ne v0, v9, :cond_e

    .line 217
    .line 218
    :goto_6
    move-object v2, v9

    .line 219
    :cond_e
    :goto_7
    return-object v2

    .line 220
    nop

    .line 221
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
