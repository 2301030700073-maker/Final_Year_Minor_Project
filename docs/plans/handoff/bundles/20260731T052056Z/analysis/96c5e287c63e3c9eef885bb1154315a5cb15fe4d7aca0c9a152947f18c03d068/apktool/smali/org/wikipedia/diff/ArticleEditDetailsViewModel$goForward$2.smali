.class public final Lorg/wikipedia/diff/ArticleEditDetailsViewModel$goForward$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic $revisionIdFrom:J

.field public label:I

.field public final synthetic this$0:Lorg/wikipedia/diff/ArticleEditDetailsViewModel;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/diff/ArticleEditDetailsViewModel;JLkotlin/coroutines/Continuation;I)V
    .locals 0

    .line 1
    iput p5, p0, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$goForward$2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$goForward$2;->this$0:Lorg/wikipedia/diff/ArticleEditDetailsViewModel;

    .line 4
    .line 5
    iput-wide p2, p0, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$goForward$2;->$revisionIdFrom:J

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7

    .line 1
    iget p1, p0, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$goForward$2;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance v0, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$goForward$2;

    .line 7
    .line 8
    iget-wide v2, p0, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$goForward$2;->$revisionIdFrom:J

    .line 9
    .line 10
    const/4 v5, 0x1

    .line 11
    iget-object v1, p0, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$goForward$2;->this$0:Lorg/wikipedia/diff/ArticleEditDetailsViewModel;

    .line 12
    .line 13
    move-object v4, p2

    .line 14
    invoke-direct/range {v0 .. v5}, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$goForward$2;-><init>(Lorg/wikipedia/diff/ArticleEditDetailsViewModel;JLkotlin/coroutines/Continuation;I)V

    .line 15
    .line 16
    .line 17
    return-object v0

    .line 18
    :pswitch_0
    move-object v4, p2

    .line 19
    new-instance v1, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$goForward$2;

    .line 20
    .line 21
    move-object v5, v4

    .line 22
    iget-wide v3, p0, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$goForward$2;->$revisionIdFrom:J

    .line 23
    .line 24
    const/4 v6, 0x0

    .line 25
    iget-object v2, p0, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$goForward$2;->this$0:Lorg/wikipedia/diff/ArticleEditDetailsViewModel;

    .line 26
    .line 27
    invoke-direct/range {v1 .. v6}, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$goForward$2;-><init>(Lorg/wikipedia/diff/ArticleEditDetailsViewModel;JLkotlin/coroutines/Continuation;I)V

    .line 28
    .line 29
    .line 30
    return-object v1

    .line 31
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$goForward$2;->$r8$classId:I

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
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$goForward$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$goForward$2;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$goForward$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$goForward$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$goForward$2;

    .line 28
    .line 29
    invoke-virtual {p0, v1}, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$goForward$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    .locals 11

    .line 1
    iget v0, p0, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$goForward$2;->$r8$classId:I

    .line 2
    .line 3
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    iget-object v3, p0, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$goForward$2;->this$0:Lorg/wikipedia/diff/ArticleEditDetailsViewModel;

    .line 7
    .line 8
    const/4 v4, 0x0

    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 13
    .line 14
    iget v5, p0, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$goForward$2;->label:I

    .line 15
    .line 16
    if-eqz v5, :cond_1

    .line 17
    .line 18
    if-ne v5, v2, :cond_0

    .line 19
    .line 20
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-static {v1}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    move-object p1, v4

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    sget-object p1, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 33
    .line 34
    iget-object p1, v3, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 35
    .line 36
    iget-object p1, p1, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 37
    .line 38
    invoke-static {p1}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    iget p1, v3, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->pageId:I

    .line 43
    .line 44
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v5

    .line 48
    iput v2, p0, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$goForward$2;->label:I

    .line 49
    .line 50
    const/4 v6, 0x2

    .line 51
    iget-wide v7, p0, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$goForward$2;->$revisionIdFrom:J

    .line 52
    .line 53
    move-object v9, p0

    .line 54
    invoke-interface/range {v4 .. v9}, Lorg/wikipedia/dataclient/Service;->getRevisionDetailsWithInfo(Ljava/lang/String;IJLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    if-ne p1, v0, :cond_2

    .line 59
    .line 60
    move-object p1, v0

    .line 61
    :cond_2
    :goto_0
    return-object p1

    .line 62
    :pswitch_0
    move-object v9, p0

    .line 63
    sget-object p0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 64
    .line 65
    iget v0, v9, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$goForward$2;->label:I

    .line 66
    .line 67
    if-eqz v0, :cond_4

    .line 68
    .line 69
    if-ne v0, v2, :cond_3

    .line 70
    .line 71
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_3
    invoke-static {v1}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    goto/16 :goto_5

    .line 79
    .line 80
    :cond_4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    sget-object p1, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 84
    .line 85
    iget-object p1, v3, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 86
    .line 87
    iget-object p1, p1, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 88
    .line 89
    invoke-static {p1}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    .line 90
    .line 91
    .line 92
    move-result-object v5

    .line 93
    iget p1, v3, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->pageId:I

    .line 94
    .line 95
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v7

    .line 99
    move-object v10, v9

    .line 100
    new-instance v9, Ljava/lang/Long;

    .line 101
    .line 102
    iget-wide v0, v10, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$goForward$2;->$revisionIdFrom:J

    .line 103
    .line 104
    invoke-direct {v9, v0, v1}, Ljava/lang/Long;-><init>(J)V

    .line 105
    .line 106
    .line 107
    iput v2, v10, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$goForward$2;->label:I

    .line 108
    .line 109
    const/4 v6, 0x0

    .line 110
    const/4 v8, 0x2

    .line 111
    invoke-interface/range {v5 .. v10}, Lorg/wikipedia/dataclient/Service;->getRevisionDetailsAscending(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Long;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    if-ne p1, p0, :cond_5

    .line 116
    .line 117
    move-object v4, p0

    .line 118
    goto/16 :goto_5

    .line 119
    .line 120
    :cond_5
    :goto_1
    check-cast p1, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    .line 121
    .line 122
    iget-object p0, p1, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query:Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    .line 123
    .line 124
    if-eqz p0, :cond_6

    .line 125
    .line 126
    invoke-virtual {p0}, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->firstPage()Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    .line 127
    .line 128
    .line 129
    move-result-object v4

    .line 130
    :cond_6
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 131
    .line 132
    .line 133
    iget-object p0, v4, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->revisions:Ljava/util/List;

    .line 134
    .line 135
    const/4 p1, 0x0

    .line 136
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    check-cast v0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;

    .line 141
    .line 142
    iput-object v0, v3, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->revisionFrom:Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;

    .line 143
    .line 144
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 145
    .line 146
    .line 147
    move-result v0

    .line 148
    if-ge v2, v0, :cond_7

    .line 149
    .line 150
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    goto :goto_2

    .line 155
    :cond_7
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    check-cast v0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;

    .line 160
    .line 161
    :goto_2
    check-cast v0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;

    .line 162
    .line 163
    iput-object v0, v3, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->revisionTo:Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;

    .line 164
    .line 165
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 166
    .line 167
    .line 168
    move-result v0

    .line 169
    if-le v0, v2, :cond_8

    .line 170
    .line 171
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object p0

    .line 175
    check-cast p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;

    .line 176
    .line 177
    iget-wide v0, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;->revId:J

    .line 178
    .line 179
    iget-wide v4, v4, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->lastrevid:J

    .line 180
    .line 181
    cmp-long p0, v0, v4

    .line 182
    .line 183
    if-gez p0, :cond_8

    .line 184
    .line 185
    goto :goto_3

    .line 186
    :cond_8
    move v2, p1

    .line 187
    :goto_3
    iput-boolean v2, v3, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->canGoForward:Z

    .line 188
    .line 189
    iget-object p0, v3, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->revisionTo:Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;

    .line 190
    .line 191
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 192
    .line 193
    .line 194
    iget-wide p0, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;->revId:J

    .line 195
    .line 196
    iput-wide p0, v3, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->revisionToId:J

    .line 197
    .line 198
    iget-object p0, v3, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->revisionFrom:Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;

    .line 199
    .line 200
    if-eqz p0, :cond_9

    .line 201
    .line 202
    iget-wide p0, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;->revId:J

    .line 203
    .line 204
    goto :goto_4

    .line 205
    :cond_9
    iget-object p0, v3, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->revisionTo:Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;

    .line 206
    .line 207
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 208
    .line 209
    .line 210
    iget-wide p0, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;->parentRevId:J

    .line 211
    .line 212
    :goto_4
    iput-wide p0, v3, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->revisionFromId:J

    .line 213
    .line 214
    iget-object p0, v3, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->revisionDetails:Landroidx/lifecycle/MutableLiveData;

    .line 215
    .line 216
    new-instance p1, Lorg/wikipedia/util/Resource$Success;

    .line 217
    .line 218
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 219
    .line 220
    invoke-direct {p1, v4}, Lorg/wikipedia/util/Resource$Success;-><init>(Ljava/lang/Object;)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 224
    .line 225
    .line 226
    iget-wide p0, v3, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->revisionFromId:J

    .line 227
    .line 228
    iget-wide v0, v3, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->revisionToId:J

    .line 229
    .line 230
    invoke-virtual {v3, p0, p1, v0, v1}, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->getDiffText(JJ)V

    .line 231
    .line 232
    .line 233
    :goto_5
    return-object v4

    .line 234
    nop

    .line 235
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
