.class public final Lorg/wikipedia/edit/preview/EditPreviewFragment$showPreview$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic $title:Lorg/wikipedia/page/PageTitle;

.field public final synthetic $wikiText:Ljava/lang/String;

.field public L$0:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public label:I

.field public final synthetic this$0:Lorg/wikipedia/edit/preview/EditPreviewFragment;


# direct methods
.method public constructor <init>(Lorg/wikipedia/edit/preview/EditPreviewFragment;Lorg/wikipedia/page/PageTitle;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/wikipedia/edit/preview/EditPreviewFragment$showPreview$2;->$r8$classId:I

    .line 17
    iput-object p1, p0, Lorg/wikipedia/edit/preview/EditPreviewFragment$showPreview$2;->this$0:Lorg/wikipedia/edit/preview/EditPreviewFragment;

    iput-object p2, p0, Lorg/wikipedia/edit/preview/EditPreviewFragment$showPreview$2;->$title:Lorg/wikipedia/page/PageTitle;

    iput-object p3, p0, Lorg/wikipedia/edit/preview/EditPreviewFragment$showPreview$2;->$wikiText:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method public constructor <init>(Lorg/wikipedia/edit/preview/EditPreviewFragment;Lorg/wikipedia/page/PageTitle;Ljava/lang/String;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lorg/wikipedia/edit/preview/EditPreviewFragment$showPreview$2;->$r8$classId:I

    .line 3
    .line 4
    iput-object p1, p0, Lorg/wikipedia/edit/preview/EditPreviewFragment$showPreview$2;->this$0:Lorg/wikipedia/edit/preview/EditPreviewFragment;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/wikipedia/edit/preview/EditPreviewFragment$showPreview$2;->$title:Lorg/wikipedia/page/PageTitle;

    .line 7
    .line 8
    iput-object p3, p0, Lorg/wikipedia/edit/preview/EditPreviewFragment$showPreview$2;->$wikiText:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, Lorg/wikipedia/edit/preview/EditPreviewFragment$showPreview$2;->L$0:Lkotlin/jvm/internal/Ref$ObjectRef;

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


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6

    .line 1
    iget p1, p0, Lorg/wikipedia/edit/preview/EditPreviewFragment$showPreview$2;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance v0, Lorg/wikipedia/edit/preview/EditPreviewFragment$showPreview$2;

    .line 7
    .line 8
    iget-object v3, p0, Lorg/wikipedia/edit/preview/EditPreviewFragment$showPreview$2;->$wikiText:Ljava/lang/String;

    .line 9
    .line 10
    iget-object v4, p0, Lorg/wikipedia/edit/preview/EditPreviewFragment$showPreview$2;->L$0:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 11
    .line 12
    iget-object v1, p0, Lorg/wikipedia/edit/preview/EditPreviewFragment$showPreview$2;->this$0:Lorg/wikipedia/edit/preview/EditPreviewFragment;

    .line 13
    .line 14
    iget-object v2, p0, Lorg/wikipedia/edit/preview/EditPreviewFragment$showPreview$2;->$title:Lorg/wikipedia/page/PageTitle;

    .line 15
    .line 16
    move-object v5, p2

    .line 17
    invoke-direct/range {v0 .. v5}, Lorg/wikipedia/edit/preview/EditPreviewFragment$showPreview$2;-><init>(Lorg/wikipedia/edit/preview/EditPreviewFragment;Lorg/wikipedia/page/PageTitle;Ljava/lang/String;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V

    .line 18
    .line 19
    .line 20
    return-object v0

    .line 21
    :pswitch_0
    move-object v5, p2

    .line 22
    new-instance p1, Lorg/wikipedia/edit/preview/EditPreviewFragment$showPreview$2;

    .line 23
    .line 24
    iget-object p2, p0, Lorg/wikipedia/edit/preview/EditPreviewFragment$showPreview$2;->$title:Lorg/wikipedia/page/PageTitle;

    .line 25
    .line 26
    iget-object v0, p0, Lorg/wikipedia/edit/preview/EditPreviewFragment$showPreview$2;->$wikiText:Ljava/lang/String;

    .line 27
    .line 28
    iget-object p0, p0, Lorg/wikipedia/edit/preview/EditPreviewFragment$showPreview$2;->this$0:Lorg/wikipedia/edit/preview/EditPreviewFragment;

    .line 29
    .line 30
    invoke-direct {p1, p0, p2, v0, v5}, Lorg/wikipedia/edit/preview/EditPreviewFragment$showPreview$2;-><init>(Lorg/wikipedia/edit/preview/EditPreviewFragment;Lorg/wikipedia/page/PageTitle;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 31
    .line 32
    .line 33
    return-object p1

    .line 34
    nop

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lorg/wikipedia/edit/preview/EditPreviewFragment$showPreview$2;->$r8$classId:I

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
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/edit/preview/EditPreviewFragment$showPreview$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lorg/wikipedia/edit/preview/EditPreviewFragment$showPreview$2;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lorg/wikipedia/edit/preview/EditPreviewFragment$showPreview$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/edit/preview/EditPreviewFragment$showPreview$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Lorg/wikipedia/edit/preview/EditPreviewFragment$showPreview$2;

    .line 28
    .line 29
    invoke-virtual {p0, v1}, Lorg/wikipedia/edit/preview/EditPreviewFragment$showPreview$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v0, p0, Lorg/wikipedia/edit/preview/EditPreviewFragment$showPreview$2;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 6
    .line 7
    const/4 v3, 0x1

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
    iget v5, p0, Lorg/wikipedia/edit/preview/EditPreviewFragment$showPreview$2;->label:I

    .line 15
    .line 16
    if-eqz v5, :cond_1

    .line 17
    .line 18
    if-ne v5, v3, :cond_0

    .line 19
    .line 20
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_0
    invoke-static {v2}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    move-object v1, v4

    .line 28
    goto :goto_2

    .line 29
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    iget-object p1, p0, Lorg/wikipedia/edit/preview/EditPreviewFragment$showPreview$2;->this$0:Lorg/wikipedia/edit/preview/EditPreviewFragment;

    .line 33
    .line 34
    invoke-virtual {p1}, Lorg/wikipedia/edit/preview/EditPreviewFragment;->callback()Lorg/wikipedia/edit/preview/EditPreviewFragment$Callback;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-interface {v2}, Lorg/wikipedia/edit/preview/EditPreviewFragment$Callback;->isNewPage()Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    iget-object v5, p0, Lorg/wikipedia/edit/preview/EditPreviewFragment$showPreview$2;->$title:Lorg/wikipedia/page/PageTitle;

    .line 43
    .line 44
    if-eqz v2, :cond_2

    .line 45
    .line 46
    iget-object v2, v5, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 47
    .line 48
    iget-object v2, v2, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 49
    .line 50
    invoke-static {v2}, Lorg/wikipedia/staticdata/MainPageNameData;->valueFor(Ljava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    goto :goto_0

    .line 55
    :cond_2
    invoke-virtual {v5}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    :goto_0
    sget-object v5, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 60
    .line 61
    iget-object p1, p1, Lorg/wikipedia/edit/preview/EditPreviewFragment;->model:Lorg/wikipedia/page/PageViewModel;

    .line 62
    .line 63
    iget-object p1, p1, Lorg/wikipedia/page/PageViewModel;->title:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast p1, Lorg/wikipedia/page/PageTitle;

    .line 66
    .line 67
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    .line 69
    .line 70
    iget-object p1, p1, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 71
    .line 72
    invoke-static {p1}, Lorg/wikipedia/dataclient/ServiceFactory;->getRest(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/RestService;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    new-instance v5, Lorg/wikipedia/dataclient/restbase/PreviewRequest;

    .line 77
    .line 78
    iget-object v6, p0, Lorg/wikipedia/edit/preview/EditPreviewFragment$showPreview$2;->$wikiText:Ljava/lang/String;

    .line 79
    .line 80
    invoke-direct {v5, v6}, Lorg/wikipedia/dataclient/restbase/PreviewRequest;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    iput v3, p0, Lorg/wikipedia/edit/preview/EditPreviewFragment$showPreview$2;->label:I

    .line 84
    .line 85
    invoke-interface {p1, v2, v5, p0}, Lorg/wikipedia/dataclient/RestService;->getHtmlPreviewFromWikitext(Ljava/lang/String;Lorg/wikipedia/dataclient/restbase/PreviewRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    if-ne p1, v0, :cond_3

    .line 90
    .line 91
    move-object v1, v0

    .line 92
    goto :goto_2

    .line 93
    :cond_3
    :goto_1
    check-cast p1, Ljava/io/Closeable;

    .line 94
    .line 95
    iget-object p0, p0, Lorg/wikipedia/edit/preview/EditPreviewFragment$showPreview$2;->L$0:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 96
    .line 97
    :try_start_0
    move-object v0, p1

    .line 98
    check-cast v0, Lokhttp3/ResponseBody;

    .line 99
    .line 100
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    iput-object v0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    .line 106
    invoke-static {p1, v4}, Lkotlin/ResultKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 107
    .line 108
    .line 109
    :goto_2
    return-object v1

    .line 110
    :catchall_0
    move-exception v0

    .line 111
    move-object p0, v0

    .line 112
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 113
    :catchall_1
    move-exception v0

    .line 114
    invoke-static {p1, p0}, Lkotlin/ResultKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 115
    .line 116
    .line 117
    throw v0

    .line 118
    :pswitch_0
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 119
    .line 120
    iget v5, p0, Lorg/wikipedia/edit/preview/EditPreviewFragment$showPreview$2;->label:I

    .line 121
    .line 122
    iget-object v7, p0, Lorg/wikipedia/edit/preview/EditPreviewFragment$showPreview$2;->this$0:Lorg/wikipedia/edit/preview/EditPreviewFragment;

    .line 123
    .line 124
    if-eqz v5, :cond_5

    .line 125
    .line 126
    if-ne v5, v3, :cond_4

    .line 127
    .line 128
    iget-object p0, p0, Lorg/wikipedia/edit/preview/EditPreviewFragment$showPreview$2;->L$0:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 129
    .line 130
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 131
    .line 132
    .line 133
    goto :goto_3

    .line 134
    :cond_4
    invoke-static {v2}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    move-object v1, v4

    .line 138
    goto :goto_4

    .line 139
    :cond_5
    invoke-static {p1}, Landroidx/compose/animation/core/Animation$-CC;->m(Ljava/lang/Object;)Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 140
    .line 141
    .line 142
    move-result-object v10

    .line 143
    sget-object p1, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 144
    .line 145
    sget-object p1, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->INSTANCE:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    .line 146
    .line 147
    new-instance v6, Lorg/wikipedia/edit/preview/EditPreviewFragment$showPreview$2;

    .line 148
    .line 149
    iget-object v9, p0, Lorg/wikipedia/edit/preview/EditPreviewFragment$showPreview$2;->$wikiText:Ljava/lang/String;

    .line 150
    .line 151
    const/4 v11, 0x0

    .line 152
    iget-object v8, p0, Lorg/wikipedia/edit/preview/EditPreviewFragment$showPreview$2;->$title:Lorg/wikipedia/page/PageTitle;

    .line 153
    .line 154
    invoke-direct/range {v6 .. v11}, Lorg/wikipedia/edit/preview/EditPreviewFragment$showPreview$2;-><init>(Lorg/wikipedia/edit/preview/EditPreviewFragment;Lorg/wikipedia/page/PageTitle;Ljava/lang/String;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V

    .line 155
    .line 156
    .line 157
    iput-object v10, p0, Lorg/wikipedia/edit/preview/EditPreviewFragment$showPreview$2;->L$0:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 158
    .line 159
    iput v3, p0, Lorg/wikipedia/edit/preview/EditPreviewFragment$showPreview$2;->label:I

    .line 160
    .line 161
    invoke-static {p1, v6, p0}, Lkotlinx/coroutines/AwaitKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object p0

    .line 165
    if-ne p0, v0, :cond_6

    .line 166
    .line 167
    move-object v1, v0

    .line 168
    goto :goto_4

    .line 169
    :cond_6
    move-object p0, v10

    .line 170
    :goto_3
    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 171
    .line 172
    check-cast p0, Ljava/lang/String;

    .line 173
    .line 174
    invoke-virtual {v7, p0}, Lorg/wikipedia/edit/preview/EditPreviewFragment;->showPreview(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    :goto_4
    return-object v1

    .line 178
    nop

    .line 179
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
