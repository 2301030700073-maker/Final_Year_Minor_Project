.class public final Lorg/wikipedia/diff/ArticleEditDetailsViewModel$getDiffText$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $newRevisionId:J

.field public final synthetic $oldRevisionId:J

.field public L$0:Landroidx/lifecycle/MutableLiveData;

.field public label:I

.field public final synthetic this$0:Lorg/wikipedia/diff/ArticleEditDetailsViewModel;


# direct methods
.method public constructor <init>(Lorg/wikipedia/diff/ArticleEditDetailsViewModel;JJLkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$getDiffText$2;->this$0:Lorg/wikipedia/diff/ArticleEditDetailsViewModel;

    .line 2
    .line 3
    iput-wide p2, p0, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$getDiffText$2;->$oldRevisionId:J

    .line 4
    .line 5
    iput-wide p4, p0, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$getDiffText$2;->$newRevisionId:J

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7

    .line 1
    new-instance v0, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$getDiffText$2;

    .line 2
    .line 3
    iget-wide v2, p0, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$getDiffText$2;->$oldRevisionId:J

    .line 4
    .line 5
    iget-wide v4, p0, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$getDiffText$2;->$newRevisionId:J

    .line 6
    .line 7
    iget-object v1, p0, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$getDiffText$2;->this$0:Lorg/wikipedia/diff/ArticleEditDetailsViewModel;

    .line 8
    .line 9
    move-object v6, p2

    .line 10
    invoke-direct/range {v0 .. v6}, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$getDiffText$2;-><init>(Lorg/wikipedia/diff/ArticleEditDetailsViewModel;JJLkotlin/coroutines/Continuation;)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 2
    .line 3
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$getDiffText$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$getDiffText$2;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$getDiffText$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .line 1
    iget-object v0, p0, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$getDiffText$2;->this$0:Lorg/wikipedia/diff/ArticleEditDetailsViewModel;

    .line 2
    .line 3
    iget-object v1, v0, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->singleRevisionText:Landroidx/lifecycle/MutableLiveData;

    .line 4
    .line 5
    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 6
    .line 7
    iget v3, p0, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$getDiffText$2;->label:I

    .line 8
    .line 9
    const/4 v4, 0x2

    .line 10
    const/4 v5, 0x1

    .line 11
    if-eqz v3, :cond_2

    .line 12
    .line 13
    if-eq v3, v5, :cond_1

    .line 14
    .line 15
    if-ne v3, v4, :cond_0

    .line 16
    .line 17
    iget-object v1, p0, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$getDiffText$2;->L$0:Landroidx/lifecycle/MutableLiveData;

    .line 18
    .line 19
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    goto/16 :goto_2

    .line 23
    .line 24
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 25
    .line 26
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const/4 p0, 0x0

    .line 30
    return-object p0

    .line 31
    :cond_1
    iget-object p0, p0, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$getDiffText$2;->L$0:Landroidx/lifecycle/MutableLiveData;

    .line 32
    .line 33
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    iget-object p1, v0, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 41
    .line 42
    iget-object p1, p1, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 43
    .line 44
    iget-object p1, p1, Lorg/wikipedia/dataclient/WikiSite;->uri:Landroid/net/Uri;

    .line 45
    .line 46
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    const-string v3, "https://www.wikidata.org/"

    .line 51
    .line 52
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    invoke-virtual {v3}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    if-eqz p1, :cond_3

    .line 65
    .line 66
    new-instance p0, Lorg/wikipedia/util/Resource$Success;

    .line 67
    .line 68
    new-instance p1, Lorg/wikipedia/dataclient/restbase/Revision;

    .line 69
    .line 70
    invoke-direct {p1}, Lorg/wikipedia/dataclient/restbase/Revision;-><init>()V

    .line 71
    .line 72
    .line 73
    invoke-direct {p0, p1}, Lorg/wikipedia/util/Resource$Success;-><init>(Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1, p0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    goto :goto_3

    .line 80
    :cond_3
    iget-wide v6, p0, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$getDiffText$2;->$oldRevisionId:J

    .line 81
    .line 82
    const-wide/16 v8, 0x0

    .line 83
    .line 84
    cmp-long p1, v6, v8

    .line 85
    .line 86
    if-lez p1, :cond_5

    .line 87
    .line 88
    iget-object p1, v0, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->diffText:Landroidx/lifecycle/MutableLiveData;

    .line 89
    .line 90
    sget-object v1, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 91
    .line 92
    iget-object v0, v0, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 93
    .line 94
    iget-object v0, v0, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 95
    .line 96
    invoke-static {v0}, Lorg/wikipedia/dataclient/ServiceFactory;->getCoreRest(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/CoreRestService;

    .line 97
    .line 98
    .line 99
    move-result-object v6

    .line 100
    iput-object p1, p0, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$getDiffText$2;->L$0:Landroidx/lifecycle/MutableLiveData;

    .line 101
    .line 102
    iput v5, p0, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$getDiffText$2;->label:I

    .line 103
    .line 104
    iget-wide v7, p0, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$getDiffText$2;->$oldRevisionId:J

    .line 105
    .line 106
    iget-wide v9, p0, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$getDiffText$2;->$newRevisionId:J

    .line 107
    .line 108
    move-object v11, p0

    .line 109
    invoke-interface/range {v6 .. v11}, Lorg/wikipedia/dataclient/CoreRestService;->getDiff(JJLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    if-ne p0, v2, :cond_4

    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_4
    move-object v12, p1

    .line 117
    move-object p1, p0

    .line 118
    move-object p0, v12

    .line 119
    :goto_0
    new-instance v0, Lorg/wikipedia/util/Resource$Success;

    .line 120
    .line 121
    invoke-direct {v0, p1}, Lorg/wikipedia/util/Resource$Success;-><init>(Ljava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    goto :goto_3

    .line 128
    :cond_5
    move-object v11, p0

    .line 129
    sget-object p0, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 130
    .line 131
    iget-object p0, v0, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 132
    .line 133
    iget-object p0, p0, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 134
    .line 135
    invoke-static {p0}, Lorg/wikipedia/dataclient/ServiceFactory;->getCoreRest(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/CoreRestService;

    .line 136
    .line 137
    .line 138
    move-result-object p0

    .line 139
    iput-object v1, v11, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$getDiffText$2;->L$0:Landroidx/lifecycle/MutableLiveData;

    .line 140
    .line 141
    iput v4, v11, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$getDiffText$2;->label:I

    .line 142
    .line 143
    iget-wide v3, v11, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$getDiffText$2;->$newRevisionId:J

    .line 144
    .line 145
    invoke-interface {p0, v3, v4, v11}, Lorg/wikipedia/dataclient/CoreRestService;->getRevision(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    if-ne p1, v2, :cond_6

    .line 150
    .line 151
    :goto_1
    return-object v2

    .line 152
    :cond_6
    :goto_2
    new-instance p0, Lorg/wikipedia/util/Resource$Success;

    .line 153
    .line 154
    invoke-direct {p0, p1}, Lorg/wikipedia/util/Resource$Success;-><init>(Ljava/lang/Object;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v1, p0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 158
    .line 159
    .line 160
    :goto_3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 161
    .line 162
    return-object p0
.end method
