.class public final Lorg/wikipedia/csrf/CsrfTokenClient;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field public static final INSTANCE:Lorg/wikipedia/csrf/CsrfTokenClient;

.field public static final MUTEX:Ljava/util/concurrent/Semaphore;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lorg/wikipedia/csrf/CsrfTokenClient;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/wikipedia/csrf/CsrfTokenClient;->INSTANCE:Lorg/wikipedia/csrf/CsrfTokenClient;

    .line 7
    .line 8
    new-instance v0, Ljava/util/concurrent/Semaphore;

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lorg/wikipedia/csrf/CsrfTokenClient;->MUTEX:Ljava/util/concurrent/Semaphore;

    .line 15
    .line 16
    return-void
.end method

.method public static synthetic getToken$default(Lorg/wikipedia/dataclient/WikiSite;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 2

    .line 1
    sget-object v0, Lorg/wikipedia/csrf/CsrfTokenClient;->INSTANCE:Lorg/wikipedia/csrf/CsrfTokenClient;

    .line 2
    .line 3
    const-string v1, "csrf"

    .line 4
    .line 5
    invoke-virtual {v0, p0, v1, p1}, Lorg/wikipedia/csrf/CsrfTokenClient;->getToken(Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static tokenRequiresLogin(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-static {}, Lokhttp3/Headers$Companion;->isLoggedIn()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lokhttp3/Headers$Companion;->isTemporaryAccount()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    const-string v0, "+\\"

    .line 14
    .line 15
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    if-eqz p0, :cond_0

    .line 20
    .line 21
    const/4 p0, 0x1

    .line 22
    return p0

    .line 23
    :cond_0
    const/4 p0, 0x0

    .line 24
    return p0
.end method


# virtual methods
.method public final getToken(Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    .line 1
    instance-of v0, p3, Lorg/wikipedia/csrf/CsrfTokenClient$getToken$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p3

    .line 6
    check-cast v0, Lorg/wikipedia/csrf/CsrfTokenClient$getToken$1;

    .line 7
    .line 8
    iget v1, v0, Lorg/wikipedia/csrf/CsrfTokenClient$getToken$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lorg/wikipedia/csrf/CsrfTokenClient$getToken$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lorg/wikipedia/csrf/CsrfTokenClient$getToken$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p3}, Lorg/wikipedia/csrf/CsrfTokenClient$getToken$1;-><init>(Lorg/wikipedia/csrf/CsrfTokenClient;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p0, v0, Lorg/wikipedia/csrf/CsrfTokenClient$getToken$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object p3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    .line 29
    iget v1, v0, Lorg/wikipedia/csrf/CsrfTokenClient$getToken$1;->label:I

    .line 30
    .line 31
    const/4 v2, 0x0

    .line 32
    const/4 v3, 0x1

    .line 33
    if-eqz v1, :cond_2

    .line 34
    .line 35
    if-ne v1, v3, :cond_1

    .line 36
    .line 37
    iget-object p1, v0, Lorg/wikipedia/csrf/CsrfTokenClient$getToken$1;->L$3:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 38
    .line 39
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 44
    .line 45
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    return-object v2

    .line 49
    :cond_2
    invoke-static {p0}, Landroidx/compose/animation/core/Animation$-CC;->m(Ljava/lang/Object;)Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    const-string v1, ""

    .line 54
    .line 55
    iput-object v1, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 56
    .line 57
    sget-object v1, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 58
    .line 59
    sget-object v1, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->INSTANCE:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    .line 60
    .line 61
    new-instance v4, Lorg/wikipedia/csrf/CsrfTokenClient$getToken$2;

    .line 62
    .line 63
    invoke-direct {v4, p1, p2, p0, v2}, Lorg/wikipedia/csrf/CsrfTokenClient$getToken$2;-><init>(Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V

    .line 64
    .line 65
    .line 66
    iput-object p0, v0, Lorg/wikipedia/csrf/CsrfTokenClient$getToken$1;->L$3:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 67
    .line 68
    iput v3, v0, Lorg/wikipedia/csrf/CsrfTokenClient$getToken$1;->label:I

    .line 69
    .line 70
    invoke-static {v1, v4, v0}, Lkotlinx/coroutines/AwaitKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    if-ne p1, p3, :cond_3

    .line 75
    .line 76
    return-object p3

    .line 77
    :cond_3
    move-object p1, p0

    .line 78
    :goto_1
    iget-object p0, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 79
    .line 80
    return-object p0
.end method
