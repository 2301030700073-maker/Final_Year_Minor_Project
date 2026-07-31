.class public final Lorg/wikipedia/util/ThrowableUtil$getBlockMessageHtml$2$userInfoCall$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic $wikiSite:Lorg/wikipedia/dataclient/WikiSite;

.field public label:I


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/dataclient/WikiSite;Lkotlin/coroutines/Continuation;I)V
    .locals 0

    .line 1
    iput p3, p0, Lorg/wikipedia/util/ThrowableUtil$getBlockMessageHtml$2$userInfoCall$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/util/ThrowableUtil$getBlockMessageHtml$2$userInfoCall$1;->$wikiSite:Lorg/wikipedia/dataclient/WikiSite;

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
    iget p1, p0, Lorg/wikipedia/util/ThrowableUtil$getBlockMessageHtml$2$userInfoCall$1;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/util/ThrowableUtil$getBlockMessageHtml$2$userInfoCall$1;->$wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance p1, Lorg/wikipedia/util/ThrowableUtil$getBlockMessageHtml$2$userInfoCall$1;

    .line 9
    .line 10
    const/4 v0, 0x2

    .line 11
    invoke-direct {p1, p0, p2, v0}, Lorg/wikipedia/util/ThrowableUtil$getBlockMessageHtml$2$userInfoCall$1;-><init>(Lorg/wikipedia/dataclient/WikiSite;Lkotlin/coroutines/Continuation;I)V

    .line 12
    .line 13
    .line 14
    return-object p1

    .line 15
    :pswitch_0
    new-instance p1, Lorg/wikipedia/util/ThrowableUtil$getBlockMessageHtml$2$userInfoCall$1;

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    invoke-direct {p1, p0, p2, v0}, Lorg/wikipedia/util/ThrowableUtil$getBlockMessageHtml$2$userInfoCall$1;-><init>(Lorg/wikipedia/dataclient/WikiSite;Lkotlin/coroutines/Continuation;I)V

    .line 19
    .line 20
    .line 21
    return-object p1

    .line 22
    :pswitch_1
    new-instance p1, Lorg/wikipedia/util/ThrowableUtil$getBlockMessageHtml$2$userInfoCall$1;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    invoke-direct {p1, p0, p2, v0}, Lorg/wikipedia/util/ThrowableUtil$getBlockMessageHtml$2$userInfoCall$1;-><init>(Lorg/wikipedia/dataclient/WikiSite;Lkotlin/coroutines/Continuation;I)V

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
    iget v0, p0, Lorg/wikipedia/util/ThrowableUtil$getBlockMessageHtml$2$userInfoCall$1;->$r8$classId:I

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
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/util/ThrowableUtil$getBlockMessageHtml$2$userInfoCall$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lorg/wikipedia/util/ThrowableUtil$getBlockMessageHtml$2$userInfoCall$1;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lorg/wikipedia/util/ThrowableUtil$getBlockMessageHtml$2$userInfoCall$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/util/ThrowableUtil$getBlockMessageHtml$2$userInfoCall$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Lorg/wikipedia/util/ThrowableUtil$getBlockMessageHtml$2$userInfoCall$1;

    .line 28
    .line 29
    invoke-virtual {p0, v1}, Lorg/wikipedia/util/ThrowableUtil$getBlockMessageHtml$2$userInfoCall$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0

    .line 34
    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/util/ThrowableUtil$getBlockMessageHtml$2$userInfoCall$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    check-cast p0, Lorg/wikipedia/util/ThrowableUtil$getBlockMessageHtml$2$userInfoCall$1;

    .line 39
    .line 40
    invoke-virtual {p0, v1}, Lorg/wikipedia/util/ThrowableUtil$getBlockMessageHtml$2$userInfoCall$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    .locals 6

    .line 1
    iget v0, p0, Lorg/wikipedia/util/ThrowableUtil$getBlockMessageHtml$2$userInfoCall$1;->$r8$classId:I

    .line 2
    .line 3
    iget-object v1, p0, Lorg/wikipedia/util/ThrowableUtil$getBlockMessageHtml$2$userInfoCall$1;->$wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const-string v3, "call to \'resume\' before \'invoke\' with coroutine"

    .line 7
    .line 8
    const/4 v4, 0x1

    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 13
    .line 14
    iget v5, p0, Lorg/wikipedia/util/ThrowableUtil$getBlockMessageHtml$2$userInfoCall$1;->label:I

    .line 15
    .line 16
    if-eqz v5, :cond_1

    .line 17
    .line 18
    if-ne v5, v4, :cond_0

    .line 19
    .line 20
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-static {v3}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    move-object p1, v2

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
    invoke-static {v1}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    iput v4, p0, Lorg/wikipedia/util/ThrowableUtil$getBlockMessageHtml$2$userInfoCall$1;->label:I

    .line 39
    .line 40
    const-string v1, "MediaWiki:Blockedtext"

    .line 41
    .line 42
    invoke-interface {p1, v1, p0}, Lorg/wikipedia/dataclient/Service;->parsePage(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    if-ne p1, v0, :cond_2

    .line 47
    .line 48
    move-object p1, v0

    .line 49
    :cond_2
    :goto_0
    return-object p1

    .line 50
    :pswitch_0
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 51
    .line 52
    iget v5, p0, Lorg/wikipedia/util/ThrowableUtil$getBlockMessageHtml$2$userInfoCall$1;->label:I

    .line 53
    .line 54
    if-eqz v5, :cond_4

    .line 55
    .line 56
    if-ne v5, v4, :cond_3

    .line 57
    .line 58
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_3
    invoke-static {v3}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    move-object p1, v2

    .line 66
    goto :goto_1

    .line 67
    :cond_4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    sget-object p1, Lorg/wikipedia/csrf/CsrfTokenClient;->INSTANCE:Lorg/wikipedia/csrf/CsrfTokenClient;

    .line 71
    .line 72
    iput v4, p0, Lorg/wikipedia/util/ThrowableUtil$getBlockMessageHtml$2$userInfoCall$1;->label:I

    .line 73
    .line 74
    invoke-static {v1, p0}, Lorg/wikipedia/csrf/CsrfTokenClient;->getToken$default(Lorg/wikipedia/dataclient/WikiSite;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    if-ne p1, v0, :cond_5

    .line 79
    .line 80
    move-object p1, v0

    .line 81
    :cond_5
    :goto_1
    return-object p1

    .line 82
    :pswitch_1
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 83
    .line 84
    iget v5, p0, Lorg/wikipedia/util/ThrowableUtil$getBlockMessageHtml$2$userInfoCall$1;->label:I

    .line 85
    .line 86
    if-eqz v5, :cond_7

    .line 87
    .line 88
    if-ne v5, v4, :cond_6

    .line 89
    .line 90
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    goto :goto_2

    .line 94
    :cond_6
    invoke-static {v3}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    move-object p1, v2

    .line 98
    goto :goto_2

    .line 99
    :cond_7
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    sget-object p1, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 103
    .line 104
    invoke-static {v1}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    iput v4, p0, Lorg/wikipedia/util/ThrowableUtil$getBlockMessageHtml$2$userInfoCall$1;->label:I

    .line 109
    .line 110
    invoke-interface {p1, p0}, Lorg/wikipedia/dataclient/Service;->getUserInfo(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    if-ne p1, v0, :cond_8

    .line 115
    .line 116
    move-object p1, v0

    .line 117
    :cond_8
    :goto_2
    return-object p1

    .line 118
    nop

    .line 119
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
