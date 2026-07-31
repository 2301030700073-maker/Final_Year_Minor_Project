.class public final Lorg/wikipedia/talk/TalkTopicViewModel$loadTopic$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public L$1:Ljava/lang/Object;

.field public L$2:Ljava/lang/Object;

.field public label:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/lifecycle/ViewModel;Lkotlin/coroutines/Continuation;I)V
    .locals 0

    .line 16
    iput p3, p0, Lorg/wikipedia/talk/TalkTopicViewModel$loadTopic$2;->$r8$classId:I

    iput-object p1, p0, Lorg/wikipedia/talk/TalkTopicViewModel$loadTopic$2;->this$0:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V
    .locals 0

    .line 15
    iput p4, p0, Lorg/wikipedia/talk/TalkTopicViewModel$loadTopic$2;->$r8$classId:I

    iput-object p1, p0, Lorg/wikipedia/talk/TalkTopicViewModel$loadTopic$2;->L$2:Ljava/lang/Object;

    iput-object p2, p0, Lorg/wikipedia/talk/TalkTopicViewModel$loadTopic$2;->this$0:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method public constructor <init>(Lorg/wikipedia/page/PageTitle;Lkotlin/jvm/internal/Ref$ObjectRef;Lorg/wikipedia/watchlist/WatchlistExpiry;Lkotlin/coroutines/Continuation;)V
    .locals 1

    .line 1
    const/4 v0, 0x3

    .line 2
    iput v0, p0, Lorg/wikipedia/talk/TalkTopicViewModel$loadTopic$2;->$r8$classId:I

    .line 3
    .line 4
    iput-object p1, p0, Lorg/wikipedia/talk/TalkTopicViewModel$loadTopic$2;->L$1:Ljava/lang/Object;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/wikipedia/talk/TalkTopicViewModel$loadTopic$2;->L$2:Ljava/lang/Object;

    .line 7
    .line 8
    iput-object p3, p0, Lorg/wikipedia/talk/TalkTopicViewModel$loadTopic$2;->this$0:Ljava/lang/Object;

    .line 9
    .line 10
    const/4 p1, 0x2

    .line 11
    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3

    .line 1
    iget v0, p0, Lorg/wikipedia/talk/TalkTopicViewModel$loadTopic$2;->$r8$classId:I

    .line 2
    .line 3
    iget-object v1, p0, Lorg/wikipedia/talk/TalkTopicViewModel$loadTopic$2;->this$0:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance p0, Lorg/wikipedia/talk/TalkTopicViewModel$loadTopic$2;

    .line 9
    .line 10
    check-cast v1, Lorg/wikipedia/wiktionary/WiktionaryViewModel;

    .line 11
    .line 12
    const/4 v0, 0x4

    .line 13
    invoke-direct {p0, v1, p2, v0}, Lorg/wikipedia/talk/TalkTopicViewModel$loadTopic$2;-><init>(Landroidx/lifecycle/ViewModel;Lkotlin/coroutines/Continuation;I)V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lorg/wikipedia/talk/TalkTopicViewModel$loadTopic$2;->L$2:Ljava/lang/Object;

    .line 17
    .line 18
    return-object p0

    .line 19
    :pswitch_0
    new-instance p1, Lorg/wikipedia/talk/TalkTopicViewModel$loadTopic$2;

    .line 20
    .line 21
    iget-object v0, p0, Lorg/wikipedia/talk/TalkTopicViewModel$loadTopic$2;->L$1:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v0, Lorg/wikipedia/page/PageTitle;

    .line 24
    .line 25
    iget-object p0, p0, Lorg/wikipedia/talk/TalkTopicViewModel$loadTopic$2;->L$2:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast p0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 28
    .line 29
    check-cast v1, Lorg/wikipedia/watchlist/WatchlistExpiry;

    .line 30
    .line 31
    invoke-direct {p1, v0, p0, v1, p2}, Lorg/wikipedia/talk/TalkTopicViewModel$loadTopic$2;-><init>(Lorg/wikipedia/page/PageTitle;Lkotlin/jvm/internal/Ref$ObjectRef;Lorg/wikipedia/watchlist/WatchlistExpiry;Lkotlin/coroutines/Continuation;)V

    .line 32
    .line 33
    .line 34
    return-object p1

    .line 35
    :pswitch_1
    new-instance v0, Lorg/wikipedia/talk/TalkTopicViewModel$loadTopic$2;

    .line 36
    .line 37
    iget-object p0, p0, Lorg/wikipedia/talk/TalkTopicViewModel$loadTopic$2;->L$2:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast p0, Lorg/wikipedia/watchlist/WatchlistExpiryDialogViewModel;

    .line 40
    .line 41
    check-cast v1, Lorg/wikipedia/watchlist/WatchlistExpiry;

    .line 42
    .line 43
    const/4 v2, 0x2

    .line 44
    invoke-direct {v0, p0, v1, p2, v2}, Lorg/wikipedia/talk/TalkTopicViewModel$loadTopic$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 45
    .line 46
    .line 47
    iput-object p1, v0, Lorg/wikipedia/talk/TalkTopicViewModel$loadTopic$2;->L$1:Ljava/lang/Object;

    .line 48
    .line 49
    return-object v0

    .line 50
    :pswitch_2
    new-instance p1, Lorg/wikipedia/talk/TalkTopicViewModel$loadTopic$2;

    .line 51
    .line 52
    iget-object p0, p0, Lorg/wikipedia/talk/TalkTopicViewModel$loadTopic$2;->L$2:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast p0, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 55
    .line 56
    check-cast v1, Lorg/wikipedia/talk/TalkTopicsViewModel;

    .line 57
    .line 58
    const/4 v0, 0x1

    .line 59
    invoke-direct {p1, p0, v1, p2, v0}, Lorg/wikipedia/talk/TalkTopicViewModel$loadTopic$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 60
    .line 61
    .line 62
    return-object p1

    .line 63
    :pswitch_3
    new-instance p0, Lorg/wikipedia/talk/TalkTopicViewModel$loadTopic$2;

    .line 64
    .line 65
    check-cast v1, Lorg/wikipedia/talk/TalkTopicViewModel;

    .line 66
    .line 67
    const/4 p1, 0x0

    .line 68
    invoke-direct {p0, v1, p2, p1}, Lorg/wikipedia/talk/TalkTopicViewModel$loadTopic$2;-><init>(Landroidx/lifecycle/ViewModel;Lkotlin/coroutines/Continuation;I)V

    .line 69
    .line 70
    .line 71
    return-object p0

    .line 72
    nop

    .line 73
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
    iget v0, p0, Lorg/wikipedia/talk/TalkTopicViewModel$loadTopic$2;->$r8$classId:I

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
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/talk/TalkTopicViewModel$loadTopic$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lorg/wikipedia/talk/TalkTopicViewModel$loadTopic$2;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lorg/wikipedia/talk/TalkTopicViewModel$loadTopic$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/talk/TalkTopicViewModel$loadTopic$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Lorg/wikipedia/talk/TalkTopicViewModel$loadTopic$2;

    .line 28
    .line 29
    invoke-virtual {p0, v1}, Lorg/wikipedia/talk/TalkTopicViewModel$loadTopic$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0

    .line 34
    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/talk/TalkTopicViewModel$loadTopic$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    check-cast p0, Lorg/wikipedia/talk/TalkTopicViewModel$loadTopic$2;

    .line 39
    .line 40
    invoke-virtual {p0, v1}, Lorg/wikipedia/talk/TalkTopicViewModel$loadTopic$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    return-object p0

    .line 45
    :pswitch_2
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/talk/TalkTopicViewModel$loadTopic$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    check-cast p0, Lorg/wikipedia/talk/TalkTopicViewModel$loadTopic$2;

    .line 50
    .line 51
    invoke-virtual {p0, v1}, Lorg/wikipedia/talk/TalkTopicViewModel$loadTopic$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    return-object p0

    .line 56
    :pswitch_3
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/talk/TalkTopicViewModel$loadTopic$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    check-cast p0, Lorg/wikipedia/talk/TalkTopicViewModel$loadTopic$2;

    .line 61
    .line 62
    invoke-virtual {p0, v1}, Lorg/wikipedia/talk/TalkTopicViewModel$loadTopic$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    return-object p0

    .line 67
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    .line 1
    move-object/from16 v5, p0

    .line 2
    .line 3
    iget v0, v5, Lorg/wikipedia/talk/TalkTopicViewModel$loadTopic$2;->$r8$classId:I

    .line 4
    .line 5
    sget-object v7, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 6
    .line 7
    const-string v9, "UTF-8"

    .line 8
    .line 9
    const-string v10, "+"

    .line 10
    .line 11
    const-string v11, "%20"

    .line 12
    .line 13
    const-string/jumbo v12, "|"

    .line 14
    .line 15
    .line 16
    const/4 v14, 0x2

    .line 17
    sget-object v15, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 18
    .line 19
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 20
    .line 21
    iget-object v2, v5, Lorg/wikipedia/talk/TalkTopicViewModel$loadTopic$2;->this$0:Ljava/lang/Object;

    .line 22
    .line 23
    const/4 v3, 0x1

    .line 24
    const/4 v4, 0x0

    .line 25
    packed-switch v0, :pswitch_data_0

    .line 26
    .line 27
    .line 28
    check-cast v2, Lorg/wikipedia/wiktionary/WiktionaryViewModel;

    .line 29
    .line 30
    iget-object v0, v2, Lorg/wikipedia/wiktionary/WiktionaryViewModel;->selectedText:Ljava/lang/String;

    .line 31
    .line 32
    iget-object v6, v2, Lorg/wikipedia/wiktionary/WiktionaryViewModel;->_uiState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 33
    .line 34
    iget-object v7, v2, Lorg/wikipedia/wiktionary/WiktionaryViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 35
    .line 36
    iget-object v8, v5, Lorg/wikipedia/talk/TalkTopicViewModel$loadTopic$2;->L$2:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v8, Lkotlinx/coroutines/CoroutineScope;

    .line 39
    .line 40
    sget-object v9, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 41
    .line 42
    iget v10, v5, Lorg/wikipedia/talk/TalkTopicViewModel$loadTopic$2;->label:I

    .line 43
    .line 44
    const-string v11, ".wiktionary.org"

    .line 45
    .line 46
    if-eqz v10, :cond_2

    .line 47
    .line 48
    if-eq v10, v3, :cond_1

    .line 49
    .line 50
    if-ne v10, v14, :cond_0

    .line 51
    .line 52
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    move-object/from16 v0, p1

    .line 56
    .line 57
    goto/16 :goto_2

    .line 58
    .line 59
    :cond_0
    invoke-static {v1}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    move-object v15, v4

    .line 63
    goto/16 :goto_5

    .line 64
    .line 65
    :cond_1
    iget-object v0, v5, Lorg/wikipedia/talk/TalkTopicViewModel$loadTopic$2;->L$1:Ljava/lang/Object;

    .line 66
    .line 67
    check-cast v0, Ljava/lang/String;

    .line 68
    .line 69
    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    .line 71
    .line 72
    move-object/from16 v1, p1

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    new-instance v1, Lorg/wikipedia/util/Resource$Loading;

    .line 79
    .line 80
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v6, v4, v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    if-eqz v0, :cond_8

    .line 90
    .line 91
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    if-nez v1, :cond_3

    .line 96
    .line 97
    goto/16 :goto_4

    .line 98
    .line 99
    :cond_3
    sget-object v1, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 100
    .line 101
    invoke-static {v0}, Lorg/wikipedia/util/StringUtil;->addUnderscores(Ljava/lang/String;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    :try_start_1
    sget-object v1, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 106
    .line 107
    new-instance v1, Lorg/wikipedia/dataclient/WikiSite;

    .line 108
    .line 109
    iget-object v10, v7, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 110
    .line 111
    invoke-virtual {v10}, Lorg/wikipedia/dataclient/WikiSite;->subdomain()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v10

    .line 115
    invoke-virtual {v10, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v10

    .line 119
    invoke-direct {v1, v10}, Lorg/wikipedia/dataclient/WikiSite;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    invoke-static {v1}, Lorg/wikipedia/dataclient/ServiceFactory;->getRest(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/RestService;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    iput-object v8, v5, Lorg/wikipedia/talk/TalkTopicViewModel$loadTopic$2;->L$2:Ljava/lang/Object;

    .line 127
    .line 128
    iput-object v0, v5, Lorg/wikipedia/talk/TalkTopicViewModel$loadTopic$2;->L$1:Ljava/lang/Object;

    .line 129
    .line 130
    iput v3, v5, Lorg/wikipedia/talk/TalkTopicViewModel$loadTopic$2;->label:I

    .line 131
    .line 132
    invoke-interface {v1, v0, v5}, Lorg/wikipedia/dataclient/RestService;->getDefinition(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    if-ne v1, v9, :cond_4

    .line 137
    .line 138
    goto :goto_1

    .line 139
    :cond_4
    :goto_0
    check-cast v1, Ljava/util/Map;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 140
    .line 141
    goto :goto_3

    .line 142
    :catch_0
    const-string v1, "Cannot find the definition. Try to use lowercase text."

    .line 143
    .line 144
    sget-object v3, Lorg/wikipedia/util/log/L;->LEVEL_W:Lorg/wikipedia/util/log/L$LEVEL_D$1;

    .line 145
    .line 146
    invoke-virtual {v3, v1, v4}, Lorg/wikipedia/util/log/L$LEVEL_D$1;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 147
    .line 148
    .line 149
    sget-object v1, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 150
    .line 151
    new-instance v1, Lorg/wikipedia/dataclient/WikiSite;

    .line 152
    .line 153
    iget-object v3, v7, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 154
    .line 155
    invoke-virtual {v3}, Lorg/wikipedia/dataclient/WikiSite;->subdomain()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v3

    .line 159
    invoke-virtual {v3, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v3

    .line 163
    invoke-direct {v1, v3}, Lorg/wikipedia/dataclient/WikiSite;-><init>(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    invoke-static {v1}, Lorg/wikipedia/dataclient/ServiceFactory;->getRest(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/RestService;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 171
    .line 172
    .line 173
    move-result-object v3

    .line 174
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v0, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 182
    .line 183
    .line 184
    iput-object v8, v5, Lorg/wikipedia/talk/TalkTopicViewModel$loadTopic$2;->L$2:Ljava/lang/Object;

    .line 185
    .line 186
    iput-object v4, v5, Lorg/wikipedia/talk/TalkTopicViewModel$loadTopic$2;->L$1:Ljava/lang/Object;

    .line 187
    .line 188
    iput v14, v5, Lorg/wikipedia/talk/TalkTopicViewModel$loadTopic$2;->label:I

    .line 189
    .line 190
    invoke-interface {v1, v0, v5}, Lorg/wikipedia/dataclient/RestService;->getDefinition(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    if-ne v0, v9, :cond_5

    .line 195
    .line 196
    :goto_1
    move-object v15, v9

    .line 197
    goto :goto_5

    .line 198
    :cond_5
    :goto_2
    move-object v1, v0

    .line 199
    check-cast v1, Ljava/util/Map;

    .line 200
    .line 201
    :goto_3
    iget-object v0, v7, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 202
    .line 203
    iget-object v0, v0, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 204
    .line 205
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    check-cast v0, Ljava/util/List;

    .line 210
    .line 211
    if-eqz v0, :cond_7

    .line 212
    .line 213
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 214
    .line 215
    .line 216
    move-result v1

    .line 217
    if-eqz v1, :cond_6

    .line 218
    .line 219
    invoke-virtual {v2}, Lorg/wikipedia/wiktionary/WiktionaryViewModel;->definitionsNotFound()V

    .line 220
    .line 221
    .line 222
    goto :goto_5

    .line 223
    :cond_6
    new-instance v1, Lorg/wikipedia/util/Resource$Success;

    .line 224
    .line 225
    invoke-direct {v1, v0}, Lorg/wikipedia/util/Resource$Success;-><init>(Ljava/lang/Object;)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 229
    .line 230
    .line 231
    invoke-virtual {v6, v4, v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 232
    .line 233
    .line 234
    goto :goto_5

    .line 235
    :cond_7
    invoke-virtual {v2}, Lorg/wikipedia/wiktionary/WiktionaryViewModel;->definitionsNotFound()V

    .line 236
    .line 237
    .line 238
    goto :goto_5

    .line 239
    :cond_8
    :goto_4
    invoke-virtual {v2}, Lorg/wikipedia/wiktionary/WiktionaryViewModel;->definitionsNotFound()V

    .line 240
    .line 241
    .line 242
    :goto_5
    return-object v15

    .line 243
    :pswitch_0
    iget-object v0, v5, Lorg/wikipedia/talk/TalkTopicViewModel$loadTopic$2;->L$2:Ljava/lang/Object;

    .line 244
    .line 245
    check-cast v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 246
    .line 247
    iget-object v6, v5, Lorg/wikipedia/talk/TalkTopicViewModel$loadTopic$2;->L$1:Ljava/lang/Object;

    .line 248
    .line 249
    check-cast v6, Lorg/wikipedia/page/PageTitle;

    .line 250
    .line 251
    sget-object v7, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 252
    .line 253
    iget v8, v5, Lorg/wikipedia/talk/TalkTopicViewModel$loadTopic$2;->label:I

    .line 254
    .line 255
    if-eqz v8, :cond_b

    .line 256
    .line 257
    if-eq v8, v3, :cond_a

    .line 258
    .line 259
    if-ne v8, v14, :cond_9

    .line 260
    .line 261
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 262
    .line 263
    .line 264
    move-object/from16 v0, p1

    .line 265
    .line 266
    goto/16 :goto_9

    .line 267
    .line 268
    :cond_9
    invoke-static {v1}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 269
    .line 270
    .line 271
    move-object v0, v4

    .line 272
    goto/16 :goto_9

    .line 273
    .line 274
    :cond_a
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 275
    .line 276
    .line 277
    move-object/from16 v1, p1

    .line 278
    .line 279
    goto :goto_6

    .line 280
    :cond_b
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 281
    .line 282
    .line 283
    sget-object v1, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 284
    .line 285
    iget-object v1, v6, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 286
    .line 287
    invoke-static {v1}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    .line 288
    .line 289
    .line 290
    move-result-object v1

    .line 291
    iget-object v8, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 292
    .line 293
    check-cast v8, Ljava/lang/String;

    .line 294
    .line 295
    sget-object v9, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 296
    .line 297
    invoke-virtual {v6}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v9

    .line 301
    const-string v10, "_"

    .line 302
    .line 303
    const-string v11, " "

    .line 304
    .line 305
    invoke-static {v9, v10, v11}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object v9

    .line 309
    check-cast v2, Lorg/wikipedia/watchlist/WatchlistExpiry;

    .line 310
    .line 311
    invoke-virtual {v2}, Lorg/wikipedia/watchlist/WatchlistExpiry;->getStringId()I

    .line 312
    .line 313
    .line 314
    move-result v2

    .line 315
    sget-object v10, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 316
    .line 317
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 318
    .line 319
    .line 320
    move-result-object v10

    .line 321
    iget-object v10, v10, Lorg/wikipedia/WikipediaApp;->activityLifecycleHandler:Lorg/wikipedia/ActivityLifecycleHandler;

    .line 322
    .line 323
    iget-object v10, v10, Lorg/wikipedia/ActivityLifecycleHandler;->currentActivity:Landroid/app/Activity;

    .line 324
    .line 325
    if-nez v10, :cond_c

    .line 326
    .line 327
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 328
    .line 329
    .line 330
    move-result-object v10

    .line 331
    :cond_c
    invoke-virtual {v10, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object v2

    .line 335
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 336
    .line 337
    .line 338
    new-instance v10, Ljava/lang/StringBuilder;

    .line 339
    .line 340
    invoke-direct {v10, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 341
    .line 342
    .line 343
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    .line 345
    .line 346
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    .line 348
    .line 349
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    move-result-object v2

    .line 353
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 354
    .line 355
    .line 356
    move-result-object v9

    .line 357
    invoke-virtual {v9}, Lorg/wikipedia/WikipediaApp;->getAppOrSystemLanguageCode()Ljava/lang/String;

    .line 358
    .line 359
    .line 360
    move-result-object v9

    .line 361
    iput v3, v5, Lorg/wikipedia/talk/TalkTopicViewModel$loadTopic$2;->label:I

    .line 362
    .line 363
    invoke-interface {v1, v8, v2, v9, v5}, Lorg/wikipedia/dataclient/Service;->getMessages(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 364
    .line 365
    .line 366
    move-result-object v1

    .line 367
    if-ne v1, v7, :cond_d

    .line 368
    .line 369
    goto :goto_8

    .line 370
    :cond_d
    :goto_6
    check-cast v1, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    .line 371
    .line 372
    iget-object v1, v1, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query:Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    .line 373
    .line 374
    if-eqz v1, :cond_10

    .line 375
    .line 376
    iget-object v1, v1, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->allmessages:Ljava/util/List;

    .line 377
    .line 378
    if-eqz v1, :cond_10

    .line 379
    .line 380
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 381
    .line 382
    .line 383
    move-result-object v1

    .line 384
    :cond_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 385
    .line 386
    .line 387
    move-result v2

    .line 388
    if-eqz v2, :cond_f

    .line 389
    .line 390
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 391
    .line 392
    .line 393
    move-result-object v2

    .line 394
    move-object v3, v2

    .line 395
    check-cast v3, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$Message;

    .line 396
    .line 397
    iget-object v3, v3, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$Message;->name:Ljava/lang/String;

    .line 398
    .line 399
    iget-object v8, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 400
    .line 401
    invoke-static {v3, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 402
    .line 403
    .line 404
    move-result v3

    .line 405
    if-eqz v3, :cond_e

    .line 406
    .line 407
    goto :goto_7

    .line 408
    :cond_f
    move-object v2, v4

    .line 409
    :goto_7
    check-cast v2, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$Message;

    .line 410
    .line 411
    if-eqz v2, :cond_10

    .line 412
    .line 413
    iget-object v4, v2, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$Message;->content:Ljava/lang/String;

    .line 414
    .line 415
    :cond_10
    if-nez v4, :cond_11

    .line 416
    .line 417
    const-string v4, ""

    .line 418
    .line 419
    :cond_11
    sget-object v0, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 420
    .line 421
    iget-object v0, v6, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 422
    .line 423
    invoke-static {v0}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    .line 424
    .line 425
    .line 426
    move-result-object v0

    .line 427
    iput v14, v5, Lorg/wikipedia/talk/TalkTopicViewModel$loadTopic$2;->label:I

    .line 428
    .line 429
    invoke-interface {v0, v4, v5}, Lorg/wikipedia/dataclient/Service;->parseText(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 430
    .line 431
    .line 432
    move-result-object v0

    .line 433
    if-ne v0, v7, :cond_12

    .line 434
    .line 435
    :goto_8
    move-object v0, v7

    .line 436
    :cond_12
    :goto_9
    return-object v0

    .line 437
    :pswitch_1
    check-cast v2, Lorg/wikipedia/watchlist/WatchlistExpiry;

    .line 438
    .line 439
    iget-object v0, v5, Lorg/wikipedia/talk/TalkTopicViewModel$loadTopic$2;->L$2:Ljava/lang/Object;

    .line 440
    .line 441
    move-object v8, v0

    .line 442
    check-cast v8, Lorg/wikipedia/watchlist/WatchlistExpiryDialogViewModel;

    .line 443
    .line 444
    iget-object v0, v5, Lorg/wikipedia/talk/TalkTopicViewModel$loadTopic$2;->L$1:Ljava/lang/Object;

    .line 445
    .line 446
    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    .line 447
    .line 448
    sget-object v9, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 449
    .line 450
    iget v6, v5, Lorg/wikipedia/talk/TalkTopicViewModel$loadTopic$2;->label:I

    .line 451
    .line 452
    if-eqz v6, :cond_14

    .line 453
    .line 454
    if-ne v6, v3, :cond_13

    .line 455
    .line 456
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 457
    .line 458
    .line 459
    move-object/from16 v0, p1

    .line 460
    .line 461
    move-object v12, v4

    .line 462
    move-object v4, v2

    .line 463
    goto :goto_a

    .line 464
    :cond_13
    invoke-static {v1}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 465
    .line 466
    .line 467
    move-object v15, v4

    .line 468
    goto :goto_b

    .line 469
    :cond_14
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 470
    .line 471
    .line 472
    move-object v1, v2

    .line 473
    iget-object v2, v8, Lorg/wikipedia/watchlist/WatchlistExpiryDialogViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 474
    .line 475
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 476
    .line 477
    invoke-virtual {v2}, Lorg/wikipedia/page/PageTitle;->namespace()Lorg/wikipedia/page/Namespace;

    .line 478
    .line 479
    .line 480
    move-result-object v7

    .line 481
    invoke-virtual {v7}, Lorg/wikipedia/page/Namespace;->talk()Z

    .line 482
    .line 483
    .line 484
    move-result v7

    .line 485
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 486
    .line 487
    .line 488
    move-result-object v7

    .line 489
    iput-object v4, v5, Lorg/wikipedia/talk/TalkTopicViewModel$loadTopic$2;->L$1:Ljava/lang/Object;

    .line 490
    .line 491
    iput v3, v5, Lorg/wikipedia/talk/TalkTopicViewModel$loadTopic$2;->label:I

    .line 492
    .line 493
    move-object v3, v4

    .line 494
    move-object v4, v1

    .line 495
    move-object v1, v0

    .line 496
    sget-object v0, Lorg/wikipedia/watchlist/WatchlistViewModel;->Companion:Lokio/Path$Companion;

    .line 497
    .line 498
    move-object v10, v3

    .line 499
    const/4 v3, 0x0

    .line 500
    move-object v12, v7

    .line 501
    move-object v7, v5

    .line 502
    move-object v5, v6

    .line 503
    move-object v6, v12

    .line 504
    move-object v12, v10

    .line 505
    invoke-virtual/range {v0 .. v7}, Lokio/Path$Companion;->watchPageTitle(Lkotlinx/coroutines/CoroutineScope;Lorg/wikipedia/page/PageTitle;ZLorg/wikipedia/watchlist/WatchlistExpiry;Ljava/lang/Boolean;Ljava/lang/Boolean;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/io/Serializable;

    .line 506
    .line 507
    .line 508
    move-result-object v0

    .line 509
    if-ne v0, v9, :cond_15

    .line 510
    .line 511
    move-object v15, v9

    .line 512
    goto :goto_b

    .line 513
    :cond_15
    :goto_a
    check-cast v0, Lkotlin/Pair;

    .line 514
    .line 515
    iget-object v1, v8, Lorg/wikipedia/watchlist/WatchlistExpiryDialogViewModel;->_uiState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 516
    .line 517
    new-instance v2, Lorg/wikipedia/util/Resource$Success;

    .line 518
    .line 519
    new-instance v3, Lorg/wikipedia/watchlist/WatchlistExpiryDialogViewModel$WatchlistExpiryChangeSuccess;

    .line 520
    .line 521
    iget-object v0, v0, Lkotlin/Pair;->second:Ljava/lang/Object;

    .line 522
    .line 523
    check-cast v0, Ljava/lang/String;

    .line 524
    .line 525
    invoke-direct {v3, v4, v0}, Lorg/wikipedia/watchlist/WatchlistExpiryDialogViewModel$WatchlistExpiryChangeSuccess;-><init>(Lorg/wikipedia/watchlist/WatchlistExpiry;Ljava/lang/String;)V

    .line 526
    .line 527
    .line 528
    invoke-direct {v2, v3}, Lorg/wikipedia/util/Resource$Success;-><init>(Ljava/lang/Object;)V

    .line 529
    .line 530
    .line 531
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 532
    .line 533
    .line 534
    invoke-virtual {v1, v12, v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 535
    .line 536
    .line 537
    :goto_b
    return-object v15

    .line 538
    :pswitch_2
    move-object v12, v4

    .line 539
    iget-object v0, v5, Lorg/wikipedia/talk/TalkTopicViewModel$loadTopic$2;->L$2:Ljava/lang/Object;

    .line 540
    .line 541
    check-cast v0, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 542
    .line 543
    check-cast v2, Lorg/wikipedia/talk/TalkTopicsViewModel;

    .line 544
    .line 545
    iget-object v4, v2, Lorg/wikipedia/talk/TalkTopicsViewModel;->seenThreadItemsSha:Ljava/util/LinkedHashSet;

    .line 546
    .line 547
    iget-object v12, v2, Lorg/wikipedia/talk/TalkTopicsViewModel;->threadItems:Ljava/util/ArrayList;

    .line 548
    .line 549
    sget-object v6, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 550
    .line 551
    iget v13, v5, Lorg/wikipedia/talk/TalkTopicViewModel$loadTopic$2;->label:I

    .line 552
    .line 553
    const/4 v8, 0x4

    .line 554
    if-eqz v13, :cond_1a

    .line 555
    .line 556
    if-eq v13, v3, :cond_19

    .line 557
    .line 558
    if-eq v13, v14, :cond_18

    .line 559
    .line 560
    const/4 v0, 0x3

    .line 561
    if-eq v13, v0, :cond_17

    .line 562
    .line 563
    if-ne v13, v8, :cond_16

    .line 564
    .line 565
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 566
    .line 567
    .line 568
    move-object/from16 v0, p1

    .line 569
    .line 570
    move-object v8, v2

    .line 571
    goto/16 :goto_15

    .line 572
    .line 573
    :cond_16
    invoke-static {v1}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 574
    .line 575
    .line 576
    :goto_c
    const/4 v15, 0x0

    .line 577
    goto/16 :goto_1b

    .line 578
    .line 579
    :cond_17
    iget-object v0, v5, Lorg/wikipedia/talk/TalkTopicViewModel$loadTopic$2;->L$1:Ljava/lang/Object;

    .line 580
    .line 581
    move-object v4, v0

    .line 582
    check-cast v4, Ljava/util/LinkedHashSet;

    .line 583
    .line 584
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 585
    .line 586
    .line 587
    move-object/from16 v1, p1

    .line 588
    .line 589
    move-object v8, v2

    .line 590
    goto/16 :goto_12

    .line 591
    .line 592
    :cond_18
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 593
    .line 594
    .line 595
    move-object/from16 v0, p1

    .line 596
    .line 597
    move-object v8, v2

    .line 598
    move/from16 v18, v3

    .line 599
    .line 600
    move-object v13, v4

    .line 601
    goto/16 :goto_10

    .line 602
    .line 603
    :cond_19
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 604
    .line 605
    .line 606
    move-object v8, v2

    .line 607
    move/from16 v18, v3

    .line 608
    .line 609
    move-object v13, v4

    .line 610
    move/from16 v17, v14

    .line 611
    .line 612
    move-object v14, v0

    .line 613
    move-object/from16 v0, p1

    .line 614
    .line 615
    goto :goto_d

    .line 616
    :cond_1a
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 617
    .line 618
    .line 619
    iget-boolean v1, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 620
    .line 621
    if-eqz v1, :cond_1e

    .line 622
    .line 623
    sget-object v1, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 624
    .line 625
    iget-object v1, v2, Lorg/wikipedia/talk/TalkTopicsViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 626
    .line 627
    iget-object v1, v1, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 628
    .line 629
    invoke-static {v1}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    .line 630
    .line 631
    .line 632
    move-result-object v1

    .line 633
    iget-object v13, v2, Lorg/wikipedia/talk/TalkTopicsViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 634
    .line 635
    invoke-virtual {v13}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    .line 636
    .line 637
    .line 638
    move-result-object v13

    .line 639
    iget-object v8, v2, Lorg/wikipedia/talk/TalkTopicsViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 640
    .line 641
    move/from16 v17, v14

    .line 642
    .line 643
    iget-object v14, v8, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 644
    .line 645
    iget-object v14, v14, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 646
    .line 647
    invoke-virtual {v8}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    .line 648
    .line 649
    .line 650
    move-result-object v8

    .line 651
    :try_start_2
    invoke-static {v8, v9}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 652
    .line 653
    .line 654
    move-result-object v8

    .line 655
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 656
    .line 657
    .line 658
    invoke-static {v8, v10, v11}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 659
    .line 660
    .line 661
    move-result-object v8
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1

    .line 662
    iput v3, v5, Lorg/wikipedia/talk/TalkTopicViewModel$loadTopic$2;->label:I

    .line 663
    .line 664
    move-object/from16 v18, v2

    .line 665
    .line 666
    const-string v2, "save"

    .line 667
    .line 668
    move-object/from16 v19, v14

    .line 669
    .line 670
    move-object v14, v0

    .line 671
    move-object v0, v1

    .line 672
    move-object v1, v13

    .line 673
    move-object v13, v4

    .line 674
    move-object v4, v8

    .line 675
    move-object/from16 v8, v18

    .line 676
    .line 677
    move/from16 v18, v3

    .line 678
    .line 679
    move-object/from16 v3, v19

    .line 680
    .line 681
    invoke-interface/range {v0 .. v5}, Lorg/wikipedia/dataclient/Service;->getPageNamespaceWithSiteInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 682
    .line 683
    .line 684
    move-result-object v0

    .line 685
    if-ne v0, v6, :cond_1b

    .line 686
    .line 687
    goto/16 :goto_14

    .line 688
    .line 689
    :cond_1b
    :goto_d
    check-cast v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    .line 690
    .line 691
    const/4 v1, 0x0

    .line 692
    iput-boolean v1, v14, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 693
    .line 694
    iget-object v0, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query:Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    .line 695
    .line 696
    if-eqz v0, :cond_1f

    .line 697
    .line 698
    iget-object v1, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->namespaces:Ljava/util/Map;

    .line 699
    .line 700
    if-eqz v1, :cond_1f

    .line 701
    .line 702
    invoke-virtual {v0}, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->firstPage()Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    .line 703
    .line 704
    .line 705
    move-result-object v0

    .line 706
    if-eqz v0, :cond_1f

    .line 707
    .line 708
    iget v0, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->ns:I

    .line 709
    .line 710
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 711
    .line 712
    .line 713
    move-result-object v1

    .line 714
    check-cast v1, Ljava/lang/Iterable;

    .line 715
    .line 716
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 717
    .line 718
    .line 719
    move-result-object v1

    .line 720
    :cond_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 721
    .line 722
    .line 723
    move-result v2

    .line 724
    if-eqz v2, :cond_1d

    .line 725
    .line 726
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 727
    .line 728
    .line 729
    move-result-object v4

    .line 730
    move-object v2, v4

    .line 731
    check-cast v2, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$Namespace;

    .line 732
    .line 733
    iget v2, v2, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$Namespace;->id:I

    .line 734
    .line 735
    sget-object v3, Lorg/wikipedia/page/Namespace;->Companion:Lorg/wikipedia/page/Namespace$Companion;

    .line 736
    .line 737
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 738
    .line 739
    .line 740
    invoke-static {v0}, Lorg/wikipedia/page/Namespace$Companion;->of(I)Lorg/wikipedia/page/Namespace;

    .line 741
    .line 742
    .line 743
    move-result-object v3

    .line 744
    invoke-virtual {v3}, Lorg/wikipedia/page/Namespace;->code()I

    .line 745
    .line 746
    .line 747
    move-result v3

    .line 748
    add-int/lit8 v3, v3, 0x1

    .line 749
    .line 750
    if-ne v2, v3, :cond_1c

    .line 751
    .line 752
    goto :goto_e

    .line 753
    :cond_1d
    const/4 v4, 0x0

    .line 754
    :goto_e
    check-cast v4, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$Namespace;

    .line 755
    .line 756
    sget-object v1, Lorg/wikipedia/page/Namespace;->Companion:Lorg/wikipedia/page/Namespace$Companion;

    .line 757
    .line 758
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 759
    .line 760
    .line 761
    invoke-static {v0}, Lorg/wikipedia/page/Namespace$Companion;->of(I)Lorg/wikipedia/page/Namespace;

    .line 762
    .line 763
    .line 764
    move-result-object v0

    .line 765
    invoke-virtual {v0}, Lorg/wikipedia/page/Namespace;->code()I

    .line 766
    .line 767
    .line 768
    move-result v0

    .line 769
    rem-int/lit8 v0, v0, 0x2

    .line 770
    .line 771
    if-nez v0, :cond_1f

    .line 772
    .line 773
    if-eqz v4, :cond_1f

    .line 774
    .line 775
    iget-object v0, v8, Lorg/wikipedia/talk/TalkTopicsViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 776
    .line 777
    iget-object v1, v4, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$Namespace;->name:Ljava/lang/String;

    .line 778
    .line 779
    invoke-virtual {v0, v1}, Lorg/wikipedia/page/PageTitle;->setNamespace(Ljava/lang/String;)V

    .line 780
    .line 781
    .line 782
    goto :goto_f

    .line 783
    :catch_1
    move-exception v0

    .line 784
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/Throwable;)V

    .line 785
    .line 786
    .line 787
    goto/16 :goto_c

    .line 788
    .line 789
    :cond_1e
    move-object v8, v2

    .line 790
    move/from16 v18, v3

    .line 791
    .line 792
    move-object v13, v4

    .line 793
    move/from16 v17, v14

    .line 794
    .line 795
    :cond_1f
    :goto_f
    sget-object v0, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 796
    .line 797
    iget-object v0, v8, Lorg/wikipedia/talk/TalkTopicsViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 798
    .line 799
    iget-object v0, v0, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 800
    .line 801
    invoke-static {v0}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    .line 802
    .line 803
    .line 804
    move-result-object v0

    .line 805
    iget-object v1, v8, Lorg/wikipedia/talk/TalkTopicsViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 806
    .line 807
    invoke-virtual {v1}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    .line 808
    .line 809
    .line 810
    move-result-object v1

    .line 811
    iget-object v2, v8, Lorg/wikipedia/talk/TalkTopicsViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 812
    .line 813
    iget-object v3, v2, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 814
    .line 815
    iget-object v3, v3, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 816
    .line 817
    invoke-virtual {v2}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    .line 818
    .line 819
    .line 820
    move-result-object v2

    .line 821
    :try_start_3
    invoke-static {v2, v9}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 822
    .line 823
    .line 824
    move-result-object v2

    .line 825
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 826
    .line 827
    .line 828
    invoke-static {v2, v10, v11}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 829
    .line 830
    .line 831
    move-result-object v4
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_2

    .line 832
    move/from16 v2, v17

    .line 833
    .line 834
    iput v2, v5, Lorg/wikipedia/talk/TalkTopicViewModel$loadTopic$2;->label:I

    .line 835
    .line 836
    const-string v2, "save"

    .line 837
    .line 838
    invoke-interface/range {v0 .. v5}, Lorg/wikipedia/dataclient/Service;->getTalkPageTopics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 839
    .line 840
    .line 841
    move-result-object v0

    .line 842
    if-ne v0, v6, :cond_20

    .line 843
    .line 844
    goto/16 :goto_14

    .line 845
    .line 846
    :cond_20
    :goto_10
    check-cast v0, Lorg/wikipedia/dataclient/discussiontools/DiscussionToolsInfoResponse;

    .line 847
    .line 848
    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    .line 849
    .line 850
    .line 851
    iget-object v0, v0, Lorg/wikipedia/dataclient/discussiontools/DiscussionToolsInfoResponse;->pageInfo:Lorg/wikipedia/dataclient/discussiontools/DiscussionToolsInfoResponse$PageInfo;

    .line 852
    .line 853
    if-eqz v0, :cond_21

    .line 854
    .line 855
    iget-object v0, v0, Lorg/wikipedia/dataclient/discussiontools/DiscussionToolsInfoResponse$PageInfo;->threads:Ljava/util/List;

    .line 856
    .line 857
    if-eqz v0, :cond_21

    .line 858
    .line 859
    move-object v7, v0

    .line 860
    :cond_21
    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 861
    .line 862
    .line 863
    invoke-virtual {v8}, Lorg/wikipedia/talk/TalkTopicsViewModel;->sortAndFilterThreadItems()V

    .line 864
    .line 865
    .line 866
    invoke-interface {v13}, Ljava/util/Set;->clear()V

    .line 867
    .line 868
    .line 869
    new-instance v0, Ljava/util/ArrayList;

    .line 870
    .line 871
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 872
    .line 873
    .line 874
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 875
    .line 876
    .line 877
    move-result-object v1

    .line 878
    :cond_22
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 879
    .line 880
    .line 881
    move-result v2

    .line 882
    if-eqz v2, :cond_23

    .line 883
    .line 884
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 885
    .line 886
    .line 887
    move-result-object v2

    .line 888
    check-cast v2, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;

    .line 889
    .line 890
    invoke-static {v2}, Lorg/wikipedia/talk/TalkTopicsViewModel;->threadSha$1(Lorg/wikipedia/dataclient/discussiontools/ThreadItem;)Ljava/lang/String;

    .line 891
    .line 892
    .line 893
    move-result-object v2

    .line 894
    if-eqz v2, :cond_22

    .line 895
    .line 896
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 897
    .line 898
    .line 899
    goto :goto_11

    .line 900
    :cond_23
    iget-object v1, v8, Lorg/wikipedia/talk/TalkTopicsViewModel;->talkPageDao:Lorg/wikipedia/talk/db/TalkPageSeenDao_Impl;

    .line 901
    .line 902
    iput-object v13, v5, Lorg/wikipedia/talk/TalkTopicViewModel$loadTopic$2;->L$1:Ljava/lang/Object;

    .line 903
    .line 904
    const/4 v2, 0x3

    .line 905
    iput v2, v5, Lorg/wikipedia/talk/TalkTopicViewModel$loadTopic$2;->label:I

    .line 906
    .line 907
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 908
    .line 909
    .line 910
    new-instance v2, Ljava/lang/StringBuilder;

    .line 911
    .line 912
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 913
    .line 914
    .line 915
    const-string v3, "SELECT * FROM TalkPageSeen WHERE sha IN ("

    .line 916
    .line 917
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 918
    .line 919
    .line 920
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 921
    .line 922
    .line 923
    move-result v3

    .line 924
    invoke-static {v3, v2}, Landroidx/room/Room;->appendPlaceholders(ILjava/lang/StringBuilder;)V

    .line 925
    .line 926
    .line 927
    const-string v3, ")"

    .line 928
    .line 929
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 930
    .line 931
    .line 932
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 933
    .line 934
    .line 935
    move-result-object v2

    .line 936
    iget-object v1, v1, Lorg/wikipedia/talk/db/TalkPageSeenDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 937
    .line 938
    new-instance v3, Lorg/wikipedia/talk/db/TalkPageSeenDao_Impl$$ExternalSyntheticLambda0;

    .line 939
    .line 940
    const/4 v4, 0x0

    .line 941
    invoke-direct {v3, v2, v0, v4}, Lorg/wikipedia/talk/db/TalkPageSeenDao_Impl$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Ljava/util/ArrayList;I)V

    .line 942
    .line 943
    .line 944
    move/from16 v0, v18

    .line 945
    .line 946
    invoke-static {v1, v0, v4, v3, v5}, Lkotlin/ExceptionsKt;->performSuspending(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 947
    .line 948
    .line 949
    move-result-object v1

    .line 950
    if-ne v1, v6, :cond_24

    .line 951
    .line 952
    goto :goto_14

    .line 953
    :cond_24
    move-object v4, v13

    .line 954
    :goto_12
    check-cast v1, Ljava/lang/Iterable;

    .line 955
    .line 956
    new-instance v0, Ljava/util/ArrayList;

    .line 957
    .line 958
    const/16 v2, 0xa

    .line 959
    .line 960
    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 961
    .line 962
    .line 963
    move-result v2

    .line 964
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 965
    .line 966
    .line 967
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 968
    .line 969
    .line 970
    move-result-object v1

    .line 971
    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 972
    .line 973
    .line 974
    move-result v2

    .line 975
    if-eqz v2, :cond_25

    .line 976
    .line 977
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 978
    .line 979
    .line 980
    move-result-object v2

    .line 981
    check-cast v2, Lorg/wikipedia/talk/db/TalkPageSeen;

    .line 982
    .line 983
    iget-object v2, v2, Lorg/wikipedia/talk/db/TalkPageSeen;->sha:Ljava/lang/String;

    .line 984
    .line 985
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 986
    .line 987
    .line 988
    goto :goto_13

    .line 989
    :cond_25
    invoke-interface {v4, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 990
    .line 991
    .line 992
    sget-object v0, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 993
    .line 994
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 995
    .line 996
    .line 997
    move-result-object v0

    .line 998
    invoke-virtual {v0}, Lorg/wikipedia/WikipediaApp;->isOnline()Z

    .line 999
    .line 1000
    .line 1001
    move-result v0

    .line 1002
    if-eqz v0, :cond_28

    .line 1003
    .line 1004
    invoke-static {}, Lokhttp3/Headers$Companion;->isLoggedIn()Z

    .line 1005
    .line 1006
    .line 1007
    move-result v0

    .line 1008
    if-eqz v0, :cond_28

    .line 1009
    .line 1010
    sget-object v0, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 1011
    .line 1012
    iget-object v0, v8, Lorg/wikipedia/talk/TalkTopicsViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 1013
    .line 1014
    iget-object v0, v0, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 1015
    .line 1016
    invoke-static {v0}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    .line 1017
    .line 1018
    .line 1019
    move-result-object v0

    .line 1020
    iget-object v1, v8, Lorg/wikipedia/talk/TalkTopicsViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 1021
    .line 1022
    invoke-virtual {v1}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    .line 1023
    .line 1024
    .line 1025
    move-result-object v1

    .line 1026
    const/4 v3, 0x0

    .line 1027
    iput-object v3, v5, Lorg/wikipedia/talk/TalkTopicViewModel$loadTopic$2;->L$1:Ljava/lang/Object;

    .line 1028
    .line 1029
    const/4 v2, 0x4

    .line 1030
    iput v2, v5, Lorg/wikipedia/talk/TalkTopicViewModel$loadTopic$2;->label:I

    .line 1031
    .line 1032
    invoke-interface {v0, v1, v5}, Lorg/wikipedia/dataclient/Service;->getWatchedStatus(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 1033
    .line 1034
    .line 1035
    move-result-object v0

    .line 1036
    if-ne v0, v6, :cond_26

    .line 1037
    .line 1038
    :goto_14
    move-object v15, v6

    .line 1039
    goto :goto_1b

    .line 1040
    :cond_26
    :goto_15
    check-cast v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    .line 1041
    .line 1042
    iget-object v0, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query:Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    .line 1043
    .line 1044
    if-eqz v0, :cond_27

    .line 1045
    .line 1046
    invoke-virtual {v0}, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->firstPage()Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    .line 1047
    .line 1048
    .line 1049
    move-result-object v4

    .line 1050
    goto :goto_16

    .line 1051
    :cond_27
    const/4 v4, 0x0

    .line 1052
    :goto_16
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1053
    .line 1054
    .line 1055
    goto :goto_17

    .line 1056
    :cond_28
    new-instance v4, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    .line 1057
    .line 1058
    invoke-direct {v4}, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;-><init>()V

    .line 1059
    .line 1060
    .line 1061
    :goto_17
    iget-boolean v0, v4, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->watched:Z

    .line 1062
    .line 1063
    iput-boolean v0, v8, Lorg/wikipedia/talk/TalkTopicsViewModel;->isWatched:Z

    .line 1064
    .line 1065
    iget-object v0, v4, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->watchlistExpiry:Ljava/lang/String;

    .line 1066
    .line 1067
    if-eqz v0, :cond_2a

    .line 1068
    .line 1069
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 1070
    .line 1071
    .line 1072
    move-result v0

    .line 1073
    if-nez v0, :cond_29

    .line 1074
    .line 1075
    goto :goto_19

    .line 1076
    :cond_29
    const/4 v13, 0x0

    .line 1077
    :goto_18
    const/16 v18, 0x1

    .line 1078
    .line 1079
    goto :goto_1a

    .line 1080
    :cond_2a
    :goto_19
    const/4 v13, 0x1

    .line 1081
    goto :goto_18

    .line 1082
    :goto_1a
    xor-int/lit8 v0, v13, 0x1

    .line 1083
    .line 1084
    iput-boolean v0, v8, Lorg/wikipedia/talk/TalkTopicsViewModel;->hasWatchlistExpiry:Z

    .line 1085
    .line 1086
    iget-object v0, v8, Lorg/wikipedia/talk/TalkTopicsViewModel;->uiState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 1087
    .line 1088
    new-instance v1, Lorg/wikipedia/talk/TalkTopicsViewModel$UiState$LoadTopic;

    .line 1089
    .line 1090
    iget-object v2, v8, Lorg/wikipedia/talk/TalkTopicsViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 1091
    .line 1092
    invoke-direct {v1, v2, v12}, Lorg/wikipedia/talk/TalkTopicsViewModel$UiState$LoadTopic;-><init>(Lorg/wikipedia/page/PageTitle;Ljava/util/ArrayList;)V

    .line 1093
    .line 1094
    .line 1095
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1096
    .line 1097
    .line 1098
    const/4 v3, 0x0

    .line 1099
    invoke-virtual {v0, v3, v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1100
    .line 1101
    .line 1102
    goto :goto_1b

    .line 1103
    :catch_2
    move-exception v0

    .line 1104
    const/4 v3, 0x0

    .line 1105
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/Throwable;)V

    .line 1106
    .line 1107
    .line 1108
    move-object v15, v3

    .line 1109
    :goto_1b
    return-object v15

    .line 1110
    :pswitch_3
    move-object v6, v4

    .line 1111
    move-object v8, v2

    .line 1112
    check-cast v8, Lorg/wikipedia/talk/TalkTopicViewModel;

    .line 1113
    .line 1114
    iget-object v13, v8, Lorg/wikipedia/talk/TalkTopicViewModel;->topicName:Ljava/lang/String;

    .line 1115
    .line 1116
    iget-object v14, v8, Lorg/wikipedia/talk/TalkTopicViewModel;->threadItems:Ljava/util/ArrayList;

    .line 1117
    .line 1118
    iget-object v0, v8, Lorg/wikipedia/talk/TalkTopicViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 1119
    .line 1120
    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1121
    .line 1122
    iget v3, v5, Lorg/wikipedia/talk/TalkTopicViewModel$loadTopic$2;->label:I

    .line 1123
    .line 1124
    sget-object v16, Lkotlin/sequences/EmptySequence;->INSTANCE:Lkotlin/sequences/EmptySequence;

    .line 1125
    .line 1126
    if-eqz v3, :cond_2e

    .line 1127
    .line 1128
    const/4 v4, 0x1

    .line 1129
    if-eq v3, v4, :cond_2d

    .line 1130
    .line 1131
    const/4 v4, 0x2

    .line 1132
    if-eq v3, v4, :cond_2c

    .line 1133
    .line 1134
    const/4 v0, 0x3

    .line 1135
    if-ne v3, v0, :cond_2b

    .line 1136
    .line 1137
    iget-object v0, v5, Lorg/wikipedia/talk/TalkTopicViewModel$loadTopic$2;->L$2:Ljava/lang/Object;

    .line 1138
    .line 1139
    check-cast v0, Lorg/wikipedia/talk/TalkTopicViewModel;

    .line 1140
    .line 1141
    check-cast v0, Ljava/lang/String;

    .line 1142
    .line 1143
    iget-object v0, v5, Lorg/wikipedia/talk/TalkTopicViewModel$loadTopic$2;->L$1:Ljava/lang/Object;

    .line 1144
    .line 1145
    check-cast v0, Ljava/util/Set;

    .line 1146
    .line 1147
    check-cast v0, Ljava/util/Set;

    .line 1148
    .line 1149
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1150
    .line 1151
    .line 1152
    move-object v3, v6

    .line 1153
    goto/16 :goto_2b

    .line 1154
    .line 1155
    :cond_2b
    invoke-static {v1}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 1156
    .line 1157
    .line 1158
    move-object v15, v6

    .line 1159
    goto/16 :goto_33

    .line 1160
    .line 1161
    :cond_2c
    iget-object v0, v5, Lorg/wikipedia/talk/TalkTopicViewModel$loadTopic$2;->L$2:Ljava/lang/Object;

    .line 1162
    .line 1163
    check-cast v0, Lorg/wikipedia/talk/TalkTopicViewModel;

    .line 1164
    .line 1165
    iget-object v1, v5, Lorg/wikipedia/talk/TalkTopicViewModel$loadTopic$2;->L$1:Ljava/lang/Object;

    .line 1166
    .line 1167
    check-cast v1, Ljava/util/Set;

    .line 1168
    .line 1169
    check-cast v1, Ljava/util/Set;

    .line 1170
    .line 1171
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1172
    .line 1173
    .line 1174
    move-object v9, v2

    .line 1175
    move-object v2, v1

    .line 1176
    move-object v1, v0

    .line 1177
    move-object/from16 v0, p1

    .line 1178
    .line 1179
    goto/16 :goto_22

    .line 1180
    .line 1181
    :cond_2d
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1182
    .line 1183
    .line 1184
    move-object v6, v0

    .line 1185
    move-object v9, v2

    .line 1186
    move-object/from16 v0, p1

    .line 1187
    .line 1188
    goto :goto_1c

    .line 1189
    :cond_2e
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1190
    .line 1191
    .line 1192
    sget-object v1, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 1193
    .line 1194
    iget-object v1, v0, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 1195
    .line 1196
    invoke-static {v1}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    .line 1197
    .line 1198
    .line 1199
    move-result-object v1

    .line 1200
    move-object v3, v1

    .line 1201
    invoke-virtual {v0}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    .line 1202
    .line 1203
    .line 1204
    move-result-object v1

    .line 1205
    iget-object v4, v0, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 1206
    .line 1207
    iget-object v4, v4, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 1208
    .line 1209
    invoke-virtual {v0}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    .line 1210
    .line 1211
    .line 1212
    move-result-object v6

    .line 1213
    :try_start_4
    invoke-static {v6, v9}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1214
    .line 1215
    .line 1216
    move-result-object v6

    .line 1217
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1218
    .line 1219
    .line 1220
    invoke-static {v6, v10, v11}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1221
    .line 1222
    .line 1223
    move-result-object v6
    :try_end_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_3

    .line 1224
    const/4 v9, 0x1

    .line 1225
    iput v9, v5, Lorg/wikipedia/talk/TalkTopicViewModel$loadTopic$2;->label:I

    .line 1226
    .line 1227
    move-object v9, v2

    .line 1228
    const-string v2, "save"

    .line 1229
    .line 1230
    move-object/from16 v19, v6

    .line 1231
    .line 1232
    move-object v6, v0

    .line 1233
    move-object v0, v3

    .line 1234
    move-object v3, v4

    .line 1235
    move-object/from16 v4, v19

    .line 1236
    .line 1237
    invoke-interface/range {v0 .. v5}, Lorg/wikipedia/dataclient/Service;->getTalkPageTopics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 1238
    .line 1239
    .line 1240
    move-result-object v0

    .line 1241
    if-ne v0, v9, :cond_2f

    .line 1242
    .line 1243
    goto/16 :goto_2a

    .line 1244
    .line 1245
    :cond_2f
    :goto_1c
    check-cast v0, Lorg/wikipedia/dataclient/discussiontools/DiscussionToolsInfoResponse;

    .line 1246
    .line 1247
    iget-object v1, v8, Lorg/wikipedia/talk/TalkTopicViewModel;->topic:Lorg/wikipedia/dataclient/discussiontools/ThreadItem;

    .line 1248
    .line 1249
    if-eqz v1, :cond_30

    .line 1250
    .line 1251
    invoke-virtual {v1}, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->getAllReplies()Lkotlin/io/LinesSequence;

    .line 1252
    .line 1253
    .line 1254
    move-result-object v4

    .line 1255
    goto :goto_1d

    .line 1256
    :cond_30
    const/4 v4, 0x0

    .line 1257
    :goto_1d
    if-nez v4, :cond_31

    .line 1258
    .line 1259
    move-object/from16 v4, v16

    .line 1260
    .line 1261
    :cond_31
    invoke-interface {v4}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    .line 1262
    .line 1263
    .line 1264
    move-result-object v1

    .line 1265
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 1266
    .line 1267
    .line 1268
    move-result v2

    .line 1269
    if-nez v2, :cond_32

    .line 1270
    .line 1271
    sget-object v1, Lkotlin/collections/EmptySet;->INSTANCE:Lkotlin/collections/EmptySet;

    .line 1272
    .line 1273
    goto :goto_1f

    .line 1274
    :cond_32
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1275
    .line 1276
    .line 1277
    move-result-object v2

    .line 1278
    check-cast v2, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;

    .line 1279
    .line 1280
    iget-object v2, v2, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->id:Ljava/lang/String;

    .line 1281
    .line 1282
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 1283
    .line 1284
    .line 1285
    move-result v3

    .line 1286
    if-nez v3, :cond_33

    .line 1287
    .line 1288
    invoke-static {v2}, Lkotlin/uuid/UuidKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    .line 1289
    .line 1290
    .line 1291
    move-result-object v1

    .line 1292
    goto :goto_1f

    .line 1293
    :cond_33
    new-instance v3, Ljava/util/LinkedHashSet;

    .line 1294
    .line 1295
    invoke-direct {v3}, Ljava/util/LinkedHashSet;-><init>()V

    .line 1296
    .line 1297
    .line 1298
    invoke-virtual {v3, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 1299
    .line 1300
    .line 1301
    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 1302
    .line 1303
    .line 1304
    move-result v2

    .line 1305
    if-eqz v2, :cond_34

    .line 1306
    .line 1307
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1308
    .line 1309
    .line 1310
    move-result-object v2

    .line 1311
    check-cast v2, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;

    .line 1312
    .line 1313
    iget-object v2, v2, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->id:Ljava/lang/String;

    .line 1314
    .line 1315
    invoke-virtual {v3, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 1316
    .line 1317
    .line 1318
    goto :goto_1e

    .line 1319
    :cond_34
    move-object v1, v3

    .line 1320
    :goto_1f
    iget-object v0, v0, Lorg/wikipedia/dataclient/discussiontools/DiscussionToolsInfoResponse;->pageInfo:Lorg/wikipedia/dataclient/discussiontools/DiscussionToolsInfoResponse$PageInfo;

    .line 1321
    .line 1322
    if-eqz v0, :cond_35

    .line 1323
    .line 1324
    iget-object v4, v0, Lorg/wikipedia/dataclient/discussiontools/DiscussionToolsInfoResponse$PageInfo;->threads:Ljava/util/List;

    .line 1325
    .line 1326
    goto :goto_20

    .line 1327
    :cond_35
    const/4 v4, 0x0

    .line 1328
    :goto_20
    if-nez v4, :cond_36

    .line 1329
    .line 1330
    move-object v4, v7

    .line 1331
    :cond_36
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 1332
    .line 1333
    .line 1334
    move-result-object v0

    .line 1335
    :cond_37
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1336
    .line 1337
    .line 1338
    move-result v2

    .line 1339
    if-eqz v2, :cond_38

    .line 1340
    .line 1341
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1342
    .line 1343
    .line 1344
    move-result-object v4

    .line 1345
    move-object v2, v4

    .line 1346
    check-cast v2, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;

    .line 1347
    .line 1348
    iget-object v2, v2, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->id:Ljava/lang/String;

    .line 1349
    .line 1350
    iget-object v3, v8, Lorg/wikipedia/talk/TalkTopicViewModel;->topicId:Ljava/lang/String;

    .line 1351
    .line 1352
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1353
    .line 1354
    .line 1355
    move-result v2

    .line 1356
    if-eqz v2, :cond_37

    .line 1357
    .line 1358
    goto :goto_21

    .line 1359
    :cond_38
    const/4 v4, 0x0

    .line 1360
    :goto_21
    check-cast v4, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;

    .line 1361
    .line 1362
    iput-object v4, v8, Lorg/wikipedia/talk/TalkTopicViewModel;->topic:Lorg/wikipedia/dataclient/discussiontools/ThreadItem;

    .line 1363
    .line 1364
    sget-object v0, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 1365
    .line 1366
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 1367
    .line 1368
    .line 1369
    move-result-object v0

    .line 1370
    invoke-virtual {v0}, Lorg/wikipedia/WikipediaApp;->isOnline()Z

    .line 1371
    .line 1372
    .line 1373
    move-result v0

    .line 1374
    if-eqz v0, :cond_3c

    .line 1375
    .line 1376
    sget-object v0, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 1377
    .line 1378
    iget-object v0, v6, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 1379
    .line 1380
    invoke-static {v0}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    .line 1381
    .line 1382
    .line 1383
    move-result-object v0

    .line 1384
    move-object v2, v1

    .line 1385
    check-cast v2, Ljava/util/Set;

    .line 1386
    .line 1387
    iput-object v2, v5, Lorg/wikipedia/talk/TalkTopicViewModel$loadTopic$2;->L$1:Ljava/lang/Object;

    .line 1388
    .line 1389
    iput-object v8, v5, Lorg/wikipedia/talk/TalkTopicViewModel$loadTopic$2;->L$2:Ljava/lang/Object;

    .line 1390
    .line 1391
    const/4 v2, 0x2

    .line 1392
    iput v2, v5, Lorg/wikipedia/talk/TalkTopicViewModel$loadTopic$2;->label:I

    .line 1393
    .line 1394
    invoke-interface {v0, v13, v5}, Lorg/wikipedia/dataclient/Service;->getTalkPageTopicSubscriptions(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 1395
    .line 1396
    .line 1397
    move-result-object v0

    .line 1398
    if-ne v0, v9, :cond_39

    .line 1399
    .line 1400
    goto/16 :goto_2a

    .line 1401
    .line 1402
    :cond_39
    move-object v2, v1

    .line 1403
    move-object v1, v8

    .line 1404
    :goto_22
    check-cast v0, Lorg/wikipedia/dataclient/discussiontools/DiscussionToolsSubscriptionList;

    .line 1405
    .line 1406
    iget-object v0, v0, Lorg/wikipedia/dataclient/discussiontools/DiscussionToolsSubscriptionList;->subscriptions:Ljava/util/Map;

    .line 1407
    .line 1408
    invoke-interface {v0, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1409
    .line 1410
    .line 1411
    move-result-object v0

    .line 1412
    check-cast v0, Ljava/lang/Integer;

    .line 1413
    .line 1414
    if-nez v0, :cond_3a

    .line 1415
    .line 1416
    goto :goto_23

    .line 1417
    :cond_3a
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 1418
    .line 1419
    .line 1420
    move-result v0

    .line 1421
    const/4 v4, 0x1

    .line 1422
    if-ne v0, v4, :cond_3b

    .line 1423
    .line 1424
    const/4 v3, 0x1

    .line 1425
    goto :goto_24

    .line 1426
    :cond_3b
    :goto_23
    const/4 v3, 0x0

    .line 1427
    :goto_24
    iput-boolean v3, v1, Lorg/wikipedia/talk/TalkTopicViewModel;->subscribed:Z

    .line 1428
    .line 1429
    move-object v0, v2

    .line 1430
    goto :goto_25

    .line 1431
    :cond_3c
    move-object v0, v1

    .line 1432
    :goto_25
    iget-object v1, v8, Lorg/wikipedia/talk/TalkTopicViewModel;->topic:Lorg/wikipedia/dataclient/discussiontools/ThreadItem;

    .line 1433
    .line 1434
    if-eqz v1, :cond_40

    .line 1435
    .line 1436
    iget-object v2, v1, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->name:Ljava/lang/String;

    .line 1437
    .line 1438
    invoke-virtual {v1}, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->getAllReplies()Lkotlin/io/LinesSequence;

    .line 1439
    .line 1440
    .line 1441
    move-result-object v1

    .line 1442
    iget-object v1, v1, Lkotlin/io/LinesSequence;->reader:Ljava/lang/Object;

    .line 1443
    .line 1444
    check-cast v1, Lkotlin/jvm/functions/Function2;

    .line 1445
    .line 1446
    invoke-static {v1}, Lkotlin/UnsignedKt;->iterator(Lkotlin/jvm/functions/Function2;)Lkotlin/sequences/SequenceBuilderIterator;

    .line 1447
    .line 1448
    .line 1449
    move-result-object v1

    .line 1450
    invoke-virtual {v1}, Lkotlin/sequences/SequenceBuilderIterator;->hasNext()Z

    .line 1451
    .line 1452
    .line 1453
    move-result v3

    .line 1454
    if-nez v3, :cond_3d

    .line 1455
    .line 1456
    const/4 v4, 0x0

    .line 1457
    goto :goto_27

    .line 1458
    :cond_3d
    invoke-virtual {v1}, Lkotlin/sequences/SequenceBuilderIterator;->next()Ljava/lang/Object;

    .line 1459
    .line 1460
    .line 1461
    move-result-object v3

    .line 1462
    check-cast v3, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;

    .line 1463
    .line 1464
    iget-object v3, v3, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->timestamp:Ljava/lang/String;

    .line 1465
    .line 1466
    :goto_26
    move-object v4, v3

    .line 1467
    :cond_3e
    invoke-virtual {v1}, Lkotlin/sequences/SequenceBuilderIterator;->hasNext()Z

    .line 1468
    .line 1469
    .line 1470
    move-result v3

    .line 1471
    if-eqz v3, :cond_3f

    .line 1472
    .line 1473
    invoke-virtual {v1}, Lkotlin/sequences/SequenceBuilderIterator;->next()Ljava/lang/Object;

    .line 1474
    .line 1475
    .line 1476
    move-result-object v3

    .line 1477
    check-cast v3, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;

    .line 1478
    .line 1479
    iget-object v3, v3, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->timestamp:Ljava/lang/String;

    .line 1480
    .line 1481
    invoke-virtual {v4, v3}, Ljava/lang/String;->compareTo(Ljava/lang/Object;)I

    .line 1482
    .line 1483
    .line 1484
    move-result v6

    .line 1485
    if-gez v6, :cond_3e

    .line 1486
    .line 1487
    goto :goto_26

    .line 1488
    :cond_3f
    :goto_27
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1489
    .line 1490
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1491
    .line 1492
    .line 1493
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1494
    .line 1495
    .line 1496
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1497
    .line 1498
    .line 1499
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1500
    .line 1501
    .line 1502
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1503
    .line 1504
    .line 1505
    move-result-object v4

    .line 1506
    goto :goto_28

    .line 1507
    :cond_40
    const/4 v4, 0x0

    .line 1508
    :goto_28
    if-eqz v4, :cond_42

    .line 1509
    .line 1510
    sget-object v1, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    .line 1511
    .line 1512
    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    .line 1513
    .line 1514
    .line 1515
    move-result-object v1

    .line 1516
    invoke-virtual {v1}, Lorg/wikipedia/database/AppDatabase;->talkPageSeenDao()Lorg/wikipedia/talk/db/TalkPageSeenDao_Impl;

    .line 1517
    .line 1518
    .line 1519
    move-result-object v1

    .line 1520
    new-instance v2, Lorg/wikipedia/talk/db/TalkPageSeen;

    .line 1521
    .line 1522
    invoke-direct {v2, v4}, Lorg/wikipedia/talk/db/TalkPageSeen;-><init>(Ljava/lang/String;)V

    .line 1523
    .line 1524
    .line 1525
    move-object v3, v0

    .line 1526
    check-cast v3, Ljava/util/Set;

    .line 1527
    .line 1528
    iput-object v3, v5, Lorg/wikipedia/talk/TalkTopicViewModel$loadTopic$2;->L$1:Ljava/lang/Object;

    .line 1529
    .line 1530
    const/4 v3, 0x0

    .line 1531
    iput-object v3, v5, Lorg/wikipedia/talk/TalkTopicViewModel$loadTopic$2;->L$2:Ljava/lang/Object;

    .line 1532
    .line 1533
    const/4 v4, 0x3

    .line 1534
    iput v4, v5, Lorg/wikipedia/talk/TalkTopicViewModel$loadTopic$2;->label:I

    .line 1535
    .line 1536
    iget-object v4, v1, Lorg/wikipedia/talk/db/TalkPageSeenDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 1537
    .line 1538
    new-instance v6, Lorg/wikipedia/util/SingleLiveData$$ExternalSyntheticLambda0;

    .line 1539
    .line 1540
    const/16 v10, 0xa

    .line 1541
    .line 1542
    invoke-direct {v6, v10, v1, v2}, Lorg/wikipedia/util/SingleLiveData$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1543
    .line 1544
    .line 1545
    const/4 v1, 0x0

    .line 1546
    const/4 v2, 0x1

    .line 1547
    invoke-static {v4, v1, v2, v6, v5}, Lkotlin/ExceptionsKt;->performSuspending(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 1548
    .line 1549
    .line 1550
    move-result-object v1

    .line 1551
    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1552
    .line 1553
    if-ne v1, v2, :cond_41

    .line 1554
    .line 1555
    goto :goto_29

    .line 1556
    :cond_41
    move-object v1, v15

    .line 1557
    :goto_29
    if-ne v1, v9, :cond_43

    .line 1558
    .line 1559
    :goto_2a
    move-object v15, v9

    .line 1560
    goto/16 :goto_33

    .line 1561
    .line 1562
    :cond_42
    const/4 v3, 0x0

    .line 1563
    :cond_43
    :goto_2b
    iget-object v1, v8, Lorg/wikipedia/talk/TalkTopicViewModel;->topic:Lorg/wikipedia/dataclient/discussiontools/ThreadItem;

    .line 1564
    .line 1565
    if-eqz v1, :cond_44

    .line 1566
    .line 1567
    invoke-virtual {v1}, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->getAllReplies()Lkotlin/io/LinesSequence;

    .line 1568
    .line 1569
    .line 1570
    move-result-object v4

    .line 1571
    goto :goto_2c

    .line 1572
    :cond_44
    move-object v4, v3

    .line 1573
    :goto_2c
    if-nez v4, :cond_45

    .line 1574
    .line 1575
    move-object/from16 v4, v16

    .line 1576
    .line 1577
    :cond_45
    new-instance v1, Lorg/wikipedia/main/MainActivity$$ExternalSyntheticLambda1;

    .line 1578
    .line 1579
    const/16 v2, 0x1b

    .line 1580
    .line 1581
    invoke-direct {v1, v2, v0}, Lorg/wikipedia/main/MainActivity$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    .line 1582
    .line 1583
    .line 1584
    new-instance v2, Lkotlin/sequences/FilteringSequence;

    .line 1585
    .line 1586
    const/4 v9, 0x1

    .line 1587
    invoke-direct {v2, v4, v9, v1}, Lkotlin/sequences/FilteringSequence;-><init>(Lkotlin/sequences/Sequence;ZLkotlin/jvm/functions/Function1;)V

    .line 1588
    .line 1589
    .line 1590
    invoke-static {v2}, Lkotlin/sequences/SequencesKt;->toList(Lkotlin/sequences/Sequence;)Ljava/util/List;

    .line 1591
    .line 1592
    .line 1593
    move-result-object v1

    .line 1594
    check-cast v0, Ljava/util/Collection;

    .line 1595
    .line 1596
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 1597
    .line 1598
    .line 1599
    move-result v0

    .line 1600
    if-nez v0, :cond_4b

    .line 1601
    .line 1602
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 1603
    .line 1604
    .line 1605
    move-result v0

    .line 1606
    if-nez v0, :cond_4b

    .line 1607
    .line 1608
    invoke-static {}, Lokhttp3/Headers$Companion;->isLoggedIn()Z

    .line 1609
    .line 1610
    .line 1611
    move-result v0

    .line 1612
    if-eqz v0, :cond_49

    .line 1613
    .line 1614
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 1615
    .line 1616
    .line 1617
    move-result v0

    .line 1618
    invoke-interface {v1, v0}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    .line 1619
    .line 1620
    .line 1621
    move-result-object v0

    .line 1622
    :cond_46
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    .line 1623
    .line 1624
    .line 1625
    move-result v2

    .line 1626
    if-eqz v2, :cond_47

    .line 1627
    .line 1628
    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 1629
    .line 1630
    .line 1631
    move-result-object v4

    .line 1632
    move-object v2, v4

    .line 1633
    check-cast v2, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;

    .line 1634
    .line 1635
    iget-object v2, v2, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->author:Ljava/lang/String;

    .line 1636
    .line 1637
    invoke-static {}, Lokhttp3/Headers$Companion;->getUserName()Ljava/lang/String;

    .line 1638
    .line 1639
    .line 1640
    move-result-object v5

    .line 1641
    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1642
    .line 1643
    .line 1644
    move-result v2

    .line 1645
    if-eqz v2, :cond_46

    .line 1646
    .line 1647
    goto :goto_2d

    .line 1648
    :cond_47
    move-object v4, v3

    .line 1649
    :goto_2d
    check-cast v4, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;

    .line 1650
    .line 1651
    if-eqz v4, :cond_48

    .line 1652
    .line 1653
    iget-object v4, v4, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->id:Ljava/lang/String;

    .line 1654
    .line 1655
    goto :goto_2e

    .line 1656
    :cond_48
    move-object v4, v3

    .line 1657
    :goto_2e
    iput-object v4, v8, Lorg/wikipedia/talk/TalkTopicViewModel;->scrollTargetId:Ljava/lang/String;

    .line 1658
    .line 1659
    :cond_49
    iget-object v0, v8, Lorg/wikipedia/talk/TalkTopicViewModel;->scrollTargetId:Ljava/lang/String;

    .line 1660
    .line 1661
    if-eqz v0, :cond_4a

    .line 1662
    .line 1663
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 1664
    .line 1665
    .line 1666
    move-result v0

    .line 1667
    if-nez v0, :cond_4b

    .line 1668
    .line 1669
    :cond_4a
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    .line 1670
    .line 1671
    .line 1672
    move-result-object v0

    .line 1673
    check-cast v0, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;

    .line 1674
    .line 1675
    iget-object v0, v0, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->id:Ljava/lang/String;

    .line 1676
    .line 1677
    iput-object v0, v8, Lorg/wikipedia/talk/TalkTopicViewModel;->scrollTargetId:Ljava/lang/String;

    .line 1678
    .line 1679
    :cond_4b
    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    .line 1680
    .line 1681
    .line 1682
    iget-object v0, v8, Lorg/wikipedia/talk/TalkTopicViewModel;->topic:Lorg/wikipedia/dataclient/discussiontools/ThreadItem;

    .line 1683
    .line 1684
    if-eqz v0, :cond_4c

    .line 1685
    .line 1686
    iget-object v4, v0, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->replies:Ljava/util/List;

    .line 1687
    .line 1688
    goto :goto_2f

    .line 1689
    :cond_4c
    move-object v4, v3

    .line 1690
    :goto_2f
    if-nez v4, :cond_4d

    .line 1691
    .line 1692
    goto :goto_30

    .line 1693
    :cond_4d
    move-object v7, v4

    .line 1694
    :goto_30
    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1695
    .line 1696
    .line 1697
    iget-object v0, v8, Lorg/wikipedia/talk/TalkTopicViewModel;->scrollTargetId:Ljava/lang/String;

    .line 1698
    .line 1699
    if-eqz v0, :cond_4f

    .line 1700
    .line 1701
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 1702
    .line 1703
    .line 1704
    move-result v0

    .line 1705
    if-nez v0, :cond_4e

    .line 1706
    .line 1707
    goto :goto_32

    .line 1708
    :cond_4e
    iget-object v0, v8, Lorg/wikipedia/talk/TalkTopicViewModel;->topic:Lorg/wikipedia/dataclient/discussiontools/ThreadItem;

    .line 1709
    .line 1710
    if-eqz v0, :cond_50

    .line 1711
    .line 1712
    invoke-virtual {v0}, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->getAllReplies()Lkotlin/io/LinesSequence;

    .line 1713
    .line 1714
    .line 1715
    move-result-object v0

    .line 1716
    iget-object v0, v0, Lkotlin/io/LinesSequence;->reader:Ljava/lang/Object;

    .line 1717
    .line 1718
    check-cast v0, Lkotlin/jvm/functions/Function2;

    .line 1719
    .line 1720
    invoke-static {v0}, Lkotlin/UnsignedKt;->iterator(Lkotlin/jvm/functions/Function2;)Lkotlin/sequences/SequenceBuilderIterator;

    .line 1721
    .line 1722
    .line 1723
    move-result-object v0

    .line 1724
    :goto_31
    invoke-virtual {v0}, Lkotlin/sequences/SequenceBuilderIterator;->hasNext()Z

    .line 1725
    .line 1726
    .line 1727
    move-result v1

    .line 1728
    if-eqz v1, :cond_50

    .line 1729
    .line 1730
    invoke-virtual {v0}, Lkotlin/sequences/SequenceBuilderIterator;->next()Ljava/lang/Object;

    .line 1731
    .line 1732
    .line 1733
    move-result-object v1

    .line 1734
    check-cast v1, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;

    .line 1735
    .line 1736
    const/4 v4, 0x1

    .line 1737
    iput-boolean v4, v1, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->isExpanded:Z

    .line 1738
    .line 1739
    goto :goto_31

    .line 1740
    :cond_4f
    :goto_32
    invoke-virtual {v8}, Lorg/wikipedia/talk/TalkTopicViewModel;->expandOrCollapseAll()Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    .line 1741
    .line 1742
    .line 1743
    :cond_50
    invoke-virtual {v8}, Lorg/wikipedia/talk/TalkTopicViewModel;->updateFlattenedThreadItems()V

    .line 1744
    .line 1745
    .line 1746
    iget-object v0, v8, Lorg/wikipedia/talk/TalkTopicViewModel;->threadItemsData:Landroidx/lifecycle/MutableLiveData;

    .line 1747
    .line 1748
    new-instance v1, Lorg/wikipedia/util/Resource$Success;

    .line 1749
    .line 1750
    invoke-direct {v1, v14}, Lorg/wikipedia/util/Resource$Success;-><init>(Ljava/lang/Object;)V

    .line 1751
    .line 1752
    .line 1753
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 1754
    .line 1755
    .line 1756
    goto :goto_33

    .line 1757
    :catch_3
    move-exception v0

    .line 1758
    const/4 v3, 0x0

    .line 1759
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/Throwable;)V

    .line 1760
    .line 1761
    .line 1762
    move-object v15, v3

    .line 1763
    :goto_33
    return-object v15

    .line 1764
    nop

    .line 1765
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
