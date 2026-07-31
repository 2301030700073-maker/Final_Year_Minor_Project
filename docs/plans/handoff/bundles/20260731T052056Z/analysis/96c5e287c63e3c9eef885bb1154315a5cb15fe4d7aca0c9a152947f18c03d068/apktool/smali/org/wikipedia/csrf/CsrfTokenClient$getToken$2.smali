.class public final Lorg/wikipedia/csrf/CsrfTokenClient$getToken$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic $site:Ljava/lang/Object;

.field public final synthetic $token:Ljava/lang/Object;

.field public $type:Ljava/lang/Object;

.field public I$0:I

.field public L$0:Ljava/lang/Object;

.field public L$1:Ljava/lang/Object;

.field public label:I


# direct methods
.method public constructor <init>(Landroidx/paging/CachedPagingDataKt$cachedIn$5;Landroid/content/Context;Lcom/airbnb/lottie/compose/LottieCompositionSpec$Asset;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lorg/wikipedia/csrf/CsrfTokenClient$getToken$2;->$r8$classId:I

    .line 3
    .line 4
    iput-object p1, p0, Lorg/wikipedia/csrf/CsrfTokenClient$getToken$2;->L$0:Ljava/lang/Object;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/wikipedia/csrf/CsrfTokenClient$getToken$2;->$site:Ljava/lang/Object;

    .line 7
    .line 8
    iput-object p3, p0, Lorg/wikipedia/csrf/CsrfTokenClient$getToken$2;->$type:Ljava/lang/Object;

    .line 9
    .line 10
    iput-object p4, p0, Lorg/wikipedia/csrf/CsrfTokenClient$getToken$2;->$token:Ljava/lang/Object;

    .line 11
    .line 12
    const/4 p1, 0x2

    .line 13
    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public constructor <init>(Lorg/wikipedia/createaccount/CreateAccountActivityViewModel;Ljava/lang/CharSequence;Lkotlin/coroutines/Continuation;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lorg/wikipedia/csrf/CsrfTokenClient$getToken$2;->$r8$classId:I

    .line 17
    iput-object p1, p0, Lorg/wikipedia/csrf/CsrfTokenClient$getToken$2;->$site:Ljava/lang/Object;

    iput-object p2, p0, Lorg/wikipedia/csrf/CsrfTokenClient$getToken$2;->$token:Ljava/lang/Object;

    invoke-direct {p0, v0, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method public constructor <init>(Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/wikipedia/csrf/CsrfTokenClient$getToken$2;->$r8$classId:I

    .line 18
    iput-object p1, p0, Lorg/wikipedia/csrf/CsrfTokenClient$getToken$2;->$site:Ljava/lang/Object;

    iput-object p2, p0, Lorg/wikipedia/csrf/CsrfTokenClient$getToken$2;->$type:Ljava/lang/Object;

    iput-object p3, p0, Lorg/wikipedia/csrf/CsrfTokenClient$getToken$2;->$token:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 8

    .line 1
    iget p1, p0, Lorg/wikipedia/csrf/CsrfTokenClient$getToken$2;->$r8$classId:I

    .line 2
    .line 3
    iget-object v0, p0, Lorg/wikipedia/csrf/CsrfTokenClient$getToken$2;->$token:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object v1, p0, Lorg/wikipedia/csrf/CsrfTokenClient$getToken$2;->$site:Ljava/lang/Object;

    .line 6
    .line 7
    packed-switch p1, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    new-instance p0, Lorg/wikipedia/csrf/CsrfTokenClient$getToken$2;

    .line 11
    .line 12
    check-cast v1, Lorg/wikipedia/createaccount/CreateAccountActivityViewModel;

    .line 13
    .line 14
    check-cast v0, Ljava/lang/CharSequence;

    .line 15
    .line 16
    invoke-direct {p0, v1, v0, p2}, Lorg/wikipedia/csrf/CsrfTokenClient$getToken$2;-><init>(Lorg/wikipedia/createaccount/CreateAccountActivityViewModel;Ljava/lang/CharSequence;Lkotlin/coroutines/Continuation;)V

    .line 17
    .line 18
    .line 19
    return-object p0

    .line 20
    :pswitch_0
    new-instance v2, Lorg/wikipedia/csrf/CsrfTokenClient$getToken$2;

    .line 21
    .line 22
    iget-object p1, p0, Lorg/wikipedia/csrf/CsrfTokenClient$getToken$2;->L$0:Ljava/lang/Object;

    .line 23
    .line 24
    move-object v3, p1

    .line 25
    check-cast v3, Landroidx/paging/CachedPagingDataKt$cachedIn$5;

    .line 26
    .line 27
    move-object v4, v1

    .line 28
    check-cast v4, Landroid/content/Context;

    .line 29
    .line 30
    iget-object p0, p0, Lorg/wikipedia/csrf/CsrfTokenClient$getToken$2;->$type:Ljava/lang/Object;

    .line 31
    .line 32
    move-object v5, p0

    .line 33
    check-cast v5, Lcom/airbnb/lottie/compose/LottieCompositionSpec$Asset;

    .line 34
    .line 35
    move-object v6, v0

    .line 36
    check-cast v6, Landroidx/compose/runtime/MutableState;

    .line 37
    .line 38
    move-object v7, p2

    .line 39
    invoke-direct/range {v2 .. v7}, Lorg/wikipedia/csrf/CsrfTokenClient$getToken$2;-><init>(Landroidx/paging/CachedPagingDataKt$cachedIn$5;Landroid/content/Context;Lcom/airbnb/lottie/compose/LottieCompositionSpec$Asset;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    .line 40
    .line 41
    .line 42
    return-object v2

    .line 43
    :pswitch_1
    move-object v7, p2

    .line 44
    new-instance p1, Lorg/wikipedia/csrf/CsrfTokenClient$getToken$2;

    .line 45
    .line 46
    check-cast v1, Lorg/wikipedia/dataclient/WikiSite;

    .line 47
    .line 48
    iget-object p0, p0, Lorg/wikipedia/csrf/CsrfTokenClient$getToken$2;->$type:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast p0, Ljava/lang/String;

    .line 51
    .line 52
    check-cast v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 53
    .line 54
    invoke-direct {p1, v1, p0, v0, v7}, Lorg/wikipedia/csrf/CsrfTokenClient$getToken$2;-><init>(Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V

    .line 55
    .line 56
    .line 57
    return-object p1

    .line 58
    nop

    .line 59
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lorg/wikipedia/csrf/CsrfTokenClient$getToken$2;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 6
    .line 7
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/csrf/CsrfTokenClient$getToken$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lorg/wikipedia/csrf/CsrfTokenClient$getToken$2;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lorg/wikipedia/csrf/CsrfTokenClient$getToken$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/csrf/CsrfTokenClient$getToken$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Lorg/wikipedia/csrf/CsrfTokenClient$getToken$2;

    .line 28
    .line 29
    invoke-virtual {p0, v1}, Lorg/wikipedia/csrf/CsrfTokenClient$getToken$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0

    .line 34
    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/csrf/CsrfTokenClient$getToken$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    check-cast p0, Lorg/wikipedia/csrf/CsrfTokenClient$getToken$2;

    .line 39
    .line 40
    invoke-virtual {p0, v1}, Lorg/wikipedia/csrf/CsrfTokenClient$getToken$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    return-object p0

    .line 45
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    iget v0, v6, Lorg/wikipedia/csrf/CsrfTokenClient$getToken$2;->$r8$classId:I

    .line 4
    .line 5
    const/4 v1, 0x3

    .line 6
    const/4 v7, 0x1

    .line 7
    const/4 v8, 0x2

    .line 8
    const/4 v9, 0x0

    .line 9
    const/4 v10, 0x0

    .line 10
    packed-switch v0, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    const-string v0, ""

    .line 14
    .line 15
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 16
    .line 17
    iget-object v3, v6, Lorg/wikipedia/csrf/CsrfTokenClient$getToken$2;->$token:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v3, Ljava/lang/CharSequence;

    .line 20
    .line 21
    iget-object v4, v6, Lorg/wikipedia/csrf/CsrfTokenClient$getToken$2;->$site:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v4, Lorg/wikipedia/createaccount/CreateAccountActivityViewModel;

    .line 24
    .line 25
    iget-object v5, v4, Lorg/wikipedia/createaccount/CreateAccountActivityViewModel;->_verifyUserNameState:Lkotlinx/coroutines/flow/SharedFlowImpl;

    .line 26
    .line 27
    sget-object v11, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    .line 29
    iget v12, v6, Lorg/wikipedia/csrf/CsrfTokenClient$getToken$2;->label:I

    .line 30
    .line 31
    packed-switch v12, :pswitch_data_1

    .line 32
    .line 33
    .line 34
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 35
    .line 36
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    goto/16 :goto_b

    .line 40
    .line 41
    :pswitch_0
    iget-object v0, v6, Lorg/wikipedia/csrf/CsrfTokenClient$getToken$2;->L$0:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast v0, Lorg/wikipedia/createaccount/CreateAccountActivityViewModel;

    .line 44
    .line 45
    check-cast v0, Lorg/wikipedia/dataclient/mwapi/UserInfo;

    .line 46
    .line 47
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    :cond_0
    :goto_0
    move-object v10, v2

    .line 51
    goto/16 :goto_b

    .line 52
    .line 53
    :pswitch_1
    iget v1, v6, Lorg/wikipedia/csrf/CsrfTokenClient$getToken$2;->I$0:I

    .line 54
    .line 55
    iget-object v3, v6, Lorg/wikipedia/csrf/CsrfTokenClient$getToken$2;->L$1:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast v3, Lorg/wikipedia/dataclient/mwapi/UserInfo;

    .line 58
    .line 59
    iget-object v4, v6, Lorg/wikipedia/csrf/CsrfTokenClient$getToken$2;->L$0:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast v4, Lorg/wikipedia/createaccount/CreateAccountActivityViewModel;

    .line 62
    .line 63
    iget-object v5, v6, Lorg/wikipedia/csrf/CsrfTokenClient$getToken$2;->$type:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast v5, Ljava/lang/String;

    .line 66
    .line 67
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    goto/16 :goto_6

    .line 71
    .line 72
    :pswitch_2
    iget-object v1, v6, Lorg/wikipedia/csrf/CsrfTokenClient$getToken$2;->$type:Ljava/lang/Object;

    .line 73
    .line 74
    check-cast v1, Ljava/lang/String;

    .line 75
    .line 76
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    move-object v3, v1

    .line 80
    move-object/from16 v1, p1

    .line 81
    .line 82
    goto :goto_3

    .line 83
    :pswitch_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    goto :goto_2

    .line 87
    :pswitch_4
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    goto :goto_1

    .line 91
    :pswitch_5
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    sget-object v12, Lorg/wikipedia/createaccount/CreateAccountActivityViewModel$UserNameState$Initial;->INSTANCE:Lorg/wikipedia/createaccount/CreateAccountActivityViewModel$UserNameState$Initial;

    .line 95
    .line 96
    iput v7, v6, Lorg/wikipedia/csrf/CsrfTokenClient$getToken$2;->label:I

    .line 97
    .line 98
    invoke-virtual {v5, v12, v6}, Lkotlinx/coroutines/flow/SharedFlowImpl;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v7

    .line 102
    if-ne v7, v11, :cond_1

    .line 103
    .line 104
    goto/16 :goto_a

    .line 105
    .line 106
    :cond_1
    :goto_1
    if-eqz v3, :cond_0

    .line 107
    .line 108
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 109
    .line 110
    .line 111
    move-result v7

    .line 112
    if-nez v7, :cond_2

    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_2
    iput v8, v6, Lorg/wikipedia/csrf/CsrfTokenClient$getToken$2;->label:I

    .line 116
    .line 117
    const-wide/16 v7, 0x3e8

    .line 118
    .line 119
    invoke-static {v7, v8, v6}, Lkotlinx/coroutines/AwaitKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v7

    .line 123
    if-ne v7, v11, :cond_3

    .line 124
    .line 125
    goto/16 :goto_a

    .line 126
    .line 127
    :cond_3
    :goto_2
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v3

    .line 131
    sget-object v7, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 132
    .line 133
    sget-object v7, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 134
    .line 135
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 136
    .line 137
    .line 138
    move-result-object v7

    .line 139
    invoke-virtual {v7}, Lorg/wikipedia/WikipediaApp;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    .line 140
    .line 141
    .line 142
    move-result-object v7

    .line 143
    invoke-static {v7}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    .line 144
    .line 145
    .line 146
    move-result-object v7

    .line 147
    iput-object v3, v6, Lorg/wikipedia/csrf/CsrfTokenClient$getToken$2;->$type:Ljava/lang/Object;

    .line 148
    .line 149
    iput v1, v6, Lorg/wikipedia/csrf/CsrfTokenClient$getToken$2;->label:I

    .line 150
    .line 151
    invoke-interface {v7, v3, v6}, Lorg/wikipedia/dataclient/Service;->getUserList(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    if-ne v1, v11, :cond_4

    .line 156
    .line 157
    goto/16 :goto_a

    .line 158
    .line 159
    :cond_4
    :goto_3
    check-cast v1, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    .line 160
    .line 161
    iget-object v1, v1, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query:Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    .line 162
    .line 163
    if-eqz v1, :cond_0

    .line 164
    .line 165
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 166
    .line 167
    .line 168
    iget-object v1, v1, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->users:Ljava/util/List;

    .line 169
    .line 170
    if-eqz v1, :cond_7

    .line 171
    .line 172
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 177
    .line 178
    .line 179
    move-result v7

    .line 180
    if-eqz v7, :cond_6

    .line 181
    .line 182
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object v7

    .line 186
    move-object v8, v7

    .line 187
    check-cast v8, Lorg/wikipedia/dataclient/mwapi/UserInfo;

    .line 188
    .line 189
    sget-object v12, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 190
    .line 191
    invoke-static {v3}, Lorg/wikipedia/util/StringUtil;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v12

    .line 195
    iget-object v8, v8, Lorg/wikipedia/dataclient/mwapi/UserInfo;->name:Ljava/lang/String;

    .line 196
    .line 197
    invoke-static {v12, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 198
    .line 199
    .line 200
    move-result v8

    .line 201
    if-eqz v8, :cond_5

    .line 202
    .line 203
    goto :goto_4

    .line 204
    :cond_6
    move-object v7, v10

    .line 205
    :goto_4
    check-cast v7, Lorg/wikipedia/dataclient/mwapi/UserInfo;

    .line 206
    .line 207
    goto :goto_5

    .line 208
    :cond_7
    move-object v7, v10

    .line 209
    :goto_5
    if-eqz v7, :cond_0

    .line 210
    .line 211
    sget-object v1, Lorg/wikipedia/createaccount/CreateAccountActivityViewModel$UserNameState$Success;->INSTANCE:Lorg/wikipedia/createaccount/CreateAccountActivityViewModel$UserNameState$Success;

    .line 212
    .line 213
    iput-object v3, v6, Lorg/wikipedia/csrf/CsrfTokenClient$getToken$2;->$type:Ljava/lang/Object;

    .line 214
    .line 215
    iput-object v4, v6, Lorg/wikipedia/csrf/CsrfTokenClient$getToken$2;->L$0:Ljava/lang/Object;

    .line 216
    .line 217
    iput-object v7, v6, Lorg/wikipedia/csrf/CsrfTokenClient$getToken$2;->L$1:Ljava/lang/Object;

    .line 218
    .line 219
    iput v9, v6, Lorg/wikipedia/csrf/CsrfTokenClient$getToken$2;->I$0:I

    .line 220
    .line 221
    const/4 v8, 0x4

    .line 222
    iput v8, v6, Lorg/wikipedia/csrf/CsrfTokenClient$getToken$2;->label:I

    .line 223
    .line 224
    invoke-virtual {v5, v1, v6}, Lkotlinx/coroutines/flow/SharedFlowImpl;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    move-result-object v1

    .line 228
    if-ne v1, v11, :cond_8

    .line 229
    .line 230
    goto/16 :goto_a

    .line 231
    .line 232
    :cond_8
    move-object v5, v3

    .line 233
    move-object v3, v7

    .line 234
    move v1, v9

    .line 235
    :goto_6
    iget-object v7, v3, Lorg/wikipedia/dataclient/mwapi/UserInfo;->canCreateError:Ljava/util/List;

    .line 236
    .line 237
    if-eqz v7, :cond_9

    .line 238
    .line 239
    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 240
    .line 241
    .line 242
    move-result-object v7

    .line 243
    check-cast v7, Lorg/wikipedia/dataclient/mwapi/MwServiceError;

    .line 244
    .line 245
    if-eqz v7, :cond_9

    .line 246
    .line 247
    invoke-virtual {v7}, Lorg/wikipedia/dataclient/mwapi/MwServiceError;->getKey()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v7

    .line 251
    goto :goto_7

    .line 252
    :cond_9
    move-object v7, v10

    .line 253
    :goto_7
    if-nez v7, :cond_a

    .line 254
    .line 255
    move-object v7, v0

    .line 256
    :cond_a
    const-string v8, "block"

    .line 257
    .line 258
    invoke-static {v7, v8, v9}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 259
    .line 260
    .line 261
    move-result v7

    .line 262
    if-eqz v7, :cond_d

    .line 263
    .line 264
    iget-object v4, v4, Lorg/wikipedia/createaccount/CreateAccountActivityViewModel;->_verifyUserNameState:Lkotlinx/coroutines/flow/SharedFlowImpl;

    .line 265
    .line 266
    new-instance v5, Lorg/wikipedia/createaccount/CreateAccountActivityViewModel$UserNameState$Blocked;

    .line 267
    .line 268
    iget-object v3, v3, Lorg/wikipedia/dataclient/mwapi/UserInfo;->canCreateError:Ljava/util/List;

    .line 269
    .line 270
    if-eqz v3, :cond_b

    .line 271
    .line 272
    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 273
    .line 274
    .line 275
    move-result-object v3

    .line 276
    check-cast v3, Lorg/wikipedia/dataclient/mwapi/MwServiceError;

    .line 277
    .line 278
    if-eqz v3, :cond_b

    .line 279
    .line 280
    invoke-virtual {v3}, Lorg/wikipedia/dataclient/mwapi/MwServiceError;->getKey()Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v3

    .line 284
    goto :goto_8

    .line 285
    :cond_b
    move-object v3, v10

    .line 286
    :goto_8
    if-nez v3, :cond_c

    .line 287
    .line 288
    goto :goto_9

    .line 289
    :cond_c
    move-object v0, v3

    .line 290
    :goto_9
    invoke-direct {v5, v0}, Lorg/wikipedia/createaccount/CreateAccountActivityViewModel$UserNameState$Blocked;-><init>(Ljava/lang/String;)V

    .line 291
    .line 292
    .line 293
    iput-object v10, v6, Lorg/wikipedia/csrf/CsrfTokenClient$getToken$2;->$type:Ljava/lang/Object;

    .line 294
    .line 295
    iput-object v10, v6, Lorg/wikipedia/csrf/CsrfTokenClient$getToken$2;->L$0:Ljava/lang/Object;

    .line 296
    .line 297
    iput-object v10, v6, Lorg/wikipedia/csrf/CsrfTokenClient$getToken$2;->L$1:Ljava/lang/Object;

    .line 298
    .line 299
    iput v1, v6, Lorg/wikipedia/csrf/CsrfTokenClient$getToken$2;->I$0:I

    .line 300
    .line 301
    const/4 v0, 0x5

    .line 302
    iput v0, v6, Lorg/wikipedia/csrf/CsrfTokenClient$getToken$2;->label:I

    .line 303
    .line 304
    invoke-virtual {v4, v5, v6}, Lkotlinx/coroutines/flow/SharedFlowImpl;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 305
    .line 306
    .line 307
    move-result-object v0

    .line 308
    if-ne v0, v11, :cond_0

    .line 309
    .line 310
    goto :goto_a

    .line 311
    :cond_d
    iget-boolean v0, v3, Lorg/wikipedia/dataclient/mwapi/UserInfo;->canCreate:Z

    .line 312
    .line 313
    if-nez v0, :cond_0

    .line 314
    .line 315
    iget-object v0, v4, Lorg/wikipedia/createaccount/CreateAccountActivityViewModel;->_verifyUserNameState:Lkotlinx/coroutines/flow/SharedFlowImpl;

    .line 316
    .line 317
    new-instance v3, Lorg/wikipedia/createaccount/CreateAccountActivityViewModel$UserNameState$CannotCreate;

    .line 318
    .line 319
    invoke-direct {v3, v5}, Lorg/wikipedia/createaccount/CreateAccountActivityViewModel$UserNameState$CannotCreate;-><init>(Ljava/lang/String;)V

    .line 320
    .line 321
    .line 322
    iput-object v10, v6, Lorg/wikipedia/csrf/CsrfTokenClient$getToken$2;->$type:Ljava/lang/Object;

    .line 323
    .line 324
    iput-object v10, v6, Lorg/wikipedia/csrf/CsrfTokenClient$getToken$2;->L$0:Ljava/lang/Object;

    .line 325
    .line 326
    iput-object v10, v6, Lorg/wikipedia/csrf/CsrfTokenClient$getToken$2;->L$1:Ljava/lang/Object;

    .line 327
    .line 328
    iput v1, v6, Lorg/wikipedia/csrf/CsrfTokenClient$getToken$2;->I$0:I

    .line 329
    .line 330
    const/4 v1, 0x6

    .line 331
    iput v1, v6, Lorg/wikipedia/csrf/CsrfTokenClient$getToken$2;->label:I

    .line 332
    .line 333
    invoke-virtual {v0, v3, v6}, Lkotlinx/coroutines/flow/SharedFlowImpl;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 334
    .line 335
    .line 336
    move-result-object v0

    .line 337
    if-ne v0, v11, :cond_0

    .line 338
    .line 339
    :goto_a
    move-object v10, v11

    .line 340
    :goto_b
    return-object v10

    .line 341
    :pswitch_6
    sget-object v11, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 342
    .line 343
    iget v0, v6, Lorg/wikipedia/csrf/CsrfTokenClient$getToken$2;->label:I

    .line 344
    .line 345
    if-eqz v0, :cond_10

    .line 346
    .line 347
    if-eq v0, v7, :cond_f

    .line 348
    .line 349
    if-ne v0, v8, :cond_e

    .line 350
    .line 351
    iget v1, v6, Lorg/wikipedia/csrf/CsrfTokenClient$getToken$2;->I$0:I

    .line 352
    .line 353
    iget-object v0, v6, Lorg/wikipedia/csrf/CsrfTokenClient$getToken$2;->L$1:Ljava/lang/Object;

    .line 354
    .line 355
    check-cast v0, Ljava/lang/Throwable;

    .line 356
    .line 357
    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 358
    .line 359
    .line 360
    move-object v12, v0

    .line 361
    move-object/from16 v0, p1

    .line 362
    .line 363
    goto/16 :goto_14

    .line 364
    .line 365
    :catchall_0
    move-exception v0

    .line 366
    move v13, v1

    .line 367
    :goto_c
    move-object v1, v0

    .line 368
    goto/16 :goto_16

    .line 369
    .line 370
    :cond_e
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 371
    .line 372
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 373
    .line 374
    .line 375
    goto/16 :goto_17

    .line 376
    .line 377
    :cond_f
    iget v0, v6, Lorg/wikipedia/csrf/CsrfTokenClient$getToken$2;->I$0:I

    .line 378
    .line 379
    iget-object v1, v6, Lorg/wikipedia/csrf/CsrfTokenClient$getToken$2;->L$1:Ljava/lang/Object;

    .line 380
    .line 381
    check-cast v1, Ljava/lang/Throwable;

    .line 382
    .line 383
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 384
    .line 385
    .line 386
    move-object/from16 v2, p1

    .line 387
    .line 388
    goto :goto_e

    .line 389
    :cond_10
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 390
    .line 391
    .line 392
    move v0, v9

    .line 393
    move-object v1, v10

    .line 394
    :goto_d
    iget-object v2, v6, Lorg/wikipedia/csrf/CsrfTokenClient$getToken$2;->$token:Ljava/lang/Object;

    .line 395
    .line 396
    check-cast v2, Landroidx/compose/runtime/MutableState;

    .line 397
    .line 398
    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 399
    .line 400
    .line 401
    move-result-object v2

    .line 402
    check-cast v2, Lcom/airbnb/lottie/compose/LottieCompositionResultImpl;

    .line 403
    .line 404
    iget-object v2, v2, Lcom/airbnb/lottie/compose/LottieCompositionResultImpl;->isSuccess$delegate:Landroidx/compose/runtime/DerivedSnapshotState;

    .line 405
    .line 406
    invoke-virtual {v2}, Landroidx/compose/runtime/DerivedSnapshotState;->getValue()Ljava/lang/Object;

    .line 407
    .line 408
    .line 409
    move-result-object v2

    .line 410
    check-cast v2, Ljava/lang/Boolean;

    .line 411
    .line 412
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 413
    .line 414
    .line 415
    move-result v2

    .line 416
    if-nez v2, :cond_19

    .line 417
    .line 418
    if-eqz v0, :cond_12

    .line 419
    .line 420
    iget-object v2, v6, Lorg/wikipedia/csrf/CsrfTokenClient$getToken$2;->L$0:Ljava/lang/Object;

    .line 421
    .line 422
    check-cast v2, Landroidx/paging/CachedPagingDataKt$cachedIn$5;

    .line 423
    .line 424
    new-instance v3, Ljava/lang/Integer;

    .line 425
    .line 426
    invoke-direct {v3, v0}, Ljava/lang/Integer;-><init>(I)V

    .line 427
    .line 428
    .line 429
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 430
    .line 431
    .line 432
    iput-object v1, v6, Lorg/wikipedia/csrf/CsrfTokenClient$getToken$2;->L$1:Ljava/lang/Object;

    .line 433
    .line 434
    iput v0, v6, Lorg/wikipedia/csrf/CsrfTokenClient$getToken$2;->I$0:I

    .line 435
    .line 436
    iput v7, v6, Lorg/wikipedia/csrf/CsrfTokenClient$getToken$2;->label:I

    .line 437
    .line 438
    invoke-virtual {v2, v3, v1, v6}, Landroidx/paging/CachedPagingDataKt$cachedIn$5;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    .line 440
    .line 441
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 442
    .line 443
    if-ne v2, v11, :cond_11

    .line 444
    .line 445
    goto :goto_13

    .line 446
    :cond_11
    :goto_e
    check-cast v2, Ljava/lang/Boolean;

    .line 447
    .line 448
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 449
    .line 450
    .line 451
    move-result v2

    .line 452
    if-eqz v2, :cond_19

    .line 453
    .line 454
    :cond_12
    move v13, v0

    .line 455
    move-object v12, v1

    .line 456
    :try_start_1
    iget-object v0, v6, Lorg/wikipedia/csrf/CsrfTokenClient$getToken$2;->$site:Ljava/lang/Object;

    .line 457
    .line 458
    check-cast v0, Landroid/content/Context;

    .line 459
    .line 460
    iget-object v1, v6, Lorg/wikipedia/csrf/CsrfTokenClient$getToken$2;->$type:Ljava/lang/Object;

    .line 461
    .line 462
    check-cast v1, Lcom/airbnb/lottie/compose/LottieCompositionSpec$Asset;

    .line 463
    .line 464
    const-string v2, "fonts/"

    .line 465
    .line 466
    invoke-static {v2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 467
    .line 468
    .line 469
    move-result v3

    .line 470
    if-eqz v3, :cond_13

    .line 471
    .line 472
    move-object v3, v10

    .line 473
    goto :goto_10

    .line 474
    :cond_13
    const/16 v3, 0x2f

    .line 475
    .line 476
    invoke-static {v2, v3}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/CharSequence;C)Z

    .line 477
    .line 478
    .line 479
    move-result v3

    .line 480
    if-eqz v3, :cond_14

    .line 481
    .line 482
    :goto_f
    move-object v3, v2

    .line 483
    goto :goto_10

    .line 484
    :cond_14
    const-string v3, "/"

    .line 485
    .line 486
    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 487
    .line 488
    .line 489
    move-result-object v2

    .line 490
    goto :goto_f

    .line 491
    :goto_10
    const-string v2, ".ttf"

    .line 492
    .line 493
    const-string v4, "."

    .line 494
    .line 495
    invoke-static {v2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 496
    .line 497
    .line 498
    move-result v5

    .line 499
    if-eqz v5, :cond_15

    .line 500
    .line 501
    goto :goto_11

    .line 502
    :cond_15
    invoke-static {v2, v4, v9}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 503
    .line 504
    .line 505
    move-result v5

    .line 506
    if-eqz v5, :cond_16

    .line 507
    .line 508
    :goto_11
    move-object v4, v2

    .line 509
    goto :goto_12

    .line 510
    :cond_16
    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 511
    .line 512
    .line 513
    move-result-object v2

    .line 514
    goto :goto_11

    .line 515
    :goto_12
    const-string v5, "__LottieInternalDefaultCacheKey__"

    .line 516
    .line 517
    iput-object v12, v6, Lorg/wikipedia/csrf/CsrfTokenClient$getToken$2;->L$1:Ljava/lang/Object;

    .line 518
    .line 519
    iput v13, v6, Lorg/wikipedia/csrf/CsrfTokenClient$getToken$2;->I$0:I

    .line 520
    .line 521
    iput v8, v6, Lorg/wikipedia/csrf/CsrfTokenClient$getToken$2;->label:I

    .line 522
    .line 523
    const/4 v2, 0x0

    .line 524
    invoke-static/range {v0 .. v6}, Landroidx/room/Room;->lottieComposition(Landroid/content/Context;Lcom/airbnb/lottie/compose/LottieCompositionSpec$Asset;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 525
    .line 526
    .line 527
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 528
    if-ne v0, v11, :cond_17

    .line 529
    .line 530
    :goto_13
    move-object v10, v11

    .line 531
    goto :goto_17

    .line 532
    :cond_17
    move v1, v13

    .line 533
    :goto_14
    :try_start_2
    check-cast v0, Lcom/airbnb/lottie/LottieComposition;

    .line 534
    .line 535
    iget-object v2, v6, Lorg/wikipedia/csrf/CsrfTokenClient$getToken$2;->$token:Ljava/lang/Object;

    .line 536
    .line 537
    check-cast v2, Landroidx/compose/runtime/MutableState;

    .line 538
    .line 539
    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 540
    .line 541
    .line 542
    move-result-object v2

    .line 543
    check-cast v2, Lcom/airbnb/lottie/compose/LottieCompositionResultImpl;

    .line 544
    .line 545
    monitor-enter v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 546
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 547
    .line 548
    .line 549
    iget-object v3, v2, Lcom/airbnb/lottie/compose/LottieCompositionResultImpl;->isComplete$delegate:Landroidx/compose/runtime/DerivedSnapshotState;

    .line 550
    .line 551
    invoke-virtual {v3}, Landroidx/compose/runtime/DerivedSnapshotState;->getValue()Ljava/lang/Object;

    .line 552
    .line 553
    .line 554
    move-result-object v3

    .line 555
    check-cast v3, Ljava/lang/Boolean;

    .line 556
    .line 557
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 558
    .line 559
    .line 560
    move-result v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 561
    if-eqz v3, :cond_18

    .line 562
    .line 563
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 564
    goto :goto_15

    .line 565
    :cond_18
    :try_start_5
    iget-object v3, v2, Lcom/airbnb/lottie/compose/LottieCompositionResultImpl;->value$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 566
    .line 567
    invoke-virtual {v3, v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    .line 568
    .line 569
    .line 570
    iget-object v3, v2, Lcom/airbnb/lottie/compose/LottieCompositionResultImpl;->compositionDeferred:Lkotlinx/coroutines/CompletableDeferredImpl;

    .line 571
    .line 572
    invoke-virtual {v3, v0}, Lkotlinx/coroutines/JobSupport;->makeCompleting$kotlinx_coroutines_core(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 573
    .line 574
    .line 575
    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 576
    :goto_15
    move v0, v1

    .line 577
    move-object v1, v12

    .line 578
    goto/16 :goto_d

    .line 579
    .line 580
    :catchall_1
    move-exception v0

    .line 581
    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 582
    :try_start_8
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 583
    :catchall_2
    move-exception v0

    .line 584
    goto/16 :goto_c

    .line 585
    .line 586
    :goto_16
    add-int/lit8 v0, v13, 0x1

    .line 587
    .line 588
    goto/16 :goto_d

    .line 589
    .line 590
    :cond_19
    iget-object v0, v6, Lorg/wikipedia/csrf/CsrfTokenClient$getToken$2;->$token:Ljava/lang/Object;

    .line 591
    .line 592
    check-cast v0, Landroidx/compose/runtime/MutableState;

    .line 593
    .line 594
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 595
    .line 596
    .line 597
    move-result-object v0

    .line 598
    check-cast v0, Lcom/airbnb/lottie/compose/LottieCompositionResultImpl;

    .line 599
    .line 600
    iget-object v0, v0, Lcom/airbnb/lottie/compose/LottieCompositionResultImpl;->isComplete$delegate:Landroidx/compose/runtime/DerivedSnapshotState;

    .line 601
    .line 602
    invoke-virtual {v0}, Landroidx/compose/runtime/DerivedSnapshotState;->getValue()Ljava/lang/Object;

    .line 603
    .line 604
    .line 605
    move-result-object v0

    .line 606
    check-cast v0, Ljava/lang/Boolean;

    .line 607
    .line 608
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 609
    .line 610
    .line 611
    move-result v0

    .line 612
    if-nez v0, :cond_1a

    .line 613
    .line 614
    if-eqz v1, :cond_1a

    .line 615
    .line 616
    iget-object v0, v6, Lorg/wikipedia/csrf/CsrfTokenClient$getToken$2;->$token:Ljava/lang/Object;

    .line 617
    .line 618
    check-cast v0, Landroidx/compose/runtime/MutableState;

    .line 619
    .line 620
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 621
    .line 622
    .line 623
    move-result-object v0

    .line 624
    check-cast v0, Lcom/airbnb/lottie/compose/LottieCompositionResultImpl;

    .line 625
    .line 626
    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/compose/LottieCompositionResultImpl;->completeExceptionally$lottie_compose_release(Ljava/lang/Throwable;)V

    .line 627
    .line 628
    .line 629
    :cond_1a
    sget-object v10, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 630
    .line 631
    :goto_17
    return-object v10

    .line 632
    :pswitch_7
    const-string v2, ""

    .line 633
    .line 634
    iget-object v0, v6, Lorg/wikipedia/csrf/CsrfTokenClient$getToken$2;->$type:Ljava/lang/Object;

    .line 635
    .line 636
    move-object v3, v0

    .line 637
    check-cast v3, Ljava/lang/String;

    .line 638
    .line 639
    iget-object v0, v6, Lorg/wikipedia/csrf/CsrfTokenClient$getToken$2;->$token:Ljava/lang/Object;

    .line 640
    .line 641
    move-object v4, v0

    .line 642
    check-cast v4, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 643
    .line 644
    sget-object v5, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 645
    .line 646
    iget v0, v6, Lorg/wikipedia/csrf/CsrfTokenClient$getToken$2;->label:I

    .line 647
    .line 648
    if-eqz v0, :cond_1d

    .line 649
    .line 650
    if-eq v0, v7, :cond_1c

    .line 651
    .line 652
    if-ne v0, v8, :cond_1b

    .line 653
    .line 654
    iget v11, v6, Lorg/wikipedia/csrf/CsrfTokenClient$getToken$2;->I$0:I

    .line 655
    .line 656
    iget-object v0, v6, Lorg/wikipedia/csrf/CsrfTokenClient$getToken$2;->L$1:Ljava/lang/Object;

    .line 657
    .line 658
    check-cast v0, Ljava/lang/Throwable;

    .line 659
    .line 660
    iget-object v12, v6, Lorg/wikipedia/csrf/CsrfTokenClient$getToken$2;->L$0:Ljava/lang/Object;

    .line 661
    .line 662
    check-cast v12, Lorg/wikipedia/dataclient/Service;

    .line 663
    .line 664
    :try_start_9
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_9
    .catch Ljava/util/concurrent/CancellationException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 665
    .line 666
    .line 667
    move-object/from16 v1, p1

    .line 668
    .line 669
    move/from16 v16, v7

    .line 670
    .line 671
    goto/16 :goto_20

    .line 672
    .line 673
    :catchall_3
    move-exception v0

    .line 674
    move/from16 v16, v7

    .line 675
    .line 676
    goto/16 :goto_21

    .line 677
    .line 678
    :cond_1b
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 679
    .line 680
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 681
    .line 682
    .line 683
    goto/16 :goto_26

    .line 684
    .line 685
    :cond_1c
    iget v11, v6, Lorg/wikipedia/csrf/CsrfTokenClient$getToken$2;->I$0:I

    .line 686
    .line 687
    iget-object v0, v6, Lorg/wikipedia/csrf/CsrfTokenClient$getToken$2;->L$1:Ljava/lang/Object;

    .line 688
    .line 689
    check-cast v0, Ljava/lang/Throwable;

    .line 690
    .line 691
    iget-object v12, v6, Lorg/wikipedia/csrf/CsrfTokenClient$getToken$2;->L$0:Ljava/lang/Object;

    .line 692
    .line 693
    check-cast v12, Lorg/wikipedia/dataclient/Service;

    .line 694
    .line 695
    :try_start_a
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_a
    .catch Ljava/util/concurrent/CancellationException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 696
    .line 697
    .line 698
    move-object/from16 v13, p1

    .line 699
    .line 700
    goto :goto_19

    .line 701
    :cond_1d
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 702
    .line 703
    .line 704
    :try_start_b
    sget-object v0, Lorg/wikipedia/csrf/CsrfTokenClient;->MUTEX:Ljava/util/concurrent/Semaphore;

    .line 705
    .line 706
    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 707
    .line 708
    .line 709
    sget-object v0, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 710
    .line 711
    iget-object v0, v6, Lorg/wikipedia/csrf/CsrfTokenClient$getToken$2;->$site:Ljava/lang/Object;

    .line 712
    .line 713
    check-cast v0, Lorg/wikipedia/dataclient/WikiSite;

    .line 714
    .line 715
    invoke-static {v0}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    .line 716
    .line 717
    .line 718
    move-result-object v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 719
    move-object v12, v0

    .line 720
    move v11, v9

    .line 721
    move-object v0, v10

    .line 722
    :goto_18
    if-ge v11, v1, :cond_28

    .line 723
    .line 724
    :try_start_c
    iput-object v12, v6, Lorg/wikipedia/csrf/CsrfTokenClient$getToken$2;->L$0:Ljava/lang/Object;

    .line 725
    .line 726
    iput-object v0, v6, Lorg/wikipedia/csrf/CsrfTokenClient$getToken$2;->L$1:Ljava/lang/Object;

    .line 727
    .line 728
    iput v11, v6, Lorg/wikipedia/csrf/CsrfTokenClient$getToken$2;->I$0:I

    .line 729
    .line 730
    iput v7, v6, Lorg/wikipedia/csrf/CsrfTokenClient$getToken$2;->label:I

    .line 731
    .line 732
    invoke-interface {v12, v3, v6}, Lorg/wikipedia/dataclient/Service;->getToken(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 733
    .line 734
    .line 735
    move-result-object v13

    .line 736
    if-ne v13, v5, :cond_1e

    .line 737
    .line 738
    goto/16 :goto_1f

    .line 739
    .line 740
    :cond_1e
    :goto_19
    check-cast v13, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    .line 741
    .line 742
    const-string v14, "rollback"

    .line 743
    .line 744
    invoke-static {v3, v14}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 745
    .line 746
    .line 747
    move-result v14

    .line 748
    if-eqz v14, :cond_20

    .line 749
    .line 750
    iget-object v13, v13, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query:Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    .line 751
    .line 752
    if-eqz v13, :cond_1f

    .line 753
    .line 754
    iget-object v13, v13, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->tokens:Lorg/wikipedia/dataclient/mwapi/MwQueryResult$Tokens;

    .line 755
    .line 756
    if-eqz v13, :cond_1f

    .line 757
    .line 758
    iget-object v13, v13, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$Tokens;->rollback:Ljava/lang/String;

    .line 759
    .line 760
    goto :goto_1a

    .line 761
    :cond_1f
    move-object v13, v10

    .line 762
    :goto_1a
    if-nez v13, :cond_22

    .line 763
    .line 764
    :goto_1b
    move-object v13, v2

    .line 765
    goto :goto_1d

    .line 766
    :cond_20
    iget-object v13, v13, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query:Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    .line 767
    .line 768
    if-eqz v13, :cond_21

    .line 769
    .line 770
    invoke-virtual {v13}, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->csrfToken()Ljava/lang/String;

    .line 771
    .line 772
    .line 773
    move-result-object v13

    .line 774
    goto :goto_1c

    .line 775
    :cond_21
    move-object v13, v10

    .line 776
    :goto_1c
    if-nez v13, :cond_22

    .line 777
    .line 778
    goto :goto_1b

    .line 779
    :cond_22
    :goto_1d
    iput-object v13, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 780
    .line 781
    sget-object v14, Lorg/wikipedia/csrf/CsrfTokenClient;->INSTANCE:Lorg/wikipedia/csrf/CsrfTokenClient;

    .line 782
    .line 783
    invoke-static {v13}, Lorg/wikipedia/csrf/CsrfTokenClient;->tokenRequiresLogin(Ljava/lang/String;)Z

    .line 784
    .line 785
    .line 786
    move-result v13

    .line 787
    if-eqz v13, :cond_25

    .line 788
    .line 789
    const-string v13, "App believes we\'re logged in, but got anonymous token. Logging in explicitly..."

    .line 790
    .line 791
    invoke-static {v13}, Lorg/wikipedia/util/log/L;->d(Ljava/lang/String;)V

    .line 792
    .line 793
    .line 794
    new-instance v13, Lorg/wikipedia/login/LoginClient;

    .line 795
    .line 796
    invoke-direct {v13, v9}, Lorg/wikipedia/login/LoginClient;-><init>(I)V

    .line 797
    .line 798
    .line 799
    sget-object v14, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 800
    .line 801
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 802
    .line 803
    .line 804
    move-result-object v14

    .line 805
    invoke-virtual {v14}, Lorg/wikipedia/WikipediaApp;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    .line 806
    .line 807
    .line 808
    move-result-object v14

    .line 809
    invoke-static {}, Lokhttp3/Headers$Companion;->getUserName()Ljava/lang/String;

    .line 810
    .line 811
    .line 812
    move-result-object v15

    .line 813
    invoke-static {}, Lokhttp3/Headers$Companion;->account()Landroid/accounts/Account;

    .line 814
    .line 815
    .line 816
    move-result-object v1
    :try_end_c
    .catch Ljava/util/concurrent/CancellationException; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 817
    if-nez v1, :cond_23

    .line 818
    .line 819
    move/from16 v16, v7

    .line 820
    .line 821
    move-object v1, v10

    .line 822
    goto :goto_1e

    .line 823
    :cond_23
    move/from16 v16, v7

    .line 824
    .line 825
    :try_start_d
    invoke-static {}, Lokhttp3/Headers$Companion;->accountManager()Landroid/accounts/AccountManager;

    .line 826
    .line 827
    .line 828
    move-result-object v7

    .line 829
    invoke-virtual {v7, v1}, Landroid/accounts/AccountManager;->getPassword(Landroid/accounts/Account;)Ljava/lang/String;

    .line 830
    .line 831
    .line 832
    move-result-object v1

    .line 833
    :goto_1e
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 834
    .line 835
    .line 836
    iput-object v12, v6, Lorg/wikipedia/csrf/CsrfTokenClient$getToken$2;->L$0:Ljava/lang/Object;

    .line 837
    .line 838
    iput-object v0, v6, Lorg/wikipedia/csrf/CsrfTokenClient$getToken$2;->L$1:Ljava/lang/Object;

    .line 839
    .line 840
    iput v11, v6, Lorg/wikipedia/csrf/CsrfTokenClient$getToken$2;->I$0:I

    .line 841
    .line 842
    iput v8, v6, Lorg/wikipedia/csrf/CsrfTokenClient$getToken$2;->label:I

    .line 843
    .line 844
    invoke-virtual {v13, v14, v15, v1, v6}, Lorg/wikipedia/login/LoginClient;->loginBlocking(Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 845
    .line 846
    .line 847
    move-result-object v1

    .line 848
    if-ne v1, v5, :cond_24

    .line 849
    .line 850
    :goto_1f
    move-object v10, v5

    .line 851
    goto/16 :goto_26

    .line 852
    .line 853
    :cond_24
    :goto_20
    check-cast v1, Lorg/wikipedia/login/LoginResult;

    .line 854
    .line 855
    const-string v7, "PASS"

    .line 856
    .line 857
    iget-object v1, v1, Lorg/wikipedia/login/LoginResult;->status:Ljava/lang/String;

    .line 858
    .line 859
    invoke-virtual {v7, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 860
    .line 861
    .line 862
    move-result v1

    .line 863
    if-nez v1, :cond_26

    .line 864
    .line 865
    sget-object v1, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 866
    .line 867
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 868
    .line 869
    .line 870
    invoke-static {}, Lorg/wikipedia/WikipediaApp;->resetAfterLogOut()V

    .line 871
    .line 872
    .line 873
    sget-object v1, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 874
    .line 875
    invoke-static/range {v16 .. v16}, Lorg/wikipedia/settings/Prefs;->setQueueLoggedOutInBackgroundDialog(Z)V

    .line 876
    .line 877
    .line 878
    new-instance v1, Lorg/wikipedia/events/LoggedOutInBackgroundEvent;

    .line 879
    .line 880
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 881
    .line 882
    .line 883
    invoke-static {v1}, Lorg/wikipedia/concurrency/FlowEventBus;->post(Ljava/lang/Object;)V
    :try_end_d
    .catch Ljava/util/concurrent/CancellationException; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 884
    .line 885
    .line 886
    goto :goto_24

    .line 887
    :catchall_4
    move-exception v0

    .line 888
    goto :goto_21

    .line 889
    :cond_25
    move/from16 v16, v7

    .line 890
    .line 891
    goto :goto_22

    .line 892
    :goto_21
    :try_start_e
    invoke-static {v0}, Lorg/wikipedia/util/log/L;->e(Ljava/lang/Throwable;)V

    .line 893
    .line 894
    .line 895
    :cond_26
    :goto_22
    iget-object v1, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 896
    .line 897
    check-cast v1, Ljava/lang/CharSequence;

    .line 898
    .line 899
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 900
    .line 901
    .line 902
    move-result v1

    .line 903
    if-nez v1, :cond_27

    .line 904
    .line 905
    goto :goto_23

    .line 906
    :cond_27
    sget-object v1, Lorg/wikipedia/csrf/CsrfTokenClient;->INSTANCE:Lorg/wikipedia/csrf/CsrfTokenClient;

    .line 907
    .line 908
    iget-object v1, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 909
    .line 910
    check-cast v1, Ljava/lang/String;

    .line 911
    .line 912
    invoke-static {v1}, Lorg/wikipedia/csrf/CsrfTokenClient;->tokenRequiresLogin(Ljava/lang/String;)Z

    .line 913
    .line 914
    .line 915
    move-result v1

    .line 916
    if-eqz v1, :cond_28

    .line 917
    .line 918
    :goto_23
    add-int/lit8 v11, v11, 0x1

    .line 919
    .line 920
    move/from16 v7, v16

    .line 921
    .line 922
    const/4 v1, 0x3

    .line 923
    goto/16 :goto_18

    .line 924
    .line 925
    :catch_0
    move-exception v0

    .line 926
    throw v0

    .line 927
    :cond_28
    :goto_24
    iget-object v1, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 928
    .line 929
    check-cast v1, Ljava/lang/CharSequence;

    .line 930
    .line 931
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 932
    .line 933
    .line 934
    move-result v1

    .line 935
    if-nez v1, :cond_29

    .line 936
    .line 937
    goto :goto_25

    .line 938
    :cond_29
    sget-object v1, Lorg/wikipedia/csrf/CsrfTokenClient;->INSTANCE:Lorg/wikipedia/csrf/CsrfTokenClient;

    .line 939
    .line 940
    iget-object v1, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 941
    .line 942
    check-cast v1, Ljava/lang/String;

    .line 943
    .line 944
    invoke-static {v1}, Lorg/wikipedia/csrf/CsrfTokenClient;->tokenRequiresLogin(Ljava/lang/String;)Z

    .line 945
    .line 946
    .line 947
    move-result v1

    .line 948
    if-eqz v1, :cond_2b

    .line 949
    .line 950
    :goto_25
    if-nez v0, :cond_2a

    .line 951
    .line 952
    new-instance v0, Ljava/io/IOException;

    .line 953
    .line 954
    const-string v1, "Invalid token, or login failure."

    .line 955
    .line 956
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 957
    .line 958
    .line 959
    :cond_2a
    throw v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    .line 960
    :cond_2b
    sget-object v0, Lorg/wikipedia/csrf/CsrfTokenClient;->MUTEX:Ljava/util/concurrent/Semaphore;

    .line 961
    .line 962
    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 963
    .line 964
    .line 965
    sget-object v10, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 966
    .line 967
    :goto_26
    return-object v10

    .line 968
    :catchall_5
    move-exception v0

    .line 969
    sget-object v1, Lorg/wikipedia/csrf/CsrfTokenClient;->MUTEX:Ljava/util/concurrent/Semaphore;

    .line 970
    .line 971
    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 972
    .line 973
    .line 974
    throw v0

    .line 975
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
    .end packed-switch

    .line 976
    .line 977
    .line 978
    .line 979
    .line 980
    .line 981
    .line 982
    .line 983
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
