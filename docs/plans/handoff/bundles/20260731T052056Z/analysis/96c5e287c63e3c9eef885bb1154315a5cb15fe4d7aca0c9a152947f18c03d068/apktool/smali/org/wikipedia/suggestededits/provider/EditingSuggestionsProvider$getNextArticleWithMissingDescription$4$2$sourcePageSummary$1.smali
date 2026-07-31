.class public final Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$4$2$sourcePageSummary$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $it:Lkotlin/Pair;

.field public final synthetic $r8$classId:I

.field public label:I


# direct methods
.method public synthetic constructor <init>(Lkotlin/Pair;Lkotlin/coroutines/Continuation;I)V
    .locals 0

    .line 1
    iput p3, p0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$4$2$sourcePageSummary$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$4$2$sourcePageSummary$1;->$it:Lkotlin/Pair;

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
    iget p1, p0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$4$2$sourcePageSummary$1;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$4$2$sourcePageSummary$1;->$it:Lkotlin/Pair;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance p1, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$4$2$sourcePageSummary$1;

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    invoke-direct {p1, p0, p2, v0}, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$4$2$sourcePageSummary$1;-><init>(Lkotlin/Pair;Lkotlin/coroutines/Continuation;I)V

    .line 12
    .line 13
    .line 14
    return-object p1

    .line 15
    :pswitch_0
    new-instance p1, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$4$2$sourcePageSummary$1;

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    invoke-direct {p1, p0, p2, v0}, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$4$2$sourcePageSummary$1;-><init>(Lkotlin/Pair;Lkotlin/coroutines/Continuation;I)V

    .line 19
    .line 20
    .line 21
    return-object p1

    .line 22
    nop

    .line 23
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$4$2$sourcePageSummary$1;->$r8$classId:I

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
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$4$2$sourcePageSummary$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$4$2$sourcePageSummary$1;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$4$2$sourcePageSummary$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$4$2$sourcePageSummary$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$4$2$sourcePageSummary$1;

    .line 28
    .line 29
    invoke-virtual {p0, v1}, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$4$2$sourcePageSummary$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0

    .line 34
    nop

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    iget v0, p0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$4$2$sourcePageSummary$1;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 5
    .line 6
    const/4 v3, 0x1

    .line 7
    iget-object v4, p0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$4$2$sourcePageSummary$1;->$it:Lkotlin/Pair;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    iget-object v0, v4, Lkotlin/Pair;->second:Ljava/lang/Object;

    .line 13
    .line 14
    sget-object v4, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 15
    .line 16
    iget v5, p0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$4$2$sourcePageSummary$1;->label:I

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
    move-object p1, v0

    .line 37
    check-cast p1, Lorg/wikipedia/page/PageTitle;

    .line 38
    .line 39
    iget-object p1, p1, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 40
    .line 41
    invoke-static {p1}, Lorg/wikipedia/dataclient/ServiceFactory;->getRest(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/RestService;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    check-cast v0, Lorg/wikipedia/page/PageTitle;

    .line 46
    .line 47
    invoke-virtual {v0}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v6

    .line 51
    iput v3, p0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$4$2$sourcePageSummary$1;->label:I

    .line 52
    .line 53
    const/4 v7, 0x0

    .line 54
    const/4 v8, 0x0

    .line 55
    const/4 v9, 0x0

    .line 56
    const/16 v11, 0x3e

    .line 57
    .line 58
    move-object v10, p0

    .line 59
    invoke-static/range {v5 .. v11}, Lorg/wikipedia/dataclient/Service$-CC;->getPageSummary$default(Lorg/wikipedia/dataclient/RestService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;I)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    if-ne p1, v4, :cond_2

    .line 64
    .line 65
    move-object p1, v4

    .line 66
    :cond_2
    :goto_0
    return-object p1

    .line 67
    :pswitch_0
    move-object v5, p0

    .line 68
    iget-object p0, v4, Lkotlin/Pair;->first:Ljava/lang/Object;

    .line 69
    .line 70
    sget-object v7, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 71
    .line 72
    iget v0, v5, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$4$2$sourcePageSummary$1;->label:I

    .line 73
    .line 74
    if-eqz v0, :cond_4

    .line 75
    .line 76
    if-ne v0, v3, :cond_3

    .line 77
    .line 78
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_3
    invoke-static {v2}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    goto :goto_4

    .line 86
    :cond_4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    sget-object p1, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 90
    .line 91
    move-object p1, p0

    .line 92
    check-cast p1, Lorg/wikipedia/page/PageTitle;

    .line 93
    .line 94
    iget-object p1, p1, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 95
    .line 96
    invoke-static {p1}, Lorg/wikipedia/dataclient/ServiceFactory;->getRest(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/RestService;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    move-object p1, p0

    .line 101
    check-cast p1, Lorg/wikipedia/page/PageTitle;

    .line 102
    .line 103
    invoke-virtual {p1}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    iput v3, v5, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$4$2$sourcePageSummary$1;->label:I

    .line 108
    .line 109
    const/4 v2, 0x0

    .line 110
    const/4 v3, 0x0

    .line 111
    const/4 v4, 0x0

    .line 112
    const/16 v6, 0x3e

    .line 113
    .line 114
    invoke-static/range {v0 .. v6}, Lorg/wikipedia/dataclient/Service$-CC;->getPageSummary$default(Lorg/wikipedia/dataclient/RestService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;I)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    if-ne p1, v7, :cond_5

    .line 119
    .line 120
    move-object v1, v7

    .line 121
    goto :goto_4

    .line 122
    :cond_5
    :goto_1
    move-object v0, p1

    .line 123
    check-cast v0, Lorg/wikipedia/dataclient/page/PageSummary;

    .line 124
    .line 125
    iget-object v1, v0, Lorg/wikipedia/dataclient/page/PageSummary;->description:Ljava/lang/String;

    .line 126
    .line 127
    if-eqz v1, :cond_7

    .line 128
    .line 129
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 130
    .line 131
    .line 132
    move-result v1

    .line 133
    if-nez v1, :cond_6

    .line 134
    .line 135
    goto :goto_3

    .line 136
    :cond_6
    :goto_2
    move-object v1, p1

    .line 137
    goto :goto_4

    .line 138
    :cond_7
    :goto_3
    check-cast p0, Lorg/wikipedia/page/PageTitle;

    .line 139
    .line 140
    iget-object p0, p0, Lorg/wikipedia/page/PageTitle;->description:Ljava/lang/String;

    .line 141
    .line 142
    iput-object p0, v0, Lorg/wikipedia/dataclient/page/PageSummary;->description:Ljava/lang/String;

    .line 143
    .line 144
    goto :goto_2

    .line 145
    :goto_4
    return-object v1

    .line 146
    nop

    .line 147
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
