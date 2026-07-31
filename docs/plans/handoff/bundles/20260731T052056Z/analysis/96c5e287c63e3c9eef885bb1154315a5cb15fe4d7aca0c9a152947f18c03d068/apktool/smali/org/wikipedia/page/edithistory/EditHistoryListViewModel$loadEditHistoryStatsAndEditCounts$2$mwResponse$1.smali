.class public final Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2$mwResponse$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public label:I

.field public final synthetic this$0:Lorg/wikipedia/page/edithistory/EditHistoryListViewModel;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/page/edithistory/EditHistoryListViewModel;Lkotlin/coroutines/Continuation;I)V
    .locals 0

    .line 1
    iput p3, p0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2$mwResponse$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2$mwResponse$1;->this$0:Lorg/wikipedia/page/edithistory/EditHistoryListViewModel;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    .line 1
    iget p1, p0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2$mwResponse$1;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2$mwResponse$1;->this$0:Lorg/wikipedia/page/edithistory/EditHistoryListViewModel;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance p1, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2$mwResponse$1;

    .line 9
    .line 10
    const/4 v0, 0x4

    .line 11
    invoke-direct {p1, p0, p2, v0}, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2$mwResponse$1;-><init>(Lorg/wikipedia/page/edithistory/EditHistoryListViewModel;Lkotlin/coroutines/Continuation;I)V

    .line 12
    .line 13
    .line 14
    return-object p1

    .line 15
    :pswitch_0
    new-instance p1, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2$mwResponse$1;

    .line 16
    .line 17
    const/4 v0, 0x3

    .line 18
    invoke-direct {p1, p0, p2, v0}, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2$mwResponse$1;-><init>(Lorg/wikipedia/page/edithistory/EditHistoryListViewModel;Lkotlin/coroutines/Continuation;I)V

    .line 19
    .line 20
    .line 21
    return-object p1

    .line 22
    :pswitch_1
    new-instance p1, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2$mwResponse$1;

    .line 23
    .line 24
    const/4 v0, 0x2

    .line 25
    invoke-direct {p1, p0, p2, v0}, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2$mwResponse$1;-><init>(Lorg/wikipedia/page/edithistory/EditHistoryListViewModel;Lkotlin/coroutines/Continuation;I)V

    .line 26
    .line 27
    .line 28
    return-object p1

    .line 29
    :pswitch_2
    new-instance p1, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2$mwResponse$1;

    .line 30
    .line 31
    const/4 v0, 0x1

    .line 32
    invoke-direct {p1, p0, p2, v0}, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2$mwResponse$1;-><init>(Lorg/wikipedia/page/edithistory/EditHistoryListViewModel;Lkotlin/coroutines/Continuation;I)V

    .line 33
    .line 34
    .line 35
    return-object p1

    .line 36
    :pswitch_3
    new-instance p1, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2$mwResponse$1;

    .line 37
    .line 38
    const/4 v0, 0x0

    .line 39
    invoke-direct {p1, p0, p2, v0}, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2$mwResponse$1;-><init>(Lorg/wikipedia/page/edithistory/EditHistoryListViewModel;Lkotlin/coroutines/Continuation;I)V

    .line 40
    .line 41
    .line 42
    return-object p1

    .line 43
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
    iget v0, p0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2$mwResponse$1;->$r8$classId:I

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
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2$mwResponse$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2$mwResponse$1;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2$mwResponse$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2$mwResponse$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2$mwResponse$1;

    .line 28
    .line 29
    invoke-virtual {p0, v1}, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2$mwResponse$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0

    .line 34
    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2$mwResponse$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    check-cast p0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2$mwResponse$1;

    .line 39
    .line 40
    invoke-virtual {p0, v1}, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2$mwResponse$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    return-object p0

    .line 45
    :pswitch_2
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2$mwResponse$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    check-cast p0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2$mwResponse$1;

    .line 50
    .line 51
    invoke-virtual {p0, v1}, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2$mwResponse$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    return-object p0

    .line 56
    :pswitch_3
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2$mwResponse$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    check-cast p0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2$mwResponse$1;

    .line 61
    .line 62
    invoke-virtual {p0, v1}, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2$mwResponse$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    .locals 11

    .line 1
    iget v0, p0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2$mwResponse$1;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 5
    .line 6
    const/4 v3, 0x1

    .line 7
    iget-object v4, p0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2$mwResponse$1;->this$0:Lorg/wikipedia/page/edithistory/EditHistoryListViewModel;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    iget-object v0, v4, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 13
    .line 14
    sget-object v4, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 15
    .line 16
    iget v5, p0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2$mwResponse$1;->label:I

    .line 17
    .line 18
    if-eqz v5, :cond_1

    .line 19
    .line 20
    if-ne v5, v3, :cond_0

    .line 21
    .line 22
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-static {v2}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    move-object p1, v1

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    sget-object p1, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 35
    .line 36
    iget-object p1, v0, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 37
    .line 38
    invoke-static {p1}, Lorg/wikipedia/dataclient/ServiceFactory;->getCoreRest(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/CoreRestService;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {v0}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    iput v3, p0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2$mwResponse$1;->label:I

    .line 47
    .line 48
    const-string v1, "editors"

    .line 49
    .line 50
    invoke-interface {p1, v0, v1, p0}, Lorg/wikipedia/dataclient/CoreRestService;->getEditCount(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    if-ne p1, v4, :cond_2

    .line 55
    .line 56
    move-object p1, v4

    .line 57
    :cond_2
    :goto_0
    return-object p1

    .line 58
    :pswitch_0
    iget-object v0, v4, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 59
    .line 60
    sget-object v4, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 61
    .line 62
    iget v5, p0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2$mwResponse$1;->label:I

    .line 63
    .line 64
    if-eqz v5, :cond_4

    .line 65
    .line 66
    if-ne v5, v3, :cond_3

    .line 67
    .line 68
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_3
    invoke-static {v2}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    move-object p1, v1

    .line 76
    goto :goto_1

    .line 77
    :cond_4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    sget-object p1, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 81
    .line 82
    iget-object p1, v0, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 83
    .line 84
    invoke-static {p1}, Lorg/wikipedia/dataclient/ServiceFactory;->getCoreRest(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/CoreRestService;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-virtual {v0}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    iput v3, p0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2$mwResponse$1;->label:I

    .line 93
    .line 94
    const-string v1, "edits"

    .line 95
    .line 96
    invoke-interface {p1, v0, v1, p0}, Lorg/wikipedia/dataclient/CoreRestService;->getEditCount(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    if-ne p1, v4, :cond_5

    .line 101
    .line 102
    move-object p1, v4

    .line 103
    :cond_5
    :goto_1
    return-object p1

    .line 104
    :pswitch_1
    iget-object v0, v4, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 105
    .line 106
    sget-object v4, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 107
    .line 108
    iget v5, p0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2$mwResponse$1;->label:I

    .line 109
    .line 110
    if-eqz v5, :cond_7

    .line 111
    .line 112
    if-ne v5, v3, :cond_6

    .line 113
    .line 114
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    goto :goto_2

    .line 118
    :cond_6
    invoke-static {v2}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    move-object p1, v1

    .line 122
    goto :goto_2

    .line 123
    :cond_7
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    sget-object p1, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 127
    .line 128
    iget-object p1, v0, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 129
    .line 130
    invoke-static {p1}, Lorg/wikipedia/dataclient/ServiceFactory;->getCoreRest(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/CoreRestService;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    invoke-virtual {v0}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    iput v3, p0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2$mwResponse$1;->label:I

    .line 139
    .line 140
    const-string v1, "bot"

    .line 141
    .line 142
    invoke-interface {p1, v0, v1, p0}, Lorg/wikipedia/dataclient/CoreRestService;->getEditCount(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    if-ne p1, v4, :cond_8

    .line 147
    .line 148
    move-object p1, v4

    .line 149
    :cond_8
    :goto_2
    return-object p1

    .line 150
    :pswitch_2
    iget-object v0, v4, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 151
    .line 152
    sget-object v4, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 153
    .line 154
    iget v5, p0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2$mwResponse$1;->label:I

    .line 155
    .line 156
    if-eqz v5, :cond_a

    .line 157
    .line 158
    if-ne v5, v3, :cond_9

    .line 159
    .line 160
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 161
    .line 162
    .line 163
    goto :goto_3

    .line 164
    :cond_9
    invoke-static {v2}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    move-object p1, v1

    .line 168
    goto :goto_3

    .line 169
    :cond_a
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 170
    .line 171
    .line 172
    sget-object p1, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 173
    .line 174
    iget-object p1, v0, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 175
    .line 176
    invoke-static {p1}, Lorg/wikipedia/dataclient/ServiceFactory;->getCoreRest(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/CoreRestService;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    invoke-virtual {v0}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    iput v3, p0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2$mwResponse$1;->label:I

    .line 185
    .line 186
    const-string v1, "anonymous"

    .line 187
    .line 188
    invoke-interface {p1, v0, v1, p0}, Lorg/wikipedia/dataclient/CoreRestService;->getEditCount(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object p1

    .line 192
    if-ne p1, v4, :cond_b

    .line 193
    .line 194
    move-object p1, v4

    .line 195
    :cond_b
    :goto_3
    return-object p1

    .line 196
    :pswitch_3
    iget-object v0, v4, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 197
    .line 198
    sget-object v4, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 199
    .line 200
    iget v5, p0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2$mwResponse$1;->label:I

    .line 201
    .line 202
    if-eqz v5, :cond_d

    .line 203
    .line 204
    if-ne v5, v3, :cond_c

    .line 205
    .line 206
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 207
    .line 208
    .line 209
    goto :goto_4

    .line 210
    :cond_c
    invoke-static {v2}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    move-object p1, v1

    .line 214
    goto :goto_4

    .line 215
    :cond_d
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 216
    .line 217
    .line 218
    sget-object p1, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 219
    .line 220
    iget-object p1, v0, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 221
    .line 222
    invoke-static {p1}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    .line 223
    .line 224
    .line 225
    move-result-object v5

    .line 226
    invoke-virtual {v0}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v6

    .line 230
    iput v3, p0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2$mwResponse$1;->label:I

    .line 231
    .line 232
    const/4 v7, 0x0

    .line 233
    const/4 v8, 0x1

    .line 234
    const/4 v9, 0x0

    .line 235
    move-object v10, p0

    .line 236
    invoke-interface/range {v5 .. v10}, Lorg/wikipedia/dataclient/Service;->getRevisionDetailsAscending(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Long;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    move-result-object p1

    .line 240
    if-ne p1, v4, :cond_e

    .line 241
    .line 242
    move-object p1, v4

    .line 243
    :cond_e
    :goto_4
    return-object p1

    .line 244
    nop

    .line 245
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
