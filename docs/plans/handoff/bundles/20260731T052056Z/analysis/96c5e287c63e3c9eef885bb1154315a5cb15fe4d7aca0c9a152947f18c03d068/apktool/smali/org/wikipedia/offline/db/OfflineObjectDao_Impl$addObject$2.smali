.class public final Lorg/wikipedia/offline/db/OfflineObjectDao_Impl$addObject$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $lang:Ljava/lang/String;

.field public final synthetic $pageTitle:Ljava/lang/String;

.field public final synthetic $path:Ljava/lang/String;

.field public final synthetic $url:Ljava/lang/String;

.field public label:I

.field public final synthetic this$0:Lorg/wikipedia/offline/db/OfflineObjectDao_Impl;


# direct methods
.method public constructor <init>(Lorg/wikipedia/offline/db/OfflineObjectDao_Impl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/wikipedia/offline/db/OfflineObjectDao_Impl$addObject$2;->this$0:Lorg/wikipedia/offline/db/OfflineObjectDao_Impl;

    .line 2
    .line 3
    iput-object p2, p0, Lorg/wikipedia/offline/db/OfflineObjectDao_Impl$addObject$2;->$url:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lorg/wikipedia/offline/db/OfflineObjectDao_Impl$addObject$2;->$lang:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lorg/wikipedia/offline/db/OfflineObjectDao_Impl$addObject$2;->$path:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p5, p0, Lorg/wikipedia/offline/db/OfflineObjectDao_Impl$addObject$2;->$pageTitle:Ljava/lang/String;

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    move-object v6, p1

    .line 2
    check-cast v6, Lkotlin/coroutines/Continuation;

    .line 3
    .line 4
    new-instance v0, Lorg/wikipedia/offline/db/OfflineObjectDao_Impl$addObject$2;

    .line 5
    .line 6
    iget-object v4, p0, Lorg/wikipedia/offline/db/OfflineObjectDao_Impl$addObject$2;->$path:Ljava/lang/String;

    .line 7
    .line 8
    iget-object v5, p0, Lorg/wikipedia/offline/db/OfflineObjectDao_Impl$addObject$2;->$pageTitle:Ljava/lang/String;

    .line 9
    .line 10
    iget-object v1, p0, Lorg/wikipedia/offline/db/OfflineObjectDao_Impl$addObject$2;->this$0:Lorg/wikipedia/offline/db/OfflineObjectDao_Impl;

    .line 11
    .line 12
    iget-object v2, p0, Lorg/wikipedia/offline/db/OfflineObjectDao_Impl$addObject$2;->$url:Ljava/lang/String;

    .line 13
    .line 14
    iget-object v3, p0, Lorg/wikipedia/offline/db/OfflineObjectDao_Impl$addObject$2;->$lang:Ljava/lang/String;

    .line 15
    .line 16
    invoke-direct/range {v0 .. v6}, Lorg/wikipedia/offline/db/OfflineObjectDao_Impl$addObject$2;-><init>(Lorg/wikipedia/offline/db/OfflineObjectDao_Impl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 17
    .line 18
    .line 19
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 20
    .line 21
    invoke-virtual {v0, p0}, Lorg/wikipedia/offline/db/OfflineObjectDao_Impl$addObject$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2
    .line 3
    iget v1, p0, Lorg/wikipedia/offline/db/OfflineObjectDao_Impl$addObject$2;->label:I

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-eqz v1, :cond_1

    .line 7
    .line 8
    if-ne v1, v2, :cond_0

    .line 9
    .line 10
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 15
    .line 16
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const/4 p0, 0x0

    .line 20
    return-object p0

    .line 21
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    iput v2, p0, Lorg/wikipedia/offline/db/OfflineObjectDao_Impl$addObject$2;->label:I

    .line 25
    .line 26
    iget-object v1, p0, Lorg/wikipedia/offline/db/OfflineObjectDao_Impl$addObject$2;->this$0:Lorg/wikipedia/offline/db/OfflineObjectDao_Impl;

    .line 27
    .line 28
    iget-object v2, p0, Lorg/wikipedia/offline/db/OfflineObjectDao_Impl$addObject$2;->$url:Ljava/lang/String;

    .line 29
    .line 30
    iget-object v3, p0, Lorg/wikipedia/offline/db/OfflineObjectDao_Impl$addObject$2;->$lang:Ljava/lang/String;

    .line 31
    .line 32
    iget-object v4, p0, Lorg/wikipedia/offline/db/OfflineObjectDao_Impl$addObject$2;->$path:Ljava/lang/String;

    .line 33
    .line 34
    iget-object v5, p0, Lorg/wikipedia/offline/db/OfflineObjectDao_Impl$addObject$2;->$pageTitle:Ljava/lang/String;

    .line 35
    .line 36
    move-object v6, p0

    .line 37
    invoke-static/range {v1 .. v6}, Lorg/wikipedia/dataclient/Service$-CC;->addObject$suspendImpl(Lorg/wikipedia/offline/db/OfflineObjectDao_Impl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    if-ne p0, v0, :cond_2

    .line 42
    .line 43
    return-object v0

    .line 44
    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 45
    .line 46
    return-object p0
.end method
