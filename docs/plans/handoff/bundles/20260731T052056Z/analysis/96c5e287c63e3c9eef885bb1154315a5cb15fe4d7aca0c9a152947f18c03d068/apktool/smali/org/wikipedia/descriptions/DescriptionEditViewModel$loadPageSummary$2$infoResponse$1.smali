.class public final Lorg/wikipedia/descriptions/DescriptionEditViewModel$loadPageSummary$2$infoResponse$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public label:I

.field public final synthetic this$0:Lorg/wikipedia/descriptions/DescriptionEditViewModel;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/descriptions/DescriptionEditViewModel;Lkotlin/coroutines/Continuation;I)V
    .locals 0

    .line 1
    iput p3, p0, Lorg/wikipedia/descriptions/DescriptionEditViewModel$loadPageSummary$2$infoResponse$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/descriptions/DescriptionEditViewModel$loadPageSummary$2$infoResponse$1;->this$0:Lorg/wikipedia/descriptions/DescriptionEditViewModel;

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
    iget p1, p0, Lorg/wikipedia/descriptions/DescriptionEditViewModel$loadPageSummary$2$infoResponse$1;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/descriptions/DescriptionEditViewModel$loadPageSummary$2$infoResponse$1;->this$0:Lorg/wikipedia/descriptions/DescriptionEditViewModel;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance p1, Lorg/wikipedia/descriptions/DescriptionEditViewModel$loadPageSummary$2$infoResponse$1;

    .line 9
    .line 10
    const/4 v0, 0x2

    .line 11
    invoke-direct {p1, p0, p2, v0}, Lorg/wikipedia/descriptions/DescriptionEditViewModel$loadPageSummary$2$infoResponse$1;-><init>(Lorg/wikipedia/descriptions/DescriptionEditViewModel;Lkotlin/coroutines/Continuation;I)V

    .line 12
    .line 13
    .line 14
    return-object p1

    .line 15
    :pswitch_0
    new-instance p1, Lorg/wikipedia/descriptions/DescriptionEditViewModel$loadPageSummary$2$infoResponse$1;

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    invoke-direct {p1, p0, p2, v0}, Lorg/wikipedia/descriptions/DescriptionEditViewModel$loadPageSummary$2$infoResponse$1;-><init>(Lorg/wikipedia/descriptions/DescriptionEditViewModel;Lkotlin/coroutines/Continuation;I)V

    .line 19
    .line 20
    .line 21
    return-object p1

    .line 22
    :pswitch_1
    new-instance p1, Lorg/wikipedia/descriptions/DescriptionEditViewModel$loadPageSummary$2$infoResponse$1;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    invoke-direct {p1, p0, p2, v0}, Lorg/wikipedia/descriptions/DescriptionEditViewModel$loadPageSummary$2$infoResponse$1;-><init>(Lorg/wikipedia/descriptions/DescriptionEditViewModel;Lkotlin/coroutines/Continuation;I)V

    .line 26
    .line 27
    .line 28
    return-object p1

    .line 29
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lorg/wikipedia/descriptions/DescriptionEditViewModel$loadPageSummary$2$infoResponse$1;->$r8$classId:I

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
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/descriptions/DescriptionEditViewModel$loadPageSummary$2$infoResponse$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lorg/wikipedia/descriptions/DescriptionEditViewModel$loadPageSummary$2$infoResponse$1;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lorg/wikipedia/descriptions/DescriptionEditViewModel$loadPageSummary$2$infoResponse$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/descriptions/DescriptionEditViewModel$loadPageSummary$2$infoResponse$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Lorg/wikipedia/descriptions/DescriptionEditViewModel$loadPageSummary$2$infoResponse$1;

    .line 28
    .line 29
    invoke-virtual {p0, v1}, Lorg/wikipedia/descriptions/DescriptionEditViewModel$loadPageSummary$2$infoResponse$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0

    .line 34
    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/descriptions/DescriptionEditViewModel$loadPageSummary$2$infoResponse$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    check-cast p0, Lorg/wikipedia/descriptions/DescriptionEditViewModel$loadPageSummary$2$infoResponse$1;

    .line 39
    .line 40
    invoke-virtual {p0, v1}, Lorg/wikipedia/descriptions/DescriptionEditViewModel$loadPageSummary$2$infoResponse$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    .locals 12

    .line 1
    iget v0, p0, Lorg/wikipedia/descriptions/DescriptionEditViewModel$loadPageSummary$2$infoResponse$1;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 5
    .line 6
    const/4 v3, 0x1

    .line 7
    iget-object v4, p0, Lorg/wikipedia/descriptions/DescriptionEditViewModel$loadPageSummary$2$infoResponse$1;->this$0:Lorg/wikipedia/descriptions/DescriptionEditViewModel;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    iget-object v0, v4, Lorg/wikipedia/descriptions/DescriptionEditViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 13
    .line 14
    sget-object v4, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 15
    .line 16
    iget v5, p0, Lorg/wikipedia/descriptions/DescriptionEditViewModel$loadPageSummary$2$infoResponse$1;->label:I

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
    iget-object v1, v0, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 37
    .line 38
    const-string v2, "https://api.wikimedia.org/service/lw/inference/v1/"

    .line 39
    .line 40
    const-class v5, Lorg/wikipedia/dataclient/liftwing/LiftWingModelService;

    .line 41
    .line 42
    invoke-virtual {p1, v1, v2, v5}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    check-cast p1, Lorg/wikipedia/dataclient/liftwing/LiftWingModelService;

    .line 47
    .line 48
    new-instance v1, Lorg/wikipedia/dataclient/liftwing/DescriptionSuggestion$Request;

    .line 49
    .line 50
    iget-object v2, v0, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 51
    .line 52
    iget-object v2, v2, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 53
    .line 54
    invoke-virtual {v0}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-direct {v1, v2, v0}, Lorg/wikipedia/dataclient/liftwing/DescriptionSuggestion$Request;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    iput v3, p0, Lorg/wikipedia/descriptions/DescriptionEditViewModel$loadPageSummary$2$infoResponse$1;->label:I

    .line 62
    .line 63
    invoke-interface {p1, v1, p0}, Lorg/wikipedia/dataclient/liftwing/LiftWingModelService;->getDescriptionSuggestion(Lorg/wikipedia/dataclient/liftwing/DescriptionSuggestion$Request;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    if-ne p1, v4, :cond_2

    .line 68
    .line 69
    move-object p1, v4

    .line 70
    :cond_2
    :goto_0
    return-object p1

    .line 71
    :pswitch_0
    iget-object v0, v4, Lorg/wikipedia/descriptions/DescriptionEditViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 72
    .line 73
    sget-object v4, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 74
    .line 75
    iget v5, p0, Lorg/wikipedia/descriptions/DescriptionEditViewModel$loadPageSummary$2$infoResponse$1;->label:I

    .line 76
    .line 77
    if-eqz v5, :cond_4

    .line 78
    .line 79
    if-ne v5, v3, :cond_3

    .line 80
    .line 81
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_3
    invoke-static {v2}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    move-object p1, v1

    .line 89
    goto :goto_1

    .line 90
    :cond_4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    sget-object p1, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 94
    .line 95
    iget-object p1, v0, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 96
    .line 97
    invoke-static {p1}, Lorg/wikipedia/dataclient/ServiceFactory;->getRest(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/RestService;

    .line 98
    .line 99
    .line 100
    move-result-object v5

    .line 101
    invoke-virtual {v0}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v6

    .line 105
    iput v3, p0, Lorg/wikipedia/descriptions/DescriptionEditViewModel$loadPageSummary$2$infoResponse$1;->label:I

    .line 106
    .line 107
    const/4 v7, 0x0

    .line 108
    const/4 v8, 0x0

    .line 109
    const/4 v9, 0x0

    .line 110
    const/16 v11, 0x3e

    .line 111
    .line 112
    move-object v10, p0

    .line 113
    invoke-static/range {v5 .. v11}, Lorg/wikipedia/dataclient/Service$-CC;->getPageSummary$default(Lorg/wikipedia/dataclient/RestService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;I)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    if-ne p1, v4, :cond_5

    .line 118
    .line 119
    move-object p1, v4

    .line 120
    :cond_5
    :goto_1
    return-object p1

    .line 121
    :pswitch_1
    move-object v10, p0

    .line 122
    iget-object p0, v4, Lorg/wikipedia/descriptions/DescriptionEditViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 123
    .line 124
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 125
    .line 126
    iget v4, v10, Lorg/wikipedia/descriptions/DescriptionEditViewModel$loadPageSummary$2$infoResponse$1;->label:I

    .line 127
    .line 128
    if-eqz v4, :cond_7

    .line 129
    .line 130
    if-ne v4, v3, :cond_6

    .line 131
    .line 132
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 133
    .line 134
    .line 135
    goto :goto_2

    .line 136
    :cond_6
    invoke-static {v2}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    move-object p1, v1

    .line 140
    goto :goto_2

    .line 141
    :cond_7
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 142
    .line 143
    .line 144
    sget-object p1, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 145
    .line 146
    iget-object p1, p0, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 147
    .line 148
    invoke-static {p1}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    invoke-virtual {p0}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object p0

    .line 156
    new-instance v1, Ljava/lang/Integer;

    .line 157
    .line 158
    const/4 v2, 0x0

    .line 159
    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    .line 160
    .line 161
    .line 162
    iput v3, v10, Lorg/wikipedia/descriptions/DescriptionEditViewModel$loadPageSummary$2$infoResponse$1;->label:I

    .line 163
    .line 164
    invoke-interface {p1, p0, v1, v10}, Lorg/wikipedia/dataclient/Service;->getWikiTextForSectionWithInfo(Ljava/lang/String;Ljava/lang/Integer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    if-ne p1, v0, :cond_8

    .line 169
    .line 170
    move-object p1, v0

    .line 171
    :cond_8
    :goto_2
    return-object p1

    .line 172
    nop

    .line 173
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
